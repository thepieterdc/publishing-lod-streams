---
# Metadata.
lang: en-UK
title: "Towards maintainable Web APIs with Linked Event Streams"
subtitle: "Search Strategy"
author: De Clercq, Pieter - De Witte, Andreas - Devos, Robin - Veldeman, Sieben
date: October 25, 2020

# Bibliography
bibliography: references.bib
csl: https://www.zotero.org/styles/ieee-with-url
link-citations: true
color-links: true
linkcolor: blue
links-as-notes: true
urlcolor: blue
citecolor: blue

# Formatting.
fontsize: 11pt
linestretch: 1.5
mainfont: [OpenSans-Regular.ttf]
documentclass: article
geometry: a4paper
---

# Step 1
We started with meeting with our supervisors about the subject. During this meeting, the supervisors explained us what the expectations were and gave us some papers and directions to start from. We also planned future meetings and decided to meet every week on Monday. 

We were given the following papers:

1. R&Wbase: Git for triples [@sande2013].
2. Comparing a polling and push-based approach for live Open Data interfaces [@van2020comparing].
3. Geospatial partitioning of open transit data [@delva2020geospatial].

Additionally, we were told to read about the following subjects:

1. [Kafka](https://kafka.apache.org/)
2. [Ostrich](https://github.com/rdfostrich/ostrich)
3. [Event streams](https://github.com/TREEcg/specification/tree/master/examples/eventstreams)


# Step 2
After the first meeting, we started reading in into the subject by reading the provided papers and subjects from step 1. These provided us with some basic knowledge about the subject. During the following meeting, we discussed our original search strategy. We started by discussing which technologies seemed interesting for the target of the research. We decided that we would look into the following terms:

1. Kafka
2. Git based
3. MQTT
4. DNS
5. Decentralization
6. Azure service bus
7. Linked data streaming
8. Government Open Data

These terms will lead to the actual papers that are found in the following steps.

# Step 3
1. Search "mqtt event streaming" on ResearchGate, resulted in [@atmoko2017].
2. Search "DNS based data publishing" and "DNS based data" on Google Scholar, resulted in [@patent:8689280] and [@patent:7987291].
3. Search "messaging protocols" on ieeexplore, resulted in [@Luzuriaga2015].
4. Search "service bus" on the Azure-Docs GitHub repository, resulted in [this overview of the Azure Service Bus](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/).
5. Search "DNS update propagation" on ieeexplore, resulted in [@Parwez2010].
6. Search "DNS-over-HTTPS" on ResearchGate, resulted in [@Hrushak2020] and [@Borgolte2019HowDO].
7. Search "event streams linked data" on Google Search, resulted in  [@Tommasini2019BootstrappingTP] and [@harth2011publishing].
8. Search "linked data querying" on Google Scholar, resulted in [@Verborgh2014].
9. Search "linked data git" on Google Scholar, resulted in [@Arndt2017ExploringTE], [@ArndtDist206], [@Sparql2Git], [@Kubitza2019] and [@grlc2016].
14. Search "git versioning of datasets" on Google Scholar, resulted in [@Arndt2016].
15. Search "linked data stream" on Google Scholar, resulted in [@Barbieri2010].
16. Search "Government Big Open Data" on Web of Science, resulted in [@Lnecicka2019].
17. Search "open data updates" on Web of Science, resulted in [@Akhtar2018].


# Step 4
Forward and backward tracking of given and found papers resulted in the following resources.

1. Backward tracking from [@Hrushak2020], resulted in [@RFC8484].
2. Use Google Scholar to research papers citing [@sande2013], resulted in [@Graube2014].
3. Use Google Scholar to research papers citing [@Verborgh2014], resulted in [@Kuhn2015]. 
4. Use Google Scholar to research papers citing [@Verborgh2014QueryingHA], resulted in [@Folz2015CyCLaDEsAD].
5. Use Google Scholar to research papers cited by found papers (backwards), this did not yield any additional useful results.
6. Research main contributors of Apache Kafka. Research work of the contributors is not very useful, but we found [@AwesomeStreaming].
7. Use Web of Science to research papers cited in [@Lnecicka2019], resulted in [@Schalkwyk2016].
8. Use Web of Science to research papers cited in [@Schalkwyk2016], resulted in [@Dwivedi2016].
9. Use Web of Science to research papers cited in [@Dwivedi2016], resulted in [@Hossain2015].

# List of articles of interest
## Will certainly appear in the survey paper
- [@sande2013] R&wbase proposes a git-based file structure and organisation to allow versioning linked data.
- [@delva2020geospatial] The paper tries to address the problem of storing too large datasets for (in this case) public transit data. The proposed solution consists of fragmenting the data and making use of linked data, as to limit the amount of data needed to resolve a query.
- [@atmoko2017] This paper describes the application of MQTT as a communication protocol for IoT devices. We can use this to send updates to clients with very low latency and high performance.
- [@Verborgh2014] One of the main problems of SPARQL endpoints is the limited scalability. This paper proposes Linked Data Fragments as a way to increase the scalability of SPARQL endpoints in turn for increased query times.
- [@Barbieri2010] This paper is about C-SPARQL, an extension on top of SPARQL. C-SPARQL makes it possible to query over a stream of RDF triples. Since it is an extension on top of SPARQL, already existing functionalities of SPARQL can be used. The same goes for the SPARQL syntax. The RDF stream is defined as an ordered sequence of pairs, where each pair is made of an RDF triple and its timestamp. Especially the part about how the RDF stream is defined is useful.
- [@Akhtar2018] This paper discribes an approach to updates caches of open data using an appplication-aware change prioritization aproach.

## Will most likely appear in the survey paper
- [@Luzuriaga2015] Exploration of different MoM techniques. Instead of only using MQTT, this paper also presents AMQP which allows unlimited message lengths, as well as storing messages
- [@Hrushak2020] Instead of running DNS over UDP as is the case today, this paper proposes to use DNS over HTTPS. This could be beneficial, because we can make use of existing caching solutions provided by the HTTP standard.
- [@Borgolte2019HowDO] A new way to use DNS imposes new privacy and security challenges to tackle. This paper gives an outline of the main concerns.
- [@harth2011publishing] Document proposes another way of publishing event streams as linked data, using their own defined entities for events and such. This corresponds to the TREE specification and it could be interesting to compare.
- [@Arndt2017ExploringTE] The paper is about versioning linked data. this builds on top of the git stack.
- [@ArndtDist206] The paper is doing versioning of RDF data using a combination of SPARQL 1.1 and Git.
- [@Arndt2016] The paper is about comparing versions of a git versioned quad store by using Quit diff.
- [@Lnecicka2019] This paper gives an overview of current data distribution and interpretation mechanisms used by Governments.
- [@Graube2014] The paper presents a new version controlled way of storing and working with Linked Data. The paper also mentions related work such as R&Wbase: git for triples (by P. Colpaert e.a.) and claims this to be an improvement.
- [@Schalkwyk2016] This paper is about the current need and use of intermediaries on government open data.
- [@Hossain2015] This paper gives an overview of the existing state of the art in open data.

## Will not likely appear in the survey paper
- [@van2020comparing]
- [@Parwez2010]
- [@Tommasini2019BootstrappingTP]
- [@Sparql2Git]
- [@Kubitza2019]
- [@grlc2016]
- [@RFC8484]
- [@Kuhn2015]
- [@Verborgh2014QueryingHA]
- [@Folz2015CyCLaDEsAD]
- [@AwesomeStreaming]
- [@Dwivedi2016]

## Will not appear in the survey paper
- [@patent:8689280]
- [@patent:7987291]


# References