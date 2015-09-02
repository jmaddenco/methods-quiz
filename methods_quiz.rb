module MethodsQuiz
	
	# TODO - write has_teen?
	def has_teen?(a,b,c)
		if a>=13 && a<=19 || b>=13 && b<=19 || c>=13 && c<=19
			10
				return true
		end
		return false
	end
	
	# TODO - write not_string
	def not_string?(n)
		if n= "not"
			return #dont know what goes here
		end
		
	end
	# TODO - write icy_hot?
	def icy_hot?(atemp, btemp)
		if atemp<=0 && btemp>=100
			true
		end

	end
	# TODO - write closer_to
	def closer_to(guess1, guess2)
		if guess1<guess2 || guess2>guess1

			#dont know
		end
	end
	# TODO - write two_as_one?
	def two_as_one?(d, e, f)
		if d + e == f || e + f == d || d + f == e
			true
			
		end
		
	end
	# TODO - write pig_latinify

end