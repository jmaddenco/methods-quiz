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
	def test_has_teen
		assert_equal true, @m.has_teen?(13,19,15)
		assert_equal false, @m.has_teen?(2,3,5)
	end

	def test_not_string
		assert_equal "not", @m.not_string?("just another day on the farm")
		assert_equal not_string, @m.not_string?("not going to do this very well")
		
	end

end
