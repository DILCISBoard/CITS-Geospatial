# Context

## Purpose

The purpose of this document is to describe the Content Information Type
Specification for Geospatial records (CITS Geospatial). This
specification describes how to package files containing geospatial
records in a CSIP package(s) and the extension of the E-ARK SIP. It is
designed to be used for the transfer of different types of Geospatial
records and resources to and from archives.

**NOTE**: Throughout this document the acronym CSIP will be used to
describe the combination of CSIP and SIP.

## Scope

Geospatial records are any digital records that describe an object in
space using coordinates based on a geographic coordinate system and a
set of descriptive elements called attributes. They are created in many
different proprietary formats but mostly come in two forms, vector data
(points, lines, polygons) and raster data (sets of one or multiple
arrays of pixels).

The CITS Geospatial specification scope describes how geospatial data
files, metadata files, schema files for validation, documentation, and
other files should be placed and structured into the CSIP based
structure when producing a CITS Geospatial SIP for transfer to long-term
preservation.

This specification is general enough to support multiple types of
geospatial records (not only vector and raster-based records).
Therefore, the specification does not define mandatory long-term
preservation formats. Instead, it provides a possibility of extensions,
the so-called *[Long-term preservation format Profiles]{.underline}*,
that need to comply with general requirements. Examples of such Profiles
for vector data (GML) and raster data (GeoTIFF) are provided in the
Guideline that accompanies this document. An example of a Profile for
GIS in its own guideline which also accompanies this document. Profiles
for other geospatial records formats (like proprietary data, earth
observations, point clouds, oblique images, web services, etc.) are not
proposed at this stage. They will be added later in cooperation with the
geospatial community.

Description of the two accompanying guidelines:

- The first accompanying guideline document (*Guideline for the
  specification for the E-ARK Content Information Type Specification
  for Geospatial data (CITS Geospatial)*) provide a basic introduction
  to the field of geospatial data and the concepts used in this
  specification. In the Guideline there is also a description of the
  Profile for using the INSPIRE directive, with the CITS Geospatial
  both as the content being transferred and how to map INSPIRE
  information to an archival finding aid.

- The second guideline document (*Guideline for using the
  specification for the E-ARK Content Information Type Specification
  for Geospatial data (CITS Geospatial) with GIS*) provides the
  information on how to extend the first accompanying guideline
  document with content describing preservation of selected elements
  from Geographical Information Systems (GIS). The guideline aims to
  extend the scope of preservation beyond the geospatial data records
  themselves and focus more on GIS elements defining the geospatial
  information products.

A glossary for archival and geodata terms to facilitate the readability
of the specification is present at the beginning of this document.

## Information Package Layered data model

This section introduces the role of the CITS Geospatial and its
dependencies on basic structures of the Information package.

**This specification is created based on the requirements of the Common
Specification for Information Packages (CSIP) and the Specification for
Submission Information Packages (E-ARK SIP). To fully understand its
requirements, we highly recommend that users learn and understand the
requirements and the terminology of the initial documents, before using
this specification.**

The data model structure is based on a layered approach for information
package definitions (Figure 2). The Common Specification for Information
Packages (CSIP) forms the outermost layer.

The general SIP, AIP and DIP specifications add submission, archiving
and dissemination information to the CSIP specification.

The third layer of the model represents specific Content Information
Type Specifications (CITS), such as this CITS Geospatial specification.

Additional layers for business-specific specifications and local variant
implementations of any specification can be added to suit the needs of
the organisation.

<a name="fig1"></a>
![Data Model Structure](media/fig_1.png)

**Figure 1:** Data Model Structure

Every level in the data model structure inherits metadata entities and
elements from the higher levels. In order to increase adoption, a
flexible schema has been developed. This will allow for extension points
where the schema in each layer can be extended to accommodate additional
information on the next specific layer until, finally, the local
implementation can add specific entities or metadata elements to satisfy
very specific local needs. Extension points can be implemented by:

- Embedding foreign extension schemas (in the same way as supported by
  METS <http://www.loc.gov/standards/mets/> and PREMIS <http://www.loc.gov/standards/premis/>. These support both increasing the granularity of existing metadata elements by using more detailed data structures as well as adding new types of metadata.

- Substituting metadata schemas for standards more appropriate for the local implementation.

The structure allows the addition of more detailed requirements for
metadata entities, for example, by:

- Increasing the granularity of metadata elements by using more
  detailed data structures, or

- Adding local controlled vocabularies.

For consistency, design principles are reused between layers as much as
possible.
