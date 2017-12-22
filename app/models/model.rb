#Placeholder for a model
class Post<ActiveRecord::Base
  attr_accessor :name, :content

  def create(params)
    self.new(name: params[:post_name])
  end


end
