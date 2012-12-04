require File.dirname(__FILE__) + '/../test_helper'

class ExchangeTest < ActiveSupport::TestCase
  # Replace this with your real tests.

  #def test_truth
   # assert true
  #end

  def test_brazil
   b=Exchange.new
   assert_equal 1.56,b.BrazilExchangeRate,"Clean"   
  end
  def test_canada
   c=Exchange.new
   assert_equal 1.35,c.CanadaExchangeRate,"Clean"   
  end
  def test_european
   e=Exchange.new
   assert_equal 0.93,e.EuropeanExchangeRate,"Clean"   
  end
  def test_japan
   j=Exchange.new
   assert_equal 2.04,j.JapanExchangeRate,"Clean"   
  end
 

end
