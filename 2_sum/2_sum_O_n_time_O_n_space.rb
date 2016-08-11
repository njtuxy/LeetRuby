# nums=[2,1,9,4,4,56,90,3]
nums=[3,2,4]
target = 6;




def two_sum(nums, target)
  h_result = {}
  result =[]

  nums.each_with_index do |item, index|
    if h_result[target-item] == nil
      h_result[item] = index
    else
      if index < h_result[target-item]
        result[0] = index
        result[1] = h_result[target-item]
      else
        result[1] = index
        result[0] = h_result[target-item]
      end
    end   
  end

  result

end


p two_sum(nums, target)