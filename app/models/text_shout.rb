class TextShout < ActiveRecord::Base
  belongs_to :user
  # attr_accessible :body

  def index
    body
  end


end
