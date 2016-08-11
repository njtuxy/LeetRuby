nums=[1,2,3,4,5,6]
target = 10

def two_sum(nums, target)
	i = 0
	j = nums.length-1

	result = []

 	while(i<j)
		
		p "this time at i: #{i} -> #{nums[i]} and j: #{j} -> #{nums[j]}"

		if(nums[i] + nums[j] < target) 
			i+=1			
		end
		

		if(nums[i] + nums[j] > target)
			j-=1			
		end
		

		if(nums[i] + nums[j] == target)			
			if(i != j)
				result = [i, j]
			end
			break
		end
 	end

 	result

end


p two_sum(nums, target)