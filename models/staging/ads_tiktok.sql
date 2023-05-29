with tiktok as (
    select 
        ad_id as ad_id,
        add_to_cart as add_to_cart,
        NULL as adset_id,
        campaign_id as campaign_id,
        channel as channel,
        clicks as clicks,
        NULL as comments,
        NULL as creative_id,
        `date` as `date`,
        0 as engagements,
        impressions as impressions,
        rt_installs as installs,
        NULL as likes,
        NULL as link_clicks,
        NULL as placemend_id,
        NULL as post_click_conversions,
        NULL as post_view_conversions,
        NULL as posts,
        purchase as purchase,
        registrations as registrations,
        NULL as revenue,
        NULL as shares,
        spend as spend,
        conversions as total_conversions,
        video_views as video_views
     from {{ source('ad_data', 'src_ads_tiktok_ads_all_data') }}
)
select * from tiktok