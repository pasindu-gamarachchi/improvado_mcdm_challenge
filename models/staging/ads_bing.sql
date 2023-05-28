with bing as (
    select
        ad_id as ad_id,
        NULL as add_to_cart,
        adset_id as adset_id,
        campaign_id as campaign_id,
        channel as channel,
        clicks as clicks,
        NULL as comments,
        NULL as creative_id,
        `date` as `date`,
        NULL as engagements,
        imps as impressions,
        NULL as installs,
        NULL as likes,
        NULL as link_clicks,
        NULL as placemend_id,
        NULL as post_click_conversions,
        NULL as post_view_conversions,
        NULL as posts,
        NULL as purchase,
        NULL as registrations,
        revenue as revenue,
        NULL as shares,
        spend as spend,
        conv as total_conversions,
        NULL as video_views
     from {{ source('ad_data', 'src_ads_bing_all_data') }}
)
select * from bing