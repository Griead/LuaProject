-- 函数

a = function()
end

print("*******无参数无返回值*******")
-- 不可以在前边实现F1() 解释型语言 逐条读取
function F1()
	print("F1 function")
end
F1()

-- 类似委托和事件
F2 = function()
	print("F2 function")
end
F2()

print("*********有参数********")

function F3(a)
	print(a)
end

F3("aaa")
F3(455)
-- 参数数量不匹配 不会报错 只会补参数和丢弃
F3()
F3(1,5,6)

print("*********有返回值********")

-- 多余的返回值会被丢弃

function F4(a)
	return a, "123", true
end

-- 多返回值可以使用此方式接  数量不够时会舍弃
b, ad, aa = F4("a")
print(b)
print(ad)
print(aa)


print("*********函数的类型********")

F5 = function()
	print("123")
end

print(type(F5))
print("*********函数的重载********")

-- 函数名相同 参数类型不同（不存在） 或者参数个数不同

--不支持重载 默认调用最后一个
function F6()
	print("Griead is Good")
end

function F6(str)
	print("Good" .. str)
end

F6("")

print("*********变长参数********")

function F7( ... )
	-- 变长参数使用 用一个表存起来 再用
	arg = { ... }
	for i=1,#arg do
		print(arg[i])
	end
	end


F7(1,5,9,7,6,3)

print("*********函数嵌套********")

function F8()
	 return function()
		print(123)
	end
end

f9 = F8()
f9()

-- 闭包 改变了临时变量的生命周期
function F9(x)
	-- 改变了传入参数的生命周期
	return function(y)
		return x + y
	end
end

f10 = F9(10)
print(f10(5))