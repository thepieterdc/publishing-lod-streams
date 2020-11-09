## Data formatting
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

### Decoupling data
Since RDF is used to decouple data from its scheme, data should be possible to be received from a database and turned into an RDF format. As an example to show this is possible, SQL will be taken into account. 

To make this more clear, the structure of SQL is briefly mentioned. SQL has a table. Every table has multiple rows and columns. A row presents an entity, while a column presents a value for a certain relation for an entity. When turning this into RDF, the SQL entity can be seen as the RDF subject. The relation (= column) would be the predicate and the value would be the object [](cite:cites sparql2013querylanguage). 
