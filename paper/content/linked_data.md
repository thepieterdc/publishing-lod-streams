## Linked Data

One of the most critical aspects of the Semantic Web is the ability to create links between multiple datasets. These links are described in a standardized framework, RDF, as previously described in [](#formatting-RDF). Not only do these links allow humans to traverse the web, but they also provide a similar pathway for machines to traverse the web as well.

To qualify as Linked Data, the following four conditions need to be met [](cite:cites bizer2011linked): 

1. Objects have to be identified through a unique resource identifier (URI).
2. These URIs have to be HTTP URIs.
3. Data has to be found when we follow such a URI. This data can be formatted in many ways, such as XML. 
4. The data has to include links to other data. These links are vital to establishing a ''web'' of data.

A simple way to represent Linked Data is by using a directed graph, such as visualized in [](#LinkedData). In this figure, the vertices represent objects or data points, whereas the edges represent the links that connect objects or data points. Among other things, this example visualizes the aforementioned ``Alice - Knows - Bob`` relation. Additionally, the object Alice has a ``Name``-link to a data point with the value ''Alice''. From this, we can infer that the name of the object is Alice.

Finally, observe that every object has at least one link, which implies a connected ''Web of Data''.

<figure id="LinkedData">
<img src="images/linked-data.svg" alt="[Linked Data]">
<figcaption markdown="block">
Example of a linked data web.
</figcaption>
</figure>

### SPARQL
{:#sparql}

SPARQL [](cite:cites world2013sparql) (a recursive acronym that stands for the SPARQL Protocol and RDF Query Language) is a semantic query language that allows to query and edit data stored in the RDF format. It is the standard query language for RDF and was adapted by W3C[^w3c] as a recommendation in 2008. SPARQL is similar to SQL[^sql], but where SQL operates on relational databases, SPARQL operates on the Semantic Web. While the functionality is not completely the same, the style of querying for information is very similar, as shown in [](#sparql-example).

<figure id="sparql-example" class="listing">
````/snippets/sparql-example.txt````
<figcaption markdown="block">
SPARQL example that lists the names of all the objects that have this link, from W3.org[^sparql-w3-example].
</figcaption>
</figure>

[^w3c]: https://www.w3.org/blog/SW/2008/01/15/sparql_is_a_recommendation/
[^sparql-w3-example]: https://www.w3.org/2009/Talks/0615-qbe/
[^sql]: https://www.w3schools.com/sql/sql_quickref.asp