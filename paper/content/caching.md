## Data caching
This chapter will list, describe and compare existing techniques used to cache large open datasets.
Today caching is a viable strategy to work with datasets, because it is convenient to process complex queries locally.
This chapter will not only talk about data caches themselves, but also about multiple techniques to update caches dynamically using both push and pull protocols and about which subset of the data needs to be cached.

### Updating caches
#### Pull-based approaches
There are many different approaches for updating large open data caches using pull-based approaches. All of them implement an algorithm that will decide when a piece of data, needs to be updated. These algorithms range from simple well-known algorithms to complex time dependant algorithms. First of all we will compare some basic strategies as described in Strategies for Efficiently Keeping Local Linked Open Data Caches Up-To-Date (ADD BIBTEX). The first algorithm described is Age: this will update the oldest piece of data first. The second one is Size_SmallestFirst, this will update the smallest piece of data first. The reverse of this: Size_BiggestFirst is also described. Next we have PageRank, this algorithm will select the highest page in your dataset to upload. Then there is ChangeRatio, this wil select the most changed data to be updated first. These are the basic algorithms described in this paper, but they also propose some more interesting algorithms. First there is ChangeRate-J en ChangeRate-D that will update the data considering respectivicly the most changed Jaccard distance or the most changed Dice coefficients on the last two retrieved versions. They also propose the algorithms Dynamics-J and Dynamics-D updating the most dynamic data source based again on the Jaccard distance or the Dice coefficients. This paper concluded that these last 4 algorithms work better when there is limited bandwith.


Change-Aware Scheduling for Effectively Updating Linked Open Data Caches

Keeping Linked Open Data Caches Up-to-date by Predicting the Life-time of RDF Triples (https://apps.webofknowledge.com/full_record.do?product=WOS&search_mode=GeneralSearch&qid=2&SID=D5q17C61Lq7EyxfuIBD&page=1&doc=3)

Strategies for Efficiently Keeping Local Linked Open Data Caches Up-To-Date (https://apps.webofknowledge.com/full_record.do?product=WOS&search_mode=GeneralSearch&qid=2&SID=D5q17C61Lq7EyxfuIBD&page=1&doc=4)

#### Push-based approaches

A Preliminary Open Data Publishing Strategy for Live Data in Flanders ( https://dl.acm.org/doi/abs/10.1145/3184558.3191650)

#### Comparing Push and Pull-based approaches
Comparing a polling and push-based approach for live Open Data interfaces
#### Other
A cache-based method to improve query performance of linked Open Data cloud (caching results of queries)
(https://apps.webofknowledge.com/full_record.do?product=WOS&search_mode=GeneralSearch&qid=2&SID=D5q17C61Lq7EyxfuIBD&page=1&doc=1)
### Caching mechanisms
Two Layer Cache for RDF Database ( https://apps.webofknowledge.com/full_record.do?product=WOS&search_mode=GeneralSearch&qid=11&SID=D5q17C61Lq7EyxfuIBD&page=1&doc=3)

A Decentralized Cache for Linked Data Fragments (https://core.ac.uk/download/pdf/52993286.pdf)


