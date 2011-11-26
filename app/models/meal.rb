class Meal < ActiveRecord::Base
  has_many :consumptions
  has_many :foods, :through => :consumptions
  belongs_to :user

end

