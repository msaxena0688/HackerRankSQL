


select
case when st.marks between 70 and 100 then st.name
else "NULL" 
END,
grd.Grade,
st.Marks 
from students st inner join Grades grd on (st.marks >=grd.min_mark and st.marks <=grd.max_mark)
order by grd.Grade desc,st.Name 