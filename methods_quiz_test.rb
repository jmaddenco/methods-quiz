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

	# TODO - write tests here
	def test_has_teen?
		assert_equal true, @m.has_teen?(13,19,15)
		assert_equal false, @m.has_teen?(2,3,5)
	end

	def test_not_string
		assert_equal "not", @m.not_string?("just another day on the farm")
		assert_equal "not", @m.not_string?("not going to do this very well")
		
	end

	def test_icy_hot?
		assert_equal true, @m.icy_hot?(-2,191)
		assert_equal true, @m.icy_hot?(0,100)
		assert_equal true, @m.icy_hot?(-11,929)
	end

	# def test_closer_to
	# 	assert_equal closer, @m.closer_to()
		
	# end

	def test_two_as_one?
		assert_equal true, @m.two_as_one(10,10,20)
		assert_equal true, @m.two_as_one(30,10,20)
		assert_equal true, @m.two_as_one(30,50,20)
	end

	# def test_pig_latinify
	# 	assert_equal "yas", @m.pig_latinigy("say")
	# 	assert_equal "etaiverbbaay", @m.pig_latinigy("Abbreviate")
	# 	assert_equal "etaiverbbaay", @m.pig_latinigy("Abbreviate")
	# end

end