require File.dirname(__FILE__) + '/../test_helper'
require 'exchange_controller'
class ExchangeController; def rescue_action(e) raise e end; end
#class ExchangeControllerTest < ActionController::TestCase
class ExchangeControllerTest < Test::Unit::TestCase 
 # Replace this with your real tests.
  def setup
   @controller=ExchangeController.new
   @request=ActionController::TestRequest.new
   @response=ActionController::TestResponse.new
  end
  def test_truth
    assert true
  end
  def test_calculate_exchange_rate
  
   get :calculate_exchange_rate, :usamount=>"10", :currency => "Brazil"
   result=assigns(:result)
   assert_equal 15.6.to_s,result.to_s
   
   get :calculate_exchange_rate, :usamount=>"10", :currency => ""
   result=assigns(:result)
   assert_equal "Please select country",result.to_s
   
   get :calculate_exchange_rate, :usamount=>"", :currency => ""
   result=assigns(:result)
   assert_equal "Please select country and enter US amount",result.to_s
   
   get :calculate_exchange_rate, :usamount=>"10", :currency => "Brazil"
   result=assigns(:result)
   assert_equal 17.6.to_s,result.to_s
   
   get :calculate_exchange_rate, :usamount=>"", :currency => "Brazil"
   result=assigns(:result)
   assert_equal "Please enter US amount",result.to_s
   
   
  end
end
