print("***********变量**********")
--lua中的简单变量
-- nil number string boolean
-- lua中所有变量申明 都不需要申明变量类型 他会自动的判断类型
-- 通过 type函数 返回值string

--lua 中使用没有声明的变量 不会报错 默认是是nil
print(b)

print("***********nil**********")
a = nil
print(a)
print(type(a))
print(type(type(a)))

--number 所有的数值都是number
print("*******number*********")
a = 1
print(a)
print(type(a))
a = 1.2
print(a)
print(type(a))

print("*******string*********")
-- string
a = "12312"
print(a)
print(type(a))
a = '123'
print(a)
print(type(a))
-- lua 中 没有char

--boolean
print("*******boolean*********")
a = true
print(a)
print(type(a))

--函数 function
--表 table
--数据结构 userdata
--协同程序 thread（线程）