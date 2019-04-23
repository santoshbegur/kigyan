use upcdatamodel;

select * from time_dimension where year = 2018 and quarter = 3 and period = 6;

select db_date,qty from transum tr,time_dimension td where tr.store_id=1 and td.week_id = tr.week_id limit 100;

select * from transum tr,time_dimension td where tr.store_id=1 and td.week_id = tr.week_id limit 1000;

select * from transum limit 1000;

select * from upc_tr_st_dump limit 100;

select min(week_id) from upc_tr_st_dump limit 10;

select max(week_id) from upc_tr_st_dump limit 10;

select count(distinct(week_id)) from upc_tr_st_dump;  -- 70

select count(distinct(store_id)) from upc_tr_st_dump; -- 218

select count(distinct(l3_id)) from upc_tr_st_dump; -- 68

select * from time_dimension;

show tables;

select * from upc_tr_st_dump limit 100;

select * from week_master where week_id=201814; 

select * from prediction where week_id=201814; 

select * from transaction_summary where week_id=201814; 


select count(*) from transaction_summary_temp;

select * from transaction_summary;



select * from transaction_summary t where t.store_id in (1,2,3,4) 
and t.l3_id in (100037,100038,100003,100104) 
and (select distinct p.l3_id from prediction p where p.l3_id=t.l3_id);

insert into transaction_summary_temp (select * from transaction_summary t where t.store_id in (1,2,3,4)
and t.l3_id in (100037,100038,100003,100104));


truncate transaction_summary_temp;

-- insert into transaction_summary (select w.s_id, t.week_id, t.store_id, t.l3_id, sum(t.qty) from upc_tr_st_dump t, week_master w where t.week_id=w.week_id group by t.week_id, t.store_id, t.l3_id);

-- drop table transaction_summary;

-- truncate transaction_summary;

-- drop table week_master;

-- CREATE TABLE `week_master` (
--   `week_id` int(6) DEFAULT NULL,
--   `s_id` int(3) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- CREATE TABLE `transaction_summary` (
--   `s_week_id` int(6) DEFAULT NULL,
--   `week_id` int(6) DEFAULT NULL,
--   `store_id` int(3) DEFAULT NULL,
--   `l3_id` int(3) DEFAULT NULL,
--   `qty` int(6) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- CREATE TABLE `transaction_summary_temp` (
--   `s_week_id` int(6) DEFAULT NULL,
--   `week_id` int(6) DEFAULT NULL,
--   `store_id` int(3) DEFAULT NULL,
--   `l3_id` int(3) DEFAULT NULL,
--   `qty` int(6) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- -- drop table prediction_master;

-- CREATE TABLE `prediction_master` (
--   `id` int(6) primary key NOT NULL auto_increment,
--   `s_week_id` int(6) DEFAULT NULL,
--   `week_id` int(6) DEFAULT NULL,
--   `store_id` int(6) DEFAULT NULL,
--   `store_name` varchar(150) DEFAULT NULL,
--   `l3_id` int(6) DEFAULT NULL,
--   `prod_name` varchar(150) DEFAULT NULL,
--   `pred_qty` int(6) DEFAULT NULL,
--   `actual_qty` int(6) DEFAULT NULL,
--   `planned_qty` int(6) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


select count(*) from upc_tr_st_dump_temp;

-- INSERT INTO `upcdatamodel`.`upc_tr_st_dump_temp`
-- (`l1_id`,
-- `l1_name`,
-- `l2_id`,
-- `l2_name`,
-- `l3_id`,
-- `l3_name`,
-- `net_amt`,
-- `mkdn_amt`,
-- `gross_amt`,
-- `Qty`,
-- `GM`,
-- `Week_id`,
-- `Store_id`,
-- `unit_id`,
-- `store_num`,
-- `store_name`,
-- `Retailer_id`,
-- `retailer_name`,
-- `store_hierarchy_id`,
-- `store_hierarchy_name`,
-- `Region_id`,
-- `region_name`,
-- `district_id`,
-- `district_name`,
-- `Retailer_group_id`,
-- `Retailer_group_num`,
-- `retailer_group_name`,
-- `opened_dt`,
-- `closed_dt`,
-- `status_CD`,
-- `store_addr_line1_txt`,
-- `store_addr_line2_txt`,
-- `STORE_CITY_NAME`,
-- `STORE_ZIP5_ID`,
-- `STORE_STATE_ID`,
-- `STORE_COUNTRY_ID`,
-- `TOTAL_BUILDING_SIZE_AMT`,
-- `TOTAL_SELLING_AREA_AMT`,
-- `STORE_TYPE_CD`,
-- `STORE_TYPE_DESC`,
-- `STORE_SUBTYPE_CD`,
-- `STORE_SUBTYPE_DESC`,
-- `LAT_COORD`,
-- `LONG_COORD`,
-- `AREA_ID`,
-- `AREA_NAME`,
-- `CORPORATION_ID`,
-- `CORPORATION_NAME`,
-- `BATCHLOAD_ID`,
-- `LAST_UPDATE_TS`,
-- `id`)

-- (select * from upc_tr_st_dump t where t.store_id in (1,2,3,4)
-- and t.l3_id in (100037,100038,100003,100104));

drop table search_criteria_master;

CREATE TABLE `search_criteria_master` (
  `store_id` int(6) DEFAULT NULL,
  `prod_id` int(6) DEFAULT NULL,
  `years` int(11) DEFAULT NULL,
  `quarter` int(11) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `week_no` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4096 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select * from search_criteria_master;

select * from time_dimension;

-- INSERT INTO `upcdatamodel`.`search_criteria_master`
-- ( -- `store_id`
-- -- `prod_id`
-- -- `years`
-- -- `quarter`
-- -- `period`
-- `week_no`
-- )

update search_criteria_master sc
set sc.prod_id=sc.prod_id, sc.years=sc.years, sc.quarter=sc.quarter, sc.period=sc.period, sc.week_no=sc.week_no
where sc.prod_id=sc.prod_id;

-- `prod_id`
-- `years`
-- `quarter`
-- `period`
-- `week_no`

-- (select distinct(pm.store_id) from prediction_master pm order by pm.store_id);
-- (select distinct(pm.l3_id) from prediction_master pm order by pm.l3_id);
-- (select distinct(td.year) from time_dimension td order by td.year),
-- (select distinct(td.quarter) from time_dimension td order by td.quarter);
-- (select distinct(td.period) from time_dimension td order by td.period);
-- (select distinct(td.week) from time_dimension td order by td.week);
 

select * from prediction_master;













-- truncate prediction_master;


select count(*) from prediction_master;

select count(*) from prediction where store_id=3 and l3_id=100037;

-- truncate prediction_master;

-- INSERT INTO `upcdatamodel`.`prediction_master`
-- (`s_week_id`,
-- `week_id`,
-- `store_id`,
-- `l3_id`,
-- `pred_qty`)
-- select p.s_week_id, p.week_id, p.store_id, p.l3_id, p.qty 
-- from prediction p;


-- update prediction_master pm inner join upc_tr_st_dump_temp dump set pm.store_name=dump.store_name, pm.prod_name=dump.l3_name
-- where pm.l3_id=dump.l3_id and pm.store_id=dump.store_id and pm.week_id=dump.week_id;

-- update prediction_master pm inner join upc_tr_st_dump_temp dump set pm.planned_qty=pm.pred_qty
-- where pm.l3_id=pm.l3_id and pm.store_id=pm.store_id and pm.week_id=pm.week_id;

select * from prediction_master; -- where week_id=201814;

select distinct(prod_name),l3_id from prediction_master where l3_id in (100037,100038,100003,100104);

select * from transaction_summary_temp;

select t.qty transum_qty,p.qty pred_qty from transaction_summary_temp t,prediction p where p.store_id = 1 and p.l3_id = 100037 group by p.s_week_id;

select count(*) from prediction;

select * from upc_tr_st_dump_temp limit 10;

update prediction_master pm set pm.planned_qty=pm.planned_qty*0.15 where store_id=4;


-- delete from week_master where week_id >= 202053;

select * from transaction_summary order by store_id limit 100;

select s_week_id, sum(qty) from transaction_summary where store_id = 1 and l3_id = 100037 group by s_week_id;

select count(distinct l3_id) from transaction_summary;

select distinct l3_id from transaction_summary;

select transaction_summary.s_week_id from transaction_summary,prediction where `transaction_summary`.`l3_id`=`prediction`.`l3_id` limit 100;

select * from week_master;

-- truncate week_master;

-- truncate prediction;


select * from prediction where l3_id=100104;

-- truncate prediction;

-- Create table prediction as select * from Transaction_summary where store_id in (7);

-- UPDATE prediction SET prediction.s_week_id = i.s_week_id FROM (SELECT l3_id FROM Transaction_summary) i WHERE i.l3_id = prediction.l3_id;

-- UPDATE prediction p
--         INNER JOIN
--     transaction_summary_temp ts 
-- SET 
--     p.s_week_id = ts.s_week_id,
--     p.week_id = ts.week_id
-- WHERE
--     (ts.store_id IN (1 , 2, 3, 4)
--         AND ts.l3_id IN (100037 , 100038, 100003, 100104)
--         AND p.l3_id = ts.l3_id);


INSERT INTO week_master VALUES
 (201751,1),
  (201752,2),
  (201801,3),
  (201802,4),
  (201803,5),
  (201804,6),
  (201805,7),
  (201806,8),
  (201807,9),
  (201808,10),
  (201809,11),
  (201810,12),
  (201811,13),
  (201812,14),
  (201813,15),
  (201814,16),
  (201815,17),
  (201816,18),
  (201817,19),
  (201818,20),
  (201819,21),
  (201820,22),
  (201821,23),
  (201822,24),
  (201823,25),
  (201824,26),
  (201825,27),
  (201826,28),
  (201827,29),
  (201828,30),
  (201829,31),
  (201830,32),
  (201831,33),
  (201832,34),
  (201833,35),
  (201834,36),
  (201835,37),
  (201836,38),
  (201837,39),
  (201838,40),
  (201839,41),
  (201840,42),
  (201841,43),
  (201842,44),
  (201843,45),
  (201844,46),
  (201845,47),
  (201846,48),
  (201847,49),
  (201848,50),
  (201849,51),
  (201850,52),
  (201851,53),
  (201852,54),
  (201901,55),
  (201902,56),
  (201903,57),
  (201904,58),
  (201905,59),
  (201906,60),
  (201907,61),
  (201908,62),
  (201909,63),
  (201910,64),
  (201911,65),
  (201912,66),
  (201913,67),
  (201914,68),
  (201915,69),
  (201916,70),
  (201917,71),
  (201918,72),
  (201919,73),
  (201920,74),
  (201921,75),
  (201922,76),
  (201923,77),
  (201924,78),
  (201925,79),
  (201926,80),
  (201927,81),
  (201928,82),
  (201929,83),
  (201930,84),
  (201931,85),
  (201932,86),
  (201933,87),
  (201934,88),
  (201935,89),
  (201936,90),
  (201937,91),
  (201938,92),
  (201939,93),
  (201940,94),
  (201941,95),
  (201942,96),
  (201943,97),
  (201944,98),
  (201945,99),
  (201946,100),
  (201947,101),
  (201948,102),
  (201949,103),
  (201950,104),
  (201951,105),
  (201952,106),
  (202001,107),
  (202002,108),
  (202003,109),
  (202004,110),
  (202005,111),
  (202006,112),
  (202007,113),
  (202008,114),
  (202009,115),
  (202010,116),
  (202011,117),
  (202012,118),
  (202013,119),
  (202014,120),
  (202015,121),
  (202016,122),
  (202017,123),
  (202018,124),
  (202019,125),
  (202020,126),
  (202021,127),
  (202022,128),
  (202023,129),
  (202024,130),
  (202025,131),
  (202026,132),
  (202027,133),
  (202028,134),
  (202029,135),
  (202030,136),
  (202031,137),
  (202032,138),
  (202033,139),
  (202034,140),
  (202035,141),
  (202036,142),
  (202037,143),
  (202038,144),
  (202039,145),
  (202040,146),
  (202041,147),
  (202042,148),
  (202043,149),
  (202044,150),
  (202045,151),
  (202046,152),
  (202047,153),
  (202048,154),
  (202049,155),
  (202050,156),
  (202051,157),
  (202052,158);

 