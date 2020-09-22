/* Relatório Bichos de Estimação por Bairro*/
create procedure BichosDeEstimacaoPorBairro
as
select Bairro
,'Bichos de Estimação' = sum(isnull(QuantidadeBichosEstimacao,0))
	from Morador 
join Familia 
	on Morador.Id_Familia = Familia.Id
right join Condominio 
	on Condominio.Id = Familia.Id_Condominio
group by Bairro