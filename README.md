Title: Tracking wintertime behaviour of emperor penguins using high-resolution synthetic aperture radar imagery
Authors: Michelle LaRue1*, Daniel Price1, Sarah Wiki-Bennett2, Charles K. Lee3, B. Jack Pan4, Kyle McCloud5, Heather Cruickshank6, Alex Ponniah6, Daniel Zitterbart7,8, Alexander Winterl8, Céline Le Bohec9,10, Rose Foster-Dyer1, Peter Fretwell11
Affiliations:
1School of Earth and Environment, University of Canterbury, Christchurch, New Zealand 
2Research and Innovation, University of Canterbury, Christchurch, New Zealand 
3School of Science, University of Waikato, Hamilton, NZ
4Ocean Motion Technologies, San Diego, USA
5Umbra Space, Santa Barbara, USA
6Talesmith, London, UK
7Woods Hole Oceanographic Institute, Woods Hole, USA
8Friedrich-Alexander University Erlangen-Nürnberg, Department of Physics, Erlangen, Germany
9CEFE, Université de Montpellier, CNRS, EPHE, IRD, Montpellier, France
10Centre Scientifique de Monaco, Département de Biologie Polaire, Monaco City, Monaco
11British Antarctic Survey, Cambridge, UK
*Corresponding author: michelle.larue@canterbury.ac.nz
Running title: SAR imagery for winter estimates of emperor penguins


Metadata for “sar_huddles_20250502.csv”
Created by Michelle LaRue
Derived from the shapefile, “sar_huddles_20250502.shp”, which is the GIS file containing the delineated huddles of all emperor penguins from synthetic aperture radar (SAR) imagery during winter 2024 at six colonies.
Id: assigned by ArcGISPro
colony: name of the emperor penguin colony to which the huddle area per date is assigned. Possibilities include, Atka Bay, Coulman Island, Cape Roget, Cape Washington, Franklin Island, and Cape Crozier
image: unique name representing the date and time of image acquisition of the Umbra image on which the delineation took place (delineated in ArcGISPro). Format is YYYY-MM-DD-HH-MM-SS_UMBRA-XX_GEC.tif. Further information about naming convention provided at umbra.space.
area: in square meters, of the huddles of emperor penguins that were manually delineated through visual interpretation on 2024 SAR imagery by Michelle LaRue. Program to view and delineate the huddles was ArcGISPro.
xcoord: centroid of the x coordinate (longitude) in decimal degrees (WGS1984) of the huddles on the image date.
ycoord: centroid of the y coordinate (latitude) in decimal degrees (WGS1984) of the huddles on the image date.
b_pres: binary yes or no as to whether penguins could be visually detected on the imagery.

Metadata for “empe_sar_summary_notes.csv”
Derived from the shapefile, “sar_huddles_20250502.shp”, which is the GIS file containing the delineated huddles of all emperor penguins from synthetic aperture radar (SAR) imagery during winter 2024 at six colonies.
colony: name of the emperor penguin colony to which the huddle area per date is assigned. Possibilities include, Atka Bay, Coulman Island, Cape Roget, Cape Washington, Franklin Island, and Cape Crozier
yyyymmdd: date on which SAR image was acquired formatted in yyyymmdd (year month day); derived from Umbra naming convention :YYYY-MM-DD-HH-MM-SS_UMBRA-XX_GEC.tif. Further information about naming convention provided at umbra.space.
huddles: total number of emperor penguin huddles visually detected on the image date.
areasum: total area in square meters of emperor penguin huddles visually detected on the image date.
areamean: average huddle size area (total area divided by the number of huddles) of emperor penguin huddles visually detected on the image date.
jday: Julian date of the image acquisition
ycoordmean: centroid of the y coordinate (latitude) in decimal degrees (WGS1984) of the mean huddles shapefile on the image date.
xcoordmean: centroid of the x coordinate (longitude) in decimal degrees (WGS1984) of the mean huddles shapefile on the image date.
colony_ycoord: approximate latitude in decimal degrees of the emperor penguin colony.
colony_size: qualitative description of relative size of the emperor penguin colony considering all emperor penguin colonies described in LaRue et al. (2024), options are small, medium and large, and were defined by Michelle LaRue.
notes: observations by Michelle LaRue while reviewing SAR imagery manually in ArcGISPro. These observations took place independent of the ground validation at Atka Bay.

Metadata for “empe_sar_summary_20250801.csv”
Derived from “empe_sar_summary_notes.csv” to include minimum convex polygon analysis conducted on the corresponding shapefile in ArcGISPro.
colony: name of the emperor penguin colony to which the huddle area per date is assigned. Possibilities include, Atka Bay, Coulman Island, Cape Roget, Cape Washington, Franklin Island, and Cape Crozier
yyyymmdd: date on which SAR image was acquired formatted in yyyymmdd (year month day); derived from Umbra naming convention :YYYY-MM-DD-HH-MM-SS_UMBRA-XX_GEC.tif. Further information about naming convention provided at umbra.space.
huddles: total number of emperor penguin huddles visually detected on the image date.
areasum: total area in square meters of emperor penguin huddles visually detected on the image date.
areamean: average huddle size area (total area divided by the number of huddles) of emperor penguin huddles visually detected on the image date.
jday: Julian date of the image acquisition
ycoordmean: centroid of the y coordinate (latitude) in decimal degrees (WGS1984) of the mean huddles shapefile on the image date.
xcoordmean: centroid of the x coordinate (longitude) in decimal degrees (WGS1984) of the mean huddles shapefile on the image date.
colony_ycoord: approximate latitude in decimal degrees of the emperor penguin colony.
colony_size: qualitative description of relative size of the emperor penguin colony considering all emperor penguin colonies described in LaRue et al. (2024), options are small, medium and large, and were defined by Michelle LaRue.
notes: observations by Michelle LaRue while reviewing SAR imagery manually in ArcGISPro. These observations took place independent of the ground validation at Atka Bay.
image: unique name representing the date and time of image acquisition of the Umbra image on which the delineation took place (delineated in ArcGISPro). Format is YYYY-MM-DD-HH-MM-SS_UMBRA-XX_GEC.tif. Further information about naming convention provided at umbra.space.
MBG_Width: The shortest distance between any two vertices of the convex hull. (It may be found between more than one pair of vertices, but the first found will be used.)
MBG_Length: The longest distance between any two vertices of the convex hull; these vertices are called antipodal pairs or antipodal points. (It may be found between more than one pair of vertices, but the first found will be used.)
MBG_APodX1: The x-coordinate of the first point of the antipodal pairs.
MBG_APodY1: The y-coordinate of the first point of the antipodal pairs.
MBG_APodX2: The x-coordinate of the second point of the antipodal pairs.
MBG_APodY2: The y-coordinate of the second point of the antipodal pairs.
MBG_Orientation: The orientation of the imagined line connecting the antipodal pairs.
Area_m: Total area of the minimum convex hull (polygon) per image date.

Metadata for “mcp_emperors_dissolve2.csv”
colony: name of the emperor penguin colony; Possibilities include, Atka Bay, Coulman Island, Cape Roget, Cape Washington, Franklin Island, and Cape Crozier
longitude: in decimal degrees, the approximate longitude of the colony
latitude: in decimal degrees, the approximate latitude of the colony
avg_colsz: average size of the colony during 2009-2018 reported in LaRue et al. (2024)
SUM_Area: total area (in square meters) of the minimum convex polygon (MCP), that represents the entire area that the emperor penguin huddles covered during winter 2024.
MEAN_Area: average area (in square meters) of the minimum convex polygon.
STD_Area: standard deviation of area (in square meters) of the minimum convex polygon.
MIN_MBG_Wi:  shortest distance in meters between any two vertices of the MCP at each colony
MEAN_MBG_W: average shortest distance in meters between any two vertices of the MCP at each colony
STD_MBG_ Wi: standard deviation of shortest distance in meters between any two vertices of the MCP at each colony
MAX_MBG_Le: maximum longest distance in meters between any two vertices of the convex hull (MCP)
MEAN_MBG_L: average longest distance in meters between any two vertices of the convex hull (MCP).
STD_MBG_Le: standard deviation of longest distance in meters between any two vertices of the convex hull (MCP).

