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
   
The form of the data also impacts the transmission. In the case of real-time sensor data, for example, [](cite:cites atmoko2017) shows an MQTT-based approach an indicates that this is more efficient than regular HTTP.

Other options include the utilization of web feeds, such as (most commonly) RSS. RSS [](cite:cites rsspilgrim) publishes updates in a feed and allows users to access them in a standardized format.However, RSS is an umbrella term which spans different formats. Therefore, Atom [http://www.intertwingly.net/wiki/pie/Rss20AndAtom10Compared, https://tools.ietf.org/html/rfc5023] was created, with the goal of achieving more standardization and disambiguation. It uses a separate protocol on top of HTTP. These two approaches to data publishing (which are very similar) should both be considered, since the concept and use of web feeds is similar to what the event-based approach wants to achieve, however, it is is hard to determine a clear ``best option” without doing research (i.e. experimenting with these techniques).

Linked Data Notifications [](cite:cites LDN) is another protocol developed by W3C. It shares similarities with earlier discussed technologies such as Kafka and MQTT. Instead of a Broker, it uses an Inbox. Senders make use of HTTP POST-requests which they send to the ‘Receiver’. The receiver is responsible for the Inbox, in which notifications will be stored. Consumers also consult the receiver, with GET-requests, on a GET-request to the Inbox URL, the receiver will return a listing of all notifications, each notification has an URI and must be an RDF source. The consumer can then request specific notifications from the Inbox. Each notification needs to have an JSON-LD content-type according to the specification, other serializations are optional. This clearly shows the similarities with a system that uses Brokers, however LDN seems less focused on being lightweight and on continuous updating. Depending on the type of data, LDN might prove useful.
   
