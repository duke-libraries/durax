# Generated via
#  `rails generate hyrax:work DigColl`
module Hyrax
  class DigCollForm < Hyrax::Forms::WorkForm
    self.model_class = ::DigColl
    self.terms += [:resource_type, :curator_email, :based_near, :contact_telephone, :department]
    self.required_fields += [:curator_email, :based_near]

  end
end
