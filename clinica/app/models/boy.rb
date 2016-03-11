class Boy < ActiveRecord::Base
  serialize :vaccines, Array
  serialize :antecedents, Array
end
