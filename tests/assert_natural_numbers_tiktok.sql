with twitter as (
    select * from {{ source('ad_data', 'src_ads_tiktok_ads_all_data') }}
)

select * from twitter
where clicks < 0 or
      impressions < 0 or
      rt_installs < 0 or
      purchase < 0 or
      registrations < 0 or
      spend < 0 or
      conversions < 0 or
      video_views < 0 