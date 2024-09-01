\set aid random(1, 100000 * :scale)
select * from pgbench_accounts pa join pgbench_branches pb on pa.bid = pb.bid where pa.aid_parent = :aid;
