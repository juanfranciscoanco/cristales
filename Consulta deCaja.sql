SELECT ba.NumCobr, ba.UsrCrea, ba.CodEmpr, * 
FROM C_CajaBanc  BA
--INNER JOIN C_DocuClie CJ ON BA.NumComp = cj.NumComp
WHERE ba.FecCrea BETWEEN '2023-05-09' AND '2023-05-10'  --AND ba.CODCAJA='VTA_03' --and UsrCrea	= 'YHASMIN'
and tipmovi ='i'