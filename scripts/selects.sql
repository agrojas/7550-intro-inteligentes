
-- select de los datos relevantes de county_facts  
SELECT cf.fips, 
       cf.area_name, 
       cf.pst045214, 
       cf.pst040210, 
       cf.pst120214, 
       cf.pop010210, 
       cf.age135214, 
       cf.age295214, 
       cf.age775214, 
       cf.sex255214, 
       cf.rhi125214, 
       cf.rhi225214, 
       cf.rhi325214, 
       cf.rhi425214, 
       cf.rhi525214, 
       cf.rhi625214, 
       cf.rhi725214, 
       cf.rhi825214, 
       cf.pop715213, 
       cf.pop645213, 
       cf.pop815213, 
       cf.edu635213, 
       cf.edu685213, 
       cf.vet605213, 
       cf.lfe305213, 
       cf.hsg010214, 
       cf.hsg445213, 
       cf.hsg096213, 
       cf.hsg495213, 
       cf.hsd410213, 
       cf.hsd310213, 
       cf.inc910213, 
       cf.inc110213, 
       cf.pvy020213, 
       cf.bza010213, 
       cf.bza110213, 
       cf.bza115213, 
       cf.nes010213, 
       cf.sbo001207, 
       cf.sbo315207, 
       cf.sbo115207, 
       cf.sbo215207, 
       cf.sbo515207, 
       cf.sbo415207, 
       cf.sbo015207, 
       cf.man450207, 
       cf.wtn220207, 
       cf.rtn130207, 
       cf.rtn131207, 
       cf.afn120207, 
       cf.bps030214, 
       cf.lnd110210, 
       cf.pop060210 
FROM   county_facts cf; 

-- select de los datos relevantes de primary_results  
SELECT pr.state, 
       pr.fips, 
       pr.county, 
       pr.party, 
       pr.candidate, 
       pr.votes, 
       pr.fraction_votes 
FROM   primary_results pr; 