with twitter as (
    select
        NULL as ad_id,
        NULL as add_to_cart,
        NULL as adset_id, 
        campaign_id as campaign_id,
        channel as channel,
        clicks as clicks,
        comments as comments,
        NULL as creative_id,
        `date` as `date`,
        engagements as engagements,
        impressions as impressions,
        NULL as installs,
        likes as likes,
        0 as link_clicks,
        NULL as placemend_id,
        NULL as post_click_conversions,
        NULL as post_view_conversions,
        NULL as posts, 
        NULL as purchase,
        NULL as registrations,
        NULL as revenue,
        NUll as shares,
        spend as spend,
        NULL as total_conversions,
        video_total_views as video_views    
        from {{ source('ad_data', 'src_promoted_tweets_twitter_all_data') }}
)

select * from twitter

