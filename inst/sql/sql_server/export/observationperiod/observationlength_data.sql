select cast(ar1.stratum_1 as int) as IntervalIndex, 
	ar1.count_value as CountValue, 
	1.0*ar1.count_value / denom.count_value as PercentValue
from ACHILLES_analysis aa1
inner join ACHILLES_results ar1 on aa1.analysis_id = ar1.analysis_id,
(
	select count_value from ACHILLES_results where analysis_id = 1
) denom
where aa1.analysis_id = 108
order by cast(ar1.stratum_1 as int) asc