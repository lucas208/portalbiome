class Writing < ApplicationRecord
    has_many :individualwritings
    has_many :individuals, :through => :individualwritings, dependent: :destroy

    accepts_nested_attributes_for :individuals, reject_if: :all_blank, allow_destroy: true
end
