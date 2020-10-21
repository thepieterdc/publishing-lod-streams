# Research Strategy document
## Search strategy
### Step 1:
We started with meeting with the supervisors about the subject. During this meeting, the supervisors enlightened us about what they expected from us and gave us some papers and directions to start from. We also planned future meetings and decided to meet every week again. 

These papers are the following:
1. R&Wbase: Git for triples [[1]](#1).
2. Comparing a polling and push-based approach for live Open Data interfaces [[2]](#2).
3. Geospatial partitioning of open transit data [[3]](#3).

Other subject they told us to read about are the following:
1. [Kafka](https://kafka.apache.org/)
2. [Ostrich](https://github.com/rdfostrich/ostrich)
3. [Event streams](https://github.com/TREEcg/specification/tree/master/examples/eventstreams)


### Step 2
After the first meeting, we started reading in into the subject by reading the provided paper and subjects (from step 1). This provided us with some basic knowledge about the subject. During the following meeting, we discussed our original search strategy. We started by discussing what technologies seemes interesting for the target of the research. We decided that we would look into the following terms:

1. Kafka
2. Git based
3. MQTT
4. DNS
5. Decentralization
6. Azure service bus
7. Linked data streaming

These terms will lead to the actual papers that are found in the following steps.




### Step 3
1. Search "mqtt event streaming" on ResearchGate -> atmoko2017.
2. Search on "DNS based data publishing", "DNS based data" on Google Scholar -> resulted in [[4]](#4) and [[5]](#5).
3. Search "messaging protocols" on ieeexplore -> Luzuriaga2015.
4. Search "service bus" on Azure-Docs GitHub repository -> https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/service-bus-messaging-overview.md
5. Search "DNS update propagation" on ieeexplore -> Parwez2010.
6. Search "DNS-over-HTTPS" on ResearchGate -> Hrushak2020, Borgolte2019HowDO.
7. Search "event streams linked data" on regular Google search -> resulted in [[8]](#8) and [[9]](#9).
8. Search "linked data querying" on Google Scholar -> resulted in [[10]](#10).
9. Search "linked data git" on Google Scholar -> resulted in [[11]](#11).
10. Search "linked data git" on Google Scholar -> resulted in [[12]](#12).
11. Search "linked data git" on Google Scholar -> resulted in [[15]](#15).
12. Search "linked data git" on Google Scholar -> resulted in [[16]](#16).
13. Search "linked data git" on Google Scholar -> resulted in [[17]](#17).
14. Search "git versioning of datasets" on Google Scholar -> resulted in [[13]](#13).
15. Search "linked data stream" on Google Scholar -> resulted in [[14]](#14).


### Step 4
Forward and backward tracking of given and found papers

Backward tracking from Hrushak2020 -> RFC8484.

Use Google Scholar to research papers citing [[1]](#1) -> resulted in [[6]](#6)
Use Google Scholar to research papers citing [[10]](#10) -> resulted 10.1007/978-3-319-25007-6_38
Use Google Scholar to research papers citing [[18]](#18) -> resulted in [[19]](#19).
Use Google Scholar to research papers cited by found papers (backwards) -> No useful results

Research main contributors of Apache Kafka -> Research of the contributors is not very useful, but found [[7]](#7).




## List of articles of interest
### Will certainly appear in the survey paper
- [[1]](#1) R&wbase proposes a git-based file structure and organisation to allow versioning linked data.
- [[3]](#3)
- [[1000]](#1000) This paper describes the application of MQTT as a communication protocol for IoT devices. We can use this to send updates to clients with very low latency and high performance.
- [[10]](#10)

### Will most likely appear in the survey paper
- [[1001]](#1001) Exploration of different MoM techniques. Instead of only using MQTT, this paper also presents AMQP which allows unlimited message lengths, as well as storing messages
- [[6]](#6)
- [[1003]](#1003) Instead of running DNS over UDP as is the case today, this paper proposes to use DNS over HTTPS. This could be beneficial, because we can make use of existing caching solutions provided by the HTTP standard. 
- [[9]](#9)
- [[1004]](#1004) A new way to use DNS imposes new privacy and security challenges to tackle. This paper gives an outline of the main concerns.
- [[11]](#11)
- [[12]](#12)
- [[13]](#13)

### Will not likely appear in the survey paper
[[2]](#2)
[[1002]](#1002)
[[7]](#7)
[[8]](#8)
[[14]](#14)
[[15]](#15)
[[16]](#16)
[[17]](#17)
[[1005]](#1005)
[[1006]](#1006)
[[18]](#18)
[[19]](#19)

### Will not appear in the survey paper
[[4]](#4)
[[5]](#5)





## References
<a id="1" href>[1]</a> 
Vander Sande, M., Colpaert, P., Verborgh, R., Coppens, S., Mannens, E., & Van de Walle, R. (2013). R&Wbase: git for triples. LDOW, 996.

@article{sande2013r,
  title={R\&wbase: git for triples},
  author={Sande, MV and Colpaert, P and Verborgh, R and Coppens, S and Mannens, E and de Walle, RV},
  journal={LDOW},
  volume={996},
  year={2013}
}

<a id="2" href>[2]</a> 
Van de Vyvere, B., Colpaert, P., & Verborgh, R. (2020, June). Comparing a polling and push-based approach for live Open Data interfaces. In International Conference on Web Engineering (pp. 87-101). Springer, Cham.

@inproceedings{van2020comparing,
  title={Comparing a polling and push-based approach for live Open Data interfaces},
  author={Van de Vyvere, Brecht and Colpaert, Pieter and Verborgh, Ruben},
  booktitle={International Conference on Web Engineering},
  pages={87--101},
  year={2020},
  organization={Springer}
}

<a id="3" href>[3]</a> 
Delva, H., Rojas, J. A., Vandenberghe, P. J., Colpaert, P., & Verborgh, R. (2020, June). Geospatial Partitioning of Open Transit Data. In International Conference on Web Engineering (pp. 305-320). Springer, Cham.

@inproceedings{delva2020geospatial,
  title={Geospatial Partitioning of Open Transit Data},
  author={Delva, Harm and Rojas, Juli{\'a}n Andr{\'e}s and Vandenberghe, Pieter-Jan and Colpaert, Pieter and Verborgh, Ruben},
  booktitle={International Conference on Web Engineering},
  pages={305--320},
  year={2020},
  organization={Springer}
}

<a id="1000" href>[1000]</a>
@article{atmoko2017,
author = {Atmoko, Rachmad and Riantini, R and Hasin, M},
year = {2017},
month = {05},
pages = {012003},
title = {IoT real time data acquisition using MQTT protocol},
volume = {853},
journal = {Journal of Physics: Conference Series},
doi = {10.1088/1742-6596/853/1/012003}
}

<a id="4" href>[4]</a> 
Spektor, D., & Cleaver, B. A. (2014). U.S. Patent No. 8,689,280. Washington, DC: U.S. Patent and Trademark Office.

<a id="5" href>[5]</a> 
Bogner, E. (2011). U.S. Patent No. 7,987,291. Washington, DC: U.S. Patent and Trademark Office.


<a id="1001" href>[1001]</a>
@INPROCEEDINGS{Luzuriaga2015,
  author={J. E. {Luzuriaga} and M. {Perez} and P. {Boronat} and J. C. {Cano} and C. {Calafate} and P. {Manzoni}},
  booktitle={2015 12th Annual IEEE Consumer Communications and Networking Conference (CCNC)}, 
  title={A comparative evaluation of AMQP and MQTT protocols over unstable and mobile networks}, 
  year={2015},
  volume={},
  number={},
  pages={931-936},
  doi={10.1109/CCNC.2015.7158101}}

<a id="6" href>[6]</a> 
Graube, M., Hensel, S., & Urbas, L. (2014). R43ples: Revisions for triples. In Proceedings of the 1st Workshop on Linked Data Quality co-located with 10th International Conference on Semantic Systems (SEMANTiCS 2014).

<a id="1002" href>[1002]</a> 
@INPROCEEDINGS{Parwez2010,
  author={M. R. {Parwez} and M. {Akbar} and S. {Haider} and M. S. {Javaid}},
  booktitle={2010 2nd IEEE International Conference on Information Management and Engineering}, 
  title={DNS propagation delay: An effective and robust solution using authoritative response from non-authoritative server}, 
  year={2010},
  volume={},
  number={},
  pages={150-153},
  doi={10.1109/ICIME.2010.5477485}}

<a id="7" href>[7]</a> 
https://github.com/guozhangwang/awesome-streaming

<a id="1003" href>[1003]</a> 
@inproceedings{Hrushak2020,
author = {Hrushak, Serhii and Pavlenko, Cynthia},
year = {2020},
month = {04},
pages = {},
title = {Advantages of DNS-over-HTTPS over DNS},
doi = {10.30837/IVcsitic2020201356}
}

<a id="8" href>[8]</a> 
Tommasini, R., Ragab, M., Falcetta, A., Della Valle, E., & Sakr, S. (2019). Bootstrapping the Publication of Linked Data Streams. In ISWC Satellites (pp. 29-32).

<a id="9" href>[9]</a> 
Harth, A., Stühmer, R.
Publishing Event Streams as Linked Data. https://km.aifb.kit.edu/sites/lodstream/

<a id="1004" href>[1004]</a>
@inproceedings{Borgolte2019HowDO,
  title={How DNS over HTTPS is Reshaping Privacy, Performance, and Policy in the Internet Ecosystem},
  author={Kevin Borgolte and T. Chattopadhyay and N. Feamster and Mihir Kshirsagar and Jordan Holland and Austin Hounsel and Paul Schmitt},
  year={2019}
}

<a id="10" href>[10]</a> 
Verborgh, R., Vander Sande, M., Colpaert, P., Coppens, S., Mannens, E., & Van de Walle, R. (2014, April). Web-Scale Querying through Linked Data Fragments. In LDOW.

<a id="11" href>[11]</a> 
Arndt, N., Naumann, P., & Marx, E. (2017, May). Exploring the Evolution and Provenance of Git Versioned RDF Data. In MEPDaW/LDQ@ ESWC (pp. 12-27).

@inproceedings{arndt2017exploring,
  title={Exploring the Evolution and Provenance of Git Versioned RDF Data.},
  author={Arndt, Natanael and Naumann, Patrick and Marx, Edgard},
  booktitle={MEPDaW/LDQ@ ESWC},
  pages={12--27},
  year={2017}
}

<a id="12" href>[12]</a> 
Arndt, N., Radtke, N., & Martin, M. (2016, September). Distributed collaboration on rdf datasets using git: Towards the quit store. In Proceedings of the 12th International Conference on Semantic Systems (pp. 25-32).

@inproceedings{arndt2016distributed,
  title={Distributed collaboration on rdf datasets using git: Towards the quit store},
  author={Arndt, Natanael and Radtke, Norman and Martin, Michael},
  booktitle={Proceedings of the 12th International Conference on Semantic Systems},
  pages={25--32},
  year={2016}
}

<a id="13" href>[13]</a> 
Arndt, N., & Radtke, N. (2016, September). Quit diff: Calculating the delta between rdf datasets under version control. In Proceedings of the 12th International Conference on Semantic Systems (pp. 185-188).

@inproceedings{arndt2016quit,
  title={Quit diff: Calculating the delta between rdf datasets under version control},
  author={Arndt, Natanael and Radtke, Norman},
  booktitle={Proceedings of the 12th International Conference on Semantic Systems},
  pages={185--188},
  year={2016}
}

<a id="14" href>[14]</a> 
Barbieri, D. F., & Valle, E. D. (2010, April). A proposal for publishing data streams as linked data. In Linked Data on the Web Workshop.

@inproceedings{barbieri2010proposal,
  title={A proposal for publishing data streams as linked data},
  author={Barbieri, Davide F and Valle, ED},
  booktitle={Linked Data on the Web Workshop},
  year={2010}
}

<a id="15" href>[15]</a> 
Meroño-Peñuela, A., & Hoekstra, R. (2017, May). SPARQL2Git: transparent SPARQL and linked data API curation via Git. In European Semantic Web Conference (pp. 143-148). Springer, Cham.

@inproceedings{merono2017sparql2git,
  title={SPARQL2Git: transparent SPARQL and linked data API curation via Git},
  author={Mero{\~n}o-Pe{\~n}uela, Albert and Hoekstra, Rinke},
  booktitle={European Semantic Web Conference},
  pages={143--148},
  year={2017},
  organization={Springer}
}

<a id="16" href>[16]</a> 
Kubitza, D. O., Böckmann, M., & Graux, D. (2019, October). SemanGit: A linked dataset from git. In International Semantic Web Conference (pp. 215-228). Springer, Cham.

@inproceedings{kubitza2019semangit,
  title={SemanGit: A linked dataset from git},
  author={Kubitza, Dennis Oliver and B{\"o}ckmann, Matthias and Graux, Damien},
  booktitle={International Semantic Web Conference},
  pages={215--228},
  year={2019},
  organization={Springer}
}

<a id="17" href>[17]</a> 
Meroño-Peñuela, A., & Hoekstra, R. (2016, May). grlc makes GitHub taste like linked data APIs. In European Semantic Web Conference (pp. 342-353). Springer, Cham.

@inproceedings{merono2016grlc,
  title={grlc makes GitHub taste like linked data APIs},
  author={Mero{\~n}o-Pe{\~n}uela, Albert and Hoekstra, Rinke},
  booktitle={European Semantic Web Conference},
  pages={342--353},
  year={2016},
  organization={Springer}
}


<a id="1005" href>[1005]</a>
@InProceedings{10.1007/978-3-319-25007-6_38,
author="Kuhn, Tobias
and Chichester, Christine
and Krauthammer, Michael
and Dumontier, Michel",
editor="Arenas, Marcelo
and Corcho, Oscar
and Simperl, Elena
and Strohmaier, Markus
and d'Aquin, Mathieu
and Srinivas, Kavitha
and Groth, Paul
and Dumontier, Michel
and Heflin, Jeff
and Thirunarayan, Krishnaprasad
and Thirunarayan, Krishnaprasad
and Staab, Steffen",
title="Publishing Without Publishers: A Decentralized Approach to Dissemination, Retrieval, and Archiving of Data",
booktitle="The Semantic Web - ISWC 2015",
year="2015",
publisher="Springer International Publishing",
address="Cham",
pages="656--672",
isbn="978-3-319-25007-6"
}

<a id="1006" href>[1006]</a>
@techreport{RFC8484,
  author = {P. Hoffman and P. McManus},
  title = {DNS Queries over HTTPS (DoH)},
  howpublished = {Internet Requests for Comments},
  type = {RFC},
  number = {8484},
  year = {2018},
  month = {October},
  issn = {2070-1721},
  publisher = {RFC Editor},
  institution = {RFC Editor},
}

<a id="18" href>[18]</a> 
Verborgh, R., Hartig, O., De Meester, B., Haesendonck, G., De Vocht, L., Vander Sande, M., ... & Van de Walle, R. (2014, October). Querying datasets on the web with high availability. In International Semantic Web Conference (pp. 180-196). Springer, Cham.

<a id="19" href>[19]</a> 
Folz, P., Skaf-Molli, H., & Molli, P. (2016, May). CyCLaDEs: a decentralized cache for Linked Data Fragments. In ESWC: Extended Semantic Web Conference.
