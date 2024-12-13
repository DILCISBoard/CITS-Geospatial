# METS Requirements

## Package and Representation METS

Generally, CSIP can consist of zero to many representations, and this is an important feature that needs to be considered when packing geodata files within CSIPs.

There can easily be different representations of the same geospatial content located within one CSIP. For example, one package could consist of:

- one representation with geodata in original format;
- one representation with geodata in a long-term preservation format;
- one representation with geodata in dissemination formats;

There can be several representations of dissemination formats. There can also be many different types of geodata records and databases within the same package.

As for the CITS Geospatial specification, there always needs to be a minimum of one representation and therefore a minimum of two METS.xml. The Package METS.xml must be a general METS.xml stating if the package mainly contains Geospatial Records. Then, the Representation METS.xml describes the specific main data types in the representation.

A CITS Geospatial builds upon the general CSIP requirements, which are presupposed but not explicitly mentioned here. Those requirements should be met before applying the requirements listed below:
