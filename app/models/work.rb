# Generated via
#  `rails generate hyrax:work Work`
class Work < ActiveFedora::Base
  include ::Hyrax::WorkBehavior
  include ::Hyrax::BasicMetadata
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }
  
  self.human_readable_type = 'Work'

  # customizing metadata
  property :contact_email, predicate: ::RDF::Vocab::VCARD.hasEmail, multiple: false do |index|
    index.as :stored_searchable
  end
end
