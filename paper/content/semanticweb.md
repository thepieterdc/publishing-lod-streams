## Semantic Web
The term _''Semantic Web''_ was first introduced by Tim Berners-Lee in 2001 <span class="comment" data-author="HD">citation needed</span>. The Semantic Web is created to solve the main problem of the Web, being that the Web is readable for humans, but not for machines. With the Semantic Web, machines should be able to interprete the Web. These machines are called intelligent agents and they will be able to fulfill complex tasks autonomously [](cite:cites berners2001semantic). 

To achieve this goal, a preliminary step is that publishers of data must be able to assign a meaning to the elements of the dataset. More specifically, machines must be able to understand this meaning without human intervention. Since datasets can have a variety of natures and topics, there is a need for so-called *ontologies*, which can be compared to vocabularies for humans <span class="comment" data-author="HD">not really true, vocabularies are more common than ontologies on the semantic web. vocabularies define terms, ontologies define how these terms are related, mostly for reasoning</span>. Finally, the Semantic Web must be *decentralized*,  which means that data should be spread out as much as possible [](cite:cites berners2001semantic). <span class="comment" data-author="HD">that's a really strong claim, that would mean a separate server per resource?</span>

### Semantic Web Stack

The architecture of the Semantic Web is based on a hierarchy of technologies. In this hierarchy, each layer uses the layer beneath it in the hierarchy to achieve its goal. This strategy is visualized in [](#semanticstack). In this paper, only the most important layers will be discussed. <span class="comment" data-author="HD">important, how? the subject of the paper is the publishing of data, so you focus on the layers that are relevant to that. basically, everything up until the rules -- those are usually kept internal in proprietary databases</span>

<figure id="semanticstack">
<img src="images/Semantic-Web-Stack.png" alt="[Semantic Web Stack]">
<figcaption markdown="block">
Semantic Web Stack (based on [](cite:cites semanticwebstack)). <span class="comment" data-author="HD">The caption is supposed to tell the readers what to look for in the image. Is XML mandatory? What about RDF Schema? This was the original stack, reflecting the state of the Web in 2001 -- so it uses common technologies from then, 20 years ago. Also, this image is pretty blurry, try finding a 300+ dpi one, or create your own</span>
</figcaption>
</figure>

#### Unicode
{:#unicode}

Unicode is a system that is used to encode characters. <span class="comment" data-author="HD">it does a lot more than that, take some inspiration from wikipedia's introduction; and this is where the reference to the spec should be</span> Similar to ASCII, Unicode was established to aid developers in the creation of applications. However, the advantage of Unicode is that it solves the problems that exist in previous encoding schemes, such as the inability to encode all characters. This problem in particular is tackled by assigning a unique identifier to each character on every platform, for every program and in every language [](cite:cites unicode). <span class="comment" data-author="HD">technically not even true, there are multiple ways to represent the same characters -- take a look at https://unicode.org/reports/tr15/</span>

Unicode is at the base of the Semantic Web Stack, because the Semantic Web must be able to pass on documents, which must be interpretable. <span class="comment" data-author="HD">it's at the bottom of the semantic web stack because it's a W3C recommendation for the Web in general</span>

#### Uniform Resource Identifier (URI)

A URI offers a uniform way to identify an object. This identifier is often confused with a *Uniform Resource Locator (URL)*, which *locates* an object, rather than *identifying* it. Consequently, every URL is an example of a URI, but the opposite is not true [](cite:cites uri).

Together with [Unicode](#unicode), URI forms the foundations of the Semantic Web Stack. This combination enables the identification of resources on the Web in a uniform manner.

#### Extensible Markup Language (XML)

XML is used to describe data. One of the most important characteristics of XML is its ability of structuring data in a flexible way. XML defines elements using so-called ``tags'', with every element having both a start-tag and an end-tag. Furthermore, XML supports nested elements, enabling the creation of hierarchies. XML is important because of its simplicity and extensibility.

<span class="comment" data-author="HD">XML _was_ at the bottom, because it was a W3C recommendation as well</span>

#### Resource Description Framework (RDF) Model, Syntax and Schema

The final element of the Semantic Web Stack is RDF, which is used to add meta-information to a dataset in a describing way. Due to the importance of RDF for the rest of this paper, it is explained in detail in [RDF](#formatting-RDF).

<span class="comment" data-author="HD">if RDF is the next layer, why isn't it the next section?</span>

