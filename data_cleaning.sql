ALTER TABLE cancellation_tab
DROP COLUMN first_name,
DROP COLUMN last_name,
DROP COLUMN email_id,
DROP COLUMN credit_card_details;

DELETE FROM cancellation_tab
WHERE adults IS NULL;

UPDATE cancellation_tab
SET children = 0
WHERE children IS NULL;

DELETE FROM cancellation_tab
WHERE is_canceled NOT IN (0,1);

UPDATE cancellation_tab
SET meal = 'BB'
WHERE meal = 'B&B';

UPDATE cancellation_tab
SET column_name = TRIM(column_name);

DELETE FROM cancellation_tab
WHERE hotel IS NULL
OR arrival_date_year IS NULL
OR arrival_date_month IS NULL
OR arrival_date_day_of_month IS NULL;

DELETE FROM cancellation_tab
WHERE adr < 0 OR adr > 10000; 

UPDATE cancellation_tab
SET market_segment = 'Online'
WHERE market_segment IN ('online', 'On-line', 'Web');

DELETE FROM cancellation_tab
WHERE (arrival_date_month = 'January' AND arrival_date_month_number <> 1)
OR (arrival_date_month = 'February' AND arrival_date_month_number <> 2)
OR (arrival_date_month = 'March' AND arrival_date_month_number <> 3)
OR (arrival_date_month = 'April' AND arrival_date_month_number <> 4)
OR (arrival_date_month = 'May' AND arrival_date_month_number <> 5)
OR (arrival_date_month = 'June' AND arrival_date_month_number <> 6)
OR (arrival_date_month = 'July' AND arrival_date_month_number <> 7)
OR (arrival_date_month = 'August' AND arrival_date_month_number <> 8)
OR (arrival_date_month = 'September' AND arrival_date_month_number <> 9)
OR (arrival_date_month = 'October' AND arrival_date_month_number <> 10)
OR (arrival_date_month = 'November' AND arrival_date_month_number <> 11)
OR (arrival_date_month = 'December' AND arrival_date_month_number <> 12);

UPDATE cancellation_tab
SET previous_cancellations = 0
WHERE previous_cancellations IS NULL;

UPDATE cancellation_tab
SET distribution_channel = TRIM(distribution_channel);

UPDATE cancellation_tab
SET distribution_channel = 'Travel Agent/Tour Operator'
WHERE distribution_channel = 'TA/TO';

DELETE FROM cancellation_tab
WHERE distribution_channel NOT IN ('Direct', 'Corporate', 'Travel Agent/Tour Operator', 'Undefined', 'GDS');

UPDATE cancellation_tab
SET reserved_room_type = UPPER(reserved_room_type);

DELETE FROM cancellation_tab
WHERE reserved_room_type NOT IN ('C', 'A', 'D', 'E', 'G', 'F', 'H', 'L', 'P', 'B');

UPDATE cancellation_tab
SET assigned_room_type = UPPER(assigned_room_type);

DELETE FROM cancellation_tab
WHERE assigned_room_type NOT IN ('C', 'A', 'D', 'E', 'G', 'F', 'I', 'B', 'H', 'P', 'L', 'K');

DELETE FROM cancellation_tab
WHERE customer_type NOT IN ('Transient', 'Contract', 'Transient-Party', 'Group');

UPDATE cancellation_tab
SET customer_type = 'Transient'
WHERE customer_type = 'Transiant'; 

UPDATE cancellation_tab
SET arrival_date_month = TRIM(arrival_date_month);

DELETE FROM cancellation_tab
WHERE arrival_date_month NOT IN ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');

UPDATE cancellation_tab
SET arrival_date_month = 'February'
WHERE arrival_date_month = 'Februray';  -- Correcting a potential typo

DELETE FROM cancellation_tab
WHERE hotel NOT IN ('Resort Hotel', 'City Hotel');

UPDATE cancellation_tab
SET hotel = 'R'
WHERE hotel = 'Resort';  -- Correcting a hypothetical full word entry

UPDATE cancellation_tab
SET hotel = 'C'
WHERE hotel = 'City';  -- Correcting another hypothetical full word entry

UPDATE cancellation_tab
SET booking_changes = 0
WHERE booking_changes < 0;

DELETE FROM cancellation_tab
WHERE adr IS NULL;

DELETE FROM cancellation_tab
WHERE reservation_status_date > CURRENT_DATE;

UPDATE cancellation_tab
SET required_car_parking_spaces = 0
WHERE required_car_parking_spaces < 0;

UPDATE your_table_name
SET stays_in_week_nights = 0
WHERE stays_in_week_nights < 0;

UPDATE your_table_name
SET stays_in_week_nights = 0
WHERE stays_in_week_nights IS NULL;


