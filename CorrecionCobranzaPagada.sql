--exec USP_SELECT_D_RegiCobr_I02_v4 @INPCodEmpr='01',@INPCodMone='SOL',@INPFecOper='2024-06-15 00:00:00',@INPFacCamb=3.745,@INPCodEnti='0000011',@INPNomEnti='VARIOS',@INPTipPago='E',@INPCodTien='01'
SELECT CodEstaDocu, ImpTota, ImpPaga, * 
FROM M_DocuEnti (NOLOCK)
WHERE CodEnti='0000011'
and NumDocu in(
--'001-00011168',
--'001-00011143',
--'001-00007241',
'B001-00004695'
)



SELECT CodEstaDocu, ImpTota, ImpPaga, * 
FROM C_DocuClie (NOLOCK)
WHERE --CodEnti='0000011'
CodEmpr = '01'
and NumDocu in(
--'001-00011168',
--'001-00011143',
--'001-00007241',
'B001-00004695'
)


--UPDATE M_DocuEnti SET CodEstaDocu = 'PAG' WHERE CodEmpr = '01' AND NumDocu = 'B001-00004695' AND CodEstaDocu = 'ACT'
--UPDATE C_DocuClie SET CodEstaDocu = 'PAG' WHERE CodEmpr = '01' AND NumDocu = 'B001-00004695' AND CodEstaDocu = 'ACT'