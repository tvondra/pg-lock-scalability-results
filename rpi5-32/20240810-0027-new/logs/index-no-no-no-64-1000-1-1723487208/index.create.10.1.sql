CREATE TABLE t (id serial primary key
, c1 int
, c2 int
, c3 int
, c4 int
, c5 int
, c6 int
, c7 int
, c8 int
, c9 int
, c10 int
, c11 int
, c12 int
, c13 int
, c14 int
, c15 int
, c16 int
, c17 int
, c18 int
, c19 int
, c20 int
, c21 int
, c22 int
, c23 int
, c24 int
, c25 int
, c26 int
, c27 int
, c28 int
, c29 int
, c30 int
, c31 int
, c32 int
, c33 int
, c34 int
, c35 int
, c36 int
, c37 int
, c38 int
, c39 int
, c40 int
, c41 int
, c42 int
, c43 int
, c44 int
, c45 int
, c46 int
, c47 int
, c48 int
, c49 int
, c50 int
, c51 int
, c52 int
, c53 int
, c54 int
, c55 int
, c56 int
, c57 int
, c58 int
, c59 int
, c60 int
, c61 int
, c62 int
, c63 int
, c64 int
, c65 int
, c66 int
, c67 int
, c68 int
, c69 int
, c70 int
, c71 int
, c72 int
, c73 int
, c74 int
, c75 int
, c76 int
, c77 int
, c78 int
, c79 int
, c80 int
, c81 int
, c82 int
, c83 int
, c84 int
, c85 int
, c86 int
, c87 int
, c88 int
, c89 int
, c90 int
, c91 int
, c92 int
, c93 int
, c94 int
, c95 int
, c96 int
, c97 int
, c98 int
, c99 int
, c100 int
);
insert into t select i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
, i
 from generate_series(1, 10 * 10000) s(i);
vacuum analyze;
set max_parallel_maintenance_workers = 8;
create index on t (c2);
