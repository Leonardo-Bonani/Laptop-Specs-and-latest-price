-- abrindo o dataset
select
  *
from
  notebooks_vendidos

 

-- criando uma view a partir do dataset 
create view vw_notebooks_vendidos as
select
  *,
  (latest_price * 0.063) as valor_atual_real,
  (old_price * 0.063) as valor_anterior_real,
  (discount / 100) as desconto
from
  notebooks_vendidos



-- abrindo a view 
select
  *
from  vw_notebooks_vendidos



-- calculando a média de preços dos notebooks
select
  case
    when brand = 'lenovo' then 'Lenovo'
    else brand
  end as brand_ajustada,
  avg(valor_atual_real) as media_valor_atual
from
  vw_notebooks_vendidos

group by
  brand_ajustada
order by
  media_valor_atual desc



-- calculando a participação dos tipos de memorias nas vendas de notebooks
select
  case when ram_type = 'LPDDR3' then 'DDR3'
       when ram_type in ('LPDDR4','LPDDR4X') then 'DDR4'
       else ram_type
  end as ram_type_ajustada,
  sum(valor_atual_real) as soma_valor_atual
from  
  vw_notebooks_vendidos

group by
  ram_type_ajustada
order by
  soma_valor_atual desc
