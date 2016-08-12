#O(n) time
#O(1) space

def is_palindrome(s)

	if s == ""
		return true
	end

	if s.length == 1
		return true
	end


	l_text = s.gsub!(/\W+/, '').downcase
	l_text_array = l_text.chars

    i=0;    
    j=l_text_array.length-1

    ispalindrome = false

    while(i<j)
    	if(l_text_array[i] == l_text_array[j])
    		i+=1
    		j-=1
    	else
    		break
    	end
    end
   
    if(i>=j)
    	ispalindrome = true
    end

    ispalindrome

end




p ispalindrome("A man, a plan, a canal: Panama")
p ispalindrome("")
p ispalindrome("a")
