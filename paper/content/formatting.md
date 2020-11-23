## Data formatting
{:#formatting}

In this chapter, the way data is formatted is discussed. This chapter will describe possible formats to serialize RDF data, among which RDF/XML, RDFa, Turtle, N-Triples and JSON-LD. These different formats all have their own pros and cons, but more abother this later. Further more, techniques to receive RDF data from databases like SQL will be expressed. This part will show how data for databases can be transformed into RDF data, so it can be used for linked data querying.

### RDF
Before diving into the different formats to serialize Resource Description Framework (= RDF) data, some more information about RDF will be given. The goal of RDF is to create a general method to describe relations between data objects. The creation of RDF originates from the problem of the World Wide Web being made to be interpreted by humans and not by machines. RDF proves to be an efficient way of integrating information of different sources by decoupling the information from its original scheme. In short, RDF wants to make the Web interpretable by machines. The general purpose of RDF is to define a mechanism to describe resources without making any assumptions about the domain [](cite:cites lassila1998resource).

### Data model
<figure id="RDF">
<img src="images/spo.png" alt="[RDF statement]">
<figcaption markdown="block">
Example of an RDF statement.
</figcaption>
</figure>

RDF is structured as a collection of triples. These triples can be visualized as a node-arc-node link and exist of a subject, predicate and object, which is visualized in [](#RDF). Thus this collection of triples can be interpreted as a graph, with the arc pointing towards the object [](cite:cites klyne2009resource). 

An RDF triple represents a simple sentence. A commonly used example is the triple (Alice - Knows - Bob), which litterally means "Alice knows Bob". However, such a triple is not required to be a litteral translation. 

### Serialization format
When thinking about RDF, it is important to note that RDF itself is not a data format, but a data model. It describes that the data should be represented with the (subject - predicate - object) triples form. Hence before an RDF graph can be published, it must be serialized using an RDF syntax. Many possible syntaxes exist, but the ones described in this paper are: 'RDF/XML', 'RDFa', 'Turtle', 'N-Triples' and 'JSON-LD'. All of those syntaxes are standardized [](cite:cites heath2011linked). 

#### RDF/XML
The RDF/XML syntax is one of the older RDF serialization syntaxes to publish Linked Data on the web. This syntax presents the RDF data model using XML. This syntax is recently being less used because of the difficulty of both reading and writing it for humans [](cite:cites manola2004rdf).

#### RDFa
RDFa is a serialization format that integrates the RDF triples into Hypertext Markup Language (= HTML) documents. It does so by binding the RDF triples with the HTML Document Object Model (= DOM). This means that the existing content of pages is shown, thanks to RDFa, by editing the HTML code. Because of this, the structured data is exposed to the Web [](cite:cites adida2012rdfa).

#### Turtle
Tutle is a serialization format for RDF data, which exposes the data in plain text. Turtle provides prefixes for namespaces and other abbreviations. These prefixes are described at the top of the document. With Turle, every single triple has to end with one of the following characters: '.', ';' or ','. When a triple ends with a '.', it means the next triple has nothing in common with the current triple. When a triple ends with a ';', it means the next triple has the same subject as the current triple. Thus only two values (predicate and object) will be shown on the next line. At last, when a triple ends with a ',', the next triple has the same subject and predicate as the current triple. Thus only the object will be on the next line. These abbreviations are not mandatory. A last note is that Turtle is one of the most readable and writable formats [](cite:cites beckett2014rdfturtle).

#### N-Triples
The N-Triple format is a subset of Turtle. The difference is that the N-Triples format does not support the prefixes and the abbreviations. Because of this, N-triples is susceptible for redundancies. This causes the N-Triples files to be typically bigger than Turtle files. However, this reduncacy has a huge advantage, which is useful for the next chapters in this paper. Because of this redundancy, the N-Triples files can be processed one line at a time. Like this, it can easily be compressed (or probably be used in a stream) and is mostly used for files that are too big to fit into memory [](cite:cites beckett2014rdfntriples).

#### JSON-LD
JSON-LD is an abbreviation for JSON-LinkedData. JSON-LD is a lightweight Linked Data format, based on the widely used JSON format for passing on data. Because of this and because of both its readability and writability, JSON-LD is the ideal format to pass on Linked Data in a programming environment. Because JSON-LD uses the same syntax as JSON, it can easily be used to parse and manipulate RDF data [](cite:cites sporny2012json).

#### TriG
TriG is an extension of Turtle. Just like Turtle, TriG defines a textual syntax for RDF that allows an RDF dataset to be written in a compact and natural text form. TriG extends the functionalities of Turtle by bringing the possibility to group triples into multiple graphs. Furthermore, these named graphs can be preceded by their names. This is so important because named graphs are a key concept of the Semantic Web [](cite:cites trig). 

#### CSV on the web
CSV stands for Comma-Seperated Values and is a popular format for publishing data. It is understandable by both humans and machines and it is typically presented in a table because of its structured format. One of the disadvantages of CSV is the absence of a mechanism to indicate the datatype of a specific column, which makes the data hard to validate. To solve this problem, CSV on the web augments the dataset with metadata, which makes it possible to give additional information about the data. Another advantage is that this CSV data can be easily transformed to RDF data [](cite:cites tennison2016csv).

#### Protocol Buffers
Protocol Buffers is a method of serializing structured data. It is developed by Google and it involves an interface description language for data. Google also provides a code generator for multiple programming languages. The goal of Protocol Buffers is simplicity and performance. The data structures (referred to as messages) and services are described in a proto definition file. To achieve the high performance, those messages are serialized into a binary wire format. This makes it compact and both forward- and backward-compatible. This backward compatibility means that a change in the technology will not break older versions. The forward compatibility means that an input for a later version can still be processed by the older versions. However, a disadvantage for the Protocol Buffers might be that it was developed for internal use, thus it was not optimized for unpredictable data (like linked data) [](cite:cites protobuf).

Very similar to the Protocol Buffers are the Flat Buffers, which are also developed by Google. These offer access to serialized data without parsing or unpacking. Additionally, they focus memory efficiency and speed, flexibility, a tiny code footprint, strong types and ease-of-use. Flat buffers work cross-platform code with no dependencies. However, this technology does not seem very useful for linked data, therefor we will not further discuss it here [](cite:cites flatbuf).

#### HDT
{:#formatting-hdt}

HDT is a binary format to represent RDF data in a compact way. An HDT file is composed in three parts. The first part is the header, which provides metadata about the dataset in a plain RDF format. The second part is the dictionary, which brings a mapping between strings and unique identifiers. The last part are the triples, which encodes the RDF graph using unique identifiers [](cite:cites hdt).

### RDF*
RDF* (pronounced as ''RDF star'') is an extension to the Resource Description Framework. It enables RDF graphs to represent interactions and attributes through an implementation of embedded triples. Thus, by nesting triples, an entire triple can become the subject of a second triple. This eliminates the need for intermediary entities, making the model easier to understand. Even though RDF* offers many benefits, it is still under consideration by the W3C and is not yet officially accepted as a standard.

### Decoupling data
Since RDF is used to decouple data from its scheme, data should be possible to be received from a database and turned into an RDF format. As an example to show this is possible, SQL will be taken into account. 

To make this more clear, the structure of SQL is briefly mentioned. SQL has a table. Every table has multiple rows and columns. A row presents an entity, while a column presents a value for a certain relation for an entity. When turning this into RDF, the SQL entity can be seen as the RDF subject. The relation (= column) would be the predicate and the value would be the object [](cite:cites sparql2013querylanguage). 

However, a better approach for decoupling data would be using RML.

#### RML
RML is the RDF Mapping Language. This mapping language is defined to express customized mapping rules from heterogeneous data structures and serializations to the RDF data model. Furthermore, RML is a superset of the W3C-standardized mapping language (= R2RML). RML provides a generic way of defining the mappings that is easily transferable to cover references to other data structures. Thus, RML is a very generic approach, but offers case-specific extensions. This makes it possible to transform any input (e.g., csv, json, relational databases, etc.) into RDF data [](cite:cites dimou2014rml).