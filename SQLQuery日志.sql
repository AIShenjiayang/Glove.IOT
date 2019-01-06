select * from UserInfo
select * from RoleInfo
select * from R_UserInfo_RoleInfo
select * from R_RoleInfo_ActionInfo
select * from ActionInfo
select * from DeviceInfo
select * from DeviceParameterInfo
select * from OperationLog
select * from WarningInfo

Use Test

select * from DeviceParameterInfo
order by(SubTime)
update DeviceParameterInfo
set StatusFlag='������'
where DeviceInfoId=1

select * from DeviceParameterInfo
where SubTime between '2018-12-18 19:21:00 'and'2018-12-18 23:21:00'

select
        StatusFlag,
		Max(StartTime)SubTime
		from DeviceParameterInfo
		group by StatusFlag

select top 1 * from DeviceParameterInfo
where StartTime=SubTime 
Order by id Desc

select top 1 * from DeviceParameterInfo
where DeviceInfoId=1
order by SubTime Desc

select DeviceInfoId,
���¿���ʱ��=MAX(SubTime)
from DeviceParameterInfo
where StartTime=SubTime 
group by DeviceInfoId

select *
from DeviceParameterInfo
where StartTime=SubTime 

select  
t2.DeviceInfoId,
t2.���¿���ʱ��,
����ʱ��=t4.������������ʱ��-t2.���¿���ʱ��,
t4.������������ʱ��,
t3.DeviceId,
t1.StatusFlag,
t1.StartTime,
t1.StopTime,
t1.SubTime
 from DeviceParameterInfo as t1 
 inner join DeviceInfo as t3 on t1.DeviceInfoId=t3.Id,
 (select
        DeviceInfoId,
		Max(SubTime)SubTime,
		���¿���ʱ��=MAX(StartTime)
		from DeviceParameterInfo
		group by DeviceInfoId) as t2,
(select
		DeviceInfoId,
		������������ʱ��=Max(SubTime)
		from DeviceParameterInfo
		where StatusFlag='������'
		group by DeviceInfoId) as t4
		where
		t1.SubTime=t2.SubTime and t1.DeviceInfoId=t2.DeviceInfoId and t1.DeviceInfoId=t4.DeviceInfoId

		select * from DeviceParameterInfo


		select * from WarningInfo as t1
		left join DeviceInfo as t2 on t1.DeviceId=t2.DeviceId 

		--select * from DeviceInfo as t2
		left join DeviceParameterInfo as t3
		on (t3.DeviceInfoId=t2.Id)
		where t3.StatusFlag='������' and t2.IsDeleted=0

select 
t1.DeviceId,
t1.WarningMessage,
t2.������ʼʱ��,
t1.SubTime,
t2.�����ύʱ��,
����ʱ��=t2.�����ύʱ��-t2.������ʼʱ��
 from WarningInfo as t1 
inner join	(select
		DeviceId ,
		�����ύʱ��=MAX(SubTime),
		������ʼʱ��=Min(SubTime)
		from WarningInfo
		group by DeviceId)as t2 on t1.DeviceId=t2.DeviceId and t1.SubTime=t2.�����ύʱ��