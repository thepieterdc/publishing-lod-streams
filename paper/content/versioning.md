## Data versioning
After we have defined the structure of the data, we can investigate how we can implement versioning datasets. Data versioning has two main advantages for both the data consumers, as well as the providers. The first advantage for consumers is the ability to consider only data in a specified timeframe of interest. For example, a train schedule application does not require information about interruptions and delays from a month ago. Second, versioning allows the provider to define so-called ''snapshot'' versions, which correspond to checkpoints of the dataset. Consumers can reconstruct subsequent versions of the dataset by fetching only the deltas since a given snapshot. The benefit of these deltas is that the consumers do not need to download the entire dataset every time an update is published, they can download only the changes. For the providers, storing these deltas eliminates the need to store duplicate or redundant information.

### Git-based
The first type of approach we will discuss is derived from the world of software engineering. Software developers use version control systems, such as Git or Mercurial, to work on the same source code files collaboratively. The same idea can be used to version data, as proposed by [Arndt et al](cite:cites arndt2018). This paper formalizes the requirements for a git-based data versioning infrastructure as follows:

1. **Support divergence of datasets:** 
The more users that contribute to the dataset, the higher the probability that some users will disagree on how the dataset should evolve. Consider for example a dataset of train connections in Belgium. The set of contributors might be divided into smaller working groups, each with their dedicated focus. Some users might prefer to work on train stations in Ghent, others in Antwerp, etc. This concept corresponds to *branches* in Git.

2. **Conflate diverged datasets:**
Once the working groups have finished their subtasks, they should be able to integrate their changes back into the upstream dataset. This is achieved through a *merging* process, similar to Git. When merging two branches, however, conflicts may arise, in case other branches that touch the same data have already been integrated. The system must support both conflict detection and resolution, to prevent compromising data integrity.

3. **Synchronization of derivatives:**
To enable distributing the dataset across multiple servers, a synchronization mechanism is required to ensure every device has a consistent version of the dataset. In Git, this corresponds to having both a local copy of the repository, as well as a remote repository (via e.g. [GitHub](https://github.com/)). Subsequently, the local dataset can be updated via *pull* operations, whereas local changes can be *pushed* to the remote repository.

### RDF archives
In addition to the Git-based approaches, techniques for archiving RDF data and executing queries on those archives are also gaining increased interest among researchers [](cite:cites rdfarchives,rdfquerytypes). RDF archives entail six different query types and three different storage strategies.

#### Query atoms
The corresponding literature currently distinguishes six different types of queries, called *Query atoms*. These will be explained below using the example of a car park.

1. **[VM] Version materialization:**
The first type of query is the most basic form of retrieval. Version materialization allows the consumer to obtain the complete state of the dataset at a given timestamp or version, similar to the earlier discussed *snapshots*. Note that this technique is also being used by existing web archiving services, such as the [WayBack Machine of the Internet Archive](https://web.archive.org/). In the context of the car park example, this is equivalent to listing all cars that are in the car park at the given timestamp.

2. **[DM] Delta materialization:**
Subsequently, the consumer might be interested in obtaining the difference between two versions. This request is fulfilled using the second type of query. In order to enable this functionality, the system must support conflating several deltas into a new version to calculate the net differences. In the car park example, this would allow the consumer to retrieve a list of all cars that have entered the car park today.

3. **[SVQ] Single-version structured queries:**
Next, literature considers the evaluation of complex queries on one specific version of the dataset. This functionality is currently offered by SPARQL endpoints. An example query on the example situation could be: ''is there a blue car in the car park at January 1, 2020?''.

4. **[SDQ] Single-delta structured queries:**
The same analogy as with the first and second type of query can also be applied here. As an example, consider the following query: ''has a blue car entered the car park today?''.

5. **[CVQ] Cross-version structured queries:**
The fifth type is very similar to the third type, except that the goal is to query across multiple versions at once. The aforementioned example query can be slightly adapted as follows: ''has there ever been a blue car in the car park?''.

6. **[CDQ] Cross-delta structured queries:**
Finally, the former query type also has a delta counterpart. The above query can also be modified to serve as an example for this type: ''on average, how many cars enter the car park per day?''.

#### Storage
Depending on which query atoms should be optimized, a different storage strategy is preferred.

1. **[IC] Independent Copies:**
The first technique simply creates a separate, isolated instance of the entire dataset every time a change is introduced. The advantage of this storage technique is a high performance for `VM`, `SVQ` and `CVQ` queries, but the downside is twofold. First of all, the duplication of the datasets will inevitably incur scalability issues. Additionally, since deltas do not exist, these must be calculated on-the-fly in order to evaluate delta-oriented queries. This task might be computationally expensive.

2. **[CB] Change-based approach:**
The second technique relates more to the aforementioned Git-based approaches. This technique starts from an empty dataset and stores the changes (deltas). Consequently, this strategy addresses the scalability issues of the previous approach. Furthermore, this technique is very efficient to evaluate delta-based queries (`DM`, `SDQ`, `CDQ`), but requires these deltas to be conflated every time a version-based query is evaluated.

3. **[TB] Timestamp-based approach:**
The final strategy augments the stored triples with temporal validity information and acts therefore as a combination of the two other strategies. This approach supports compression to reduce space, and can be used for all queries except `DM`.

#### OSTRICH
In addition to the above three storage techniques, [Taelman et al](cite:cites rdfostrich,rdfostrichfull) propose *OSTRICH* as a versioned ''hybrid IC-CB-TB'' storage mechanism. Because of this, OSTRICH is able to efficiently evaluate `VM`, `DM`, `SVQ` and `CVQ` queries and return the results as a stream of triples. Being a hybrid storage mechanism, the working of OSTRICH is inspired by combining the best properties and ideas of the other techniques. First, an immutable copy of the dataset is made, which serves as the initial version. This version is saved as an `HDT`-file. This format is a binary RDF representation which features both a high compression ratio, as well as indices to ''enable the efficient execution of triple pattern queries and count estimation''. All subsequent updates to the dataset are stored as deltas, which are also indexed and merged according to their timestamp to consume less disk space.

### TODO
- Live Open Data publishing in Flanders
- hoe strikt zijn die requirements nodig bij git-based?
- vergelijk "on a web of data streams" met git-based
- RSP-QL = time context
    - http://streamreasoning.github.io/RSP-QL/RSP_Requirements_Design_Document/

#### Activity Streams 2 seems more useful for either Data versioning or Data formatting
Activity Streams 2.0 [https://www.w3.org/TR/activitystreams-core/] are another specification by W3C. It specifies a model which represents activities using JSON. The most basic building block is an ‘Activity’ which describes an action. This specification seems to be lacking support for representing the history of updates, like there exist in specifications more focused towards events. The model does specify possibilities to make such a construction, for example using ‘Collection’ objects.
