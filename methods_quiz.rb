module MethodsQuiz
	
	def has_teen?(a, b, c)
		if a >= 13 && a <= 19
			true
		elsif b >= 13 && b <= 19
			true
		elsif c >= 13 && c <= 19
			true
		else
			false
		end
	end	
	
	def not_string(str)
		if str.start_with?("not")
			return "#{str}"
		else
			return "not#{str}"
		end
	end
	
	def icy_hot?(d, e)
		if d > 100 && e < 0 || d < 0 && e > 100
			true
		else
			false
		end
	end
	
	def closer_to(num, guess1, guess2)
		if (num - guess1).abs == (num - guess2).abs
			return 0
		elsif (num - guess1).abs <= (num - guess2).abs
			return (num - guess1).abs
		elsif (num - guess1).abs >= (num - guess2).abs
			return (num - guess2).abs
		end
	end

	def two_as_one?(f, g, h)
		if f + g == h || h + f == g || g + h == f
			true
		else
			false
		end
	end

	def pig_latinify()
		
	end

end