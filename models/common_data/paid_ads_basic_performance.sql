with bing as (
    select * from {{ref('ads_bing')}}
),

facebook as (
    select * from {{ref('ads_facebook')}}
),

twitter as (
    select * from {{ref('ads_twitter')}}
),

tik_tok as (
    select * from {{ref('ads_tiktok')}}
),

paid_ads_basic_performance as (
    select * from bing 
    union all 
    select * from facebook
    union all 
    select * from twitter
    union all 
    select * from tik_tok
)

select * from paid_ads_basic_performance