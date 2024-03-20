-- 运算符 +-*/  == ！= <= >= 

-- 算数运算符 + - * / % 没有自增自减++ 复合运算符+=

print("加法运算" .. 1 + 2)

a= 1
b= 2
print(a + b)
print("123" + 1)

print("减法运算" .. 1 - 2)
print("乘法运算" .. 1 * 2)
print("除法运算" .. 1 / 2)

print("幂运算" .. 2^16)

--条件运算符 <  >  >= <= == ~=

print(3 > 1)
print(3 < 1)
print(3 == 1)
print(3 ~= 1)


-- 逻辑运算符 && -> and 
-- || -> or 
-- ! -> not
print(true and false)
print(true or false)

-- 短路
print(false and print("123"))

--位运算 不支持 & | 

-- 三目运算符 不支持 ？ ！




