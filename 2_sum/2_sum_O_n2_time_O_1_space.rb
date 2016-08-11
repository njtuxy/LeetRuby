nums=[2,1,9,4,4,56,90,3]
target = 8;

index1 = 0
index2 = 0
result = []

nums.each_with_index do |item, outter_index|
		
	index1 = outter_index

	value_to_find = target - item

	for inner_index in (index1+1...nums.length)

		if nums[inner_index] == value_to_find
			index2 = inner_index
			break
		end
	end

	if index2!=0 
		break
	end

end

if(index2 != 0)
	result[0] = index1
	result[1] = index2
end

p result







