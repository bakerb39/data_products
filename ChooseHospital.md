Choose Your Hospital
========================================================
author: Brian Baker
date: 01/31/2016
font-family: 'Helvetica'
transition: rotate

![hospital](pictures-of-a-hospital.png)

========================================================
type: section
transition: rotate

<h2>Data Products Project</h2>

This peer assessed assignment is comprised of two parts:  
- Shiny application and deploy it on Rstudio's servers

- A Slidify or Rstudio Presenter presentation to prepare a reproducible pitch about the Shiny application  




========================================================
type: section

<h2>Choose Your Hospital App</h2>
<small>This Shiny application allows a user to select a list of hospitals according to the user's preferences on hospital care and type based on the data obtained from (https://data.medicare.gov/data/hospital-compare)  
To use the app, a user chooses the criteria by using the filters below:</small>

![hospital_app](hosp.png)


========================================================
type: section
<H2>Hospital Data</H2>

<small>Sample from the general hospital data found at http://data.medicare.gov used within the Shiny application:  
-------------


```r
hospType_data <- read.csv("data/hospType_data.csv", sep = ",")
head(hospType_data)
```

```
  Provider.ID                    Hospital.Name                    Address
1      010001 SOUTHEAST ALABAMA MEDICAL CENTER     1108 ROSS CLARK CIRCLE
2      010005    MARSHALL MEDICAL CENTER SOUTH 2505 U S HIGHWAY 431 NORTH
3      010006   ELIZA COFFEE MEMORIAL HOSPITAL         205 MARENGO STREET
4      010007         MIZELL MEMORIAL HOSPITAL              702 N MAIN ST
5      010008      CRENSHAW COMMUNITY HOSPITAL        101 HOSPITAL CIRCLE
6      010011                ST VINCENT'S EAST 50 MEDICAL PARK EAST DRIVE
        City State ZIP.Code County.Name Phone.Number        Hospital.Type
1     DOTHAN    AL    36301     HOUSTON   3347938701 Acute Care Hospitals
2       BOAZ    AL    35957    MARSHALL   2565938310 Acute Care Hospitals
3   FLORENCE    AL    35631  LAUDERDALE   2567688400 Acute Care Hospitals
4        OPP    AL    36467   COVINGTON   3344933541 Acute Care Hospitals
5    LUVERNE    AL    36049    CRENSHAW   3343353374 Acute Care Hospitals
6 BIRMINGHAM    AL    35235   JEFFERSON   2058383122 Acute Care Hospitals
                           Hospital.Ownership Emergency.Services
1 Government - Hospital District or Authority                Yes
2 Government - Hospital District or Authority                Yes
3 Government - Hospital District or Authority                Yes
4              Voluntary non-profit - Private                Yes
5                                 Proprietary                 No
6              Voluntary non-profit - Private                Yes
```
</small>

========================================================
type: section

<h2>Use of this Medicare data
and application</h2>

<small>The general hospital data are the official datasets used on the Medicare.gov Hospital Compare Website provided by the Centers for Medicare & Medicaid Services. These data allow you to compare the quality of care at over 4,000 Medicare-certified hospitals across the country.

The Shiny application is free to the public. This app allows you to access only a portion of this data.

The GitHub repository for this app and data are located here:</small> https://github.com/bakerb39/data_products

