-- 迭代器遍历 
-- 主要是用来遍历表的
-- #得到的长度 不准确 一般不用# 

a = {[0] = 1 , 2 ,[-1] = 3, 4, 5, [4] = 6, [6] = 7}

--ipairs 还是从 1开始向后遍历 而且需要连续
for i,k in ipairs(a) do
	print("ipairs遍历键值"..i.."_"..k)
end

--pairs 所有的都能遍历

for k,v in pairs(a) do
	print("pairs遍历键值"..k.."_"..v)
end

for i in pairs(a) do
	print("pairs key"..i)
end