create table t (id serial primary key
, d1 int
);
create table dim1 (id serial primary key, val int);
insert into dim1 select i, i from generate_series(1,10000) s(i);
insert into t select i
, (1 + mod(i, 10000))
from generate_series(1, 10 * 1000000) g(i);
create index on t(d1);
