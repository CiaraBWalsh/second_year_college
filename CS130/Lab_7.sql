delete from kildarewaterquality where ParameterName = 'Bromate'
update kildarewaterquality set parametervalue = parametervalue * 0.92 where parametername like 'Conductivity'
select * from kildarewaterquality  where parametername like 'Conductivity' order by parametervalue desc
update kildarewaterquality set sampledate = '2014-06-24' where sampledate is null
select * from kildarewaterquality where sampledate = '2014-06-24' order by parametervalue desc
update kildarewaterquality set parametervalue = 22.5 where parametername like 'Nitrate' and parametervalue is null
update kildarewaterquality set parametervalue = 17.31 where parametername like 'Chloride' and parametervalue is null
update kildarewaterquality set parametervalue = 18.19 where parametername like 'Lead' and parametervalue is null
delete from kildarewaterquality where samplelocation like '%Maynooth%'
update kildarewaterquality set parametervalue = -999 where samplecode like '%713 WL' and parametervalue is null
delete from kildarewaterquality where parametervalue > 125.00 and parametername != 'Iron'
delete from kildarewaterquality where sampledate > '2014-02-28' and sampledate < '2014-06-01'
update kildarewaterquality set samplelocation = 'Athy Hospital' where samplelocation = 'Hospital Athy'
select * from kildarewaterquality