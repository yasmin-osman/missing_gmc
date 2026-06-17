with imaging_fact as (

    select * from {{ ref('stg_epic_data__imaging_fact') }}

)

select * from imaging_fact
