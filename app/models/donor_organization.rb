class DonorOrganization < ActiveRecord::Base
  has_many :wishes
  has_many :donors
end