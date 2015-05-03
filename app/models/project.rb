class Project < ActiveRecord::Base
  has_many :assets
  accepts_nested_attributes_for :aseets, reject_if: :all_blank, allow_destroy: true
  
end
