require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	def test_has_teen
		assert_equal true, @m.has_teen?(13, 5, 8)
		assert_equal true, @m.has_teen?(1, 15, 21)
		assert_equal true, @m.has_teen?(15, 15, 18)

		assert_equal false, @m.has_teen?(5, 25, 8)
		assert_equal false, @m.has_teen?(12, 2, 86)
	end


	def test_not_string
		assert_equal "notbag", @m.not_string("bag")
		assert_equal "nothing", @m.not_string("nothing")
	end	

	def test_icy_hot?
		assert_equal true, @m.icy_hot?(102, -1)
		assert_equal true, @m.icy_hot?(-75, 250)

		assert_equal false, @m.icy_hot?(0, 100)
		assert_equal false, @m.icy_hot?(75, 25)
		assert_equal false, @m.icy_hot?(750, 25)
		assert_equal false, @m.icy_hot?(75, -25)
		assert_equal false, @m.icy_hot?(5, 258)

		assert_equal false, @m.icy_hot?(-75, 70)
	end

	def test_closer_to
		assert_equal 0, @m.closer_to(0, -25, 25)	
		assert_equal 23, @m.closer_to(0, 29, 23)	
		assert_equal 2, @m.closer_to(0, 57, 2)	
	end

	def test_two_as_one
		assert_equal true, @m.two_as_one?(1, 2, 3)
		assert_equal true, @m.two_as_one?(4, 2, 2)
		assert_equal true, @m.two_as_one?(4, 6, 2)

		assert_equal false, @m.two_as_one?(1, 1, 1)
		assert_equal false, @m.two_as_one?(1, 14, 21)
		assert_equal false, @m.two_as_one?(666, 114, 221)
	end
	
	def test_pig_latinify
		
	end

end