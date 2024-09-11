create table t (id serial primary key
, d1 int
, d2 int
, d3 int
, d4 int
, d5 int
, d6 int
, d7 int
, d8 int
, d9 int
, d10 int
);
create table dim1 (id serial primary key, val int);
insert into dim1 select i, i from generate_series(1,10000) s(i);
create table dim2 (id serial primary key, val int);
insert into dim2 select i, i from generate_series(1,10000) s(i);
create table dim3 (id serial primary key, val int);
insert into dim3 select i, i from generate_series(1,10000) s(i);
create table dim4 (id serial primary key, val int);
insert into dim4 select i, i from generate_series(1,10000) s(i);
create table dim5 (id serial primary key, val int);
insert into dim5 select i, i from generate_series(1,10000) s(i);
create table dim6 (id serial primary key, val int);
insert into dim6 select i, i from generate_series(1,10000) s(i);
create table dim7 (id serial primary key, val int);
insert into dim7 select i, i from generate_series(1,10000) s(i);
create table dim8 (id serial primary key, val int);
insert into dim8 select i, i from generate_series(1,10000) s(i);
create table dim9 (id serial primary key, val int);
insert into dim9 select i, i from generate_series(1,10000) s(i);
create table dim10 (id serial primary key, val int);
insert into dim10 select i, i from generate_series(1,10000) s(i);
insert into t select i
, (1 + mod(i, 10000))
, (1 + mod(i, 10000))
, (1 + mod(i, 10000))
, (1 + mod(i, 10000))
, (1 + mod(i, 10000))
, (1 + mod(i, 10000))
, (1 + mod(i, 10000))
, (1 + mod(i, 10000))
, (1 + mod(i, 10000))
, (1 + mod(i, 10000))
from generate_series(1, 10 * 1000000) g(i);
create index on t(d1);
create index on t(d2);
create index on t(d3);
create index on t(d4);
create index on t(d5);
create index on t(d6);
create index on t(d7);
create index on t(d8);
create index on t(d9);
create index on t(d10);
