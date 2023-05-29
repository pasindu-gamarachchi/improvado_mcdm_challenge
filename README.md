Welcome to your new dbt project!

### Recreated Dashboard

Link : https://lookerstudio.google.com/reporting/3650eba6-6048-4363-8546-37c1888b2b9b

### Instructions for adding data from a new ad platform

-   If the source data does not exist for a new ad platform
    - add the data as .csv file to the seeds directory and run ```dbt seed```
-   Update the existing `src_ad_data.yml` file with new table name, add a relevant description for the table. Add relevant generic tests for the columns from options
    - Not Null
    - Unique
    - Relationships
    - Accepted Values
- Add singular tests by adding .sql files with specific tests, for example as follow :
```
    select * from new_platform where clicks <0 
```
- The above will ensure that the values for clicks are 0 or greater.
- Next transform the columns for new_platform to match the common data model by adding a .sql file in the `models/staging/` path.
- Update the `models/common_data/paid_ads_basic_performance.sql` file to include data from the new platform.