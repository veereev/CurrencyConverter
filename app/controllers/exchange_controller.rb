class ExchangeController < ApplicationController
 def index
 end
 def calculate_exchange_rate
if params[:currency].to_s == "" && params[:usamount].to_s ==""
@result="Please select country and enter US amount"
 render :text => @result and return
  end
  if params[:currency].to_s != "" && params[:usamount].to_s ==""
  @result="Please enter US amount"
  render :text => @result and return
  end
  if params[:currency].to_s == "" && params[:usamount].to_s !=""
  @result="Please select country"
 render :text => @result and return
 end  
		
  if params[:currency].to_s != "" && params[:usamount].to_s !=""
	 @to_currency=params[:currency]
 @usamount=params[:usamount].to_i
 @rate=Exchange.new
 if @to_currency == "Brazil"
  @result = @usamount * @rate.BrazilExchangeRate
 elsif @to_currency == "Canada"
   @result = @usamount * @rate.CanadaExchangeRate

 elsif @to_currency == "European Community"
    @result = @usamount * @rate.EuropeanExchangeRate

 elsif @to_currency == "Japan"
   @result = @usamount * @rate.JapanExchangeRate
 else
   @result=0.0
 end
  render :text => @result.to_s
 end
 end
end
