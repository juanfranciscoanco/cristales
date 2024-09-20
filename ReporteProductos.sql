--exec USP_SELECT_C_ListPrec_I09 @INPCodEmpr='01',@INPTipFilt='C',@INPDesFilt='20000793',@INPFecOper='2024-09-07 00:00:00',@INPFacCamb=3.731

SELECT P.CODITEM, P.DesItem,P.CodUnidAlma, S.CodAlma, C.DesListPrec, 
S.StoActu,UND_VEN = D.CodUnidVnta, D.ImpPrec
FROM M_Item P
INNER JOIN D_ListPrec D
ON P.CodEmpr = D.CodEmpr
AND P.CodItem = D.CodItem 
INNER JOIN T_StocActu S ON                                 
P.CodItem = S.CodItem AND                                
P.CodEmpr = S.CodEmpr 
INNER JOIN C_ListPrec C
ON C.CodEmpr = D.CodEmpr
AND C.CodListPrec = D.CodListPrec
AND C.EstVige = 'S'
WHERE P.CodEmpr = '01'
AND S.CodAlma = '01'
--AND P.CodItem = '20000009' --20000793
ORDER BY 1 

