create database rapido;
use rapido;


select count(*)  as completed_rides
from rapido_analysis
where Booking_Status= "completed";

select count(*) as upi_rides
from rapido_analysis
where Payment_Method ="UPI";


select count(*) as total_auto_ride
from rapido_analysis
where Vehicle_Type= "Auto"and Booking_Status="Completed";


select Vehicle_Type ,count(*) as total_rides
from rapido_analysis
where Booking_Status="Completed"
group by Vehicle_Type;


select  avg(Booking_Value) as aveage_revenuue
from rapido_analysis
where Booking_Status="Completed";



select Booking_ID,Ride_distance
from rapido_analysis
order by Ride_Distance desc
limit 1;


select Customer_ID ,Booking_Value
from rapido_analysis
order by Booking_Value desc
limit 5;


select Reason_for_cancelling_by_Customer,count(*)as count_rides
from rapido_analysis
group by Reason_for_cancelling_by_Customer
order by count_rides desc
limit 1;



select Customer_Rating,Driver_Ratings,(Customer_Rating-Driver_Ratings)as difference
from rapido_analysis;


select Pickup_Location ,count(*) as rides
from rapido_analysis 
group by Pickup_location
order by rides desc
limit 5;












