print("*******************元表*******************")
print("*******************元表概念*******************")
-- 任何表变量 都可以作为另一个表变量的元表
-- 任何表变量 都可以有自己的元表(爸爸)
-- 当我们子表中进行一些特定操作时
-- 会执行元表中的内容

print("*******************设置元表*******************")
meta = {}
myTable = {}
-- 设置元表函数 第一个参数 子表 第二个参数 元表
setmetatable(myTable, meta)

print("*******************特定操作*******************")
print("*******************特定操作 _tostring*******************")
meta2 = {
	-- 当子表要被当作字符串使用时 会默认调用这个元表中的tostring方法
	__tostring = function(t)
		return t.name
	end
}
myTable2 = {
	name = "Griead"
}
setmetatable(myTable2, meta2)

print(myTable2)

print("*******************特定操作 _call*******************")

meta3 = {
	-- 当子表要被当作字符串使用时 会默认调用这个元表中的tostring方法
	__tostring = function (t)
		return t.name
	end,
	-- 当子表被当作一个函数被使用时 会调用--call中的内容
	-- 当希望传参数时 一定要记住 默认第一个参数时自己
	__call = function (a, b)
		print(a)
		print(b)
		print("爱你呦~")
	end
}
myTable3 = {
	name = "Griead"
}
setmetatable(myTable3, meta3)

print(myTable3)
-- 把子表当作函数使用 就会调用元表的 __call方法 不在元表中实现__call 则会报错
myTable3(1)

print("*******************特定操作 运算符重载*******************")

meta4 = {
	__add = function(t1,t2)
		return t1.age + t2.age
	end,
	__sub = function(t1, t2)
		return t1.age - t2.age
	end,
	__mul = function (t1, t2)
		return t1.age * t2.age
	end,
	__div = function (t1, t2)
		return t1.age / t2.age
	end,
	__mod = function (t1, t2)
		return t1.age % t2.age
	end,
	__pow = function (t1, t2)
		return t1.age ^ t2.age
	end,
	__eq = function (t1, t2)
		return t1.age == t2.age
	end,
	__lt = function (t1, t2)
		return t1.age < t2.age
	end,
	__le = function (t1, t2)
		return t1.age <= t2.age
	end,
	__concat = function (t1, t2)
		return t1.age + t2.age
	end,
}

myTable4 = { age = 1}
setmetatable(myTable4, meta4)
myTable5 = { age = 2}
setmetatable(myTable5, meta4)

print(myTable4 + myTable5)
print(myTable4 - myTable5)
print(myTable4 .. myTable5)

-- 如果要用条件运算符 来比较两个对象
-- 这两个对象的元表一定要一致 才能准确调用方法
print(myTable4 == myTable5)
print(myTable4 <= myTable5)


print("*******************特定操作 _index 和 _newIndex*******************")

meta6Parent = {
	age = 11
}

meta6Parent.__index = meta6Parent

meta6 = {
	age = 1
}

meta6.__index = meta6Parent
myTable6 = {}

setmetatable(meta6, meta6Parent)
setmetatable(myTable6, meta6)
print(getmetatable(myTable6))

-- __index 当子表中 找不到某一个属性时
-- 会到元表中 __index指定的去找索引
print(myTable6.age)

print(rawget(myTable6, "age"))
myTable6.age = 5
print(rawget(myTable6, "age"))


-- newIndex 当赋值时 如果赋值一个不存在的索引
-- 那么会把这个值复制到newindex所指的表中 不会修改自己

meta7 = {}
meta7.__newindex = {}

myTable7 = {}

setmetatable(myTable7, meta7)

myTable7.age = 1
--print(myTable7.__newindex)
--print(meta7.__newindex.age)