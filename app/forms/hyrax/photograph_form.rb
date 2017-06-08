# Generated via
#  `rails generate hyrax:work Photograph`
module Hyrax
  class PhotographForm < Hyrax::Forms::WorkForm
    self.model_class = ::Photograph
    self.terms += [:resource_type]
  end
end
