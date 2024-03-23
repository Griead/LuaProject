-- 多脚本执行

print("*****************全局变量和本地变量******************")

-- 都是全局变量
a = 1
b = "123"

for i = 1,2 do
	c = "Griead"
end

print(c)

-- 本地变量的关键字 local
for i=1,2 do
	local x = "Griead"
	print("循环中的"..x)
end

print(x)

fun = function()
	tt= "123456"
end

print(tt)
fun()
print(tt)

local tt2 = "555"
print(tt2)


print("*********************多脚本执行*********************")

-- 关键字 require("脚本名") require("脚本名")

require("Test")
print(testA)
print(testLocalA)

print("*********************脚本卸载*********************")
-- 如果是require加载执行的脚本 加载一次过后不会在被执行
require("Test")
--package.loaded["脚本名"] 可以判断脚本有没有执行过
print(package.loaded["Test"])
-- 卸载已经执行过的脚本
package.loaded["Test"] = nil
print(testA)

-- require 执行一个脚本时 可以在脚本最后返回一个外部的局部变量
local testLA = require("Test")
print(testLA)

print("*********************大G表*********************")

-- _G 大G表是一个总表(table) 他将我们申明的所有全局变量都存储其中

for k,v in pairs(_G) do
	print(k,v)
end

-- 本地变量 加了local关键字的变量 不会存到大_G表中

