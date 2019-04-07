package com.dm.teamquery.data.service;

import com.dm.teamquery.entity.Challenge;
import com.dm.teamquery.execption.customexception.SearchFailedException;
import com.dm.teamquery.search.SLProcessor;
import com.dm.teamquery.search.SearchParameters;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.search.Query;
import org.hibernate.search.jpa.FullTextEntityManager;
import org.hibernate.search.jpa.FullTextQuery;
import org.hibernate.search.jpa.Search;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import javax.inject.Inject;
import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;
import java.lang.reflect.Field;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static java.util.Arrays.stream;

@Repository
@Transactional
public class SearchService{

    private Class entityType;
    private FullTextEntityManager fullTextEm;
    private MultiFieldQueryParser queryParser;

    @Inject
    public SearchService(EntityManagerFactory emf) {
        this.fullTextEm = Search.getFullTextEntityManager(emf.createEntityManager());
    }

    public List<?> search(String query) throws SearchFailedException {
        return search(new SearchParameters.Builder().withQuery(query).build());
    }

    public int count(String query) throws SearchFailedException {
        return count(new SearchParameters.Builder().withQuery(query).build());
    }

    public List<?> search(SearchParameters sp) throws SearchFailedException {
        return parseQuery(sp).getResultList();
    }

    public int count(SearchParameters sp) throws SearchFailedException {
        return parseQuery(sp).getResultSize();
    }

    private FullTextQuery parseQuery(SearchParameters parameters) throws SearchFailedException {

        String query = parameters.getQuery();
        String filter = parameters.getFilter();
        Pageable p = parameters.getPageable();
        Assert.notNull(query, "Query must not be null");

        try {
            query = new SLProcessor(parameters.getFuzziness()).format(query);
            query = (!filter.trim().isEmpty()) ? "(" + query + ") AND " + filter : query;

            Query r = queryParser.parse(query);
            FullTextQuery jpaQuery = fullTextEm.createFullTextQuery(r, entityType);
            return jpaQuery.setMaxResults(p.getPageSize()).setFirstResult(p.getPageNumber() * p.getPageSize());

        } catch (ParseException e) {
            throw new SearchFailedException(e.getStackTrace(),
                    e.getMessage().split("\\v")[0].replace("~", ""));
        }
    }

    public void setEntityType(Class entityType) {
        Assert.notNull(entityType, "Entity type must not be null");
        queryParser = new MultiFieldQueryParser(getEntityFields(entityType), fullTextEm.getSearchFactory().getAnalyzer(entityType));
        queryParser.setAllowLeadingWildcard(true);
        this.entityType = entityType;
    }

    private String[] getEntityFields(Class c) {
        Set<String> fieldNames = new HashSet<>();
        while (c != null) {
            stream(c.getDeclaredFields()).map(Field::getName).forEach(fieldNames::add);
            c = c.getSuperclass();
        }
        return fieldNames.toArray(new String[0]);
    }
}
