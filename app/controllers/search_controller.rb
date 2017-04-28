class SearchController < ApplicationController
  def show
  	@search_query = params[:search] [:search_query]
  	
  	@results = Employee.where("first_name like ?", "%#{@search_query}")
  end
end
