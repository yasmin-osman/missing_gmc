select
    ImagingOrderEpicId as order_id,
    nullif(ReportedInstant_X, 'NULL') as reported_instant,
    FinalizingDateKey as finalizing_date_key,
    StudyStatus as status

from {{ source('epic_data', 'imaging_fact') }}