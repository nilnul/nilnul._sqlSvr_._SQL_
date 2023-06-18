DECLARE @Sample TABLE 
        (

            ID INT,

            Data VARCHAR(100)

        )

 

INSERT  @Sample

VALUES  (1, 'Peso & Performance SQL'),

        (1, 'MVP'),

        (2, 'Need help <? /> -- '),

        (2, 'With XML string concatenation ?')




SELECT      i.ID, 
            STUFF(f.Content.value('.', 'VARCHAR(MAX)'), 1, 1, '')

FROM        (

                SELECT      ID

                FROM        @Sample

                GROUP BY    ID

            ) AS i

CROSS APPLY (

                SELECT  ', ' + w.Data

                FROM    @Sample AS w

                WHERE   w.ID = i.ID

                FOR XML PATH(''),

                        TYPE

            ) AS f(Content)


			

          select *
		  from(  SELECT  ', ' + w.Data 

                FROM    @Sample AS w

             

                FOR XML PATH('')
				--,

                  --      TYPE
				) f(content)
			

         