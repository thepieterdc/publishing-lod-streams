## Data formatting
{:#formatting}

In this section, different ways to format and serialize Resource Description Format (RDF) data. Examples of these formats include RDF/XML, RDFa, Turtle, N-Triples and JSON-LD. These different formats all have their own advantages and drawbacks, a detailed comparison will be provided later. Furthermore, techniques to receive RDF data from other sources like databases will be discussed. This part will show how data from databases can be transformed into RDF data, so it can be used for Linked Data querying.

### Resource Description Format (RDF)
{:#formatting-RDF}
Before diving into the different formats to serialize RDF data, some more information about RDF will be given. The goal of RDF is to create a general method to describe resources and relations between data objects, without making any assumptions about the domain. The creation of RDF originates from the problem of the World Wide Web being made to be interpreted by humans and not by machines. RDF proves to be an efficient way of integrating information of different sources by decoupling the information from its original scheme. In short, RDF wants to make the Web interpretable by machines [](cite:cites lassila1998resource).

One of the new features introduced in [RDF 1.1](https://www.w3.org/TR/rdf11-concepts/) is the concept of named graphs. Since RDF 1.1, an RDF dataset may have multiple named graphs and at most one unnamed graph. This allows grouping of data, which gives extra context about which data belongs together [](cite:cites schreiber2014rdf). In other words, named graphs make it possible to assign a URI to a collection of triples and make it possible to create statements on the whole set.

### Data model
<figure id="RDF">
<img src="images/spo.png" alt="[RDF statement]">
<figcaption markdown="block">
Example of an RDF statement.
</figcaption>
</figure>

RDF is structured as a collection of triples. These triples can be visualized as a node-arc-node link and exist of a subject, predicate and object, which is visualized in [](#RDF). Thus this collection of triples can be interpreted as a graph, with the arc pointing towards the object [](cite:cites klyne2009resource). 

An RDF triple represents a simple sentence. A commonly used example is the triple (Alice - Knows - Bob), which literally means "Alice knows Bob". However, such a triple is not required to be a literal translation. 

### Serialization format
When thinking about RDF, it is important to note that RDF itself is not a data format, but a data model. This model describes that the data should be represented as a triple, in the form of `subject - predicate - object`. Hence, in order to publish an RDF graph, it must be serialized using an RDF syntax. Some of the standardized syntaxes are described below [](cite:cites heath2011linked). 

#### RDF/XML

The RDF/XML syntax is one of the older RDF serialization syntaxes to publish Linked Data on the web. This syntax presents the RDF data model using XML. However, the popularity of this syntax is decreasing, because it is difficult for humans to interpret and write [](cite:cites manola2004rdf).

#### Turtle and TriG

Turtle is a serialization format for RDF data that exposes the data in plain text. This format provides prefixes for namespaces and other abbreviations. These prefixes are described at the top of the document. Additionally with Turtle, every triple has to end with either one of three defined suffixes. The first suffix is a comma (`,`). This suffix indicates that the next triple will have the same *subject* and *predicate* as the current triple, requiring nothing but the object on the next line. Next, when a triple ends in a semicolon (`;`), the next triple will have the same subject (but a different predicate) as the current one. Finally, a triple can have a dot (`.`) as its suffix. This suffix signals that the following triple will not have anything in common with the current triple. The abbreviations of Turtle are non mandatory. As far as legibility is concerned, Turtle is considered one of the most readable and writable formats [](cite:cites beckett2014rdfturtle).

TriG is an extension of Turtle. Just like Turtle, TriG defines a textual syntax for RDF that allows an RDF dataset to be written in a compact and natural text form. TriG extends the functionalities of Turtle by bringing the possibility to group triples into multiple graphs. Furthermore, these named graphs (see [RDF](#formatting-RDF)) can be preceded by their names. This is so important because named graphs are a key concept of the Semantic Web [](cite:cites trig). 

#### N-Triples

The N-Triples format is a subset of Turtle that lacks support for prefixes and abbreviations. Consequently, this format is susceptible to both redundancies and larger file sizes when compared to Turtle. However, this redundancy also has an advantage, in a way that it allows line-by-line processing of N-Triples files. This allows for random access, straightforward compression and usage in streaming contexts. Currently, the format is mostly used for files that are too big to fit into memory [](cite:cites beckett2014rdfntriples).

#### JSON-Linked Data (JSON-LD)

{:#formatting-json-ld}
JSON-LD is a lightweight Linked Data format, based on the widely used JSON format for formatting data. Because of this and because of its popularity, readability and writability, JSON-LD is the ideal format to pass on Linked Data in a programming environment. Because JSON-LD uses the same syntax as JSON, it can easily be used to parse and manipulate RDF data [](cite:cites sporny2012json).

#### RDF in webpages

Multiple formats can be used to embed RDF triples into existing webpages on the internet.

The first format is RDFa. This serialization format integrates RDF triples into Hypertext Markup Language (HTML) documents by binding the RDF triples with the HTML Document Object Model (DOM). This means that the existing content of pages is shown, thanks to RDFa, inside the HTML code. Because of this, the structured data is exposed to the web [](cite:cites adida2012rdfa).

Another option is to use Microdata. This format augments HTML webpages with specific machine-readable labels. It allows nested groups (items) of name-value pairs to be added to documents in addition to the existing content. To create an item, the `itemscope` attribute is used. An extra property can be added to an item with the `itemprop` attribute [](cite:cites microdata). This method is similar to RDFa.

[JSON-LD](#formatting-json-ld) snippets can be used to structure data into HTML as well. This method uses a JavaScript notation, embedded in a `script` tag. In other words, within the `script` tag, additional data can be represented in a structured format, using JSON-LD.

#### Comma-Separated Values (CSV) on the web

CSV is a popular format for publishing data. It is understandable by both humans and machines and it is typically presented in a table because of its structured format. Additionally, CSV data can easily be transformed into RDF data. One of the disadvantages of CSV is the absence of a mechanism to indicate the datatype of a specific column, which makes the data hard to validate. To solve this problem, CSV on the web augments the dataset with metadata, which makes it possible to give additional information about the data [](cite:cites tennison2016csv).

#### Protocol Buffers

Protocol Buffers is a method of serializing structured data. It is developed by Google and it involves an interface description language for data. Google also provides a code generator for multiple programming languages. The goal of Protocol Buffers is simplicity and performance. The data structures (referred to as messages) and services are described in a such called ''proto definition file''. To achieve high performance, those messages are serialized into a binary format for transmission. This makes it compact and both forward- and backward-compatible. This backward compatibility means that a change in the technology will not break older versions. The forward compatibility means that an input for a later version can still be processed by the older versions. However, a disadvantage for the Protocol Buffers might be that it was developed for internal use, thus it was not optimized for unpredictable data (like Linked Data) [](cite:cites protobuf).

Very similar to the Protocol Buffers are the Flat Buffers, which are also developed by Google. These offer access to serialized data without parsing or unpacking. Additionally, they focus on memory efficiency and speed, flexibility, a tiny code footprint, strong types and ease-of-use. Flat buffers work with cross-platform code without dependencies. However, this technology does not seem very useful for Linked Data, because it conflicts with key principles of Linked Data by forcing a scheme. Therefore we will not further discuss it here [](cite:cites flatbuf).

#### Header Dictionary Triples (HDT)

{:#formatting-hdt}
HDT is a binary format to represent RDF data in a compact way. An HDT file combines three parts. The first part is the header, which provides metadata about the dataset in a plain RDF format. The second part is the dictionary, which brings a mapping between strings and unique identifiers. The last part contains the triples and encodes the RDF graph using unique identifiers [](cite:cites hdt).

### RDF*
RDF* (pronounced as ''RDF star'') is an extension to the Resource Description Framework. It enables RDF graphs to represent interactions and attributes by embedding triples. By nesting triples, an entire triple can become the subject of a second triple. This eliminates the need for intermediary entities, making the model easier to understand. Even though RDF* offers many benefits, it is still under consideration by the W3C and is not yet officially accepted as a standard.

### Decoupling data
Since RDF is used to decouple data from its scheme, it should be possible to receive an arbitrary dataset (structured as e.g. CSV, XML, JSON or in a database), and transform this into an RDF format. To facilitate this, the RDF Mapping Language (RML) is used to materialize data into RDF triples.

RML is defined to express customized mapping rules from heterogeneous data structures and serializations to the RDF data model. Furthermore, RML is a superset of the W3C-standardized mapping language (R2RML). RML provides a generic way of defining the mappings that is easily transferable to cover references to other data structures. Thus, RML is a very generic approach, but offers case-specific extensions. This makes it possible to transform any input (e.g., CSV, JSON, relational databases, etc.) into RDF data [](cite:cites dimou2014rml).
