\set aid random(1, 1000000 * 10)
select t.* from t
join dim1 on (d1 = dim1.id)
join dim2 on (d2 = dim2.id)
join dim3 on (d3 = dim3.id)
join dim4 on (d4 = dim4.id)
join dim5 on (d5 = dim5.id)
join dim6 on (d6 = dim6.id)
join dim7 on (d7 = dim7.id)
join dim8 on (d8 = dim8.id)
join dim9 on (d9 = dim9.id)
join dim10 on (d10 = dim10.id)
 where t.id = :aid
