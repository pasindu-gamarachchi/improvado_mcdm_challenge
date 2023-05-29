with facebook as (
    select * from {{ source('ad_data', 'src_ads_creative_facebook_all_data') }}
)

select * from facebook
where clicks < 0 or
      comments < 0 or
      likes < 0 or
      shares < 0 or
      views < 0 or
      impressions < 0 or
      purchase < 0 or
      complete_registration < 0 or
      spend < 0 