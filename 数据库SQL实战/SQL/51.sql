-- 投机取巧的答案 select 2;
SELECT (length("10,A,B")-length(replace("10,A,B",",","")))AS cnt