--条件分支语句
a = 9
-- if 条件 then .....end
if a < 5 then
	print("123")
end

if a < 5 then 
	print(true)
else
	print(false)
end

--多分枝 elseif 要连着写

if a < 5 then
	print("123")
elseif a > 5 then
	print("5")
end

if a>= 3 and a <= 9 then
	print("3到9")
end

--lua 中没有switch