with source as (

    select * from {{ ref('_airbyte_raw_admin_game_user_dsp3') }}

)

select * from source
