--VENTAS/PEDIDO DE VENTAS/LISTAR
SELECT 
	T1.NumPedi, T1.FecPedi, T1.NomClie, T1.CodVend, dbo.Fn_Desc_Enti(T1.CodEmpr, 'V', T1.CodVend) 
	NomVend, T1.CodMone, T1.ImpTota, T1.EstAten, T1.NumCoti, T1.TipDocuVent, 
	Isnull(T2.EstDesp, 'N') EstDesp, T1.NumDocuVent, dbo.Fn_Desc_Situ(T1.TipSitu) DesSitu, 
	T1.CodUsua, T1.NomEqui, T1.TipSitu, T2.CodEstaDocu 
FROM C_PediVent T1 Left Outer Join C_DocuClie T2 
	On T1.NumDocuVent = T2.NumDocu 
	And T1.TipDocuVent = T2.TipDocu 
	And T1.CodEmpr = T2.CodEmpr
WHERE T1.CodEmpr = '01' 
	And T1.CodTien = '01' 
	And T1.FecPedi Between '2023/06/15' And '2023/06/15' 
	--AND T1.CodVend = ''
Order by T1.NumPedi Desc