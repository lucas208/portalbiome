class Individualcategory < ApplicationRecord
    has_many :individuals, dependent: :destroy

    accepts_nested_attributes_for :individuals, reject_if: :all_blank, allow_destroy: true
end
