---
title: "ECL7202 - Dendroecology"
---
Dendroecology course repository, 
ECL7202 course, 
Fabio Gennaretti, 
UQAT 


This course is available under a license [Creative Commons Attribution 4.0 International
License][cc-by].

[![CC BY 4.0][cc-by-shield]][cc-by]

[![CC BY 4.0][cc-by-image]][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[cc-by-image]: https://i.creativecommons.org/l/by/4.0/88x31.png
[cc-by-shield]: https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg

## Dendroweek

[Course_plan](pdf/Plan_de_cours_ECL7202_DENDROECOLOGIE_E24.pdf)

[New time schedule](pdf/Dendroweek_2024-Time_schedule_3.pdf)
      
## Themes

1. Anatomy and morphology of growth rings

      [Lecture](pdf/01-Anatomy_and_morphology.pdf)

      [Exercise - Steps 4 and 5 of this lab protocol](pdf/01-Protocole_lab.pdf) 
      
      [Video](https://www.youtube.com/watch?v=aBC6BR58zT4)
      
2. Dendrochronology and paleoecology

      [Lecture](pdf/02-Dendrochronology_and_paleoecology.pdf)
      
3. Dendroecological sampling
      
      [Lecture](pdf/03-Dendroecological_sampling.pdf)
      
4. Crossdating

      [Lecture/Exercise](pdf/04-crossdating.pdf)

      Data: [L18_TEST01.rwl](data/L18_TEST01.rwl); [L18_TEST02.rwl](data/L18_TEST02.rwl); [L18_TEST03.rwl](data/L18_TEST03.rwl)

5. Post-processing and statistics of dendrochronological series.

      [Lecture](pdf/05-Post-processing_and_statistics.pdf)

      [Exercise](R-code/05R-Post-processing_and_statistics.html)

6. Response functions and transfer functions

      [Lecture](pdf/06-Response_transfer_functions.pdf)

      [Exercise](R-code/06R-Response_transfer_functions.html)
      
      Data: [Pivot.SC.crn.csv](data/Pivot.SC.crn.csv)

7. Applications of dendroecology    
      
      [Lecture](pdf/07-Applications_of_dendroecology.pdf)
      
      The study of tree functioning : [The old cedars of Duparquet](pdf/Cedres_Manon.pdf)
      
      From 2023 cours : [Lecture of Maxence Martin on old trees and forests](pdf/ECL7010_2023_Vieux_Arbres_Maxence_Martin.pdf)

8. Dendroecology at the intra annual scale    
      
      [Lecture](pdf/08-Dendroecology_at_the_intra-annual_scale.pdf)
      
      QWA : [Lab of Samuel Bouchut on QWA](pdf/PPT-Cours-dendro-Anatomie.pdf)
      
      Dendrometers : [Drought impact with dendrometers](pdf/dendrometers_Jeanny.pdf)
      
      Dendrometers : [Exercise](R-code/08R-dendrometers.html)
      
      Dendrometers : Data - [Amos_sable_dendrometres_2.dat](dendrometer/Amos_sable_dendrometres_2.dat)
      
      Dendrometers : [Cabling for dendrometers](dendrometer/NEW_dendrometer_to_data_logger.pdf)
      
      Dendrometers : CR basic code - [on second](dendrometer/My4_dendroecologyCR1000X_onsecond.CR1X); [30 minutes interval](dendrometer/My4_dendroecologyCR1000X_30min.CR1X)
      
9. Dendroecological models

      Dendroecological models for climate-tree growth relationships : [VS-lite and MAIDEN](pdf/09-Dendroecological_models.pdf)
      
      Gap models for stand growth : [Maxence Soubeyrand's thesis project](pdf/presentation_soutenance.pdf)
      
## Mini-Projects 2024

[Qfield Project FERLD](project/dendro_FERLD.zip)

[Chavardes 2022 for NCI equations](pdf/projects/Chavardes_2022_cjfr-2022-0114_final.pdf)

<!-- [Longpré 2011](pdf/projects/longpré-et-al-2011.pdf) -->

<!-- 2023
*References on tree mortality*

[Reference: Cailleret et al. 2017](pdf/projects/2023/Cailleret_et_al-2017-Global_Change_Biology.pdf)

[Reference: Gessler et al. 2018](pdf/projects/2023/Gessler_et_al-2018-New_Phytologist.pdf)

*FERLD*

[Figure: Stand volumes at the FERLD](pdf/projects/2023/thumbnail_image002.png)

*Jack Pine in Silvics of North America*

https://www.srs.fs.usda.gov/pubs/misc/ag_654/volume_1/pinus/banksiana.htm
-->

<!-- 2021
Authier Nord forest experimental site: [Map](pdf/projects/Athier_nord_site.JPG); [Environmental diversity](pdf/projects/SandSWEI_PCA.jpg)
      
1. Stem analysis on jack pine (select tree with fire scar; living or death)

      [Reference: Autin et al. 2015](pdf/projects/Autin_2015.pdf)

2. Productivity assessment of boreal forest

      [Reference: Fradette et al. 2020](pdf/projects/Fradette_2020_forests-12-00059-v3.pdf)

3. Climate sensitivity of boreal trees

      [Reference: Chavardes et al. 2021](pdf/projects/Chavardes_FrontiersinPlantScience_2021.pdf)
-->

## Programs

[CooRecorder - Demo](programs/CDendro_CooRecorder_98_Install_20220130.exe)

[Past5 - Demo](programs/p5setup.exe)

[Cofecha](programs/COFECHA.EXE)

## Climate Data

[Climate Explorer](https://climexp.knmi.nl/start.cgi)

[Climate NA](https://climatena.ca/)

[Climate NA - Tutorial](https://pressbooks.bccampus.ca/climatemodellingforestadaptation/chapter/topic-3-2-the-use-of-climatena-ap-to-generate-point-and-spatial-climate-data/)

[Climate NA - Input File](data/input_test_climateNA.csv)

[weathercan ECCC - Tutorial](https://ropensci.org/blog/2018/03/06/weathercan/)

[weathercan ECCC - Data extraction from nearby stations to the FERLD](R-code/historical_weather_data_from_ECCC.R)

## Blue Intensity

[BI](https://www.cybis.se/forfun/dendro/helpcoorecorder7/bluechannel80/index.htm)

## Some little R tools

[.wid file](http://www.cybis.se/wiki/index.php?title=.wid)

[R script to create a .wid file handled by Cybis from a .rwl file with multiple series](R-code/2024_create_wid.R)

[.rwl file](http://www.cybis.se/wiki/index.php/Rwl)

[R script to modify final years of time series in .rwl files](R-code/2023_modif_last_rwl.R)

## Conclusion

[Questions always asked](pdf/Conclusion.pdf)

