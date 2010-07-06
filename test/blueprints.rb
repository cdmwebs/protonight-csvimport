require 'machinist/active_record'
require 'sham'
#require 'faker'

Sham.title { Faker::Lorem.sentence }

WishList.blueprint do
  title
end
