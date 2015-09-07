module MethodsQuiz
	
	def has_teen?(a, b, c)
		is_a_teen?(a) || is_a_teen?(b) || is_a_teen?(c)
		#use retun so that you can eliminate the if statement becuase if is a bulian
		#and it will return a buliand (true or false) you can use this when you dont
		#you actually dont even neet the return
	end
	
	def not_string?(str)
		#str.start_with?("not") ? str : "not " + str
		str = "not #{str}" unless str.start_with?("not")
		str
	end
	
	def icy_hot?(a, b)
		( hot?(a) && icy?(b) ) || ( icy?(a) && hot?(b) )
	end
	
	def closer_to?(targ, g1, g2)
		if g1 == g2
			return 0
		elsif g1 - targ < g2
			return g1
		elsif g2 - targ < g1
			return g2
		end
	end


	def two_as_one?(a, b, c)
		is_two_as_one?(a,b,c) || is_two_as_one?(a,c,b) || is_two_as_one?(b,c,a)
	end


	def pig_latinify (str)
		str = str.strip
		str = str.downcase
		
		loc_first_vowel = str.index /[aeiou]/

		case loc_first_vowel
		when 0
		 	"#{str}way"
		else
			"#{str[loc_first_vowel..str.length]}#{str[0..loc_first_vowel-1]}ay"
		end
	end

	private
		def is_a_teen?(n)
			n >= 13 && n <= 19
		end

		def is_two_as_one?(n,m,o)
			n + m == o	
		end

		def icy?(n)
			n < 0
		end

		def hot?(n)
			n > 100
		end

end