insert into exam_record_before_2021
select null, uid, exam_id, start_time, submit_time, score from exam_record
where year(submit_time) < 2021