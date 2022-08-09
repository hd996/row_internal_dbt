with source as (
  select * from {{ ref('_airbyte_raw_admin_game_user_dsp3') }}
)

final as (
  select
    Replace (JSON_EXTRACT(_airbyte_data, '$.game_id') , '"', '') as game_id,
    Replace (JSON_EXTRACT(_airbyte_data, '$.user_id') ,'"', '') as user_id
  from source
)

select * from final