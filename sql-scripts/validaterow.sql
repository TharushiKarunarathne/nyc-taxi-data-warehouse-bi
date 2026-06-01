!ISNULL(pickup_datetime) && 
!ISNULL(dropoff_datetime) && 
YEAR((DT_DBTIMESTAMP)pickup_datetime) == 2018 && 
YEAR((DT_DBTIMESTAMP)dropoff_datetime) == 2018 && 
!ISNULL(vendor_id) && (vendor_id == 1 || vendor_id == 2) && 
!ISNULL(rate_code) && (rate_code == 1 || rate_code == 2 || rate_code == 3 || rate_code == 4 || rate_code == 5 || rate_code == 6) && 
!ISNULL(pickup_location_id) && !ISNULL(dropoff_location_id) && 
pickup_location_id != 57 && 
pickup_location_id != 105 && 
pickup_location_id != 264 && 
pickup_location_id != 265 && 
dropoff_location_id != 57 && 
dropoff_location_id != 105 && 
dropoff_location_id != 264 && 
dropoff_location_id != 265