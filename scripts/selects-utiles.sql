select * from county_primary_results;

-- Total de votos
select SUM(votes)
from county_primary_results;

-- Votos por estado
select fips,state,SUM(votes) 
from county_primary_results
group by state;


-- Votos por partido
select fips,party,SUM(votes) 
from county_primary_results
group by party;

-- Votos por condado
select fips,county,SUM(votes) 
from county_primary_results
group by county;


-- Votos por estado y partido
select fips,state,party,SUM(votes) 
from county_primary_results
group by state,party;

-- Votos por candidato
select fips,candidate,SUM(votes) 
from county_primary_results
group by candidate;

-- Votos por estado y candidato
select fips,state,candidate,SUM(votes) 
from county_primary_results
group by state,candidate;

-- Votos por condado y candidato
select fips,county,candidate,SUM(votes) 
from county_primary_results
group by county,candidate;