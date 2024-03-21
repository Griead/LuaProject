-- 循环语句


-- while

num = 0
-- while 条件 do ... end
while num < 5 do 
	print(num)
	num = num + 1
end

-- do while 
--repeat 直到 until 的条件满足 跳出
num = 0
repeat
	print(num)
	num = num + 1
until num > 5

-- for i会默认递增


for i = 2,5 do
 	print(i)
end

-- 第一个 初始值 第二个 条件 第三个 自增数目
for i = 1,5,2 do
	print(i)
end

for i = 5,1,-1 do
	print(i)
end

