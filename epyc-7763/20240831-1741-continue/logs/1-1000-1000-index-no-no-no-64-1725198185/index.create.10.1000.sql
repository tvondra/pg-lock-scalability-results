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
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
create index on t (c2);
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
create index on t (c2);
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
create index on t (c2);
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
create index on t (c2);
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
create index on t (c2);
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
create index on t (c2);
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
create index on t (c2);
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
create index on t (c2);
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
create index on t (c2);
create index on t (c3);
create index on t (c4);
create index on t (c5);
create index on t (c6);
create index on t (c7);
create index on t (c8);
create index on t (c9);
create index on t (c10);
create index on t (c11);
create index on t (c12);
create index on t (c13);
create index on t (c14);
create index on t (c15);
create index on t (c16);
create index on t (c17);
create index on t (c18);
create index on t (c19);
create index on t (c20);
create index on t (c21);
create index on t (c22);
create index on t (c23);
create index on t (c24);
create index on t (c25);
create index on t (c26);
create index on t (c27);
create index on t (c28);
create index on t (c29);
create index on t (c30);
create index on t (c31);
create index on t (c32);
create index on t (c33);
create index on t (c34);
create index on t (c35);
create index on t (c36);
create index on t (c37);
create index on t (c38);
create index on t (c39);
create index on t (c40);
create index on t (c41);
create index on t (c42);
create index on t (c43);
create index on t (c44);
create index on t (c45);
create index on t (c46);
create index on t (c47);
create index on t (c48);
create index on t (c49);
create index on t (c50);
create index on t (c51);
create index on t (c52);
create index on t (c53);
create index on t (c54);
create index on t (c55);
create index on t (c56);
create index on t (c57);
create index on t (c58);
create index on t (c59);
create index on t (c60);
create index on t (c61);
create index on t (c62);
create index on t (c63);
create index on t (c64);
create index on t (c65);
create index on t (c66);
create index on t (c67);
create index on t (c68);
create index on t (c69);
create index on t (c70);
create index on t (c71);
create index on t (c72);
create index on t (c73);
create index on t (c74);
create index on t (c75);
create index on t (c76);
create index on t (c77);
create index on t (c78);
create index on t (c79);
create index on t (c80);
create index on t (c81);
create index on t (c82);
create index on t (c83);
create index on t (c84);
create index on t (c85);
create index on t (c86);
create index on t (c87);
create index on t (c88);
create index on t (c89);
create index on t (c90);
create index on t (c91);
create index on t (c92);
create index on t (c93);
create index on t (c94);
create index on t (c95);
create index on t (c96);
create index on t (c97);
create index on t (c98);
create index on t (c99);
create index on t (c100);
create index on t (c1);
