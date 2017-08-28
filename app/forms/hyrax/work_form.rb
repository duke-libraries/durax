# Generated via
#  `rails generate hyrax:work Work`
module Hyrax
  class WorkForm < Hyrax::Forms::WorkForm
    self.model_class = ::Work
    self.terms += [:resource_type, :contact_email]
    self.required_fields += [:contact_email]
  end
end
