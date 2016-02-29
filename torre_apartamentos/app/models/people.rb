class People < ActiveRecord::Base
  belongs_to :apartment
  belongs_to :tower
end
