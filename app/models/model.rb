#Placeholder for a model
class Post<ActiveRecord::Base
  attr_accessor :name, :content
  def initialize(params)
    @name, @content =params[:name], params[:content]
  end

end
