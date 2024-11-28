  -- Project task
WITH
  first_session AS (
  SELECT
    user_pseudo_id,
    PARSE_DATE('%Y%m%d', event_date) AS event_date,
    MIN(TIMESTAMP_MICROS(event_timestamp)) AS first_session_timestamp
  FROM
    `tc-da-1.turing_data_analytics.raw_events`
  WHERE
    event_name = 'session_start'
  GROUP BY
    user_pseudo_id,
    event_date ),
  first_purchase AS (
  SELECT
    user_pseudo_id,
    PARSE_DATE('%Y%m%d', event_date) AS event_date,
    SUM(purchase_revenue_in_usd) AS purchase_revenue,
    MIN(TIMESTAMP_MICROS(event_timestamp)) AS first_purchase_timestamp
  FROM
    `tc-da-1.turing_data_analytics.raw_events`
  WHERE
    event_name = 'purchase'
  GROUP BY
    user_pseudo_id,
    event_date )
SELECT
  first_session.user_pseudo_id,
  first_session.event_date,
  TIMESTAMP_DIFF(first_purchase.first_purchase_timestamp, first_session.first_session_timestamp, SECOND) AS duration_in_seconds,
  purchase_revenue
FROM
  first_session
INNER JOIN
  first_purchase
ON
  first_session.user_pseudo_id = first_purchase.user_pseudo_id
  AND first_session.event_date = first_purchase.event_date
WHERE
  first_purchase.first_purchase_timestamp > first_session.first_session_timestamp
ORDER BY
  first_session.event_date,
  first_session.user_pseudo_id;