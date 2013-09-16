class PropertyController < ApplicationController
  def index
  end

  def calc
  	@roi = (( params[:value].to_i - params[:cost].to_i ) / params[:cost].to_f) * 100
	@profit = ( params[:value].to_i - params[:cost].to_i )/params[:total].to_f
	Property.create(:roi=>@roi.to_d , :value => params[:value].to_i, 
		:cost=> params[:cost].to_i , :total => params[:total].to_i)
end

end
