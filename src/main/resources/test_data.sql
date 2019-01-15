insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('40b843bd-5d8c-4f55-842c-ce0109caa2b2','What if the client is angry on the call?','Hear them out and try to make them feel heard. Most people calm down quickly and are just frustrated and overwhelmed.  f it ever seems excessive or inappropriate contact David, Danimae, or Chris.','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('c5dae136-2a50-4db1-9d76-9cd397aaf065','What if they ask a question I don''t know?','Ask clarifying questions to get a fuller picture of their needs. If possible, Slack other developers or PM''s to see if an answer exists. Otherwise, write the question down and get back to them later with the answer and continue what you can on the call. There are many things that will be asked in calls that we do not and should not know. Just try to provide a point of contact for them, if possible.','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('45a4fa7a-174a-4589-a21d-46fa60370a73','Why is your documentation so confusing?','Roll with the punches, especially when it''s fair. Just emphasize that you are here to answer questions involving the UST and will be available to reach at a later date if questions arise after the call. Some people have been struggling to get the tool working prior to the call and are fearful that no one will ever be available to help them ever again.','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('37766f9a-9a5a-47d2-a22f-701986cb4d7f','Can I see all of your code so that I can verify that every line of code does exactly what you claim it does?','Yes, of course! It''s open source. (https://github.com/adobe/UST-Install-Scripts/)','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('4fe47e30-5d12-42b9-bf64-523a9c485cf0','If unfamiliar with or new, grab an emotional support developer for:','Automated Asset Migration: https://helpx.adobe.com/enterprise/using/asset-migration-faq.htmlConverting Adobe ID''s to Enterprise/Federated ID''sDeleting users with assetsSwitching ID typesDeleting/removing users from console"Why isn''t there a Sign in with Google button?"','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('4256372b-6dbc-4af7-81ae-36ce6790c150','Why is my tool broken when it doesn’t have country codes?','It the "no country code warning" is the only warning and there are no errors, then the tool is possibly running just fine. That warning isn’t linked to anything harmful and is corrected when we assign a default country code in the installation wizard. To suppress that pesky warning: Repressing the Country Code Warning:','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('2257df63-c40a-497b-9dbd-17502f889b10','Why do we need Federated IDs? ','Federated ID''s are mainly needed for SSO. Otherwise, Enterprise ID''s can be used if the client is not interested in or does not have time to set up SSO. ','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('937dbb8d-c0a7-444c-b554-5093d85a096e','Can I remove all of my users?','If they are Adobe ID''s, no. Adobe ID''s belong to the individual and not the enterprise. However, you can deprovision them so that they are not utilizing a license.If they are Federated or Enterprise, yes, but it is not recommended since there are ways to deprovision them. ','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('caddf57a-59a6-42b3-acf7-b1ea67fed182','How do I remove these users from my console forever?','Users can be removed manually or by csv if they don’t have assets. There is a process involving a formal support ticket to remove users with assets.','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('b8b37b51-db42-4a7d-a058-71073f4eb47c','So where do I sync that Shibboleth? (and other questions that indicate the client doesn''t have a firm understanding of the process)','There is very little client interaction before the UST install call with VIP clients usually. Some are not going to be ready to do the sync the first call. Watch out for signs that the clients may need more time to prepare for an installation: - "What''s SSO? Who is this Azure fellow?"  - Not being able to sign into the Admin Console - Not having a virtual machine set up  - Not having SSO set up - PowerShell 2008/Windows Server 2002 (and other legacy technologies than may not play well with the installer)Not having a service account for the Directory (Note: They can use their account but people won''t like that it''s stored in plain text typically; also, it can be changed later)','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('08693c3e-d251-4cf5-98bc-1fd234b44f2e','Why should I go with federated, things are working fine with Adobe Id''s for us. Do we have any other option for Id types"',' Federated ID''s allow for SSO to be utilized. If no one desires to use SSO now or in the future, Enterprise ID''s allow the enterprise to owns the ID''s instead of the individuals.','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('cd1e9978-5b28-483d-a474-910da27e518d','How do I know if our SSO provider will work?','It needs to be SAML 2.0 compliant.','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('b8a57f07-71d2-49a5-a973-9ea22616a371','We have lots of students without emails. How will they continue to use the software?','We do not need an email, just something that "looks" like an email. sAMAccoutName can work as well. It needs to be something that looks like a legitimate email address with the claimed domain. (eg. phonybalogna@yourdomain.com)','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('21d47fac-df77-47ce-9c70-546bd2c9abe8','I have a question about getting more individual software. Here are my questions….','NOPE','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('18089652-2459-4fb9-9260-974398e3211d','How often does the tool run?',' How ever often you would like it to as long as it doesn’t overlap with previous runs of the tool.','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('f36cdade-26e6-47f9-a144-774eb7233e76','Can this thing run on an existing VM','Absolutely! It does not need to be on special VM by itself. Often times clients have existing servers setup that will work just fine.','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
insert into challenges (challengeid, question, answer, author, datecreated, lastauthor, datelastmodified, enabled) values ('845235a2-783d-4c8c-8378-830e45739cf8','We have two consoles? How does that impact us?','Why do you have multiple? Is one of the consoles expiring?','Rhianna','2019-01-14','Rhianna','2019-01-14',1);
