select (
    (select count(CITY) as total from station where LAT_N>0 and LONG_W>0) -
    (select count(distinct CITY) as DistinctValues from station where LAT_N>0 and LONG_W>0)
)
