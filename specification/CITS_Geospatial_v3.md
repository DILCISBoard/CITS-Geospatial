**Specification for the E-ARK Content Information Type Specification for
digital geospatial data records archiving (CITS Geospatial)**

**[A proper front page will be created for the publication occurring
after implementation of review comments.]{.mark}**

# Preface

## Aim of the specification

This document is one of several related specifications which aim to
provide a common set of usage descriptions of international standards
for packaging digital information for archiving purposes. These
specifications are based on common, international standards for
transmitting, describing and preserving digital data. They also utilise
the Reference Model for an Open Archival Information System (OAIS),
which has Information Packages as its foundation. Familiarity with the
core functional entities of OAIS is a prerequisite for understanding the
specifications.

The specifications are designed to help data creators, software
developers, and digital archives to tackle the challenge of short-,
medium- and long-term data management and reuse in a sustainable,
authentic, cost-efficient, manageable and interoperable way. A
visualisation of the current specification network can be seen here:

![](media/image1.png){width="6.354166666666667in"
height="3.152674978127734in"}

**Figure I: Diagram showing E-ARK specification dependency hierarchy.
Note that the image only shows a selection of the published CITS and
isn\'t an exhaustive list.**

+----------------+-----------------------------------------------------+
| Specification  | Aim and Goals                                       |
+================+=====================================================+
| Common         | This document introduces the concept of a Common    |
| Specification  | Specification for Information Packages (CSIP). Its  |
| for            | three main purposes are to:                         |
| Information    |                                                     |
| Packages       | -   Establish a common understanding of the         |
|                |     requirements, which need to be met in order to  |
|                |     achieve interoperability of Information         |
|                |     Packages.                                       |
|                |                                                     |
|                | -   Establish a common base for the development of  |
|                |     more specific Information Package definitions   |
|                |     and tools within the digital preservation       |
|                |     community.                                      |
|                |                                                     |
|                | -   Propose the details of an XML-based             |
|                |     implementation of the requirements using, to    |
|                |     the largest possible extent, standards which    |
|                |     are widely used in international digital        |
|                |     preservation.                                   |
|                |                                                     |
|                | Ultimately, the goal of the Common Specification is |
|                | to reach a level of interoperability between all    |
|                | Information Packages so that tools implementing the |
|                | Common Specification can be adopted by institutions |
|                | without the need for further modifications or       |
|                | adaptations.                                        |
+----------------+-----------------------------------------------------+
| E-ARK SIP      | The main aims of this specification are to:         |
|                |                                                     |
|                | -   Define a general structure for a Submission     |
|                |     Information Package format suitable for a wide  |
|                |     variety of archival scenarios, e.g. document    |
|                |     and image collections, databases or             |
|                |     geographical data.                              |
|                |                                                     |
|                | -   Enhance interoperability between Producers and  |
|                |     Archives.                                       |
|                |                                                     |
|                | -   Recommend best practices regarding metadata,    |
|                |     content and structure of Submission Information |
|                |     Packages.                                       |
+----------------+-----------------------------------------------------+
| E-ARK AIP      | The main aims of this specification are to:         |
|                |                                                     |
|                | -   Define a generic structure of the AIP format    |
|                |     suitable for a wide variety of data types, such |
|                |     as document and image collections, archival     |
|                |     records, databases or geographical data.        |
|                |                                                     |
|                | -   Recommend a set of metadata related to the      |
|                |     structural and the preservation aspects of the  |
|                |     AIP as implemented by the eArchiving Reference  |
|                |     Implementation (earkweb).                       |
|                |                                                     |
|                | -   Ensure the format is suitable to store large    |
|                |     quantities of data.                             |
+----------------+-----------------------------------------------------+
| E-ARK DIP      | The main aims of this specification are to:         |
|                |                                                     |
|                | -   Define a generic structure of the DIP format    |
|                |     suitable for a wide variety of archival         |
|                |     records, such as document and image             |
|                |     collections, databases or geographical data.    |
|                |                                                     |
|                | -   Recommend a set of metadata related to the      |
|                |     structural and access aspects of the DIP.       |
+----------------+-----------------------------------------------------+
| Content        | The main aim and goal of a Content Information Type |
| Information    | Specification is to:                                |
| Type           |                                                     |
| Specifications | -   Define, in technical terms, how data and        |
|                |     metadata must be formatted and placed within a  |
|                |     CSIP Information Package in order to achieve    |
|                |     interoperability in exchanging specific Content |
|                |     Information.                                    |
|                |                                                     |
|                | The number of possible Content Information Type     |
|                | Specifications is unlimited. For a list of existing |
|                | Content Information Type Specifications see the     |
|                | DILCIS Board webpage (DILCIS Board,                 |
|                | <http://dilcis.eu/>).                               |
+----------------+-----------------------------------------------------+

## Organisational support

This specification is maintained by the Digital Information LifeCycle
Interoperability Standards Board (DILCIS Board,
[[http://dilcis.eu/]{.underline}](http://dilcis.eu/)). The role of the
DILCIS Board is to enhance and maintain the draft specifications
developed in the European Archival Records and Knowledge Preservation
Project (E-ARK project,
[[http://eark-project.com/]{.underline}](http://eark-project.com/)),
which concluded in January 2017. The Board consists of eight members,
but no restriction is placed on the number of participants taking part
in the work. All Board documents and specifications are stored in GitHub
([[https://github.com/DILCISBoard/]{.underline}](https://github.com/DILCISBoard/)),
while published versions are made available on the Board webpage. The
DILCIS Board have been responsible for providing the core specifications
to the Connecting Europe Facility eArchiving Building Block
[[https://ec.europa.eu/cefdigital/wiki/display/CEFDIGITAL/eArchiving/]{.underline}](https://ec.europa.eu/cefdigital/wiki/display/CEFDIGITAL/eArchiving/).

## Authors & Revision History

A full list of contributors to this specification, as well as the
revision history, can be found in the [Postface
material](https://github.com/DILCISBoard/spec-publisher/blob/master/res/md/common-intro.md#postface)..

## TABLE OF CONTENTS {#table-of-contents .unnumbered}

[1 Preface [1](#preface)](#preface)

[1.1 Aim of the specification
[1](#aim-of-the-specification)](#aim-of-the-specification)

[1.2 Organisational support
[2](#organisational-support)](#organisational-support)

[1.3 Authors & Revision History
[3](#authors-revision-history)](#authors-revision-history)

[TABLE OF CONTENTS [4](#table-of-contents)](#table-of-contents)

[LIST OF FIGURES [5](#list-of-figures)](#list-of-figures)

[GLOSSARY [6](#glossary)](#glossary)

[1 Context [10](#context)](#context)

[1.1 Purpose [10](#purpose)](#purpose)

[1.2 Scope [10](#scope)](#scope)

[1.3 Information Package Layered data model
[11](#information-package-layered-data-model)](#information-package-layered-data-model)

[2 CITS Geospatial requirements structure
[13](#cits-geospatial-requirements-structure)](#cits-geospatial-requirements-structure)

[2.1 Folder structure requirements
[15](#folder-structure-requirements)](#folder-structure-requirements)

[2.2 METS Requirements [17](#mets-requirements)](#mets-requirements)

[2.2.1 Package and Representation METS
[17](#package-and-representation-mets)](#package-and-representation-mets)

[2.2.2 Package METS requirements
[17](#package-mets-requirements)](#package-mets-requirements)

[2.2.3 Representation METS requirements
[19](#representation-mets-requirements)](#representation-mets-requirements)

[2.3 Data requirements (Geospatial data)
[20](#data-requirements-geospatial-data)](#data-requirements-geospatial-data)

[2.3.1 Geodata general - requirements
[20](#geodata-general---requirements)](#geodata-general---requirements)

[2.3.2 Vector Geodata - requirements
[21](#vector-geodata---requirements)](#vector-geodata---requirements)

[2.3.3 Raster Geodata - requirements
[22](#raster-geodata---requirements)](#raster-geodata---requirements)

[2.3.4 Non-spatial data - requirements
[22](#non-spatial-data---requirements)](#non-spatial-data---requirements)

[2.3.5 Long Term Preservation Format Profiles
[22](#long-term-preservation-format-profiles)](#long-term-preservation-format-profiles)

[2.3.6 Other Geospatial data
[23](#other-geospatial-data)](#other-geospatial-data)

[2.4 Documentation requirements
[23](#documentation-requirements)](#documentation-requirements)

[2.4.1 Structure of geospatial records
[23](#structure-of-geospatial-records)](#structure-of-geospatial-records)

[2.4.2 Rendering and visualisation
[24](#rendering-and-visualisation)](#rendering-and-visualisation)

[2.4.3 Behaviour - Software and algorithms
[25](#behaviour---software-and-algorithms)](#behaviour---software-and-algorithms)

[2.4.4 Coordinate reference system information- requirements
[26](#coordinate-reference-system-information--requirements)](#coordinate-reference-system-information--requirements)

[2.4.5 Other - Contextual Documentation requirements
[27](#other---contextual-documentation-requirements)](#other---contextual-documentation-requirements)

[2.5 Geospatial Metadata requirements
[28](#geospatial-metadata-requirements)](#geospatial-metadata-requirements)

[3 Postface [29](#postface)](#postface)

**LIST OF TABLES**

[Table 1: Glossary table [6](#_Toc74136184)](#_Toc74136184)

[Table 2: Geospatial information package requirement
[17](#_Toc74136185)](#_Toc74136185)

[Table 3: Requirements for the information package
[17](#_Toc74136186)](#_Toc74136186)

[Table 4: Requirements for the representation information package
[19](#_Toc74136187)](#_Toc74136187)

[Table 5: General requirements for the content data object
[20](#_Toc74136188)](#_Toc74136188)

[Table 6: Requirements for vector geodata
[21](#_Toc74136189)](#_Toc74136189)

[Table 7: Requirements for raster geospatial records
[22](#_Toc74136190)](#_Toc74136190)

[Table 8: Requirement for documentation
[23](#_Toc74136191)](#_Toc74136191)

[Table 9: Requirements describing structure
[23](#_Toc74136192)](#_Toc74136192)

[Table 10: Requirement for rendition and visualisation
[25](#_Toc74136193)](#_Toc74136193)

[Table 11: Requirements for behaviour
[26](#_Toc74136194)](#_Toc74136194)

[Table 12: Requirements for the coordinate reference system information
[26](#_Toc74136195)](#_Toc74136195)

[Table 13: Requirements regarding other information
[27](#_Toc74136196)](#_Toc74136196)

[Table 14: Requirements for the geospatial metadata
[28](#_Toc74136197)](#_Toc74136197)

##  {#section .unnumbered}

## LIST OF FIGURES {#list-of-figures .unnumbered}

[Figure 1: Data Model Structure [11](#_Toc78540479)](#_Toc78540479)

[Figure 2: CITS Geospatial extension folders for Information Packages
[14](#_heading=h.2grqrue)](#_heading=h.2grqrue)

[Figure 3: Example Information Package folder structure
[15](#_Toc80623494)](#_Toc80623494)

## GLOSSARY {#glossary .unnumbered}

[]{#_Toc74136184 .anchor}Table 1: Glossary table

+---------------------+------------------------------------------------+
| **Term**            | **Description**                                |
+---------------------+------------------------------------------------+
| **Archival          | An Information Package, consisting of the      |
| information package | Content Information and the associated         |
| (AIP)**             | Preservation Description Information (PDI),    |
|                     | which is preserved within an Open Archival     |
|                     | Information System (OAIS)                      |
+---------------------+------------------------------------------------+
| **Cardinality**     | The term describes the possible number of      |
|                     | occurrences for elements in a set. The numbers |
|                     | have the following meanings:                   |
|                     |                                                |
|                     | (1..1) -- In each set, there is exactly 1 such |
|                     | element present                                |
|                     |                                                |
|                     | (0..1) -- The set can contain from 0 to 1 of   |
|                     | such elements                                  |
|                     |                                                |
|                     | (1..n) -- The set contains at least one        |
|                     | element -- up to n elements                    |
|                     |                                                |
|                     | (0..n) -- The package can contain up to n of   |
|                     | such elements, but it is not mandatory         |
|                     |                                                |
|                     | (0..0) -- The element is prohibited to use     |
+---------------------+------------------------------------------------+
| **Content Data      | The Data Object, that together with associated |
| Object**            | Representation Information comprises the       |
|                     | Content Information \[Source OAIS - ISO        |
|                     | 14721:2012\]                                   |
+---------------------+------------------------------------------------+
| **Content           | A set of information that is the original      |
| Information**       | target of preservation or includes part or all |
|                     | of that information. It is an Information      |
|                     | Object composed of its Content Data Object and |
|                     | its Representation Information. \[Source       |
|                     | OAIS - ISO 14721:2012\]                        |
+---------------------+------------------------------------------------+
| **Coordinate        | CRS is a coordinate system that is related to  |
| Reference System    | an object by a datum. Geodetic and vertical    |
| (CRS)**             | datums are referred to as reference frames.    |
|                     | \[Source ISO 19111:2019\]                      |
+---------------------+------------------------------------------------+
| **Digital           | A digital geospatial record is a record        |
| geospatial record** | containing a spatial graphical component       |
|                     | describing an object in space. It can be       |
|                     | created digitally or digitised from an         |
|                     | analogue source (paper maps).                  |
+---------------------+------------------------------------------------+
| **Dissemination     | An Information Package, derived from one or    |
| Information package | more AIPs, and sent by Archives to the         |
| (DIP)**             | Consumer in response to a request to the OAIS. |
+---------------------+------------------------------------------------+
| **Feature**         | Abstraction of real-world phenomena. EXAMPLE:  |
|                     | The phenomenon named "Eiffel Tower" may be     |
|                     | classified with other similar phenomena into a |
|                     | feature type "tower." A feature may occur as a |
|                     | type or an instance. Feature type or feature   |
|                     | instance should be used when only one is       |
|                     | meant.                                         |
|                     |                                                |
|                     | \[SOURCE: ISO 19101‑1:2014, 4.1.11\]           |
+---------------------+------------------------------------------------+
| **Feature           | Characteristic of a feature.\                  |
| Attribute**         | EXAMPLE 1:A feature attribute named "colour"   |
|                     | can have an attribute value "green" which      |
|                     | belongs to the data type "text".\              |
|                     | EXAMPLE 2:A feature attribute named "length"   |
|                     | can have an attribute value "82,4" which       |
|                     | belongs to the data type "real".               |
|                     |                                                |
|                     | \[SOURCE: ISO 19101‑1:2014, 4.1.12\]           |
+---------------------+------------------------------------------------+
| **Feature           | Catalogue containing definitions and           |
| Catalogue**         | descriptions of the feature types, feature     |
|                     | attributes, and feature relationships          |
|                     | occurring in one or more sets of geographic    |
|                     | data, together with any feature operations     |
|                     | that can be applied\                           |
|                     | \[SOURCE: ISO 19101‑1:2014, 4.1.13\]           |
+---------------------+------------------------------------------------+
| **Feature Dataset** | Identifiable collection of data. A dataset can |
|                     | be a smaller grouping of data that is located  |
|                     | physically within a larger dataset, though     |
|                     | limited by some constraint such as spatial     |
|                     | extent or feature type. Theoretically, a       |
|                     | dataset can be as small as a single feature or |
|                     | feature attribute contained within a larger    |
|                     | dataset. A hardcopy map or chart can be        |
|                     | considered a dataset.\                         |
|                     | \[SOURCE: ISO 19115‑1:2014, 4.13\]             |
+---------------------+------------------------------------------------+
| **Feature           | Individual of a given feature type having      |
| Instance**          | specified feature attribute values\            |
|                     | \[SOURCE: ISO 19101‑1:2014, 4.1.14\]           |
+---------------------+------------------------------------------------+
| **Feature           | Operation that every instance of a feature     |
| Operation**         | type can perform                               |
|                     |                                                |
|                     | EXAMPLE: A feature operation upon a "dam" is   |
|                     | to raise the dam. The results of this          |
|                     | operation are to raise the height of the "dam" |
|                     | and the level of water in a "reservoir".       |
|                     | Feature operations provide a basis for feature |
|                     | type definition.                               |
|                     |                                                |
|                     | \[SOURCE: ISO 19110:2005, 4.5\]                |
+---------------------+------------------------------------------------+
| **Feature Type**    | Class of features having common                |
|                     | characteristics\                               |
|                     | \[SOURCE: ISO 19156:2011, 4.7\]                |
+---------------------+------------------------------------------------+
| **Geodata layer**   | A Geodata layer is a representation of one or  |
|                     | many feature datasets within a GIS System. It  |
|                     | can contain additional representation          |
|                     | information such as visualisation, labelling   |
|                     | of the dataset, visibility under certain       |
|                     | conditions based on scale, SQL query, etc.     |
+---------------------+------------------------------------------------+
| **Geospatial data   | A geospatial data processing workflow is       |
| processing          | usually defined as a set of processing tasks   |
| workflow**          | organised into a process. Tasks are functions  |
|                     | of a GIS system used to manipulate, transform  |
|                     | or manage geospatial datasets, maps and        |
|                     | tables.                                        |
+---------------------+------------------------------------------------+
| **GIS**             | Abbreviation for Geographical Information      |
|                     | System, which is a system designed to capture, |
|                     | store, manipulate, analyse, manage, and        |
|                     | present spatial or geographic data*.*          |
+---------------------+------------------------------------------------+
| **GIS Project**     | A GIS project is a document that organises     |
|                     | geospatial datasets into layers, defines the   |
|                     | map representations, then reports and stores   |
|                     | information on Geoprocessing workflows*.*      |
+---------------------+------------------------------------------------+
| **Information       | A logical container composed of optional       |
| Package**           | Content Information and optional associated    |
|                     | Preservation Description Information.          |
|                     | Associated with this Information Package is    |
|                     | Packaging Information used to delimit and      |
|                     | identify the Content Information and Package   |
|                     | Description information used to facilitate     |
|                     | searches for the Content Information.          |
+---------------------+------------------------------------------------+
| **Information       | Generally, an Information product is an item   |
| Product**           | that has been derived from one or more sources |
|                     | of information to meet a specific purpose. A   |
|                     | Geospatial information product is an output    |
|                     | derived from one or more geospatial (and       |
|                     | other) records. Examples include: Printed or   |
|                     | digital maps, Lists of addresses in a certain  |
|                     | area, calculation of an optimal path,          |
|                     | calculated area, length or volume, etc. An     |
|                     | information product can be in the form of a    |
|                     | new geospatial record, an image, a document, a |
|                     | database table, etc.                           |
+---------------------+------------------------------------------------+
| **INSPIRE           | The INSPIRE directive                          |
| directive**         | <https://inspire.ec.europa.eu/> aims to create |
|                     | a European Union spatial data infrastructure   |
|                     | for the purposes of EU environmental policies  |
|                     | and policies or activities which may have an   |
|                     | impact on the environment. This European       |
|                     | Spatial Data Infrastructure will enable the    |
|                     | sharing of environmental spatial information   |
|                     | among public sector organisations, facilitate  |
|                     | public access to spatial information across    |
|                     | Europe and assist in policymaking across       |
|                     | boundaries.                                    |
|                     |                                                |
|                     | INSPIRE is based on the infrastructures for    |
|                     | spatial information established and operated   |
|                     | by the Member States of the European Union.    |
|                     | The Directive addresses 34 spatial data themes |
|                     | needed for environmental applications.         |
|                     |                                                |
|                     | The Directive came into force on 15 May 2007   |
|                     | and will be implemented in various stages,     |
|                     | with full implementation required by 2021.     |
+---------------------+------------------------------------------------+
| **Internal Archival | This type of guideline can have different      |
| Long Term           | names depending on the creator. Generally,     |
| Preservation        | archives specify technical guidelines and/or   |
| guidelines**        | regulations for formats, specifying what they  |
|                     | will accept and maintain for the long term.    |
|                     | Depending on the archive and available         |
|                     | technical resources, the criteria for the      |
|                     | selected formats can differ from archive to    |
|                     | archive.                                       |
+---------------------+------------------------------------------------+
| **Level**           | The level of requirement of the element        |
|                     | following RFC 2119                             |
|                     | <http://www.ietf.org/rfc/rfc2119.txt>          |
|                     |                                                |
|                     | **MUST** This word mean that the definition is |
|                     | an absolute requirement.                       |
|                     |                                                |
|                     | **SHOULD** This word mean that in particular   |
|                     | circumstances, valid reasons may exist to      |
|                     | ignore the requirement, but, the full          |
|                     | implications must be understood and carefully  |
|                     | weighed before choosing a different course.    |
|                     |                                                |
|                     | **MUST NOT** This phrase mean that the         |
|                     | prohibition described in the requirement is an |
|                     | absolute prohibition of the use of the         |
|                     | element.                                       |
|                     |                                                |
|                     | **SHOULD NOT** This phrase mean that in        |
|                     | particular circumstances, violating the        |
|                     | prohibition described in the requirement is    |
|                     | acceptable or even useful, but the full        |
|                     | implications should be understood and the case |
|                     | carefully weighed before doing so. The         |
|                     | requirement text should clarify such           |
|                     | circumstances.                                 |
|                     |                                                |
|                     | **MAY** This word mean that an item is not     |
|                     | prohibited but entirely optional.              |
+---------------------+------------------------------------------------+
| **Standardised\     | A standardised machine-readable document is a  |
| Machine- readable   | document which content can be readily          |
| Documentation**     | processed by computers and is based on a       |
|                     | commonly accepted standard. Such documents are |
|                     | distinguished from machine-readable data by    |
|                     | virtue of having sufficient structure to       |
|                     | provide the necessary context to support the   |
|                     | business processes for which they are created. |
+---------------------+------------------------------------------------+
| **Open Archival     | An Archive consisting of an organisation,      |
| Information System  | which may be part of a larger organisation, of |
| (OAIS)**            | people and systems, that has accepted the      |
|                     | responsibility to preserve information and     |
|                     | make it available for a Designated Community.  |
|                     | It meets a set of responsibilities, as defined |
|                     | in section 4, that allows an OAIS Archive to   |
|                     | be distinguished from other uses of the term   |
|                     | \'Archive\'. The term \'Open\' in OAIS is used |
|                     | to imply that this Recommendation and future   |
|                     | related Recommendations and standards are      |
|                     | developed in open forums, and it does not      |
|                     | imply that access to the Archive is            |
|                     | unrestricted.                                  |
+---------------------+------------------------------------------------+
| **Preservation      | The information which is necessary for         |
| Description         | adequate preservation of the Content           |
| Information (PDI)** | Information and which can be categorised as    |
|                     | Provenance, Reference, Fixity, Context, and    |
|                     | Access Rights Information.                     |
+---------------------+------------------------------------------------+
| **Projected         | Coordinate reference system derived from a     |
| coordinate          | geographic coordinate reference system by      |
| systems**           | applying a map projection                      |
+---------------------+------------------------------------------------+
| **RDBMS**           | Relational Database Management System          |
+---------------------+------------------------------------------------+
| **Representation**  | A Representation within an Information Package |
|                     | contains archival data. If an Information      |
|                     | Package contain the same data in two or more   |
|                     | different formats (i.e., Original and a        |
|                     | long-term preservation format) or in different |
|                     | types of organisations, they are organised     |
|                     | within two or more representations within the  |
|                     | Representations folder of the Information      |
|                     | Package                                        |
+---------------------+------------------------------------------------+
| **Representation    | The Representation Information must enable or  |
| Information**       | allow the recreation of the significant        |
|                     | properties of the original data object. In     |
|                     | terms of geospatial data, we need the          |
|                     | information required to reconstruct the usage  |
|                     | of the records meaningfully. For example, if   |
|                     | we want to adequately reuse a GML file,        |
|                     | containing only the vector geometry and its    |
|                     | accompanying attributes, we need rendering     |
|                     | information in the form of symbology           |
|                     | definition, labelling logic, the coordinate    |
|                     | System and projection, the scales in which it  |
|                     | was used and description of meanings of        |
|                     | attributes in order to understand the data.    |
+---------------------+------------------------------------------------+
| **Submission        | An Information Package that is delivered by    |
| Information Package | the Producer to the OAIS for use in the        |
| (SIP)**             | construction or update of one or more AIPs     |
|                     | and/or the associated Descriptive Information. |
+---------------------+------------------------------------------------+
| **Technical         | Technical documentation in this document is a  |
| documentation**     | term, referring to the content, that is        |
|                     | essential for proper technical reuse of the    |
|                     | initial geospatial records. In OAIS terms it   |
|                     | would be called representation information of  |
|                     | the Data Object.                               |
+---------------------+------------------------------------------------+

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

-   The first accompanying guideline document (*Guideline for the
    specification for the E-ARK Content Information Type Specification
    for Geospatial data (CITS Geospatial)*) provide a basic introduction
    to the field of geospatial data and the concepts used in this
    specification. In the Guideline there is also a description of the
    Profile for using the INSPIRE directive, with the CITS Geospatial
    both as the content being transferred and how to map INSPIRE
    information to an archival finding aid.

-   The second guideline document (*Guideline for using the
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

![](media/image3.png){width="3.6145833333333335in"
height="3.6145833333333335in"}

[]{#_Toc78540479 .anchor}**Figure 1: Data Model Structure**

Every level in the data model structure inherits metadata entities and
elements from the higher levels. In order to increase adoption, a
flexible schema has been developed. This will allow for extension points
where the schema in each layer can be extended to accommodate additional
information on the next specific layer until, finally, the local
implementation can add specific entities or metadata elements to satisfy
very specific local needs. Extension points can be implemented by:

-   Embedding foreign extension schemas (in the same way as supported by
    METS

> \[http://www.loc.gov/standards/mets/\] and PREMIS
> \[http://www.loc.gov/standards/premis/\]). These support both
> increasing the granularity of existing metadata elements by using more
> detailed data structures as well as adding new types of metadata.

-   Substituting metadata schemas for standards more appropriate for the
    local implementation.

The structure allows the addition of more detailed requirements for
metadata entities, for example, by:

-   Increasing the granularity of metadata elements by using more
    detailed data structures, or

-   Adding local controlled vocabularies.

For consistency, design principles are reused between layers as much as
possible.

# CITS Geospatial requirements structure

The Content Information Type Specification for Geospatial data aims to
define the necessary elements required to preserve the accessibility and
authenticity of geospatial records over time and across changing
technical environments. To achieve this, this specification defines the
categories of significant properties \[Source:
<https://significantproperties.kdl.kcl.ac.uk/> \] for geospatial records
to allow the digital geospatial information products to remain
accessible and meaningful. For every geospatial record or a set of
records, we need to preserve information that suits the following
categories:

-   **Content** -- Information contained within the Information Object.
    For example, location information (coordinates, orientation, pixel
    size), geometry, related feature attributes, etc. This is stored
    within the \"*[Data\" folder]{.underline}* within a Representation.

-   **Context** -- Any information that describes the environment in
    which the content was created or that affects its intended meaning.
    Examples: Creator name, date of creation, spatial accuracy, source
    data, sensor information, etc. This type of information can be
    provided using the \"*[Other\"]{.underline}* folder within the main
    \"*[Documentation\" folder]{.underline}* or by providing various
    *Geospatial Metadata* located within the Representation
    [Metadata/Descriptive]{.underline} folder*[.]{.underline}*

-   **Structure** -- Information that describes the extrinsic or
    intrinsic relationship between two or more types of content, as
    required to reconstruct the performance. For example, a Raster
    object and its connection to the world file, or a vector dataset
    combined with a table, a GIS project, defining the structure of
    geodata layers used to create a map, configuration of web services,
    defining a mash-up WMS, etc. This information should preferably be
    provided using standardised machine-readable files or at least in
    written documentation.

-   **Rendering** -- Any information that contributes to the recreation
    of the performance of the Information Object. Example: Colour map of
    pixel values of a raster; Styled Description layer for web services,
    documentation describing a cartographic map project, Report designs,
    etc.

-   **Behaviour** -- Properties that indicate the method in which
    content interacts with other stimuli. Example --rendering
    algorithms, analysis functionalities, standard transformation
    processes, documentation of original system functionality, user
    manuals, training materials, system usage videos, etc.

> ![](media/image4.png){width="7.770833333333333in"
> height="6.177083333333333in"}

[]{#_heading=h.2grqrue .anchor}**Figure 2: CITS Geospatial extension
folders for Information Packages**

## Folder structure requirements

The CITS Geospatial information structure inherited its package
structure from the E-ARK Common Specification for Information Packages
(CSIP) (blue elements), and it is an extension of it (green elements).

A visualisation of a valid CITS Geospatial Information Package is
illustrated in Figure 4. This Figure shows an example of a simple valid
Information Package with one representation of a single vector dataset
in a GML file format.

![](media/image5.JPG){width="8.104861111111111in"
height="6.072916666666667in"}

[]{#_Toc80623494 .anchor}**Figure 3: Example Information Package folder
structure**

The folder structure in CSIP described in section
<https://earkcsip.dilcis.eu/#folderstructureofthecsip> is extended with
the following geo specific requirements on the folder structure:

**GEOSTR1:** XML schema documents for any structured descriptive
geospatial metadata within package **MUST** be placed in a sub-folder
called schemas within the Information Package root folder and/or the
representation folder. This requirement is an extension of CSIPSTR15.

**GEOSTR2:** A documentation folder on package or representation level
**SHOULD** include a subfolder named structure. This requirement is an
extension of CSIPSTR16.

**GEOSTR3:** A documentation folder on package or representation level
**SHOULD** include a subfolder named rendering. This requirement is an
extension of CSIPSTR16.

**GEOSTR4:** A documentation folder on package or representation level
**SHOULD** include a subfolder named behaviour. This requirement is an
extension of CSIPSTR16.

**GEOSTR5:** A documentation folder on package or representation level
**SHOULD** include a subfolder named CRS*.* This requirement is an
extension of CSIPSTR16.

**GEOSTR6:** A documentation folder on package or representation level
**SHOULD** include a subfolder named other. This requirement is an
extension of CSIPSTR16.

## METS Requirements

### Package and Representation METS

[Generally, CSIP can consist of zero to many representations, and this
is an important feature that needs to be considered when packing geodata
files within CSIPs.]{.mark}

[There can easily be different representations of the same geospatial
content located within one CSIP. For example, one package could consist
of:]{.mark}

-   [one representation with geodata in original format;]{.mark}

-   [one representation with geodata in a long-term preservation
    format;]{.mark}

-   [one representation with geodata in dissemination formats;]{.mark}

[There can be several representations of dissemination formats. There
can also be many different types of geodata records and databases within
the same package.]{.mark}

[As for the CITS Geospatial specification, there always needs to be a
minimum of one representation and therefore a minimum of two METS.xml.
The Package METS.xml must be a general METS.xml stating if the package
mainly contains Geospatial Records. Then, the Representation METS.xml
describes the specific main data types in the representation.]{.mark}

[A CITS Geospatial builds upon the general CSIP requirements, which are
presupposed but not explicitly mentioned here. Those requirements should
be met before applying the requirements listed below:]{.mark}

[]{#_Toc74136185 .anchor}Table 2: Geospatial information package
requirement

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_1  | Geospatial data information package           | 1..1        |
|        |                                               |             |
|        | There MUST be a minimum of one representation | MUST        |
|        | and, therefore a minimum of one Package       |             |
|        | METS.xml and a minimum of one Representation  |             |
|        | METS.xml in a CITS Geospatial compliant       |             |
|        | package.                                      |             |
+--------+-----------------------------------------------+-------------+

### Package METS requirements

[Requirements pertaining to the information package.]{.mark}

[]{#_Toc74136186 .anchor}Table 3: Requirements for the information
package

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_2  | Type                                          | 1..1        |
|        |                                               |             |
| Ref    | mets/@TYPE \[Description of the element\]     | MUST        |
| CSIP2  |                                               |             |
|        | For information packages that primarily       |             |
|        | contain geospatial data, the value in Package |             |
|        | mets/@TYPE MUST be \"Geospatial Data\" as     |             |
|        | taken from the CSIP Vocabulary for [Content   |             |
|        | Category](https://earkcsip.dilcis.            |             |
|        | eu/schema/CSIPVocabularyContentCategory.xml). |             |
|        |                                               |             |
|        | **See also:** [Content                        |             |
|        | Category](https://e                           |             |
|        | arkcsip.dilcis.eu/#VocabularyContentCategory) |             |
+--------+-----------------------------------------------+-------------+
| GEO_3  | Content Information Type Specification        | 1..1        |
|        |                                               |             |
| Ref    | mets/@csip:CONTENTINFORMATIONTYPE             | MUST        |
| CSIP4  |                                               |             |
|        | For information packages that primarily       |             |
|        | contain geospatial data, the value in Package |             |
|        | mets/@csip:CONTENTINFORMATIONTYPE MUST be     |             |
|        | \"citsgeospatial_v3_0 \" as taken from the    |             |
|        | CSIP Vocabulary for Detailed Content Type.    |             |
|        |                                               |             |
|        | **See also:** [Content information type       |             |
|        | specification](https://earkcsip.dilcis.eu/#V  |             |
|        | ocabularyContentInformationTypeSpecification) |             |
+--------+-----------------------------------------------+-------------+
| GEO_4  | Other Content Information Type Specification  | 0..0        |
|        |                                               |             |
| Ref    | mets/@csip: OTHERCONTENTINFORMATIONTYPE       | MUST NOT    |
| CSIP5  |                                               |             |
|        | For information packages that primarily       |             |
|        | contain geospatial data, the Package METS     |             |
|        | **MUST NOT** have a                           |             |
|        | mets/@csip:OTHERCONTENTINFORMATIONTYPE        |             |
+--------+-----------------------------------------------+-------------+
| GEO_5  | METS Profile                                  | 1..1        |
|        |                                               |             |
| Ref    | mets/@PROFILE                                 | MUST        |
| CSIP6  |                                               |             |
| SIP2   | For information packages that primarily       |             |
|        | contain geospatial data, the value in the     |             |
|        | \@PROFILE **MUST** be \"                      |             |
|        | https://citsgeospatia                         |             |
|        | l.dilcis.eu/profile/E-ARK-GEOSPATIAL-ROOT.xml |             |
|        | \".                                           |             |
+--------+-----------------------------------------------+-------------+
| GEO_6  | fileSec Representation Content Information    | 1..n        |
|        | Type Specification                            |             |
| Ref    |                                               | MUST        |
| CSIP62 | mets/fileSec/fileGrp\[@USE=\'Rep              |             |
|        | resentations\'\]/@csip:CONTENTINFORMATIONTYPE |             |
|        |                                               |             |
|        | There **MUST** be a minimum of one            |             |
|        | mets/fileSec/fileGrp\[@USE=\'Rep              |             |
|        | resentations\'\]/@csip:CONTENTINFORMATIONTYPE |             |
|        | with the value "citsgeospatial_v3_0" as taken |             |
|        | from the CSIP Vocabulary for Detailed         |             |
|        | [Content                                      |             |
|        | Type](https://earkcsip.dilcis.eu/sch          |             |
|        | ema/CSIPVocabularyContentInformationType.xml) |             |
|        | that direct to the representation METS.xml in |             |
|        | the representation folder containing          |             |
|        | geospatial data.                              |             |
+--------+-----------------------------------------------+-------------+
| GEO_7  | fileSec Representation Content Information    | 1..1        |
|        | Type Specification                            |             |
| Ref    |                                               | MUST        |
| CSI    | mets/fileSec/fileGrp\[@USE=\'Rep              |             |
| P105-C | resentations\'\]/@csip:CONTENTINFORMATIONTYPE |             |
| SIP112 |                                               |             |
|        | For any fileGrp/@csip:CONTENTINFORMATIONTYPE  |             |
|        | with the value \"citsgeospatial_v3_0 \" there |             |
|        | **MUST** be a corresponding                   |             |
|        | \@div-representation in the StructMap-element |             |
+--------+-----------------------------------------------+-------------+

### Representation METS requirements

Requirements pertaining to the representation package.

[]{#_Toc74136187 .anchor}Table 4: Requirements for the representation
information package

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_8  | Type                                          | 1..1        |
|        |                                               |             |
| Ref    | mets/@TYPE                                    | MUST        |
| CSIP2  |                                               |             |
|        | For representations that primarily contain    |             |
|        | geospatial data the value in Package          |             |
|        | mets/@TYPE **MUST** be \"Geospatial Data\" as |             |
|        | taken from the CSIP Vocabulary for [Content   |             |
|        | Category](https://earkcsip.dilcis.            |             |
|        | eu/schema/CSIPVocabularyContentCategory.xml). |             |
|        |                                               |             |
|        | **See also:** [Content                        |             |
|        | Category](https://e                           |             |
|        | arkcsip.dilcis.eu/#VocabularyContentCategory) |             |
+--------+-----------------------------------------------+-------------+
| GEO_9  | Content Information Type Specification        | 1..1        |
|        |                                               |             |
| Ref    | mets/@csip:CONTENTINFORMATIONTYPE             | MUST        |
| CSIP4  |                                               |             |
|        | For representations that primarily contain    |             |
|        | geospatial data and that conforms to CITS     |             |
|        | Geodata, the value in Package                 |             |
|        | mets/@csip:CONTENTINFORMATIONTYPE **MUST** be |             |
|        | \"citsgeospatial_v3_0 \" as taken from the    |             |
|        | CSIP Vocabulary for Detailed [Content         |             |
|        | Type](https://earkcsip.dilcis.eu/sch          |             |
|        | ema/CSIPVocabularyContentInformationType.xml) |             |
|        |                                               |             |
|        | **See also:** [Content information type       |             |
|        | specification](https://earkcsip.dilcis.eu/#V  |             |
|        | ocabularyContentInformationTypeSpecification) |             |
+--------+-----------------------------------------------+-------------+
| GEO_10 | METS Profile                                  | 1..1        |
|        |                                               |             |
| Ref    | mets/@PROFILE                                 | MUST        |
| CSIP6  |                                               |             |
| SIP2   | For information packages that primarily       |             |
|        | contain geospatial data the value in the      |             |
|        | \@PROFILE **MUST** be                         |             |
|        | \"https://citsgeospatial.dilcis.e             |             |
|        | u/profile/E-ARK-GEOSPATIAL-REPRESENTATION.xml |             |
|        | \"                                            |             |
+--------+-----------------------------------------------+-------------+

## Data requirements (Geospatial data)

[This chapter states the requirements for the content data object or
objects that form the geospatial record contained in the Information
package.]{.mark}

The sections 3.3 -- 3.5 of this document do not discuss optimisations
with respect to packaging and storage. The requirements for data,
metadata and documentation only suggest what information is needed and
the appropriate placement of it, not how it is packaged, stored and
optimised for automatic handling.

### Geodata general - requirements

The general requirements for the content data object or objects are
stated in the following table.

[]{#_Toc74136188 .anchor}Table 5: General requirements for the content
data object

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_11 | Minimum one file in a geospatial format       | 0..n        |
|        |                                               |             |
|        | If the value in mets/@csip:                   | SHOULD      |
|        | CONTENTINFORMATIONTYPE is                     |             |
|        | \"citsgeospatial_v3_0 \", then there          |             |
|        | **SHOULD** exist at least one file in a       |             |
|        | geospatial format in                          |             |
|        | representations/\[RepresentationName\]/data   |             |
+--------+-----------------------------------------------+-------------+
| GEO_12 | Subfolders in data                            | 0..n        |
|        | representations/\[RepresentationName\]/data   |             |
|        |                                               | MAY         |
|        | If there are more geospatial records in a     |             |
|        | representation, each geospatial file **MAY**  |             |
|        | be placed or grouped in subfolders in         |             |
|        | representations/\[RepresentationName\]/data   |             |
+--------+-----------------------------------------------+-------------+
| GEO_13 | Long term preservation format representation  | 0..n        |
|        |                                               |             |
|        | The Information Package **SHOULD** contain at | SHOULD      |
|        | least one representation of geospatial record |             |
|        | in a long-term preservation format, as        |             |
|        | defined by the Archive or in the Long-term    |             |
|        | Preservation Format Profile (See chapter      |             |
|        | 3.3.5.)                                       |             |
+--------+-----------------------------------------------+-------------+
| GEO_14 | Original format representation                | 0..1        |
|        |                                               |             |
|        | The Information Package **MAY** contain a     | MAY         |
|        | separate representation of the same data,     |             |
|        | containing geospatial data in its original    |             |
|        | format                                        |             |
+--------+-----------------------------------------------+-------------+
| GEO_15 | CRS definition                                | Conditional |
|        |                                               | 1..1        |
| Ref.\  | Every geospatial dataset **MUST** be          |             |
| GEO_11 | accompanied with information about its        | MUST        |
|        | underlying Coordinate Reference System (CRS)  |             |
|        | in one of two ways:                           |             |
|        |                                               |             |
|        | -   Full description of the CRS together with |             |
|        |     the archived data (within the geospatial  |             |
|        |     file itself or in an accompanying file)   |             |
|        |                                               |             |
|        | -   The geospatial file contains a reference  |             |
|        |     to a CRS registry                         |             |
+--------+-----------------------------------------------+-------------+
| GEO_16 | Geographic location validation                | 0..1        |
|        |                                               |             |
|        | The geographies in the geospatial records     | SHOULD      |
|        | **SHOULD** be located within a fixed bounding |             |
|        | box defined in the submission agreement       |             |
|        | between the producer and the archive          |             |
|        | according to the expected location and extent |             |
|        | of the dataset                                |             |
+--------+-----------------------------------------------+-------------+
| GEO_17 | Metadata                                      | 1..n        |
|        |                                               |             |
|        | Every geospatial dataset **MUST** be          | MUST        |
|        | accompanied by a metadata file, that          |             |
|        | describes the dataset with the basic required |             |
|        | information                                   |             |
+--------+-----------------------------------------------+-------------+

### Vector Geodata - requirements

Additional to the Geodata general requirements, the following
requirements are intended for all vector geodata in the Information
package:

[]{#_Toc74136189 .anchor}Table 6: Requirements for vector geodata

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_18 | Valid geospatial vector file                  | 1..n        |
|        |                                               |             |
|        | Any geospatial vector datafile in             | MUST        |
|        | representations/\[RepresentationName\]/data   |             |
|        | **MUST** be a valid vector file compliant     |             |
|        | with its respective format requirements (must |             |
|        | pass the validation with the chosen validator |             |
|        | for its format)                               |             |
+--------+-----------------------------------------------+-------------+
| GEO_19 | Feature attribute                             | 1..n        |
|        |                                               |             |
|        | Each Vector Feature dataset **MUST** contain  | MUST        |
|        | at least one Feature attribute unique to each |             |
|        | feature instance                              |             |
+--------+-----------------------------------------------+-------------+
| GEO_20 | Long-Term preservation format Profile for     | 0..n        |
|        | Geospatial Vector data                        |             |
|        |                                               | SHOULD      |
|        | Geospatial vector data in a long-term         |             |
|        | preservation representation **SHOULD** comply |             |
|        | with the requirements for the respective      |             |
|        | Long-Term preservation format Profile for     |             |
|        | Geospatial Vector data (see chapter 3.3.5)    |             |
+--------+-----------------------------------------------+-------------+

### Raster Geodata - requirements

Additional to the Geodata general requirements, the following
requirements are intended for all raster geospatial records in the
Information package:

[]{#_Toc74136190 .anchor}Table 7: Requirements for raster geospatial
records

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_21 | Valid raster file                             | 1..n        |
|        |                                               |             |
|        | Any raster file in                            | MUST        |
|        | representations/\[RepresentationName\]/data   |             |
|        | **MUST** be a valid raster file compliant     |             |
|        | with its respective format requirements (must |             |
|        | pass the validation with the chosen validator |             |
|        | for its format).                              |             |
+--------+-----------------------------------------------+-------------+
| GEO_22 | Long-Term preservation format Profile for     | 0..n        |
|        | Geospatial Raster data                        |             |
|        |                                               | SHOULD      |
|        | Raster data in the long-term preservation     |             |
|        | representation **SHOULD** comply with the     |             |
|        | requirements for the respective Long-Term     |             |
|        | preservation format Profile for Geospatial    |             |
|        | Raster data (see chapter 3.3.5.)              |             |
+--------+-----------------------------------------------+-------------+
| GEO_23 | Tiling index file                             | 0..n        |
|        |                                               |             |
|        | If raster objects are organised using an      | MAY         |
|        | external tiling index file, this tiling index |             |
|        | MAY be placed in                              |             |
|        | representations/\[RepresentationName\]/data   |             |
+--------+-----------------------------------------------+-------------+

### Non-spatial data - requirements

Geodata is often a part of a complex data structure, stored in a
database and ordinary tables. To reproduce the information products from
a GIS, it is often necessary to store additional tables with the
geospatial records. These tables do not have a geospatial component. In
this case, it is essential to store the data structure's relationships
and logic to be reconstructed in the future. For long-term preservation
of additional tabular information (attribute tables, code lists, etc.)
along with geospatial records, formats proposed for RDBMS archiving are
used. For example, the standard SIARD, available at
<https://dilcis.eu/content-types/siard> and used in the Content
information Type Specification for Relational Databases using SIARD
(CITS SIARD), available at <https://dilcis.eu/content-types/cs-siard> .

### Long Term Preservation Format Profiles

A "Long Term Preservation format Profile" contains a set of one or more
base or subsets of base standards, and, where applicable, the
identification of chosen clauses, classes, options, and parameters of
those base standards, that are necessary for geospatial records to
comply with the internal Archival Long Term Preservation guidelines for
the selection of long-term preservation formats.

A "Long Term Preservation format Profile" would specify a proposed
format for long term specification, its justification according to
internal Archival guidelines (to ensure long-term preservation and
reuse), a list of required auxiliary files and documentation and
validation criteria to ensure structural and content suitability.

### Other Geospatial data

This specification does not cover any specific requirements for basic or
more complex geospatial records (such as networks, structures combining
raster and vector data, point clouds, 3D features, oblique Imagery,
Satellite Imagery, etc.). However, the specification will be extended
with "Long Term Preservation format Profiles" for additional geospatial
formats in the future.

## Documentation requirements

Geospatial records are rarely in a form that is sufficiently
self-explanatory to be used and interpreted adequately by itself.
Consequently, additional information describing context, structure,
rendering and behaviour is required to enable the user to understand,
interpret and reuse preserved geodata properly. This chapter describes
the requirements for Documentation for geospatial datasets (where it is
applicable). Ideally, a standardised machine-readable format is
preferred. However, any other form of documentation of the System is
always welcome. Standardised machine-readable formats should be placed
within the representation. Other documentation should be placed within
the package level Documentation folder.

[]{#_Toc74136191 .anchor}Table 8: Requirement for documentation

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_24 | Package level documentation                   | 0..n        |
|        |                                               |             |
|        | Documentation covering all representations in | SHOULD      |
|        | the Information package **SHOULD** be placed  |             |
|        | in /documentation on package level            |             |
+--------+-----------------------------------------------+-------------+
| GEO_25 | Representation level documentation            | 0..n        |
|        |                                               |             |
|        | Documentation specific to one representation  | SHOULD      |
|        | **SHOULD** be placed in                       |             |
|        | represe                                       |             |
|        | ntations/\[RepresentationName\]/documentation |             |
+--------+-----------------------------------------------+-------------+

### Structure of geospatial records

Structure of geospatial records describe the extrinsic or intrinsic
relationships between two or more type of content, as required to
reconstruct the performance of one or more geospatial records within the
information package.

[]{#_Toc74136192 .anchor}Table 9: Requirements describing structure

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_26 | Feature Catalogue documentation               | 0..n        |
|        |                                               |             |
|        | A document containing definitions and         | SHOULD      |
|        | descriptions of feature types and feature     |             |
|        | attribute values **SHOULD** be provided for   |             |
|        | all geospatial records in the Information     |             |
|        | Package                                       |             |
+--------+-----------------------------------------------+-------------+
| GEO_27 | Standardised machine-readable Feature         | 0..n        |
|        | Catalogue                                     |             |
| ISO    |                                               | SHOULD      |
| 19110  | A standardised machine-readable feature       |             |
|        | catalogue SHOULD be provided in the           |             |
| ISO    | Information Package                           |             |
| 1      |                                               |             |
| 9115-3 |                                               |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of Standardised machine-readable    | 0..n        |
| EO_27a | Feature Catalogue                             |             |
|        |                                               | SHOULD      |
| Ref    | If a standardised machine-readable feature    |             |
| GEO_27 | catalogue exits it SHOULD be placed in        |             |
|        | representations/\                             |             |
|        | [RepresentationName\]/documentation/structure |             |
+--------+-----------------------------------------------+-------------+
| GEO_28 | Documentation containing Feature Catalogue    | 0..n        |
|        | descriptions                                  |             |
| Ref    |                                               | SHOULD      |
| GEO_27 | Documentation describing elements of a        |             |
|        | feature catalogue, not compliant with GEO_27  |             |
|        | (a non-standardised machine-readable feature  |             |
|        | catalogue) SHOULD be provided in one of the   |             |
|        | Documentation folders of the Information      |             |
|        | Package                                       |             |
+--------+-----------------------------------------------+-------------+
| GEO_29 | Logical model                                 | 0..n        |
|        |                                               |             |
|        | A document describing relationships between   | SHOULD      |
|        | multiple geospatial entities or geospatial    |             |
|        | and non-spatial records SHOULD be provided in |             |
|        | the Information Package                       |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of logical model                    | 0..1        |
| EO_29a |                                               |             |
|        | If a document describing the logical model    | SHOULD      |
| Ref    | exists it **SHOULD** be provided in a         |             |
| GEO_29 | documentation/structure folder                |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of machine-readable logical model   | 0..1        |
| EO_29b |                                               |             |
|        | If a standardised machine-readable version of | SHOULD      |
| Ref    | a document describing the logical model       |             |
| GEO_29 | exists it **SHOULD** be provided in           |             |
|        | representations/\                             |             |
|        | [RepresentationName\]/documentation/structure |             |
+--------+-----------------------------------------------+-------------+
| GEO_30 | GIS Project structure                         | 0..n        |
|        |                                               |             |
|        | A document describing the structure of        | MAY         |
|        | geospatial records in the GIS System **MAY**  |             |
|        | be provided in the Information Package. A     |             |
|        | standardised machine-readable version is      |             |
|        | preferred.                                    |             |
+--------+-----------------------------------------------+-------------+

### Rendering and visualisation

Rendering and visualisation documentation represents any information
that contributes to the recreation of the performance of the Information
Object. Example: Colour map of pixel values in raster datasets,
Symbology configuration for vector datasets, Map setup; Web service,
etc.

To document visualisation, there is a need for GIS documentation and
samples of geospatial information products (maps, lists, charts, new
geodata derived from existing data, web services, etc.).

[]{#_Toc74136193 .anchor}Table 10: Requirement for rendition and
visualisation

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_31 | Geospatial dataset visualisation              | 0..n        |
|        |                                               |             |
|        | An image displaying the overall view or a     | SHOULD      |
|        | representative section of any geospatial      |             |
|        | dataset **SHOULD** be provided in the         |             |
|        | Information Package and placed in a           |             |
|        | documentation/rendering folder                |             |
+--------+-----------------------------------------------+-------------+
| GEO_32 | Visualisation documentation                   | 0..n        |
|        |                                               |             |
|        | A document describing visualisation rules and | SHOULD      |
|        | configurations **SHOULD** be provided in the  |             |
|        | Information Package                           |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of visualisation documentation      | 0..1        |
| EO_32a |                                               |             |
|        | If a document describing visualisation rules  | SHOULD      |
| Ref    | and configurations exists it **SHOULD** be    |             |
| GEO_32 | provided in a documentation/rendering folder  |             |
+--------+-----------------------------------------------+-------------+
| GEO_33 | Rendering configuration                       | 0..n        |
|        |                                               |             |
|        | A standardised machine-readable rendering     | MAY         |
|        | configuration for one or more geospatial      |             |
|        | datasets **MAY** be provided in the           |             |
|        | Information Package                           |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of rendering configuration          | 0..n        |
| EO_33a |                                               |             |
|        | If a standardised machine-readable rendering  | SHOULD      |
| Ref    | configuration for one or more geospatial      |             |
| GEO_33 | datasets exists it **SHOULD** be provided in  |             |
|        | representations/\                             |             |
|        | [RepresentationName\]/documentation/rendering |             |
+--------+-----------------------------------------------+-------------+
| GEO_34 | Information product examples                  | 0..n        |
|        |                                               |             |
|        | Information product examples based on         | SHOULD      |
|        | geospatialrecord(s) example **SHOULD** be     |             |
|        | provided in the Information Package           |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of information product examples     | 0..1        |
| EO_34a |                                               |             |
|        | If information product examples exist, they   | SHOULD      |
| Ref    | **SHOULD** be provided in the Information     |             |
| GEO_34 | Package in a documentation/rendering folder   |             |
+--------+-----------------------------------------------+-------------+

### Behaviour - Software and algorithms

To facilitate the reproduction of information products in future System
(for example: reconstruct common queries for a specific geospatial
dataset), there is often a need to run specific database queries or
geo-specific processes. However, some information can only be accessed
using functionalities of the original System. Therefore, preserving user
manuals and system documentation of original systems is also recommended
to preserve the behaviour aspect.

[]{#_Toc74136194 .anchor}Table 11: Requirements for behaviour

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_35 | System documentation                          | 0..n        |
|        |                                               |             |
|        | Documentation regarding the original system,  | SHOULD      |
|        | where geospatial records were used,           |             |
|        | **SHOULD** be provided in the Information     |             |
|        | Package.                                      |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of System documentation             | 0..n        |
| EO_35a |                                               |             |
|        | If documentation regarding the original       | SHOULD      |
| Ref    | system exists it **SHOULD** be provided in a  |             |
| GEO_35 | documentation/behaviour folder                |             |
+--------+-----------------------------------------------+-------------+
| GEO_36 | Common queries, algorithms                    | 0..n        |
|        |                                               |             |
|        | Documentation on the logic of common queries  | SHOULD      |
|        | and algorithms used for analysis,             |             |
|        | transformation, creation, and maintenance of  |             |
|        | geospatial records **SHOULD** be provided in  |             |
|        | the Information Package                       |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of common queries, algorithms       | 0..n        |
| EO_36a |                                               |             |
|        | If documentation on the logic of common       | SHOULD      |
| Ref    | queries and algorithms exists it SHOULD be    |             |
| GEO_36 | provided in a documentation/behaviour folder  |             |
+--------+-----------------------------------------------+-------------+
| GEO_37 | Common queries, algorithms machine-readable   | 0..n        |
|        |                                               |             |
|        | Code of queries and algorithms used with the  | MAY         |
|        | geospatial records in the Information Package |             |
|        | **MAY** be provided in the Information        |             |
|        | Package                                       |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of machine-readable common queries, | 0..n        |
| EO_37a | algorithms                                    |             |
|        |                                               | SHOULD      |
| Ref    | If code of queries and algorithms used with   |             |
| GEO_37 | the geospatial records exists it **SHOULD**   |             |
|        | be provided in a documentation/behaviour      |             |
|        | folder                                        |             |
+--------+-----------------------------------------------+-------------+

### Coordinate reference system information- requirements

Coordinate Reference System (CRS) definition is essential for effective
reuse of all geospatial records. When the CRS of the geodata in the
Information Package is described by only referencing a well-known
external database of CRS definitions (such as the EPSG database), the
availability of these definitions is dependent upon the long-term
existence of that database. Therefore, a CITS Geospatial Information
Package must contain these definitions to be self-descriptive.

[]{#_Toc74136195 .anchor}Table 12: Requirements for the coordinate
reference system information

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_38 | Standardised machine-readable format CRS      | 0..n        |
|        | definition                                    |             |
| Ref    |                                               | SHOULD      |
| GEO_15 | If the CRS definition in a geospatial file is |             |
|        | documented only by a reference to a CRS       |             |
|        | registry, a standardised machine-readable     |             |
|        | format CRS definition compliant with          |             |
|        | standards for CRS definition **SHOULD** be    |             |
|        | provided in the Information Package           |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of standardised machine-readable    | 0..n        |
| EO_38a | format CRS definition:                        |             |
|        |                                               | SHOULD      |
| Ref    | If a standardised machine-readable format CRS |             |
| GEO_38 | definition exists it **SHOULD** be provided   |             |
|        | in a documentation/CRS folder                 |             |
+--------+-----------------------------------------------+-------------+
| GEO_39 | CRS transformation parameters                 | 0..n        |
|        |                                               |             |
|        | For a system using data in multiple CRS       | MAY         |
|        | systems, standardised machine-readable        |             |
|        | transformation parameters between those CRS   |             |
|        | **MAY** be provided in the Information        |             |
|        | Package                                       |             |
+--------+-----------------------------------------------+-------------+
| G      | Placement of CRS transformation parameters    | 0..n        |
| EO_39a |                                               |             |
|        | If standardised machine-readable              | SHOULD      |
| Ref    | transformation parameters exist, they         |             |
| GEO_39 | **SHOULD** be provided in a documentation/CRS |             |
|        | folder                                        |             |
+--------+-----------------------------------------------+-------------+

### Other - Contextual Documentation requirements

This part of the IP describes all remaining, more general information
about the geospatial record. Included here are links to relevant
documentation describing data creation methodology and the spatial data
set\'s provenance. The Documentation could consist of interviews, legal
origin documentation, related practices in the EU and worldwide,
methodological rules, scientific articles, related publications, etc.

[]{#_Toc74136196 .anchor}Table 13: Requirements regarding other
information

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| GEO_40 | Package level contextual documentation        | 0..n        |
|        |                                               |             |
|        | Contextual documentation covering all         | SHOULD      |
|        | representations in the Information package    |             |
|        | **SHOULD** be placed in documentation/other   |             |
|        | on package level                              |             |
+--------+-----------------------------------------------+-------------+
| GEO_41 | Representation level contextual documentation | 0..n        |
|        |                                               |             |
|        | Contextual documentation covering only        | SHOULD      |
|        | content within a particular representation    |             |
|        | **SHOULD** be placed in                       |             |
|        | representatio                                 |             |
|        | ns/\[RepresentationName\]/documentation/other |             |
+--------+-----------------------------------------------+-------------+

## Geospatial Metadata requirements

Geospatial data in the IP is documented using a form of geospatial
metadata, which contains common descriptions of the data as well as
descriptions specific to the geospatial domain (accuracy, lineage,
scale, measurement units, CRS info, etc.). In original systems,
geospatial metadata can be stored in different ways (databases,
standardised xml files, common documentation, etc.).

[]{#_Toc74136197 .anchor}Table 14: Requirements for the geospatial
metadata

+--------+-----------------------------------------------+-------------+
| ID     | Name, Location & Description                  | Card &      |
|        |                                               | Level       |
+========+===============================================+=============+
| >      | Standardised machine-readable geospatial      | > 0..n      |
| GEO_42 | metadata                                      |             |
| >      |                                               | SHOULD      |
| > Ref  | Descriptive geospatial metadata in the        |             |
| >      | long-term preservation format representation  |             |
| GEO_17 | of the Information Package **SHOULD** be      |             |
|        | provided in the form of sstandardised         |             |
|        | machine-readable format compliant with        |             |
|        | geospatial metadata standards                 |             |
+--------+-----------------------------------------------+-------------+
| > G    | Placement of standardised machine-readable    | >           |
| EO_42a | geospatial metadata                           | Conditional |
| >      |                                               | > 1..1      |
| > Ref  | If a standardised descriptive geospatial      | >           |
| >      | metadata file exists it **MUST** be provided  | > MUST      |
| GEO_42 | in                                            |             |
|        | representation                                |             |
|        | s/\[RepresentationName\]/metadata/descriptive |             |
+--------+-----------------------------------------------+-------------+
| > G    | XML schema definition for geospatial metadata | >           |
| EO_42b |                                               | Conditional |
| >      | If a standardised descriptive geospatial      | > 1..n      |
| > Ref  | metadata file exists, it **MUST** be          | >           |
| >      | accompanied by an XML schema definition       | > MUST      |
| GEO_42 | placed in a sub-folder called /schemas within |             |
| > and  | the Information Package root folder or the    |             |
| > G    | representation folder                         |             |
| EOSTR1 |                                               |             |
+--------+-----------------------------------------------+-------------+
| >      | Non-standardised machine-readable Geospatial  | > 0..n      |
| GEO_43 | metadata                                      | >           |
| >      |                                               | > MAY       |
| > Ref  | A copy of Geospatial metadata in              |             |
| >      | non-long-term preservation representations    |             |
| GEO_17 | **MAY** be stored in its original form as     |             |
|        | databases or documentation. However, if this  |             |
|        | data is stored in a long-term preservation    |             |
|        | representation, the formats need to comply    |             |
|        | with the archival guidelines (stored in       |             |
|        | approved long-term preservation formats).     |             |
+--------+-----------------------------------------------+-------------+

# Postface

  ---------------------------- ------------------------------------------
  **AUTHOR(S)**                

  Name(s)                      Organisation(s)

  Martin Dew-Hattens           Danish National Archives

  Ann Kristin Egeland          Danish National Archives

  Anders Bo Nielsen            Danish National Archives

  Gregor Završnik              Geoarh
  ---------------------------- ------------------------------------------

  ---------------------------- ------------------------------------------
  **REVIEWER(S)**              

  Name(s)                      Organisation(s)

  Jaime Kaminski               Highbury R&D

  Karin Bredenberg             Kommunalförbundet Sydarkivera
  ---------------------------- ------------------------------------------

  ----------------- -------------------------------------------------------- ------
  **Project                                                                  
  co-funded by the                                                           
  European                                                                   
  Commission within                                                          
  the ICT Policy                                                             
  Support                                                                    
  Programme**                                                                

  **Dissemination                                                            
  Level**                                                                    

  **P**             **Public**                                               X

  **C**             **Confidential, only for members of the Consortium and   
                    the Commission Services**                                
  ----------------- -------------------------------------------------------- ------

**[REVISION HISTORY AND STATEMENT OF ORIGINALITY]{.underline}**

**Submitted Revisions History**

+-------+----------+------------+-----------+-------------------------+
| **Rev | **Date** | **Au       | **Organ   | **Description**         |
| ision |          | thors(s)** | isation** |                         |
| No.** |          |            |           |                         |
+-------+----------+------------+-----------+-------------------------+
| 0.1   | 31       | Gregor     | Geoarh    | Draft outline based on  |
|       | October  | Završnik   |           | SFSB SMURF document.    |
|       | 2018     |            |           |                         |
+-------+----------+------------+-----------+-------------------------+
| 1.0   | 20.      | Gregor     | Geoarh,   |                         |
|       | December | Završnik,  |           |                         |
|       | 2018     |            |           |                         |
+-------+----------+------------+-----------+-------------------------+
| 2.0   | 31.May   | Gregor     | Geoarh    | Changes introduced      |
|       | 2019     | Završnik   |           | based on received       |
|       |          |            |           | comments from the users |
+-------+----------+------------+-----------+-------------------------+
| 2.0.2 | 12       | Gregor     | Geoarh    | Changes introduced      |
|       | .08.2020 | Završnik   |           | based on received       |
|       |          |            |           | comments from the       |
|       |          |            |           | users:\                 |
|       |          |            |           | -CRS Definition added   |
|       |          |            |           | to technical            |
|       |          |            |           | documentation if        |
|       |          |            |           | referenced externally.\ |
|       |          |            |           | - GeoIP schemas aligned |
|       |          |            |           | with CSIP structure.\   |
|       |          |            |           | -Additions to Glossary\ |
|       |          |            |           | - Images changed to     |
|       |          |            |           | provide a better        |
|       |          |            |           | understanding.          |
+-------+----------+------------+-----------+-------------------------+
| 2     | 3        | Gregor     | Geoarh    | Changes introduced      |
| .0.4. | 0.9.2020 | Završnik   |           | based on received       |
|       |          |            |           | comments from the       |
|       |          |            |           | users:                  |
|       |          |            |           |                         |
|       |          |            |           | \- GeoIP schemas        |
|       |          |            |           | aligned with CSIP       |
|       |          |            |           | structure.\             |
|       |          |            |           | - Added examples for    |
|       |          |            |           | technical documentation |
|       |          |            |           | elements.               |
+-------+----------+------------+-----------+-------------------------+
| 3.0.0 | 1        | Gregor     | Geoarh    | Update and rework of    |
|       | 1.6.2021 | Završnik   |           | specification to draft  |
|       |          |            | DNA       | for public review of    |
|       |          | Ann        |           | version 3.0.            |
|       |          | Kristin    |           |                         |
|       |          | Egeland,   |           |                         |
|       |          | Anders Bo  |           |                         |
|       |          | Nielsen,   |           |                         |
|       |          | Martin     |           |                         |
|       |          | D          |           |                         |
|       |          | ew-Hattens |           |                         |
+-------+----------+------------+-----------+-------------------------+
| 3.0.0 | 3        | Various    | Various   | Publication of version  |
|       | 1.8.2021 |            |           | 3.0.0                   |
+-------+----------+------------+-----------+-------------------------+
