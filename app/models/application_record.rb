class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  include Countries
  include AlgoliaSearch
  algoliasearch do
    attributes :city
  end
end
