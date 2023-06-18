


select [S#], average(score)
	from SC s
	group by [S#]
	having average(score)>60




--4.3) 

Select [C#], count(S#)
	from SC
	group by [C#]


/*******************************
4.4) 
********************************/
select [S#], Sname
	from Student
	where [S#] not in (
		select [S#]
			from Teacher t
				join Course c
					on c.[T#] = t.[T#]
				join SC sc
					on sc.[C#]=c.[C#]
				join Student st
					on st.[S#]=sc.[S#]
				where t.Tname = '叶平'
	)