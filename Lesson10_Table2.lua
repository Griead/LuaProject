-- 复杂数据类型

-- 字典
a = {["name"] = "Griead", ["age"] = 18, ["1"] = 6}
-- 访问单个变量 用中括号填键值 来访问
print(a["name"])
print(a["age"])
print(a["1"])

print(a.name)
print(a.age)

-- 虽然可以当作成员变量的形式得到值 但是不能是数字
--print(a.1)

a["name"] = "Griead11"
print(a["name"])

-- 新增键值对
a["sex"] = false

print(a["sex"])

-- 删除

a["sex"] = nil
print(a["sex"])

-- 遍历

for k,v in pairs(a) do
	--可以传入多个参数
	print(k,v)
end

for _,v in pairs(a) do
	print(_,v)
end

-- 类和结构体

-- Lua 中默认没有面向对象的 需要我们自己实现
-- 封装 成员变量 成员函数 属性 
Student = 
{
	age = 1,
	sex = true,

	F1 = function()
		--这样写无效 和表中的age 没有任何关系 他是全局变量
		--print(age)
		-- 正确写法
		-- 在表内部函数中调用表本身的属性和方法
		-- 一定要指定是谁的 所以要使用 表明.属性 或表名.方法
		print(Student.age)
		print("我成长了")
	end,
	Learn = function(t)
		 --向表中传一个参数 在内部访问
		print(t.age)
		print("好好学习 天天向上")
	end
}


--lua 中. 和 ： 的区别
Student.Learn(Student)
-- 等价
--冒号调用方法 会默认把第一个参数
Student:Learn()

Student.name = "Griead";
Student.Peek = function()
	print("Peek F")
end

function Student:Peek3()
	print(self.name .. "你在干啥呢")
end


-- C# 要是使用类 实例化对象new 静态直接点

print(Student.age)
print(Student.name)

Student.F1()
Student.Peek()

function Student.Peek2()
	print("说话")
end

Student.Peek2()
Student:Peek3()

-- 表的公共操作

-- 表中 table 提供的一些公共方法的讲解

t1 = {{age = 1, name = "123"}, {age = 2, name = "345"}}

t2 = {name = "Griead", sex = true}

-- 插入
table.insert(t1,t2)
for k,v in pairs(t1) do
	print(k,v.name)
end

print(t1[3].name) 


-- 删除指定元素 直接传递表进入 会移除最后一位
-- 第二个参数是移除指定位置
table.remove(t1)

for k,v in pairs(t1) do
	print(k,v.name)
end

table.remove(t1,1)
for k,v in pairs(t1) do
	print(k,v.name)
end


t2 = {5,2,7,9,5}
--  排序 默认升序
table.sort(t2)

for k,v in pairs(t2) do
	print(v)
end

table.sort( t2, function(a,b)
	if a>b then
		return true
	end
end )

for k,v in pairs(t2) do
	print(v)
end

--拼接

print("************************")

tb = {"123", "456", "789", "10101"}

str = table.concat( tb, ", ", start_index, end_index )

print(str)