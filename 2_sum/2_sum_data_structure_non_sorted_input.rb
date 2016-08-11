# add data to array without ordering them. 
# find the sum with hash table. 

class MyClass

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





testClass = MyClass.new
testClass.add(1)
testClass.add(2)
testClass.add(3)
p testClass.find(1)
p testClass.find(2)
p testClass.find(3)
p testClass.find(4)



