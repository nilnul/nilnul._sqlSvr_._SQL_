SELECT
   *, 
   sys.fn_PhysLocFormatter(%%physloc%%) AS Page_Location
 FROM [dbo].[Sheet1$]