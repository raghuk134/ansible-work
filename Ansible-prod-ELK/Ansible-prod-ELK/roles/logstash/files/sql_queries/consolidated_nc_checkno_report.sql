SELECT m.id, m."HOSTNAME", h."OS Platform", m."CHECK NO.", cn."CATEGORY", m."SCAN_COMMAND", m."REMEDIATE_COMMAND", m."STATUS", m."SCAN_DATE"
FROM mbss_output m, host_inventory h, check_no cn
WHERE  
m."HOSTNAME"=h."HOSTNAME" AND
m."CHECK NO." = cn."CHECK NO." AND
m."STATUS" = 'NC' AND
h."Host Status"='Active' AND
"SCAN_DATE" IN (SELECT MAX("SCAN_DATE") FROM mbss_output GROUP BY "HOSTNAME");