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

- **Content**: Information contained within the Information Object.
  For example, location information (coordinates, orientation, pixel
  size), geometry, related feature attributes, etc. This is stored
  within the `Data` folder within a Representation.

- **Context**: Any information that describes the environment in
  which the content was created or that affects its intended meaning.
  Examples: Creator name, date of creation, spatial accuracy, source
  data, sensor information, etc. This type of information can be
  provided using the `Other` folder within the main
  `Documentation` folder or by providing various
  *Geospatial Metadata* located within the Representation
  `Metadata/Descriptive` folder.

- **Structure**: Information that describes the extrinsic or
  intrinsic relationship between two or more types of content, as
  required to reconstruct the performance. For example, a Raster
  object and its connection to the world file, or a vector dataset
  combined with a table, a GIS project, defining the structure of
  geodata layers used to create a map, configuration of web services,
  defining a mash-up WMS, etc. This information should preferably be
  provided using standardised machine-readable files or at least in
  written documentation.

- **Rendering**: Any information that contributes to the recreation
  of the performance of the Information Object. Example: Colour map of
  pixel values of a raster; Styled Description layer for web services,
  documentation describing a cartographic map project, Report designs,
  etc.

- **Behaviour**: Properties that indicate the method in which
  content interacts with other stimuli. Example --rendering
  algorithms, analysis functionalities, standard transformation
  processes, documentation of original system functionality, user
  manuals, training materials, system usage videos, etc.

<a name="fig2"></a>
![CITS Geospatial extension folders for Information Packages](media/fig_2.png)

**Figure 2:** CITS Geospatial extension folders for Information Packages

## Folder structure requirements

The CITS Geospatial information structure inherited its package structure from the E-ARK Common Specification for Information Packages (CSIP) (blue elements), and it is an extension of it (green elements).

A visualisation of a valid CITS Geospatial Information Package is illustrated in Figure 3. This Figure shows an example of a simple valid Information Package with one representation of a single vector dataset in a GML file format.

<a name="fig3"></a>
![Example Information Package folder structure](media/fig_3.jpg)

**Figure 3:** Example Information Package folder structure

The folder structure in CSIP described in section <https://earkcsip.dilcis.eu/#folderstructureofthecsip> is extended with the following geo specific requirements on the folder structure:

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
