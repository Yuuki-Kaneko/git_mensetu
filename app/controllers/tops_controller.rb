class TopsController < ApplicationController
    
  def index
    @tops = Top.new
  end
  
  def create
    Top.create(create_params)
  end

  def purchase
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"] 
    Payjp::Charge.create(
      :amount => 3500,
      :card => params['payjp-token'],
      :currency => 'jpy'
    )
  end
  
  private
    def create_params
      params.permit(:full_name, :email)
    end
end
