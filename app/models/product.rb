class Product < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[name category price] 
  end
end
