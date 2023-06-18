CREATE NONCLUSTERED INDEX [patient_id_index] 
	ON [dbo].[Admissions]
(
	[PatientId] ASC
)
INCLUDE(DateAdmitted);
