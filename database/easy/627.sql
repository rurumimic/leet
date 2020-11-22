update salary 
  set sex = 
    case
      when sex='m' then 'f'
      when sex='f' then 'm'
    end;

--

update salary 
  set sex = case sex
    when 'm' then 'f'
    when 'f' then 'm'
  end;