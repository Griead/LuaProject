print("***************字符串********************")
str = "双引号字符串"
str2 = '单引号字符串'

--获取字符串的长度 中文字符占三个长度
s = "abcdefg哈哈哈"
print(#s)

-- 字符串多行打印 支持转移字符

print("123\n123")
s =
[[
我
是
唐
老
师
]]
print(s)


-- 拼接字符串 通过两个 ..

print("123" .. "456")

s1 = "aaa"
s2 = 123
print(s1..s2)

print(string.format("我是Griead,我今年%d %d",12,55))
--%d :与数字拼接
--%a 与任何字符拼接
--%s 与字符配对

-- 别的类型转字符串 tostring()

a = true
print(tostring(a))

--字符串公共方法

str = "abCDRRRasdaCD"
-- 小写转大写
print(string.upper(str))

--大写转小写
print(string.lower(str))

--反转字符串
print(string.reverse(str))

--字符串索引查找 返回值 起始位置和结束位置 第一个数据是1
print(string.find(str, "CDR"))

--截取字符串
print(string.sub(str, 3))

--字符串重复 输出几遍
print(string.rep(str, 2))

--字符串修改 将CD转换为** 转换几个
print(string.gsub(str, "CD", "**"))

--字符转 ASCII码 将第几个数据转换成ASC码
a = string.byte("Lua", 1)
print(a)

--转回字符串
print(string.char(a))