## Data formatting
{:#formatting}

In this section, different ways to format and serialize RDF data are discussed. RDF data can be formatted into multiple formats, such as RDF/XML [](cite:cites manola2004rdf), RDFa [](cite:cites herman2015rdfa), Turtle [](cite:cites beckett2014rdfturtle), N-Triples [](cite:cites beckett2014rdfntriples) and JSON-LD [](cite:cites sporny2012json). Each of these formats have their advantages and drawbacks, a detailed comparison is provided further in this section. Additionally, it is possible to receive data from various sources, such as databases. This section elaborates how this data can be transformed into RDF data so that it can be used for Linked Data querying.

### Resource Description Format (RDF)
{:#formatting-RDF}
Before considering the different formats to serialize RDF data, the RDF framework is described. The purpose of RDF is to create a general method to describe resources and relations between data objects, without making any assumptions regarding the domain. The concept of RDF originates from the problem that the World Wide Web was made to be interpreted by humans instead of machines. RDF proves to be an effective way of integrating information of different sources by decoupling the information from its original scheme. In other words, RDF aims to make the Web interpretable by machines [](cite:cites lassila1998resource).

One of the new features introduced in [RDF 1.1](https://www.w3.org/TR/rdf11-concepts/) is the concept of named graphs. Since RDF 1.1, an RDF dataset may have multiple named graphs and at most one unnamed default graph. This enables grouping the data and as such giving extra context about how certain elements of the data are related [](cite:cites schreiber2014rdf). Subsequently, named graphs make it possible to both assign a URI to a collection of triples, and to create statements on the whole set.

### Data model
<figure id="RDF">
<img src="images/spo.svg" alt="[RDF statement]">
<figcaption markdown="block">
Visualization of an RDF triple as a directed graph. This shows how a triple connects two labeled graph nodes via a directed labeled edge.
</figcaption>
</figure>

RDF is structured as a collection of triples. These triples can be visualized as a node-arc-node link, which consists of a subject, a predicate, and an object ([](#RDF)). Thus this collection of triples can be interpreted as a graph, with the arc pointing towards the object [](cite:cites klyne2009resource). 

An RDF triple represents a simple sentence. A commonly used example is the triple (``Alice - Knows - Bob``), which means that the subject ''Alice'', knows the object of the triple ''Bob''.

### Serialization format 
When reasoning about RDF, it is important to note that RDF itself is not a data format, but a data model. This model describes that the data should be represented as a triple, in the form of `subject - predicate - object`. Hence, to publish an RDF graph, it must be serialized using an RDF syntax [](cite:cites heath2011linked). Some of the standardized syntaxes are described below, each with the corresponding notation of the ``Alice - Knows - Bob` example.

#### RDF/XML

The _RDF/XML_ syntax is the original RDF serialization format to publish Linked Data on the web. This syntax presents the RDF data model using XML ([](#rdfxml-example)). However, the popularity of this syntax is decreasing, because it is difficult for humans to interpret and write [](cite:cites manola2004rdf).

<figure id="rdfxml-example" class="listing">
````/snippets/rdfxml_example.xml````
<figcaption markdown="block">
RDF/XML representation of the ```Alice - Knows - Bob``` example.
</figcaption>
</figure>

#### Turtle and TriG

_Turtle_ is a serialization format for RDF data that exposes the data in plain text. This format provides prefixes for namespaces and other abbreviations. These prefixes are described at the top of the document. Additionally with Turtle, every triple has to end with either one of three defined suffixes. The first suffix is a comma (`,`). This suffix indicates that the next triple has the same *subject* and *predicate* as the current triple, requiring nothing but the object on the next line. Alternatively, when a triple ends in a semicolon (`;`), the next triple has the same subject (but a different predicate) as the current one. Finally, a triple can have a dot (`.`) as its suffix. This suffix signals that the following triple does not have anything in common with the current triple. The abbreviations of Turtle are non-mandatory. As far as legibility is concerned, Turtle is considered one of the most readable and writable formats [](cite:cites beckett2014rdfturtle). This is illustrated in [](#turtle-example).

TriG is an extension of Turtle. Just like Turtle, TriG defines a textual syntax for RDF that allows an RDF dataset to be written in a compact and natural text form. TriG extends the functionalities of Turtle by bringing the possibility to group triples into multiple graphs. Furthermore, these named graphs (as described in [RDF](#formatting-RDF)) can be preceded by their names. This is so important because named graphs are a key concept of the Semantic Web [](cite:cites trig). 

<figure id="turtle-example" class="listing">
````/snippets/turtle_example.ttl````
<figcaption markdown="block">
Turtle representation of the ```Alice - Knows - Bob``` example, from W3.org[^rdf-example].
</figcaption>
</figure>

[^rdf-example]: https://www.w3.org/TR/turtle/

#### N-Triples

The N-Triples format (visualized in [](#ntriples-example)) is a subset of Turtle that lacks support for prefixes and abbreviations. Consequently, this format is susceptible to both redundancies and larger file sizes when compared to Turtle. However, this redundancy also has an advantage: it allows line-by-line processing of N-Triples files. This allows for random access, straightforward compression, and usage in streaming contexts. Currently, the format is mostly used for files that are too big to fit into memory [](cite:cites beckett2014rdfntriples).

<figure id="ntriples-example" class="listing">
````/snippets/ntriples_example.txt````
<figcaption markdown="block">
N-Triples representation of the ```Alice - Knows - Bob``` example.
</figcaption>
</figure>

#### JSON-Linked Data (JSON-LD)
{:#formatting-json-ld}

JSON-LD is a lightweight Linked Data format, based on the widely used JavaScript Object Notation (JSON) format for formatting data. Because of this and because of its popularity, legibility, and writability, JSON-LD is the ideal format to pass Linked Data in a programming environment. Because JSON-LD uses the same syntax as JSON, it can easily be used to parse and manipulate RDF data [](cite:cites sporny2012json). An example of this syntax is provided in [](#jsonld-example).

<figure id="jsonld-example" class="listing">
````/snippets/jsonld_example.json````
<figcaption markdown="block">
JSON-LD representation of the ```Alice - Knows - Bob``` example.
</figcaption>
</figure>

#### RDF in webpages

Multiple formats can be used to embed RDF triples into existing webpages on the internet. The first format is RDFa, which integrates RDF triples into Hypertext Markup Language (HTML) documents by binding the RDF triples with the HTML Document Object Model (DOM). This means that the existing content of pages is shown, thanks to RDFa, inside the HTML code. Because of this, the structured data is exposed to the web [](cite:cites herman2015rdfa), as shown in [](#rdfa-example).

<figure id="rdfa-example" class="listing">
````/snippets/rdfa_example.html````
<figcaption markdown="block">
RDFa representation of the ```Alice - Knows - Bob``` example.
</figcaption>
</figure>

Another option is to use Microdata. This format augments HTML webpages with specific machine-readable labels. It allows nested groups (items) of name-value pairs to be added to documents in addition to the existing content. To create an item, the `itemscope` attribute is used. An extra property can be added to an item with the `itemprop` attribute [](cite:cites microdata). This practice is demonstrated in [](#microdata-example).

<figure id="microdata-example" class="listing">
````/snippets/microdata_example.html````
<figcaption markdown="block">
Microdata representation of the ```Alice - Knows - Bob``` example.
</figcaption>
</figure>

[JSON-LD](#formatting-json-ld) snippets can be used to structure data into HTML as well. This method uses a JavaScript notation, embedded in a `script` tag. In other words, within the `script` tag, additional data can be represented in a structured format, using JSON-LD.

#### Comma-Separated Values (CSV) on the web

CSV is a popular format for publishing data. It is understandable by both humans and machines and it is typically presented in a table because of its structured format. Additionally, CSV data can easily be transformed into RDF data. However, one of the disadvantages of CSV is the absence of a mechanism to indicate the datatype of a specific column, which makes the data hard to validate. CSV on the Web solves this problem by augmenting the dataset with metadata that allows the publisher to provide additional information about the data [](cite:cites tennison2016csv). [](#csvw-example) illustrates how the format of a country code field can be specified.

<figure id="csvw-example" class="listing">
````/snippets/csvw_example.json````
<figcaption markdown="block">
CSV on the Web example of a country code field specification, from W3.org[^csvw-w3-example].
</figcaption>
</figure>

[^csvw-w3-example]: https://www.w3.org/TR/tabular-data-primer/

#### Protocol Buffers

Protocol Buffers are a technique developed by Google, designed for serializing structured data. Protocol Buffers aim to offer an interface description language for data, which is both simple and offers high performance. The data structures (referred to as messages) and services are described in ''proto definition files'', which are programming language-agnostic. Subsequently, Google provides code generators that allow generating source code in multiple different programming languages from these definition files. To achieve high performance, the messages are serialized into a binary format for transmission. This makes them both compact and forward- and backward-compatible. Backward compatibility means that a change in the technology will not break older versions. Forward compatibility on the other hand, means that a file from a more recent version can still be processed by older versions. A disadvantage of Protocol Buffers might be that it was developed for internal use, thus it was not optimized for unpredictable data (such as Linked Data) [](cite:cites protobuf).

In addition to Protocol Buffers, Google has also developed Flat Buffers. These offer access to the serialized data without requiring parsing or unpacking. Furthermore, Flat Buffers focus on memory efficiency, speed, flexibility, a tiny code footprint, strong types and ease-of-use. Flat Buffers work with cross-platform code without dependencies. However, this technology does not seem very useful for Linked Data, because it conflicts with the key principles of Linked Data by enforcing a scheme. Therefore, this is not further discussed in this paper [](cite:cites flatbuf).

#### Header Dictionary Triples (HDT)

{:#formatting-hdt}
HDT is a binary format to represent RDF data in a compact way. An HDT file combines three parts. The first part is the header, which provides metadata about the dataset in a plain RDF format. The second part is the dictionary, which brings a mapping between strings and unique identifiers. The last part contains the triples and encodes the RDF graph using unique identifiers [](cite:cites hdt).

### RDF*
RDF* (pronounced as ''RDF star'') is an extension to the Resource Description Framework, which enables RDF graphs to represent interactions and attributes by embedding triples. By nesting triples, an entire triple can become the subject of a second triple. This eliminates the need for intermediary entities, making the model easier to understand. Even though RDF* offers many benefits, it is still under consideration by the W3C and is not yet officially accepted as a standard.

### Decoupling data
Since RDF is used to decouple data from its scheme, it should be possible to receive an arbitrary dataset (structured as e.g. CSV, XML, JSON or in a database), and transform this into an RDF format. To facilitate this, the RDF Mapping Language (RML) is used to materialize data into RDF triples.

RML is defined to express customized mapping rules from heterogeneous data structures and serializations to the RDF data model. Furthermore, RML is a superset of the W3C-standardized mapping language (R2RML). RML provides a generic way of defining the mappings that is easily transferable to cover references to other data structures. Thus, RML is a generic approach, but offers case-specific extensions. This makes it possible to transform any input (e.g., CSV, JSON, relational databases, etc.) into RDF data [](cite:cites dimou2014rml).
