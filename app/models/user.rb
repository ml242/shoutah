class User < ActiveRecord::Base
  include Concerns::Following

  # include ActiveModel::ForbiddenAttributesProtection
  has_many :shouts

end
