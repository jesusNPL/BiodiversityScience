###################################
########### Disclaimer ############
This is the most recent readme publication based on all site-date combinations used during stackByTable.
Information specific to the query, including sites and dates, has been removed. The remaining content reflects general metadata for the data product.
##################################

This data package was produced by and downloaded from the National Ecological Observatory Network (NEON). NEON is
funded by the National Science Foundation (Awards 0653461, 0752017, 1029808, 1138160, 1246537, 1638695, 1638696,
1724433) and managed cooperatively by Battelle. These data are provided under the terms of the NEON data policy at
https://www.neonscience.org/data-policy.
DATA PRODUCT INFORMATION
------------------------
ID: NEON.DOM.SITE.DP1.10098.001
Name: Vegetation structure
Description: Structure measurements of individual woody and non-woody plants, mapped positions of qualifying woody and non-woody plants, and metadata required to draw inference from individual measurements at the plot scale.
NEON Science Team Supplier: Terrestrial Observation System
Abstract: This data product contains the quality-controlled, native sampling resolution data from in-situ measurements of live and standing dead woody individuals, shrub groups, and non-woody perennial plants from all terrestrial NEON sites with qualifying vegetation. The exact measurements collected per individual depend on growth form, and these measurements are focused on enabling biomass and productivity estimation, estimation of shrub volume and biomass, and calibration / validation of multiple NEON airborne remote-sensing data products. In general, comparatively large individuals that are visible to remote-sensing instruments are mapped, tagged, and measured, and other smaller and understory individuals are tagged and measured but not mapped. Structure and mapping data are reported per individual per plot. Smaller individuals may be subsampled using nested subplots in order to standardize the per plot sampling effort; total sampled area data reported in the vst_perplotperyear table are required to convert measurements made using nested subplots to the plot scale. For additional details, see the user guide, protocols, and science design listed in the Documentation section in this data product's details webpage.
Latency:
The expected time from data and/or sample collection in the field to data publication is as follows, for each of the data tables (in days) in the downloaded data package. See the Data Product User Guide for more information.
vst_apparentindividual:  120
vst_mappingandtagging:  120
vst_perplotperyear:  180
vst_shrubgroup:  120
vst_non-woody: 90
vst_identificationHistory: 7
Brief Design Description: Vegetation Structure data are collected from Distributed and Tower plots. Each Distributed plot is sampled in a given bout if at least one tree with Diameter at Breast Height (DBH) ≥ 10 cm or one palm tree or large tree fern is present. If trees with DBH ≥ 10 cm, palm trees, and large tree ferns are absent, all smaller qualifying vegetation is considered: both woody and non-woody perennial vegetation are sampled if all qualifying individuals of both types comprise ≥ 10% aerial cover of the plot. For example, a Distributed plot with 10% aerial cover comprising a mix of small shrubs and yucca would be sampled for yucca even if total yucca cover is < 10% aerial cover. Ferns, Xerophyllum, and Yucca have additional sampling criteria within Distributed plots: These three growth forms are not measured when the NLCD vegetation type of the plot is Deciduous Forest, Evergreen Forest, or Mixed Forest. In addition, when Distributed plot NLCD vegetation type is not forest, ferns are only sampled when aerial cover is ≥ 50% within the plot. Tower plots are sampled if at least one tree with DBH ≥ 10 cm or one palm tree, or one large tree fern is present in ≥ 10% of Tower plots, or if smaller qualifying individuals comprise ≥ 10% of aerial cover averaged across all Tower plots. Within both Distributed and Tower plots, all woody individuals with DBH ≥ 10 cm, all palm trees, and all large tree ferns are mapped and measured throughout the plot sampling area. Individuals with DBH < 10 cm are mapped if a) individuals with DBH ≥ 10 cm are absent from the plot, and b) they are visible to airborne remote-sensing instruments. If stem density thresholds are met, individuals with DBH < 10 cm and non-woody perennial vegetation, such as ferns and saw palmetto, may be measured within nested subplots in order to standardize the sampling effort across plots.
At all sites at which qualifying woody or non-woody perennial vegetation is present, Distributed plots are sampled every 5 years. At most sites with qualifying vegetation, a spatially-balanced subset of n=5 tower plots are sampled annually, and the full complement of Tower plots is sampled every 5 years. At slow-growth-increment sites (RMNP, YELL, NIWO, WREF, SJER, SOAP, TEAK, BONA, DEJU, HEAL), dendrometer bands are measured annually on a subset of individuals within Tower plots. At desert sites with sensitive vegetation and soils (i.e., MOAB, JORN, SRER, ONAQ), there is no annual Tower plot measurement and the full complement of Tower plots is measured every 5 years only. Ferns are only sampled in Tower plots when all Tower plots are sampled every 5 years; that is, ferns are not measured annually in the n=5 Tower plot subset.
At all sites, Distributed plot sampling and sampling of the full set of Tower plots is scheduled in a staggered manner such that sites generate data either from all Distributed plots or all Tower plots every 2-3 years. Sites that do not have qualifying vegetation are surveyed every 5 years to determine whether ingrowth of qualifying vegetation has occurred.
At sites with seasonal senescence, the onset of sampling in a given year is triggered by senescence of canopy or understory individuals. Sampling must be completed before growth begins the following season and within 4 months of sampling onset. At sites with no distinct season, sampling begins within ± 2 weeks of the same date, and must be completed within 60 days of sampling onset. The Teakettle site (TEAK) in California is an exception: Here, site logistics dictate a late June sampling start date. See NEON.DOC.000987 for more details.
Brief Study Area Description: Vegetation structure data are collected at all NEON terrestrial sites at which woody or non-woody perennial individuals meet presence or percent cover criteria. Functionally, sampling occurs at forested sites and sites with shrub/scrub vegetation. See the ‘Brief Design Description’ above for criteria.
Keywords: annual net primary productivity (ANPP), biodiversity, biomass, canopy height, carbon cycle, lianas, net primary productivity (NPP), plant productivity, plants, production, productivity, saplings, shrubs, tree height, trees, vegetation, vegetation structure, vst, woody plants
Domain: D01
DATA PACKAGE CONTENTS
---------------------
This folder contains the following documentation files:
This data product contains up to 5 data tables:
- Term descriptions, data types, and units: NEON.D01.HARV.DP1.10098.001.variables.20240412T025749Z.csv
vst_shrubgroup - Biomass and productivity measurements of groups of shrubs
vst_mappingandtagging - Mapping, identifying and tagging of individual stems for remeasurement
vst_apparentindividual - Biomass and productivity measurements of woody individuals
vst_perplotperyear - Per plot sampling metadata, including presence/absence of each growthForm
vst_non-woody - Biomass and productivity measurements of non-herbaceous perennial plants (e.g. cacti, ferns)
If data are unavailable for the particular sites and dates queried, some tables may be absent.
Basic download package definition: The basic data package contains all measurements. An expanded data package is not available for this data product.
FILE NAMING CONVENTIONS
-----------------------
NEON data files are named using a series of component abbreviations separated by periods. File naming conventions
for NEON data files differ between NEON science teams. A file will have the same name whether it is accessed via
NEON's data portal or API. Please visit https://www.neonscience.org/data-formats-conventions for a full description
of the naming conventions.
ISSUE LOG
----------
This log provides a list of issues identified during data collection or processing, prior to publication
of this data package. For a more recent log, please visit this data product's detail page at
https://data.neonscience.org/data-products/DP1.10098.001.
Issue Date: 2023-03-01
Issue: Increased spatial data uncertainty: In Domain 03, frequent fire management resulted in burning and loss of plastic plot markers, and replacement of lost markers without high-resolution coordinate verification created increased uncertainty in point-level spatial data associated with markers from which trees are mapped.
    Date Range: 2015-01-01 to 2023-03-31
    Location(s) Affected: DSNY, JERC, OSBS
Resolution Date: 
Resolution: Plot markers have been switched to flame-resistant materials to avoid loss during prescribed burns. However, an unknown number of trees in the vst_mappingandtagging table have been mapped from plot markers that may not have been restablished in the correct location. Data users are advised to increase the spatial uncertainty for mapped stems at affected sites from the standard 30 cm to 3 meters.
Issue Date: 2023-12-22
Issue: Identification history: updates to taxonomic determinations were not previously tracked.
    Date Range: 2012-01-01 to 2023-01-01
    Location(s) Affected: All
Resolution Date: 2024-01-01
Resolution: In provisional data, RELEASE-2024, and all subsequent releases, if taxonomic determinations are updated for any records, past determinations are archived in the `vst_identificationHistory` table, where the archived determinations are linked to current records using identificationHistoryID.
Issue Date: 2023-05-09
Issue: D01 state-level taxa obfuscation: Prior to the 2024 data release, publication of species identifications were obfuscated to a higher taxonomic rank when the taxon was found to be listed as threatened, endangered, or sensitive by any state within the domain. Obfuscating state-listed taxa across an entire domain has created challenges for data users studying biodiversity.
    Date Range: 2012-01-01 to 2023-04-25
    Location(s) Affected: D01
Resolution Date: 2023-12-31
Resolution: To reduce the number of records in which taxonomic identifications are obfuscated in D01, the state-level obfuscation routine has been applied to data using site-level granularity as of 25 April 2023. Previously published data have been reprocessed using the more precise obfuscation routine for the 2024 data release and onward. Federally listed threatened and endangered or sensitive species remain obfuscated at all sites.
Issue Date: 2023-11-09
Issue: SubplotId change: The Base plot subplot naming convention was ambiguous with respect to location and scale, and not well differentiated from the identifiers of the points that spatially define Base plots.
    Date Range: 2023-01-01 to 2023-12-31
    Location(s) Affected: All terrestrial sites
Resolution Date: 2023-12-31
Resolution: The subplot naming convention is updated across all data products with observations and samples that originate from Base plots. The format consists of the identity of the plot point in the southwest corner of the subplot, the scale or size of the subplot, and, for those subplots smaller than 100 m2, the corner of the 100 m2 subplot in which the smaller subplot is located. For example, ‘21_400’ refers to a subplot with point 21 in the southwest corner and having 400 m2 area (20 m x 20 m). Similarly, ‘31_1_1’ refers to a subplot with point 31 in the southwest corner, having 1 m2 area, and located in corner 1 of the 100 m2 subplot with point 31 in the southwest corner. See the associated Data Notification for further detail: https://www.neonscience.org/impact/observatory-blog/neon-terrestrial-observation-system-tos-base-plot-subplot-renaming. 
Specific to the Vegetation structure data product, the subplotID field has been moved to the vst_apparentindividual table from the vst_mappingandtagging table, as the identifier is no longer guaranteed to be constant through time. Publication of the 'nestedSubplotID' is also discontinued from the vst_mappingandtagging table because the information from this field is now incorporated into the subplotID published in the vst_apparentindividual table.
Issue Date: 2023-12-12
Issue: Incorrect assessment criteria used at MOAB: The ‘TOS Standard Operating Procedure: SVY – Survey Method for Assessing Vegetation Cover’ (NEON.DOC.005023) did not provide explicit guidance for how to assess cover of small, multi-stem shrub individuals with a mixture of qualifying (basal diameter ≥ 1 cm) and non-qualifying stems (basal diameter < 1 cm). For the affected date range, field staff working at the D13 MOAB site were provided guidance to assess cover from and measure small, multi-stem shrub individuals only if ≥ 50% of stems for a given individual had basal diameter ≥ 1 cm. This guidance was inconsistent with the Vegetation Structure protocol (NEON.DOC.000987), which instructs to measure small, multi-stem shrub individuals if at least one stem has basal diameter ≥ 1 cm. Because guidance not consistent with the protocol was followed, plots sampled at MOAB in the affected date range included approximately 10 fewer small, multi-stem shrubs per plot than if the Vegetation Structure protocol guidance were followed. Measuring fewer individuals per plot means that per plot biomass and volume estimates for the ‘small shrub’ growth form are lower for 2023 than for other years.
    Date Range: 2023-09-19 to 2023-11-03
    Location(s) Affected: MOAB
Resolution Date: 2023-12-06
Resolution: Qualification criteria for cover assessment and measurement of small, multi-stem shrub individuals (i.e., growth form = ‘small shrub’) were reverted to those documented in the Vegetation Structure protocol (NEON.DOC.000987).
Issue Date: 2024-02-07
Issue: Plot Prioritization deviation for annually sampled ‘towerSubset’. When Tower plots are sampled for Vegetation Structure, a ‘towerSubset’ of n=5 plots are sampled annually, and the full complement of plots are sampled every 5 years. Prior to 2020, the five annually sampled towerSubset plots were determined using only spatial balance criteria, and at some sites, this resulted in over- or under-representation of NLCD vegetation classes relative to the full complement of Tower plots. From 2020 onward, spatial balance and NLCD representation criteria were used to select the annually sampled towerSubset plots, and a Plot Prioritization list was distributed to communicate the change. However, implementation of the change was not immediate at some sites, and the actual annual towerSubset sampled at affected sites differed from the Plot Prioritization list for at least one sampling year in the affected date range. The deviation from the Plot Prioritization list means that biomass and productivity estimates derived from the towerSubset plots at affected sites may not be as representative as possible of the full complement of Tower plots. For the PUUM site the issue was slightly different; at PUUM, deviations in spatial balance occurred to better coordinate Vegetation Structure sampling in the annual Tower subset with soil sampling, and these deviations were not documented in the approved Plot Prioritization list.
    Date Range: 2020-03-01 to 2023-08-01
    Location(s) Affected: STEI, TREE, UNDE, KONZ, GRSM, MLBS, ORNL, DELA, LENO, CLBJ, BONA, DEJU, PUUM
Resolution Date: 2023-11-08
Resolution: For the site-specific resolution dates identified below, annual sampling for Vegetation Structure in the towerSubset occurs in plots identified by spatial balance and NLCD vegetation type criteria, and annually sampled plots are consistent with the Plot Prioritization list. At the D20 PUUM site, all plots have the same NLCD type (i.e., evergreen forest), and a slight deviation from the spatially-balanced Plot Prioritization list was approved for Vegetation Structure sampling to enable spatial coordination with soil sampling (DP1.10086.001), which is constrained by soil depth in some plots due to relatively recent lava flow. 
Site-specific resolution dates: 
D05 STEI and UNDE – deviations in 2020 and 2021, resolved thereafter. 
D05 TREE – deviations in 2020, resolved thereafter. 
D06 KONZ – deviations in 2020 and more plots sampled than expected in 2021; resolved thereafter. 
D07 GRSM and ORNL – deviations in 2020, resolved thereafter. 
D07 MLBS – deviations in 2020 and 2021, resolved thereafter. 
D08 DELA and LENO – deviations from 2020-2022, resolved thereafter. 
D11 CLBJ – deviations in 2020, resolved thereafter. 
D19 BONA and DEJU – deviations in 2020, resolved thereafter. 
D20 PUUM – inconsistent annual Tower subset sampled from 2020-2023; resolved thereafter.
Issue Date: 2023-04-12
Issue: Subplot changed from 23 to subplot 39 at LENO_069.
    Date Range: 2016-07-01 to 2023-04-01
    Location(s) Affected: D08-LENO_069
Resolution Date: 2023-04-01
Resolution: Due to persistent flooding, it is no longer possible to sample subplot 23 in Tower plot LENO_069. All sampling in subplot 23 has been discontinued. Subplot 39 will be used for all sampling activities previously scheduled for subplot 23.
Issue Date: 2023-03-01
Issue: Available nested subplots in 40m x 40m Tower plots included 1, 3, 10, 25, and 100 meter squared sizes. The largest two sizes represented a four-fold difference in sampled area, resulting in significant sampling effort for the 100 meter squared size when vegetation missed qualifying for the 25 meter squared size by a small number of individuals.
    Date Range: 2015-01-01 to 2023-03-01
    Location(s) Affected: All
Resolution Date: 2023-03-01
Resolution: A 50 meter square nested subplot size was introduced for use in 40m x 40m Tower plots.
Issue Date: 2023-03-01
Issue: Spatial scaling issue for ferns and ‘other’ growth forms: When determining whether nested subplots could be used to standardize the sampling effort for ferns and ‘other’ growth forms (i.e., cacti, ocotillo, small palms, small tree ferns, xerophyllum, and agave), the sum total of ferns + all ‘other’ individuals in the plot was used to determine the value of ‘nestedSubplotAreaOther’ and the related ‘totalSampledAreaOther’ fields. However, since 2020 ferns are only scheduled for sampling every 5 years in Tower plots, and thus ferns are no longer measured in four out of five years in annually sampled Tower plots. For annually sampled Tower plots where ferns are the only 'other' type of growth form, the reported totalSampledAreaOther value suggested no fern biomass for four out of five years, when in fact ferns simply were not sampled for those years. Moreover, in annually sampled Tower plots where ferns coexist with some of the ‘other’ growth forms (e.g., palms in D03, xerophyllum in D16, tree ferns in D20), we reported a totalSampledAreaOther value for the ‘other’ growth forms that were measured annually, and for four out of five years we created the impression that zero fern biomass was legitimately measured, even though ferns were not scheduled for sampling.
    Date Range: 2015-01-01 to 2023-03-01
    Location(s) Affected: All sites at which the ‘fern’ growth form is sampled.
Resolution Date: 2023-03-01
Resolution: Introduced new ‘nestedSubplotAreaFerns’ and ‘totalSampledAreaFerns’ fields in the vst_perplotperyear table to account for fern measurement separately from remaining ‘other’ growth forms. The ‘totalSampledAreaFerns’ field is now NULL when ferns are present but not sampled due to the scheduled bout type. In addition, the totalSampledAreaOther field now accurately reflects the sampling effort for the remaining ‘other’ growth forms.
Issue Date: 2023-03-01
Issue: A single ‘palm’ growth form was applied to all palm trees, regardless of size, and to shrub-type palms. Because the protocol allowed small palm trees and shrub-type palms to be measured with nested subplots when density was sufficient, and because larger palm trees were measured throughout the plot, there was no simple mechanism in the data to allow a data user to scale individual palm measurements to the plot level, as individuals measured throughout the plot had the same growth form as individuals measured in nested subplots.
    Date Range: 2015-01-01 to 2023-03-01
    Location(s) Affected: DSNY, JERC, OSBS
Resolution Date: 2023-03-01
Resolution: The ‘palm’ growth form was deprecated and replaced with two new growth forms: ‘palm tree’ and ‘small palm’. Palm trees are defined as Arecaceae spp. with DBH ≥ 10 cm and stemLength > 130 cm, and these individuals are sampled throughout the plot (i.e., nested subplots are not used for palm trees). Small palms are defined as shrub-type palms (e.g., Serenoa repens) or Arecaceae spp. with DBH < 10 cm or stemLength < 130 cm, and these individuals may be sampled with nested subplots.
Issue Date: 2023-03-01
Issue: A single ‘tree fern’ growth form was applied to all tree ferns, regardless of size. Because the protocol allowed small tree ferns to be measured with nested subplots when density was sufficient, and because larger tree ferns were measured throughout the plot, there was no simple mechanism in the data to allow a data user to scale individual tree fern measurements to the plot level, as individuals measured throughout the plot had the same growth form as individuals measured in nested subplots.
    Date Range: 2018-01-01 to 2023-03-01
    Location(s) Affected: PUUM
Resolution Date: 2023-03-01
Resolution: The ‘tree fern’ growth form was deprecated and replaced with two new growth forms: ‘large tree fern’ and ‘small tree fern’. Large tree ferns are defined as tree ferns with DBH ≥ 10 cm and stemLength > 130 cm, and these individuals are sampled throughout the plot (i.e., nested subplots are not used for large tree ferns). Small tree ferns are defined as tree ferns with DBH < 10 cm or stemLength < 130 cm, and these individuals may be sampled with nested subplots.
Issue Date: 2022-02-02
Issue: Non-woody data missing: `vst_perplotperyear` sampling areas and presence/absence data for non-woody growth forms (nestedSubplotAreaOther, totalSampledAreaOther, and cacti, ferns, yuccas, palms, ocotillos, xerophyllum Present and AbsentList fields) are absent in RELEASE-2022. Data for 2014-2019 are available for download in the Non-herbaceous perennial vegetation structure data product (DP1.10045.001), RELEASE-2021, and 2022-01 to present are available for download as provisional data, but data for 2020 will not be available until the 2023 release.
    Date Range: 2014-01-01 to 2021-01-01
    Location(s) Affected: ABBY, BART, BLAN, BONA, CLBJ, DEJU, DELA, GRSM, GUAN, HARV, HEAL, JERC, KONZ, NIWO, ORNL, OSBS, PUUM, RMNP, SCBI, SERC, SOAP, STEI, TALL, TREE, UKFS, UNDE, WREF, YELL
Resolution Date: 2023-01-01
Resolution: Missing fields added to the bundled vegetation structure data product in the 2023 RELEASE
Issue Date: 2022-10-25
Issue: Discontinuing Absence List: The 'Absence List' columns that were included in the `vst_perplotperyear` table as a mechanism to verify that the nestedSubplot was surveyed and the specified growth form was not found were problematic. These fields contained frequent errors that were difficult to catch. These fields are not reliable for data previously published in all releases through RELEASE-2022.
    Date Range: 2016-01-01 to 2022-01-01
    Location(s) Affected: all sites with qualifying vegetation
Resolution Date: 2023-01-01
Resolution: NEON has implemented additional quality control measures at the point of data entry. These data will not be collected or published moving forward.
Issue Date: 2022-09-15
Issue: Severe flooding destroyed several roads into Yellowstone National Park in June 2022, making the YELL and BLDE sites inaccessible to NEON staff. Observational data collection was halted during this time. Canceled data collection events are indicated in data records via the samplingImpractical field.
    Date Range: 2022-06-12 to 2022-10-31
    Location(s) Affected: YELL
Resolution Date: 2022-10-31
Resolution: Normal operations resumed on October 31, 2022, when the National Park Service opened a newly constructed road from Gardiner, MT to Mammoth, WY with minimal restrictions. For more details about data impacts, see Data Notification https://www.neonscience.org/impact/observatory-blog/data-impacts-neons-yellowstone-sites-yell-blde-due-catastrophic-flooding-0
Issue Date: 2022-02-23
Issue: Incorrect plots were sampled for the annual Tower subset sampling at STEI in 2020, TREE in 2020, and UNDE in 2020 and 2021. In 2020, a new method was employed to identify a spatially balanced subset of n=5 Tower plots for annual sampling. The new method selects plots for annual sampling such that plots are proportionally representative of the NLCD vegetation classes present in each site's Tower airshed, and the method maximizes collocation of Vegetation Structure measurements with annual TOS soil and plant diversity sampling. In Domain 05, the plots identified for annual sampling according to the new method are: 
`STEI_047`, `STEI_053`, `STEI_056`, `STEI_059`, `STEI_060`
`TREE_041`, `TREE_046`, `TREE_049`, `TREE_054`, `TREE_056`
`UNDE_037`, `UNDE_038`, `UNDE_043`, `UNDE_044`, `UNDE_045` 
For the following sites and years, plots were sampled according to the older spatial balance algorithm that does not account for NLCD Vegetation Class, and does not maximize collocation with soil and plant diversity data products: 
2020 STEI subset measured: `STEI_046`, `STEI_047`, `STEI_048`, `STEI_049`, `STEI_050`
2021 STEI subset measured: `STEI_046`, `STEI_047`, `STEI_053`, `STEI_056`, `STEI_059`, `STEI_060`
2020 TREE subset measured: `TREE_039`, `TREE_040`, `TREE_041`, `TREE_042`, `TREE_043`
2020 UNDE subset measured: `UNDE_037`, `UNDE_038`, `UNDE_043`, `UNDE_044`, `UNDE_065`
2021 UNDE subset measured: `UNDE_037`, `UNDE_038`, `UNDE_043`, `UNDE_044`, `UNDE_045`, `UNDE_065`
    Date Range: 2020-01-01 to 2021-12-31
    Location(s) Affected: STEI, TREE, UNDE
Resolution Date: 2022-02-23
Resolution: From 2022 onward, Tower plots selected for annual sampling at STEI, TREE, and UNDE are:
`STEI_047`, `STEI_053`, `STEI_056`, `STEI_059`, `STEI_060`
`TREE_041`, `TREE_046`, `TREE_049`, `TREE_054`, `TREE_056`
`UNDE_037`, `UNDE_038`, `UNDE_043`, `UNDE_044`, `UNDE_045`
Issue Date: 2021-11-24
Issue: Non-standard sampling date: At the Domain 17 TEAK site, the standard sampling start date based on MODIS-EVI data is July 27. In addition, the autumn wildfire season is lengthening, and effects on air quality have resulted in increased sampling cancellation during the months of August, September, and October when vegetation should ideally be sampled. After October, snowfall typically prevents site access and it has therefore not been possible to complete scheduled Vegetation Structure sampling at TEAK.
    Date Range: 2018-01-01 to 2021-12-31
    Location(s) Affected: TEAK
Resolution Date: 2022-01-01
Resolution: The NEON Plant Biomass and Productivity TWG assessed whether a non-standard sampling start date and increased probability of completing scheduled sampling is preferable to data loss and a standard sampling start date. A non-standard start date was deemed preferable, and from 2022 onward, Vegetation Structure sampling at TEAK begins on June 27th, rather than the MODIS-EVI derived date of July 27th.
Issue Date: 2021-01-06
Issue: Safety measures to protect personnel during the COVID-19 pandemic resulted in reduced or canceled sampling activities for extended periods at NEON sites. Data availability may be reduced during this time.
    Date Range: 2020-03-23 to 2021-12-31
    Location(s) Affected: All
Resolution Date: 2021-12-31
Resolution: The primary impact of the pandemic on observational data was reduced data collection. Training procedures and data quality reviews were maintained throughout the pandemic, although some previously in-person training was conducted virtually.  Scheduled measurements and sampling that were not carried out due to COVID-19 or any other causes are indicated in data records via the samplingImpractical data field.
Issue Date: 2021-12-09
Issue: State-level taxa obfuscation: Prior to the 2022 data release, publication of species identifications were obfuscated to a higher taxonomic rank when the taxon was found to be listed as threatened, endangered, or sensitive at the state level where the observation was recorded. Obfuscating state-listed taxa has created challenges for data users studying biodiversity.
    Date Range: 2012-01-01 to 2021-12-31
    Location(s) Affected: All
Resolution Date: 2021-12-31
Resolution: The state-level obfuscation routine was removed from the data publication process at all locations excluding sites located in D01 and D20. Data have been reprocessed to remove the obfuscation of state-listed taxa. Federally listed threatened and endangered or sensitive species remain obfuscated at all sites and sensitive species remain redacted at National Park sites.
Issue Date: 2021-12-03
Issue: Data products not bundled: Prior to Dec 2021, structure measurements of woody vegetation and non-herbaceous perennial vegetation (e.g., palms, tree ferns, ferns, etc.) were published in two different data products: ‘Woody plant vegetation structure’ (DP1.10098.001) and ‘Non-herbaceous perennial vegetation structure’ (DP1.10045.001). From the inception of these two data products, the ‘vst_perplotperyear’ table was common to both; moreover, recent evolution of the ‘Non-herbaceous’ data product to include mapping and tagging of large-stature cacti, palms, and tree ferns meant that the ‘vst_mappingandtagging’ table was also shared across the two products. Splitting out the ‘vst_non-woody’ table into a separate product therefore created unnecessary complexity for data end-users who wished to understand the totality of vegetation structure measurements collected at a site where non-herbaceous perennial vegetation was present.
    Date Range: 2014-01-01 to 2021-12-10
    Location(s) Affected: All sites for which non-herbaceous perennial vegetation structure data have been published.
Resolution Date: 2021-12-10
Resolution: The ‘Woody plant vegetation structure’ (DP1.10098.001) and ‘Non-herbaceous perennial vegetation structure’ (DP1.10045.001) data products were bundled into the new ‘Vegetation structure’ data product (DP1.10098.001). The new product delivers all tables that contain vegetation structure data: vst_perplotperyear, vst_mappingandtagging, vst_apparentindividual, vst_non-woody, and the vst_shrubgroup table. The new data product delivers all NEON vegetation structure measurements in the way that most end-users would expect and eliminates potential confusion.
Issue Date: 2021-12-06
Issue: Missing metadata values: Plot metadata records from the `vst_perplotperyear` table are missing for some event x plot combinations for which data are present in the other data product tables. `vst_perplotperyear` records indicate nested subplots area and total sampling area used for the annual survey; without these values, plot and site level calculations of biomass and annual productivity may not be possible.
    Date Range: 2014-01-01 to 2020-01-01
    Location(s) Affected: HARV, WOOD, CLBJ, GRSM, ORNL, OSBS, HEAL, GUAN, ABBY, DEJU, KONZ, SJER, TREE
Resolution Date: 2021-12-06
Resolution: NEON recommends users apply sampling areas from the same plot, sampled in other years (other eventIDs) to infer values for the missing metadata.
Issue Date: 2021-03-24
Issue: Missing canopy position/crown diameter: Many woody vegetation structure records collected prior to 2021 are missing canopy position and/or crown diameter values where these data would be expected to be present.
    Date Range: 2013-01-01 to 2021-01-01
    Location(s) Affected: All
Resolution Date: 2021-01-01
Resolution: Updated data entry mobile applications now prevent incomplete data collection.
Issue Date: 2020-10-01
Issue: Reduced temporal sampling: Annual sampling of tower plots at desert sites caused unacceptable damage to sensitive soils and/or vegetation – e.g., soil biocrust damage, broken vegetation when measuring brittle, multi-stem desert shrubs.
    Date Range: 2014-01-01 to 2017-03-09
    Location(s) Affected: MOAB, JORN, SRER, ONAQ
Resolution Date: 2020-10-01
Resolution: Annual sampling of tower plots discontinued at affected sites; all tower plots sampled on a multi-year time interval. Sampling interval was 3-years between 2017-03-09 and 2018-07-26, and was changed to every 5-years after 2018-07-26.
Issue Date: 2020-10-01
Issue: Reduced temporal sampling: Low quality annual stem diameter increment data from slow-growth-increment sites.
    Date Range: 2014-01-01 to 2017-03-09
    Location(s) Affected: RMNP, YELL, NIWO, MOAB, SRER, JORN, ONAQ, WREF, SJER, SOAP, TEAK, BONA, DEJU, HEAL
Resolution Date: 2020-10-01
Resolution: Annual sampling of tower plots discontinued at slow-growth increment sites. Sampling interval for tower plots at slow-growth-increment sites was changed to every 3-years between 2017-03-09 and 2018-07-26, and was changed to every 5-years between 2018-07-26 and 2019-08-30.
Issue Date: 2020-10-01
Issue: New dendrometer band method:  Lack of annual stem diameter data from slow-growth-increment sites and related inability to calculate above-ground annual net primary production at affected sites.
    Date Range: 2017-03-09 to 2019-08-30
    Location(s) Affected: RMNP, YELL, NIWO, MOAB, SRER, JORN, ONAQ, WREF, SJER, SOAP, TEAK, BONA, DEJU, HEAL
Resolution Date: 2020-10-01
Resolution: Installed dendrometer bands to enable high-resolution annual stem diameter measurement in a subset of tower plots at RMNP, YELL, NIWO, WREF, SJER, SOAP, TEAK, BONA, DEJU, and HEAL. Dendrometer bands not installed at slow-growth-increment desert sites due to lack of suitable vegetation (MOAB, SRER, JORN, ONAQ); these sites do not support annual stem diameter measurement.
Issue Date: 2019-03-05
Issue: Non-herbaceous duplicates: Prior to the resolution date, untagged non-herbaceous perennial individuals such as ferns, small Opuntia spp., and other untagged individuals lacked an individualID and could appear to be duplicates within the same plotID x eventID combination if structure measurements were identical.
    Date Range: 2014-01-01 to 2020-07-31
    Location(s) Affected: All sites for which non-herbaceous perennial vegetation structure data have been published.
Resolution Date: 2020-07-31
Resolution: The `individualID` in the vst_non-woody table was modified such that untagged individuals that are not tracked from year-to-year now receive an individualID that is unique within a given plotID x eventID combination. The format of these ‘temporary’ individualIDs is ‘TEMP.PLA.SITE.yearBoutBegan.NN###, where NN = the numeric portion of the plotID, and ### = an auto-incremented numerical `tempID` that resets within each plotID. IndividualID values of this format are temporary in that they do not correspond to the same individual from year-to-year.
Issue Date: 2019-03-05
Issue: Multi-stem duplicates: Prior to the resolution date, multi-stem individuals with growth form of small tree, sapling, single shrub, or small shrub generated multiple records with the same individualID that could appear to be duplicates if stem diameter data were identical.
    Date Range: 2014-01-01 to 2020-07-31
    Location(s) Affected: All sites for which woody vegetation structure data have been published.
Resolution Date: 2020-07-31
Resolution: The `tempStemID` field was added to the vst_apparentindividual table. From the resolution date onward, the combination of the `eventID` x `individualID` x `tempStemID` fields should be unique within this table and multi-stem individuals with growth form of small tree, sapling, single shrub, and small shrub should no longer appear to be duplicates.
Issue Date: 2020-10-01
Issue: Missing perboutperyear values: In the vst_perboutperyear table, data collected in the following fields were not published to the Data Portal: treesAbsentList, shrubsAbsentList, lianasAbsentList, cactiAbsentList, fernsAbsentList, yuccasAbsentList, palmsAbsentList, ocotillosAbsentList, xerophyllumAbsentList.
    Date Range: 2017-01-01 to 2020-07-31
    Location(s) Affected: All sites for which woody vegetation structure data have been published.
Resolution Date: 2020-07-31
Resolution: Missing data were located, L0 edits were performed to add missing data to the NEON database, and missing data were published to the NEON Data Portal.
Issue Date: 2020-03-10
Issue: No sampling impractical: Before 2020, distributed plot sampling would generate up to 20 vst_perboutperyear records per site, and tower plot sampling would generate up to 20 or 30 vst_perboutperyear records per site, depending on the total number of tower plots established at the site. In cases where fewer than the maximum number of records were generated per sampling event, the reduced number of records reflects lower levels of sampling effort and additional records should not be expected.
    Date Range: 2014-01-01 to 2020-03-10
    Location(s) Affected: All sites for which woody vegetation structure data have been published.
Resolution Date: 2020-03-10
Resolution: NEON added the ‘samplingImpractical’ quality flag to the vst_perboutperyear table to assist end-users in understanding when data for this product are temporarily missing versus permanently unavailable. Beginning in 2020, the number of records in the vst_perboutperyear table always represents the scheduled sampling effort, regardless of whether sampling was completed.
Issue Date: 2020-03-05
Issue: Reduced temporal fern sampling: Sampling effort required to measure ferns annually in Tower plots was very high at forested sites with abundant fern cover relative to perceived fern contributions to plot-level biomass and productivity.
    Date Range: 2014-01-01 to 2020-03-05
    Location(s) Affected: ABBY, BART, DELA, GRSM, HARV, LENO, MLBS, SCBI, SERC, STEI, TALL, TREE, UNDE, WREF
Resolution Date: 2020-03-05
Resolution: The NEON Plant Biomass and Productivity Technical Working Group (TWG) assessed resource allocation trade-offs in January 2020. The TWG advised that at affected locations ferns and fern allies are measured in all Tower plots every 5 years, and are no longer measured annually in the n=5 Tower plot subset.
ADDITIONAL INFORMATION
----------------------
Protection of species of concern: At most sites, taxonomic IDs of species of concern have been 'fuzzed',
i.e., reported at a higher taxonomic rank than the raw data, to avoid publishing locations of sensitive species. For
a few sites with stricter regulations (e.g., Great Smoky Mountains National Park (GRSM)), records for species of
concern are not published.
Queries for this data product return data from the user-specified date range for the `vst_perplotperyear`, `vst_apparentindividual`, `vst_non-woody`, and `vst_shrubgroup` tables. For the `vst_mappingandtagging` table, queries ignore the user-specified date range and return all records for each user-selected site regardless of the user-specified date, due to the fact that individuals may be tagged and mapped in a year prior to the user-selected sampling event. Data are provided in monthly download files; queries including any part of a month will return data from the entire month. In the `vst_perplotperyear` table, there should be one record per plotID per eventID, and data in this table describe the presence/absence and sampling area of woody and non-woody growth forms. The `vst_mappingandtagging` table contains at least one record per individualID, and provides data that are invariant through time, including tagID, taxonID, and mapped location (if applicable). Duplicates in `vst_mappingandtagging` may exist at the individualID level if errors have been corrected after ingest of the original record; in this instance, users are advised to use the most recent record for a given individualID. The `vst_apparentindividual` table contains at least one record per individualID per eventID, and includes growth form, structure and plant status data that may be linked to `vst_mappingandtagging` records via the individualID; records may also be linked to `vst_perplotperyear` via the plotID and eventID fields in order to generate plot-level estimates of biomass and productivity. The `vst_non-woody` table contains one record per individualID per eventID, and contains growth form, structure and status data that may be linked to `vst_perplotperyear` data via the plotID and eventID fields. The `vst_shrubgroup` table contains a minimum of one record per groupID per plotID per eventID; multiple records with the same groupID may exist if a given shrub group comprises more than one taxonID. Data provided in the `vst_shrubgroup` table allow calculation of live and dead volume per taxonID within each shrub group, and records may be linked with the `vst_perplotperyear` table via the plotID and eventID fields.
 
For all tables, duplicates may exist where protocol and/or data entry aberrations have occurred; users should check data carefully for anomalies before joining tables. For the `vst_apparentindividual` table, the combination of the `eventID` x `individualID` x `tempStemID` fields should be unique. The `tempStemID` field is used to uniquely identify the stems within a multi-stem individual within a sampling event, but the identity of these stems is not tracked from year-to-year; individuals with a single stem are assigned a `tempStemID` of 1. Taxonomic IDs of species of concern have been 'fuzzed'; see data package readme files for more information.
If taxonomic determinations have been updated for any records in the tables `vst_mappingandtagging` or `vst_non-woody`, past determinations are archived in the `vst_identificationHistory` table, where the archived determinations are linked to current records using identificationHistoryID.
NEON DATA POLICY AND CITATION GUIDELINES
----------------------------------------
A citation statement is available in this data product's detail page at
https://data.neonscience.org/data-products/DP1.10098.001. Please visit https://www.neonscience.org/data-policy for
more information about NEON's data policy and citation guidelines.
DATA QUALITY AND VERSIONING
---------------------------
NEON data are initially published with a status of Provisional, in which updates to data and/or processing
algorithms will occur on an as-needed basis, and query reproducibility cannot be guaranteed. Once data are published
as part of a Data Release, they are no longer provisional, and are associated with a stable DOI.
To learn more about provisional versus released data, please visit
https://www.neonscience.org/data-revisions-releases.
