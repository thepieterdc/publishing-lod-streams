## Introduction
{:#introduction}

On top of the standard web which is used by humans, resides the Semantic Web. This variant of the web is an extension that is used by machines to automatically interpret documents on the web and as such extract information. This interpretation is facilitated through Linked Data, which augments the data with meta-information (data about the data), such as the location where it can find additional details.

However, several issues are yet to be solved. This paper will focus on one specific problem that can be solved using Linked Data. This problem involves finding a generic approach to both publishing as well as updating datasets. Common examples of this type of datasets include governmental data, such as the registry of addresses.

Deciding the best strategy is influenced by two important aspects. The first one is scalability. Some technologies will inherently offer better scalability than others, in this paper we will evaluate and compare different mechanisms to achieve high scalability, for example via caching. The second aspect is the volatility of the dataset. Data that is often changed will benefit from using a streaming-based approach. These aspects have led to an increase in research interest involving Linked Data streaming. In this paper, we present the state of the art regarding this subject.

The paper is structured as follows. First, formatting of data is discussed, together with an overview of some of the serialization formats for the Resource Description Framework. 
The following chapter considers versioning of data, namely why this is important and how to execute it. The next chapter discusses the delivery of data, namely, how can publishers get their data to end-users, and considers different approaches, together with the criteria to choose a given approach. Afterward, caching of data is discussed, different caching strategies for linked data are considered and compared. Finally, the last chapter applies all of the aforementioned subjects in the context of streaming.
