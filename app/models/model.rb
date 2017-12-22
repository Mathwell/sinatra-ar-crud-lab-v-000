#Placeholder for a model
class Post<ActiveRecord::Base
  attr_accessor :name, :content

  def initialize(name, content)
    @name, @content=name,content
  end

  def create(params)
    self.new(params[:post_name], params[:post_content])
  end

end
