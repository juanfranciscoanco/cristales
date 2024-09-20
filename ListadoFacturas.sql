--exec USP_SELECT_C_DocuClie_I02 @INPCodEmpr='01',
--@INPTipFilt='NOM',
--@INPCodClie='',@INPFecInic='2023-06-15 00:00:00',
--@INPFecFina='2023-06-15 00:00:00',@INPCodItem='',@INPNomClie=''


SELECT T1.TipDocu, T1.Numdocu, T1.FecDocu, T1.NomClie, dbo.Fn_Desc_Enti(T1.CodEmpr, 'V', T1.CodVend) NomVend,      
  T1.CodMone, T1.ImpTota, T1.EstDesp, dbo.Fn_Desc_Esta_Docu(T1.CodEstaDocu) DesSitu, T1.CodEstaDocu     
 FROM C_DocuClie T1, M_Clie T2      
 WHERE T1.CodEmpr = '01' --@INPCodEmpr  
 And T1.FecDocu Between  '2023-06-15' AND '2023-06-15' --@INPFecInic And @INPFecFina  
 And (T1.CodClie = '' OR '' ='') --@INPCodClie Or @INPCodClie = '')  
 And (T1.NomClie like '%'+ '' OR '' = '') --@INPNomClie+'%' Or @INPNomClie = '')  
 And T1.CodEmpr = T2.CodEmpr   
 And T1.CodClie = T2.CodClie       
 Order by T1.Numdocu Desc    