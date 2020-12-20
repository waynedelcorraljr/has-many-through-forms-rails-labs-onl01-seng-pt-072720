class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def commment_user_attributes=(attributes)
    attributes.value.each do |attribute|
      user = User.find_or_create_by(attribute)
      self.users.build(username: attribute) 
    end
  end
end
