with bing as (
    select * from {{source('ad_data', 'src_ads_bing_all_data')}}
)

select * from bing 
where clicks <0 or 
      revenue <0 or
      spend <0 or
      imps <0 or
      conv < 0 