## Linked Data

### TODO MAAK DING OVER SPARQL
{:#sparql}

One of the most critical aspects of the semantic web is creating links between the data. 
These links do not only allow humans to traverse the web, but they provide a simple way for machines to traverse the web as well, and are described in a standardized framework called RDF.

Four rules need to be followed to speak of linked data [](cite:cites bizer2011linked): 

1. Objects have to be identified through a unique resource identifier (URI).
2. These URIs have to be HTTP URIs.
3. Data has to be found when we follow such a URI. This data can be formatted in many ways, such as XML. 
4. The data has to include links to other data. These links are vital to create a 'web' of data.
An easy way to represent linked data is by using a directed graph. Figure [](#LinkedData) is an example of such a graph. 
The vertices represent objects or data points, while the edges represent the links objects contain to other objects or data points.
For example, in this figure, there is an object Alice that has a link called 'knows' to Bob. 
This link looks like (Alice, 'knows', Bob) in an RDF triple, where Alice and Bob would be the respective URIs of these data points. 
Alice also has a link called 'Name' to a data point with the value "Alice".  
It can be noticed that every object has at least one link, which will guarantee a 'web' of data.

<figure id="LinkedData">
<img src="images/LinkedData.svg" alt="[Linked Data]">
<figcaption markdown="block">
Example of a linked data web

</figcaption>
</figure>
