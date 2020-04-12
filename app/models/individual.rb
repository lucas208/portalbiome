class Individual < ApplicationRecord
  belongs_to :individualcategory

  has_many :individualwritings
  has_many :writings, :through => :individualwritings
end
