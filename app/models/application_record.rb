class ApplicationRecord < ActiveRecord::Base
  include HTTParty
  self.abstract_class = true
end
