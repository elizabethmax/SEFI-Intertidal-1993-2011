# Elizabeth Max Masters Project, SFSU
### **About this GitPage**<br>
This GitPage serves as an open-source publication of the methods used to wrangle and analyze the data I used for my masters project. Below are Rmarkdowns with the code that I used in addition to the data visualizations that I created in RStudio.<br>

# Project Overview
This project focuses on the species cover of rocky intertidal alage and invertebrates on the Farallon Islands. Cover data is sourced from a annual surveys executed by the **[Greater Farallones National Marine Sanctuary](https://farallones.noaa.gov/science/intertidal.html)** in the time period of 1993-2011. The relationship of environmental variables and species cover are central to this analysis. <br>
Read **[this paper by Roletto et. al, 2014](https://bioone.org/journals/monographs-of-the-western-north-american-naturalist/volume-7/issue-1/042.007.0120/Status-and-Trends-of-the-Rocky-Intertidal-Community-on-the/10.3398/042.007.0120.full)** to read more about the survey methods and the initial findings regarding the status and trends of rocky intertidal species cover on the Farallon Islands.
### **Research Questions**<br>
1. Do we see a trend in the cover of rocky intertidal species that is associated with thermal stress (SST and low tide air temperature) and change in salinity?<br>
2. Does rocky intertidal species cover respond to climate patterns (SOI, PDO, NPGO, BEUTI, CUTI)?<br>
3. Are the biogeographical range shifts that are seen on the mainland exhibited on the islands?<br>



# Tidying the Dataset with R 
RMarkdowns, performed in the following order:
1. [Formatting](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/Tidying_Data1_Format.html) <br>
2. [Dealing with NA and Zeroes](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/Tidying_Data2_NA-and-Zeroes.html) <br>
3. [Species Name Corrections](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/Tidying_Data3_NameCorrections.html)<br>

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
[Intertidal_Dataset](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/Intertidal_Dataset.html)  
[Oceanographic_Conditions](https://elizabethmax.github.io/SEFI-Intertidal-1993-2011/Oceanographic_Conditions.html)  
