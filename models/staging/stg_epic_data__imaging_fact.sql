select
    ImagingOrderEpicId as order_id,
    ReportedInstant_X as reported_instant,
    FinalizingDateKey as finalizing_date_key,
    StudyStatus as status

from {{ source('epic_data', 'imaging_fact') }}