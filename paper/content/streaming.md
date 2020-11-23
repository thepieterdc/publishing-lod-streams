## Data streaming
In this final chapter, we can take a look at approaches and applications specifically tailored towards streaming linked data. We will elaborate existing technologies in the context of the earlier discussed sections, but also provide our contributions.

### RDF Stream Processing
The Internet of Things has caused a shift in the data landscape. Sensors publish data at high frequency into the cloud, as such that it does not make sense anymore to use polling-based approaches. Instead, it is much more efficient to treat these values in a [push-based](#delivery) streaming fashion. To manage these data streams, Stream Processing Engines have seen the light. However, since the contents of the stream can be in all shapes and sizes, a Web of Data-counterpart was needed. This has lead to the creation of RDF Stream Processing techniques, which allow to process RDF-based data streams using various operations such as filtering and aggregating. Dell'Aglio et al impose seven requirements for a Web of Data Streams, called Web Stream Processors (WeSP) [](cite:cites webofdatastreams). These requirements are inspired by previous work from Stonebraker et al [](cite:cites 10.1145/1107499.1107504)

1. **Keep the data moving:**
The first requirement states that *WeSP must prioritize active paradigms for data stream exchange, where the data supplier can push the stream content to the actors interested in it.* This means that instead of using polling-based approaches, data publishers must push updates to subscribers. This has been discussed in [Data delivery](#delivery) and strikes per the findings for low latency updates by Van de Vyvere et al [](cite:cites van2020comparing,10.1145/3184558.3191650), since streams with high frequency correspond to real-time data flows.

2. **Stored and streamed data:**
As a second requirement, *WeSP must enable the combination of streaming and stored data.* Stored data in this context refers to data which has been formatted using the open data standards described in [Data formatting](#formatting), such as RDF. Additionally, this data can be exposed and queried via existing SPARQL-endpoints. To allow both streaming and storing the data, one of the [RDF archive storage](#versioning-rdfarchives-storage)-techniques can be used. Specifically for streaming-based data, the delta-related query atoms will be the predominant use case and therefore a change-based approach should be preferred.

3. **High availability, distribution and scalability:**
Next, Dell'Aglio et al require that *WeSP must enable the possibility to build reliable, distributed and scalable streaming applications.* Obtaining high availability is possible using either one of the provided [Data versioning](#versioning) approaches. The Git-based approaches in particular allow a dataset to be distributed efficiently across multiple devices and therefore improve the scalability and reliability. Depending on the frequency of the updates, the reliability can be further improved through caching.

4. **Operations on the stream content:**
A subsequent requirement is that *WeSP must guarantee a wide range of operations over the streams.* As mentioned before, RDF Stream Processing requires that the stream can be filtered or aggregated and that the result is another stream, which can be observed. This can be implemented via SPARQL queries that receive streamed data as their input, apply the desired operation, and return a new output stream of the results. Multiple of these queries can be chained together, to obtain the desired output depending on the use case.

5. **Accessible information about the stream.**
In order to improve the accessibility of the data, *WeSP must support the publication of stream descriptions.* These stream descriptions can contain metadata, such as the expected update frequency and the expected size of the updates. This information can serve multiple purposes. If a Git-based approach would be used to store the data, the meta-information can indicate the parent version, which can subsequently be interpreted to update a local copy by resolving the deltas. Additionally, if applicable, `Expiry` timestamps can be added to benefit from [Data caching](#caching).

6. **Stream variety support:**
TODO

7. **Reuse of technologies and standards:**
TODO

- RSP-QL

#### TripleWave
TripleWave [](cite:cites mauri2016triplewave) is an open-source framework that allows the creation and the publishing of RDF streams. In the requirements chapter, the authors list seven requirements to which the framework must comply, particularly interesting are requirements R1 and R2, these state that "TripleWave may use streams available on the Web as input" and "TripleWave shall be able to process existing time-aware (RDF) datasets" (which could or could not be formatted as streams). These requirements imply that the framework has conversion mechanisms to transform this data. The framework uses CSV and JSON connectors to convert existing web streams, as well as R2RML (mentioned in chapter 2) for the generation of RDF streams.
For consumption of the streams, the framework provides both a push-based and pull approach, using WebSockets, end users can subscribe to a TripleWave endpoint and get updates pushed to them. Alternatively, streams can also be published for the user to pull them.

### Activity Streams 2 seems more useful for either Data versioning or Data formatting
Activity Streams 2.0 [https://www.w3.org/TR/activitystreams-core/] are another specification by W3C. It specifies a model which represents activities using JSON. The most basic building block is an ‘Activity’ which describes an action. This specification seems to be lacking support for representing the history of updates, like there exist in specifications more focused towards events. The model does specify possibilities to make such a construction, for example using ‘Collection’ objects.


### Use of intermediaries
TODO DNS parallel hier uitleggen. (authorative e.g.)