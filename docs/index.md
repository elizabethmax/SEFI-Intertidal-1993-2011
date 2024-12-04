---
layout: default
---

# Elizabeth Max's Master of Science Thesis 2024
## Climate-related changes in rocky intertidal species distribution on the Farallon Islands

![Southeast Farallon Island blue skies and ocean](assets/images/IMG_20200214_162227_landscape.png)

### **About this GitPage**<br>
This GitPage serves as an open-source publication of the methods used to wrangle and analyze the data I used for my masters project. Below are Rmarkdowns with the code that I used in addition to the data visualizations that I created in RStudio.<br>

# Project Overview
This project focuses on the species cover of rocky intertidal alage and invertebrates on the Farallon Islands. Cover data is sourced from annual surveys executed by the **[Greater Farallones National Marine Sanctuary](https://farallones.noaa.gov/science/intertidal.html)** in the time period of 1993-2011. The relationship of environmental variables and species cover are central to this analysis. <br>
Read <b>**[this paper by Roletto et. al, 2014](https://bioone.org/journals/monographs-of-the-western-north-american-naturalist/volume-7/issue-1/042.007.0120/Status-and-Trends-of-the-Rocky-Intertidal-Community-on-the/10.3398/042.007.0120.full)**</b> to learn more about the survey methods and the initial findings regarding the status and trends of rocky intertidal species cover on the Farallon Islands 1993-2011.

### **Research Questions**<br>
1. Are variations in air temperature, sea surface temperature (SST), and sea surface salinity (SSS) associated with changes in cover?<br>
2. Does cover respond to ocean-climate patterns (**[NPGO](https://www.psl.noaa.gov/gcos_wgsp/Timeseries/NPGO/)**, **[PDO](https://www.ncei.noaa.gov/access/monitoring/pdo/)**, **[SOI](https://www.ncei.noaa.gov/access/monitoring/enso/soi)**, **[CUTI, and BEUTI](https://mjacox.com/upwelling-indices/)**)?<br>
3. Are the biogeographical range shifts that are seen on the mainland exhibited on the islands?<br>

# Tidying the Dataset with R 
RMarkdowns, performed in the following order:
1. [Formatting](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/Tidying_Data.1_Format.html) <br>
2. [Dealing with NA and Zeroes](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/Tidying_Data.2_NA.and.Zeroes.html) <br>
3. [Species Name Corrections](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/Tidying_Data.3_Name.Corrections.html)<br>

# Research Question 1
### Are variations in air temperature, sea surface temperature (SST), and sea surface salinity (SSS) associated with changes in cover?
This questions addresses the relationship between species cover and local-scale environmental variables. All combinations of SST, air temperature, SSS, and the interactive effects of SST and SSS come out to 45 combinations. In the interest of choosing the best linear mixed model, AIC analysis was applied to all possible candidate models.

[AIC Analysis RMarkdown]()

The top models: <br>
**All upright species**: air temperature + sea surface salinity
- [AIC results]()
- [linear mixed model results]() 

**Non-crustose algae**: sea surface salinity
- [AIC results]()
- [linear mixed model results]() 

**Non-crustose vertebrates**: interaction of sea surface temperature and sea surface salinity  
- [AIC results]()
- [linear mixed model results]()

# Research Question 2
### Does cover respond to ocean-climate patterns NPGO, PDO, SOI, CUTI, and BEUTI?
This question investigates the relationship between large-scale ocean patterns and species cover. All combinations of NPGO, PDO, SOI, CUTI, and BEUTI come out to 96 combinations. Again, AIC was used to find the top model.

The top models: <br>
**All upright species**: NPGO + SOI + CUTI + BEUTI  
- [AIC results]()
- [linear mixed model results]()
  
**Non-crustose algae**: NPGO + PDO + CUTI + BEUTI  
- [AIC results]()  
- [linear mixed model results]()

**Non-crustose vertebrates**: SOI
- [AIC results]()  
- [linear mixed model results]()  

# Research Question 3
### Are the biogeographical range shifts that are seen on the mainland exhibited on the islands?
Key species were chosen based on being identified as a species of interest for this region and by meeting the northern and southern classification criteria (Barry et al., 1995; Blanchette et al., 2008; Burton, 1998; Duncan et al., 2013; Raimondi et al., 2019; Sanford et al., 2019). 
Northern species group has a southern range boundary north of Point Conception, California.
Southern species group has a northern range boundary south of Cape Mendocino.
Cosmopolitan species group have a geographic range that exceed both the northern and southern range boundaries defined above. <br>
I chose the Mann-Kendall test for its ability to identify monotonic (increasing/decreasing) trends which is respresented by the z statistic. [Click here to read more about the Mann-Kendall test]() <br>
- [California rocky intertidal species biogeographical range map]() <br>
- [Results table]()<br>
- [Z-scores graphed by species]()<br>
- [Z-scores graphed by species range category]()<br>

# Data Visualization 
**Species Boxplots**  [RMarkdown](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/Species_DataViz.html)   
*Tetraclita rubescens*   
[permanent quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/TetraPermSqrt.png), [random quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/TetraRandSqrt.png), [together](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/TetraAllSqrt.png)  
*Mytilus californianus*   
[permanent quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MytPermSqrt.png), [random quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MytRandSqrt.png), [together](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MytAllSqrt.png)  
*Corallina vancouveriensis*   
[permanent quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/CorPermSqrt.png), [random quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/CorRandSqrt.png), [together](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/CorAllSqrt.png)  
*Endocladia muricata*  
[permanent quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/EndoPermSqrt.png), [random quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/EndoRandSqrt.png), [together](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/EndoAllSqrt.png)  
*Mastocarpus jardinii*  
[permanent quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MastJPermSqrt.png), [random quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MastJRandSqrt.png), [together](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MastJAllSqrt.png)  
*Mastocarpus papillatus*  
[permanent quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MastPPermSqrt.png), [random quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MastPRandSqrt.png), [together](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MastPAllSqrt.png)  
*Mazzaella affinis*  
[permanent quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MazzAPermSqrt.png), [random quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MazzARandSqrt.png), [together](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MazzAAllSqrt.png)  
*Mazzaella flaccida*  
[permanent quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MazzFPermSqrt.png), [random quadrats](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MazzFRandSqrt.png), [together](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/MazzFAllSqrt.png)<br><br> 
**Ocean-Climate Conditions** [RMarkdown](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/SEFIOcean-Climate.html)  
Southeast Farallon Island (SEFI) Sea Surface Temperature [graph](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/.html)  
Pacific Decadal Oscillation (PDO) [graph](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/.html)  
North Pacific Gyre Oscillation (NPGO) [graph](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/.html)  
Southern Oscillation Index (SOI, ENSO, El Nino) [graph](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/.html)  

# Resources
[Full_Dataset](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/SEFI_RockyIntertidalData_Bio-Env.html) This csv table includes the survey data with point counts paired with geographically relevant environmental data. 

