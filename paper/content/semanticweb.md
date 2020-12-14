## Semantic Web
The term ``Semantic Web'' was first introduced by Tim Berners-Lee in 2001. It is sometimes referred to as ``Web 3.0''. The Semantic Web is created to solve the main problem of the Web, being that the Web is readable for humans, but not for machines. With the Semantic Web, machines should be able to interprete the Web. These machines are called intelligent agents and they will be able to fulfill complex tasks autonomously [](cite:cites berners2001semantic). 

To achieve this goal, a preliminary step is that publishers of data must be able to assign a ``meaning'' to the elements of the dataset. More specifically, machines must be able to ``understand'' this meaning without human intervention. This is accomplished using [RDF](#formatting-RDF). Since datasets can have a variety of natures and topics, there is a need for so-called *ontologies*, which can be compared to vocabularies for humans. Finally, the Semantic Web must be *decentralized*,  which means that data should be spread out as much as possible [](cite:cites berners2001semantic). 

### Semantic Web Stack

The architecture of the Semantic Web is based on a hierarchy of languages. In this hierarchy, the languages will use the languages lower in the hierarchy in order to achieve its goal. This hierarchy is visualized in [](#semanticstack). Only the most important layers for the understanding in this paper will be discussed.

<figure id="semanticstack">
<img src="images/Semantic-Web-Stack.png" alt="[Semantic Web Stack]">
<figcaption markdown="block">
Semantic Web Stack (based on [](cite:cites semanticwebstack)).
</figcaption>
</figure>

#### Unicode
{:#unicode}

Unicode is a system that is used in order to encode characters. Unicode is (similar to ASCII) developed to aid developers in the creation of applications. However, Unicode tackles the problems, existing in earliers encoding systems, like not supporting all characters. Unicode offers a unique number for each character on every platform, for every program and in every language [](cite:cites unicode).

Unicode is at the base of the Semantic Web Stack because the Semantic Web must be able to pass on documents, which must be interpretable.

#### Uniform Resource Identifier (URI)

URI offers a uniform way to identify objects. It is often mistaken with Uniform Resource Locator (URL), but the big difference is that URL locates something, while URI identifies something. This means that every URL is a URI, but the opposite is not true [](cite:cites uri).

Together with [Unicode](#unicode), URI forms the base of the Semantic Web Stack. Both URI and Unicode enable the identification of resources on the Web in a uniform manner.

#### Extensible Markup Language (XML)

XML is used to describe data. One of the most important characteristics of XML is its ability of structuring data in a flexible way. XML will define elements using so called ''tags''. Like this, every element will have both a start tag and an ending tag. Furthermore, XML supports nested elements, enabling the creation of hierarchies. XML is important because of its simplicity and extensibility.

#### Resource Description Framework (RDF) Model, Syntax en Schema

RDF will give information in a describing way. This however will be too important for the following parts of this paper to be explained briefly. RDF is explained in [RDF](#formatting-RDF).
