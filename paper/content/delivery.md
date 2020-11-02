## Data delivery = Sieben
In this chapter we will discuss the transmission of our data to the users. As we have previously discussed the storage of data, the problem arises of how we will let the users access it. The current most commonly used protocol for web data exchange is HTTP, which uses a request - response communication pattern. However, this might not be the most optimal form of communication for our purpose. The MQTT protocol, which uses a publish - subcribe pattern or existing software such as Apache Kafka, which employs a similar strategy and uses a protocol an own protocol directly over TCP, might be more suitable. Alternatively, regular HTTP can still be viable, however a new kind of 'protocol' will have to be built on top of it, to better meet the needs of event-based processing.

Also impacting the transmission will be the partitioning of the data. Since we are working with eventstreams, our architecture will be decentralized ([](cite:cites delva2020geospatial) also mentions storage and performance benefits, in comparison with a centralized, data-dump style approach).

- RSS/Atom
- Linked Data Notifications
    - Hiaat: Gaat update over volledige object of enkel over de updates
- ActivityStreams 2

- Event streaming vs event sourcing
    - sourcing: event stream opslaan + archiveren -> data doen
    - streaming: iets doen met laatste waarden en zo snel mogelijk ergens anders krijgen
    