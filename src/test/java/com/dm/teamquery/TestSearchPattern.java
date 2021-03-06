package com.dm.teamquery;


import com.dm.teamquery.entity.Challenge;
import com.dm.teamquery.search.Search;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@SpringBootTest
@TestPropertySource("classpath:application-test.properties")
public class TestSearchPattern {


    @Test
    public void TestSimple() {

        Search s = new Search(Challenge.class);

        String q1 = s.setQuery("a").getSearchTerms().toString();
        String q2 = s.setQuery("a b").getSearchTerms().toString();
        String q3 = s.setQuery("\"a b\"").getSearchTerms().toString();
        String q4 = s.setQuery("\"a b\" c d").getSearchTerms().toString();
        String q5 = s.setQuery("a AND    b").getSearchTerms().toString();
        String q6 = s.setQuery("a AND c   b").getSearchTerms().toString();
        String q7 = s.setQuery("question = adobe OR author = rhianna").getSearchTerms().toString();

        System.out.println();

        assertEquals(q1,"[a]");
        assertEquals(q2,"[a, b]");
        assertEquals(q3,"[a b]");
        assertEquals(q4,"[c, d, a b]");
        assertEquals(q5,"[a, b]");
        assertEquals(q6,"[a, b, c]");
        assertEquals(q7,"[question=adobe;=@!&@author=rhianna]");


    }

    @Test
    public void TestAnd() {

        Search s = new Search(Challenge.class);
        String or = s.getOR_HOLDER();

        String r = s.setQuery("a AND b AND e OR c AND d").getSearchTerms().toString();

        String q1 = s.setQuery("a OR b").getSearchTerms().toString().replaceAll(or," OR ");
        String q2 = s.setQuery("aORa b OR c ").getSearchTerms().toString().replaceAll(or," OR ");
        String q3 = s.setQuery("\"a b\" OR e c").getSearchTerms().toString().replaceAll(or," OR ");
        String q4 = s.setQuery("a OR b OR e AND c OR d").getSearchTerms().toString().replaceAll(or," OR ");
        String q5 = s.setQuery("\"a b\" OR c d OR p").getSearchTerms().toString().replaceAll(or," OR ");
        String q6 = s.setQuery("f a OR c AND d OR p").getSearchTerms().toString().replaceAll(or," OR ");
        String q7 = s.setQuery("\"x y\" z AND a OR b c OR d hello = someone goodbye = \"a    wonder\" t u e").getSearchTerms().toString().replaceAll(or," OR ");

        System.out.println();

        assertEquals(q1,"[a OR b]");
        assertEquals(q2,"[aORa, b OR c]");
        assertEquals(q3,"[a b OR e, c]");
        assertEquals(q4,"[a OR b OR e, c OR d]");
        assertEquals(q5,"[a b OR c, d OR p]");
        assertEquals(q6,"[f, a OR c, d OR p]");
        assertEquals(q7,"[t, c OR d, u, e, x y, z, a OR b, hello=someone, goodbye=a    wonder]");



    }



}