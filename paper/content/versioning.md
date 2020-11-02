## Data versioning
After we have defined the structure of the data, we will investigate how we can implement versioning. This has two major advantages for data consumers. The first advantage is the ability to fetch only the data in the timeframe of their interest. Second, versioning allows us to define one or multiple snapshot versions, from which subsequent versions can be derived using deltas. As a result, data consumers only need to download the deltas between their latest local snapshot version, and their desired new version. In the context of real-time updates, this implies that only the changes since the last update need to be retrieved.

This chapter will discuss git/ostrich.

- Nathaniel Arndt
    - https://arxiv.org/pdf/1805.03721.pdf
- Doctoraat van Ruben Taelman
- RSP-QL = time context
    - http://streamreasoning.github.io/RSP-QL/RSP_Requirements_Design_Document/