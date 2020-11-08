## Data versioning
After we have defined the structure of the data, we will investigate how we can implement versioning. This has two major advantages for data consumers. The first advantage is the ability to fetch only the data in the timeframe of their interest. Second, versioning allows us to define one or multiple snapshot versions, from which subsequent versions can be derived using deltas. As a result, data consumers only need to download the deltas between their latest local snapshot version, and their desired new version. In the context of real-time updates, this implies that only the changes since the last update need to be retrieved.

### Git-based
The first type of approach we will discuss is derived from the world of software engineering. Software developers use version control systems, such as Git or Mercurial, to work on the same source code files collaboratively. The same idea can be used to version data, as proposed by [Arndt et al](cite:cites arndt2018). This paper formalises the requirements for a git-based data versioning infrastructure as follows:

1. **Support divergence of datasets:** 
The more users that contribute to the dataset, the higher the probability that some users will disagree on how the dataset should evolve. Consider for example a dataset of train connections in Belgium. The set of contributors might be divided into smaller working groups, each with their dedicated focus. Some users might prefer to work on train stations in Ghent, others in Antwerp, etc. This concept corresponds to *branches* in Git.

2. **Conflate diverged datasets:**
Once the working groups have finished their subtasks, they should be able to integrate their changes back into the upstream dataset. This is achieved through a *merging* process, similar to Git. When merging two branches, however, conflicts may arise, in case other branches that touch the same data have already been integrated. The system must support both conflict detection and resolution, to prevent compromising data integrity.

3. **Synchronisation of derivatives:**
To enable distributing the dataset across multiple servers, a synchronisation mechanism is required to ensure every device has a consistent version of the dataset. In Git, this corresponds to having both a local copy of the repository (on ), as well as a remote repository (via e.g. [GitHub](https://github.com/)). Subsequently, the local dataset can be updated via `pull` operations, whereas local changes can be `pushed` to the remote repository.


- Doctoraat van Ruben Taelman
- RSP-QL = time context
    - http://streamreasoning.github.io/RSP-QL/RSP_Requirements_Design_Document/

#### Activity Streams 2 seems more useful for either Data versioning or Data formatting
Activity Streams 2.0 [https://www.w3.org/TR/activitystreams-core/] are another specification by W3C. It specifies a model which represents activities using JSON.The most basic building block is an ‘Activity’ which describes an action. This specification seems to be lacking support for representing the history of updates, like there exist in specifications more focused towards events. The model does specify possibilities to make such a construction, for example using ‘Collection’ objects.
