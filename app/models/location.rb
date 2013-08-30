class Location < ActiveRecord::Base
  has_many :queries
end
