# Meeting November 9, 2020.

- Ga voor Amerikaans Engels.

## Formatting
- csv on the web
- protobuf
- hdt (ofzo) binaire formaten
- TRIG (nodig voor rsp-ql)
- alle rdf1.1 serialisaties
- json-ld is ook rdf1.1
- doe misschien met tabel ipv hoofdstukken om te condensen
- misschien iets over mapping languages 
- formats kunnen op eender welke backend draaien


## Versioning
- Ostrich zeker bekijken (Ruben Taelman)
    - verschillende soorten queries over veranderende dataset
    - vergelijk ^ met die 3 requirements (hoe wordt conflation in Ostrich gedaan?)
- Live Open Data publishing in Flanders
- in welke mate zijn requirements serieus te nemen? hoe strikt zijn die?
- requirements paper vermelden "on a web of data streams" hier ook checken
    - voor streaming specifiek, vergelijk met git based
- 

### Activity streams
= Semantisch niveau -> niets met versioning te maken, maak misschien 5e hoofdstuk "Data modelling"
    - Web of Things (W3C)
- soort facebook feed
- social media decentraliseren
    - vb: like posten naar iemand zijn server
- werkt samen met linked data notifications + eventueel linked data platform = core specs van SOLID
- leg link naar persoonlijke data (vermeld SOLID) -- data die in SOLID pod zit / persoonlijke data pod

## Delivery / Transport
- Uitdaging tussen slow/fast-moving
- Ga op zoek naar generieke componenten van MQTT
    - waarvoor is het exact goed -> vb. heel snel veranderende data
    - welk aspect is eigen hieraan? wat is het voordeel van MQTT over HTTP?
    - voordeel: acknowledgement dat message toegekomen is
        - "QA
- CoAP ook bespreken / Lightweight M2M ook bespreken
- Leidt misschien te ver van einddoel
- Paper van Brecht Vandevyvere "Polling vs pubsub"! heel belangrijk
    -> Op HTTP niveau, wanneer overschakelen naar pubsub niveau bovenop HTTP
- Hoe werken websockets
- Hoe werken Server-Side Events
- Hoe werken alle andere pubsub mechanismes als updates sneller dan 10s nodig zijn
- MQTT over WebSockets is misschien een ding -> bekijk eens?
- Zeg mischien iets over AMQP/AMPQ whatever het is, dit is in principe MQTT zonder vaste message lengte
    -> Kunnen we hier linked data over http over sturen?
- Kunnen we principes van message queue protocollen toepassen op het web ipv naast het web?
    -> Niet evident maar wel interessant
- Bekijk event sourcing nog!
- Misschien security issues met MQTT (check eens CVE's hierover)

## Caching
- Gebruik RFC over HTTP caching
- Content Delivery Networks
    - CloudFlare: check ook hun blogposts/academische artikels eens (load balancing/replication)
    - Akamai
