#Placeholder for a model

class Article < ActiveRecord::Base
  attr_accessor :title, :content, :id 
  
  def initialize(params)
    @title = params[:title]
    @content = params[:content]
end