\set aid random(1, 100000 * 10)
select * from t where id = :aid;
