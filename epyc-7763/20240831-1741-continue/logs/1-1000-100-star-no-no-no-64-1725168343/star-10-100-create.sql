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
, d11 int
, d12 int
, d13 int
, d14 int
, d15 int
, d16 int
, d17 int
, d18 int
, d19 int
, d20 int
, d21 int
, d22 int
, d23 int
, d24 int
, d25 int
, d26 int
, d27 int
, d28 int
, d29 int
, d30 int
, d31 int
, d32 int
, d33 int
, d34 int
, d35 int
, d36 int
, d37 int
, d38 int
, d39 int
, d40 int
, d41 int
, d42 int
, d43 int
, d44 int
, d45 int
, d46 int
, d47 int
, d48 int
, d49 int
, d50 int
, d51 int
, d52 int
, d53 int
, d54 int
, d55 int
, d56 int
, d57 int
, d58 int
, d59 int
, d60 int
, d61 int
, d62 int
, d63 int
, d64 int
, d65 int
, d66 int
, d67 int
, d68 int
, d69 int
, d70 int
, d71 int
, d72 int
, d73 int
, d74 int
, d75 int
, d76 int
, d77 int
, d78 int
, d79 int
, d80 int
, d81 int
, d82 int
, d83 int
, d84 int
, d85 int
, d86 int
, d87 int
, d88 int
, d89 int
, d90 int
, d91 int
, d92 int
, d93 int
, d94 int
, d95 int
, d96 int
, d97 int
, d98 int
, d99 int
, d100 int
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
create table dim11 (id serial primary key, val int);
insert into dim11 select i, i from generate_series(1,10000) s(i);
create table dim12 (id serial primary key, val int);
insert into dim12 select i, i from generate_series(1,10000) s(i);
create table dim13 (id serial primary key, val int);
insert into dim13 select i, i from generate_series(1,10000) s(i);
create table dim14 (id serial primary key, val int);
insert into dim14 select i, i from generate_series(1,10000) s(i);
create table dim15 (id serial primary key, val int);
insert into dim15 select i, i from generate_series(1,10000) s(i);
create table dim16 (id serial primary key, val int);
insert into dim16 select i, i from generate_series(1,10000) s(i);
create table dim17 (id serial primary key, val int);
insert into dim17 select i, i from generate_series(1,10000) s(i);
create table dim18 (id serial primary key, val int);
insert into dim18 select i, i from generate_series(1,10000) s(i);
create table dim19 (id serial primary key, val int);
insert into dim19 select i, i from generate_series(1,10000) s(i);
create table dim20 (id serial primary key, val int);
insert into dim20 select i, i from generate_series(1,10000) s(i);
create table dim21 (id serial primary key, val int);
insert into dim21 select i, i from generate_series(1,10000) s(i);
create table dim22 (id serial primary key, val int);
insert into dim22 select i, i from generate_series(1,10000) s(i);
create table dim23 (id serial primary key, val int);
insert into dim23 select i, i from generate_series(1,10000) s(i);
create table dim24 (id serial primary key, val int);
insert into dim24 select i, i from generate_series(1,10000) s(i);
create table dim25 (id serial primary key, val int);
insert into dim25 select i, i from generate_series(1,10000) s(i);
create table dim26 (id serial primary key, val int);
insert into dim26 select i, i from generate_series(1,10000) s(i);
create table dim27 (id serial primary key, val int);
insert into dim27 select i, i from generate_series(1,10000) s(i);
create table dim28 (id serial primary key, val int);
insert into dim28 select i, i from generate_series(1,10000) s(i);
create table dim29 (id serial primary key, val int);
insert into dim29 select i, i from generate_series(1,10000) s(i);
create table dim30 (id serial primary key, val int);
insert into dim30 select i, i from generate_series(1,10000) s(i);
create table dim31 (id serial primary key, val int);
insert into dim31 select i, i from generate_series(1,10000) s(i);
create table dim32 (id serial primary key, val int);
insert into dim32 select i, i from generate_series(1,10000) s(i);
create table dim33 (id serial primary key, val int);
insert into dim33 select i, i from generate_series(1,10000) s(i);
create table dim34 (id serial primary key, val int);
insert into dim34 select i, i from generate_series(1,10000) s(i);
create table dim35 (id serial primary key, val int);
insert into dim35 select i, i from generate_series(1,10000) s(i);
create table dim36 (id serial primary key, val int);
insert into dim36 select i, i from generate_series(1,10000) s(i);
create table dim37 (id serial primary key, val int);
insert into dim37 select i, i from generate_series(1,10000) s(i);
create table dim38 (id serial primary key, val int);
insert into dim38 select i, i from generate_series(1,10000) s(i);
create table dim39 (id serial primary key, val int);
insert into dim39 select i, i from generate_series(1,10000) s(i);
create table dim40 (id serial primary key, val int);
insert into dim40 select i, i from generate_series(1,10000) s(i);
create table dim41 (id serial primary key, val int);
insert into dim41 select i, i from generate_series(1,10000) s(i);
create table dim42 (id serial primary key, val int);
insert into dim42 select i, i from generate_series(1,10000) s(i);
create table dim43 (id serial primary key, val int);
insert into dim43 select i, i from generate_series(1,10000) s(i);
create table dim44 (id serial primary key, val int);
insert into dim44 select i, i from generate_series(1,10000) s(i);
create table dim45 (id serial primary key, val int);
insert into dim45 select i, i from generate_series(1,10000) s(i);
create table dim46 (id serial primary key, val int);
insert into dim46 select i, i from generate_series(1,10000) s(i);
create table dim47 (id serial primary key, val int);
insert into dim47 select i, i from generate_series(1,10000) s(i);
create table dim48 (id serial primary key, val int);
insert into dim48 select i, i from generate_series(1,10000) s(i);
create table dim49 (id serial primary key, val int);
insert into dim49 select i, i from generate_series(1,10000) s(i);
create table dim50 (id serial primary key, val int);
insert into dim50 select i, i from generate_series(1,10000) s(i);
create table dim51 (id serial primary key, val int);
insert into dim51 select i, i from generate_series(1,10000) s(i);
create table dim52 (id serial primary key, val int);
insert into dim52 select i, i from generate_series(1,10000) s(i);
create table dim53 (id serial primary key, val int);
insert into dim53 select i, i from generate_series(1,10000) s(i);
create table dim54 (id serial primary key, val int);
insert into dim54 select i, i from generate_series(1,10000) s(i);
create table dim55 (id serial primary key, val int);
insert into dim55 select i, i from generate_series(1,10000) s(i);
create table dim56 (id serial primary key, val int);
insert into dim56 select i, i from generate_series(1,10000) s(i);
create table dim57 (id serial primary key, val int);
insert into dim57 select i, i from generate_series(1,10000) s(i);
create table dim58 (id serial primary key, val int);
insert into dim58 select i, i from generate_series(1,10000) s(i);
create table dim59 (id serial primary key, val int);
insert into dim59 select i, i from generate_series(1,10000) s(i);
create table dim60 (id serial primary key, val int);
insert into dim60 select i, i from generate_series(1,10000) s(i);
create table dim61 (id serial primary key, val int);
insert into dim61 select i, i from generate_series(1,10000) s(i);
create table dim62 (id serial primary key, val int);
insert into dim62 select i, i from generate_series(1,10000) s(i);
create table dim63 (id serial primary key, val int);
insert into dim63 select i, i from generate_series(1,10000) s(i);
create table dim64 (id serial primary key, val int);
insert into dim64 select i, i from generate_series(1,10000) s(i);
create table dim65 (id serial primary key, val int);
insert into dim65 select i, i from generate_series(1,10000) s(i);
create table dim66 (id serial primary key, val int);
insert into dim66 select i, i from generate_series(1,10000) s(i);
create table dim67 (id serial primary key, val int);
insert into dim67 select i, i from generate_series(1,10000) s(i);
create table dim68 (id serial primary key, val int);
insert into dim68 select i, i from generate_series(1,10000) s(i);
create table dim69 (id serial primary key, val int);
insert into dim69 select i, i from generate_series(1,10000) s(i);
create table dim70 (id serial primary key, val int);
insert into dim70 select i, i from generate_series(1,10000) s(i);
create table dim71 (id serial primary key, val int);
insert into dim71 select i, i from generate_series(1,10000) s(i);
create table dim72 (id serial primary key, val int);
insert into dim72 select i, i from generate_series(1,10000) s(i);
create table dim73 (id serial primary key, val int);
insert into dim73 select i, i from generate_series(1,10000) s(i);
create table dim74 (id serial primary key, val int);
insert into dim74 select i, i from generate_series(1,10000) s(i);
create table dim75 (id serial primary key, val int);
insert into dim75 select i, i from generate_series(1,10000) s(i);
create table dim76 (id serial primary key, val int);
insert into dim76 select i, i from generate_series(1,10000) s(i);
create table dim77 (id serial primary key, val int);
insert into dim77 select i, i from generate_series(1,10000) s(i);
create table dim78 (id serial primary key, val int);
insert into dim78 select i, i from generate_series(1,10000) s(i);
create table dim79 (id serial primary key, val int);
insert into dim79 select i, i from generate_series(1,10000) s(i);
create table dim80 (id serial primary key, val int);
insert into dim80 select i, i from generate_series(1,10000) s(i);
create table dim81 (id serial primary key, val int);
insert into dim81 select i, i from generate_series(1,10000) s(i);
create table dim82 (id serial primary key, val int);
insert into dim82 select i, i from generate_series(1,10000) s(i);
create table dim83 (id serial primary key, val int);
insert into dim83 select i, i from generate_series(1,10000) s(i);
create table dim84 (id serial primary key, val int);
insert into dim84 select i, i from generate_series(1,10000) s(i);
create table dim85 (id serial primary key, val int);
insert into dim85 select i, i from generate_series(1,10000) s(i);
create table dim86 (id serial primary key, val int);
insert into dim86 select i, i from generate_series(1,10000) s(i);
create table dim87 (id serial primary key, val int);
insert into dim87 select i, i from generate_series(1,10000) s(i);
create table dim88 (id serial primary key, val int);
insert into dim88 select i, i from generate_series(1,10000) s(i);
create table dim89 (id serial primary key, val int);
insert into dim89 select i, i from generate_series(1,10000) s(i);
create table dim90 (id serial primary key, val int);
insert into dim90 select i, i from generate_series(1,10000) s(i);
create table dim91 (id serial primary key, val int);
insert into dim91 select i, i from generate_series(1,10000) s(i);
create table dim92 (id serial primary key, val int);
insert into dim92 select i, i from generate_series(1,10000) s(i);
create table dim93 (id serial primary key, val int);
insert into dim93 select i, i from generate_series(1,10000) s(i);
create table dim94 (id serial primary key, val int);
insert into dim94 select i, i from generate_series(1,10000) s(i);
create table dim95 (id serial primary key, val int);
insert into dim95 select i, i from generate_series(1,10000) s(i);
create table dim96 (id serial primary key, val int);
insert into dim96 select i, i from generate_series(1,10000) s(i);
create table dim97 (id serial primary key, val int);
insert into dim97 select i, i from generate_series(1,10000) s(i);
create table dim98 (id serial primary key, val int);
insert into dim98 select i, i from generate_series(1,10000) s(i);
create table dim99 (id serial primary key, val int);
insert into dim99 select i, i from generate_series(1,10000) s(i);
create table dim100 (id serial primary key, val int);
insert into dim100 select i, i from generate_series(1,10000) s(i);
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
create index on t(d11);
create index on t(d12);
create index on t(d13);
create index on t(d14);
create index on t(d15);
create index on t(d16);
create index on t(d17);
create index on t(d18);
create index on t(d19);
create index on t(d20);
create index on t(d21);
create index on t(d22);
create index on t(d23);
create index on t(d24);
create index on t(d25);
create index on t(d26);
create index on t(d27);
create index on t(d28);
create index on t(d29);
create index on t(d30);
create index on t(d31);
create index on t(d32);
create index on t(d33);
create index on t(d34);
create index on t(d35);
create index on t(d36);
create index on t(d37);
create index on t(d38);
create index on t(d39);
create index on t(d40);
create index on t(d41);
create index on t(d42);
create index on t(d43);
create index on t(d44);
create index on t(d45);
create index on t(d46);
create index on t(d47);
create index on t(d48);
create index on t(d49);
create index on t(d50);
create index on t(d51);
create index on t(d52);
create index on t(d53);
create index on t(d54);
create index on t(d55);
create index on t(d56);
create index on t(d57);
create index on t(d58);
create index on t(d59);
create index on t(d60);
create index on t(d61);
create index on t(d62);
create index on t(d63);
create index on t(d64);
create index on t(d65);
create index on t(d66);
create index on t(d67);
create index on t(d68);
create index on t(d69);
create index on t(d70);
create index on t(d71);
create index on t(d72);
create index on t(d73);
create index on t(d74);
create index on t(d75);
create index on t(d76);
create index on t(d77);
create index on t(d78);
create index on t(d79);
create index on t(d80);
create index on t(d81);
create index on t(d82);
create index on t(d83);
create index on t(d84);
create index on t(d85);
create index on t(d86);
create index on t(d87);
create index on t(d88);
create index on t(d89);
create index on t(d90);
create index on t(d91);
create index on t(d92);
create index on t(d93);
create index on t(d94);
create index on t(d95);
create index on t(d96);
create index on t(d97);
create index on t(d98);
create index on t(d99);
create index on t(d100);
