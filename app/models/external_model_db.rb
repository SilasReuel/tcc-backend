class ExternalModelDb < ApplicationRecord
  self.abstract_class = true
  establish_connection :external
end
