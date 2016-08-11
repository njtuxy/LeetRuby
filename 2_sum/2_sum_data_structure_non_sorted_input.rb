class MyClass1
# add data to array without ordering them. 
# find the sum with hash table. 
# O(n) space to store data 
# O(1) time to save
# O(n) time to find
	@@data = []

	def add(input_data)
		@@data << input_data
	end

	def print_data
		p @@data		
	end

	def find(sum)
		
		l_hash = {}
		result = false

		@@data.each_with_index do |item, index|
			if l_hash[sum-item] == nil
				l_hash[item] = index
			else
				result = true
			end
		end

		result
	end
end


class MyClass2
# add data to array without ordering them. 
# find the sum with hash table. 
# O(n) space to store data
# O(n) time to save
# O(1) time to find

	@@data = []
	@@l_hash = {}

	def add(input_data)
		
		if @@data.length == 0
			@@data << input_data
		else			
			@@data.each_with_index do |item, index|
				if @@l_hash[item+input_data] == nil
					@@l_hash[item+input_data] = true
				end				
			end

			@@data << input_data

		end
	end


	def print_data
		p @@data	
	end

	def print_hash
		p @@l_hash	
	end

	def find(sum)
		if @@l_hash[sum] == nil
			return false
		else
			return true
		end
	end

end


testClass = MyClass2.new
testClass.add(1)
testClass.add(2)
testClass.add(3)
testClass.add(4)
testClass.add(5)
testClass.print_data
testClass.print_hash

p testClass.find(9)



