with twitter as (
    select * from {{ source('ad_data', 'src_promoted_tweets_twitter_all_data') }}
)

select * from twitter
where clicks < 0 or
      comments < 0 or
      engagements < 0 or
      impressions < 0 or
      likes < 0 or
      spend < 0 or
      video_total_views < 0 