-- 协程


print("*******************协程的创建*******************")
-- coroutine.create()

fun = function()
	print("123")
end

co = coroutine.create(fun)
co = coroutine.create(function()
	print("123")
end)
 -- 本质是一个线程变量类型
print(co)
print(type(co))

-- coroutine.wrap()
co2 = coroutine.wrap(fun)
print(co2)
print(type(co2))

print("*******************协程的运行*******************")

-- 对应的是通过create创建
coroutine.resume(co)

-- co2 是函数类型 可以直接使用
co2()

print("*******************协程的挂起*******************")

fun2 = function()
	local i = 1
	while true do
		print("Griead".. i)
		i = i + 1
		-- 协程的挂起 传参数相当于返回值
		coroutine.yield(i)
	end
end

co3 = coroutine.create(fun2)

tempI, u = coroutine.resume(co3)
print(tempI,u)

tempI, u = coroutine.resume(co3)
print(tempI,u)

tempI, u = coroutine.resume(co3)
print(tempI, u)


co4 = coroutine.wrap(fun2)
co4()


print("*******************协程的状态*******************")

--coroutine.status(协程对象)
--dead 结束
--suspended 暂停
--running 进行中
print(coroutine.status(co))
print(coroutine.status(co3))

-- 这个函数可以的到当前正在运行的线程号
print(coroutine.running())