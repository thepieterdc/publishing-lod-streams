## Semantic Web
The term ``Semantic Web'' was first introduced by Tim Berners-Lee in 2001. It is sometimes referred to as ``Web 3.0''. The Semantic Web is created to solve the main problem of the Web, being that the Web is readable for humans, but not for machines. With the Semantic Web, machines should be able to interprete the Web. These machines are called intelligent agents and they will be able to fulfill complex tasks autonomously [](cite:cites berners2001semantic). 

To achieve this goal, a preliminary step is that publishers of data must be able to assign a ``meaning'' to the elements of the dataset. More specifically, machines must be able to ``understand'' this meaning without human intervention. This is accomplished using [RDF](#formatting-RDF). Since datasets can have a variety of natures and topics, there is a need for so-called *ontologies*, which can be compared to vocabularies for humans. Finally, the Semantic Web must be *decentralized*,  which means that data should be spread out as much as possible [](cite:cites berners2001semantic). 

### Semantic Web Stack

The architecture of the Semantic Web is based on a hierarchy of languages. In this hierarchy, the languages will use the languages lower in the hierarchy to achieve their goal. This strategy is visualized in [](#semanticstack). In this paper, only the most important layers will be discussed.

<figure id="semanticstack">
<img src="images/Semantic-Web-Stack.png" alt="[Semantic Web Stack]">
<figcaption markdown="block">
Semantic Web Stack (based on [](cite:cites semanticwebstack)).
</figcaption>
</figure>

#### Unicode
{:#unicode}

Unicode is a system that is used to encode characters. Similar to ASCII, Unicode was established to aid developers in the creation of applications. However, the advantage of Unicode is that it solves the problems that exist in previous encoding schemes, such as the inability to encode all characters. This problem in particular is tackled by assigning a unique identifier to each character on every platform, for every program and in every language [](cite:cites unicode).

Unicode is at the base of the Semantic Web Stack because the Semantic Web must be able to pass on documents, which must be interpretable.

#### Uniform Resource Identifier (URI)

A URI offers a uniform way to identify an object. This identifier is often confused with a *Uniform Resource Locator (URL)*, which *locates* an object, rather than *identifying* it. Consequently, every URL is an example of a URI, but the opposite is not true [](cite:cites uri).

Together with [Unicode](#unicode), URI forms the foundations of the Semantic Web Stack. This combination enables the identification of resources on the Web in a uniform manner.

#### Extensible Markup Language (XML)

XML is used to describe data. One of the most important characteristics of XML is its ability of structuring data in a flexible way. XML defines elements using so-called ``tags'', with every element having both a start-tag and an end-tag. Furthermore, XML supports nested elements, enabling the creation of hierarchies. XML is important because of its simplicity and extensibility.

#### Resource Description Framework (RDF) Model, Syntax and Schema

RDF will give information in a describing way. This however will be too important for the following parts of this paper to be explained briefly. RDF is explained in [RDF](#formatting-RDF).