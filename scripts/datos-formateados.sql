select 
    cpr.*,
    CASE 
        WHEN cf.pst045214 < 1000 
        THEN 1
        WHEN (cf.pst045214  >= 1000 and cf.pst045214  < 10000) 
        THEN 2
        WHEN (cf.pst045214  >= 10000 and cf.pst045214  < 100000) 
        THEN 3
        ELSE
            4
        END as rangoPoblacion, 
   
    CASE
        WHEN cf.age295214 < 25
            THEN 1
        WHEN cf.age295214 >= 25 and cf.age295214  < 50
            THEN 2
        WHEN cf.age295214 >= 50 and cf.age295214  < 75
            THEN 3
        ELSE 
            4
    END as rangoEdadSubMenores,
    CASE
        WHEN (100-cf.age775214-cf.age295214-cf.age135214)< 25
            THEN 1
        WHEN (100-cf.age775214-cf.age295214-cf.age135214)>= 25 and (100-cf.age775214-cf.age295214-cf.age135214)< 50
            THEN 2
        WHEN (100-cf.age775214-cf.age295214-cf.age135214) >= 50 and (100-cf.age775214-cf.age295214-cf.age135214)  < 75
            THEN 3
        ELSE 
            4
    END as rangoEdadMayores,  
    CASE
        WHEN cf.age775214 < 25
            THEN 1
        WHEN cf.age775214 >= 25 and cf.age775214  < 50
            THEN 2
        WHEN cf.age775214 >= 50 and cf.age775214  < 75
            THEN 3
        ELSE 
            4
    END as rangoEdadAncianos, 
    CASE
        WHEN cf.sex255214 < 50
            THEN 1
        ELSE 
        2
    END as rangoMujer,
    CASE
        WHEN (100-cf.sex255214) < 50
            THEN 1
        ELSE 
        2
    END as rangoHombre,
    CASE
        WHEN cf.rhi125214 < 25
            THEN 1
        WHEN cf.rhi125214 >= 25 and cf.rhi125214  < 50
            THEN 2
        WHEN cf.rhi125214 >= 50 and cf.rhi125214  < 75
            THEN 3
        ELSE 
            4
    END as rangoPoblacionBlanca,
    CASE
        WHEN cf.rhi225214 < 25
            THEN 1
        WHEN cf.rhi225214 >= 25 and cf.rhi225214  < 50
            THEN 2
        WHEN cf.rhi225214 >= 50 and cf.rhi225214  < 75
            THEN 3
        ELSE 
            4
    END as rangoPoblacionNegra,
    CASE
        WHEN cf.rhi325214 < 25
            THEN 1
        WHEN cf.rhi325214 >= 25 and cf.rhi325214  < 50
            THEN 2
        WHEN cf.rhi325214 >= 50 and cf.rhi325214  < 75
            THEN 3
        ELSE 
            4
    END as rangoPoblacionNativo,
    CASE
        WHEN cf.rhi425214 < 25
            THEN 1
        WHEN cf.rhi425214 >= 25 and cf.rhi425214  < 50
            THEN 2
        WHEN cf.rhi425214 >= 50 and cf.rhi425214  < 75
            THEN 3
        ELSE 
            4
    END as rangoPoblacionAsiaticos,
    CASE
        WHEN cf.rhi525214 < 25
            THEN 1
        WHEN cf.rhi525214 >= 25 and cf.rhi525214  < 50
            THEN 2
        WHEN cf.rhi525214 >= 50 and cf.rhi525214  < 75
            THEN 3
        ELSE 
            4
    END as rangoPoblacionHawaianos,
    CASE
        WHEN cf.RHI725214 < 25
            THEN 1
        WHEN cf.RHI725214 >= 25 and cf.RHI725214  < 50
            THEN 2
        WHEN cf.RHI725214 >= 50 and cf.RHI725214  < 75
            THEN 3
        ELSE 
            4
    END as rangoPoblacionLatinos
   
from county_candidate_results cpr, county_facts cf
where cpr.fips = cf.fips
group by cpr.county
having MAX(cpr.votes);
