-- 特殊用法
print("*************************************")

print("******************多变量赋值*******************")

a,b,c = 1,2,"456"
print(a)
print(b)
print(c)

-- 多变量赋值的时候 如果后边的值不够 会自动补nil
a,b,c = 1,2
print(a)
print(b)
print(c)

-- 多了 则忽略
a,b,c = 1,2,4,5,6
print(a)
print(b)
print(c)



print("******************函数的多返回值*******************")

function Test()
	return 10,20,20,30
end

a,b,c = Test()
print(a)
print(b)
print(c)

print("******************and or*******************")

-- 逻辑与 逻辑或

-- and 和 or 他们不仅可以链接boolean类型 任何东西都可以链接
-- 在lua 中 只有 nil 和 false 才认为是假

 -- 短路的原理 对其and来说 有假则假 对于or来说 有真则真
 -- 所以 他们只需要判断 第一个是否满足 就会停止计算了
print(1 and 2)
print(0 and 1)
print(nil and 1)
print(false and 2)
print(true and 3)

print(true or 1)
print(false or 1)
print(nil or 2)
-- lua不支持三目运算符

x = 3
y = 2

local res = (x>y) and x or y

print(res)

