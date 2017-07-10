class GenericWorkPresenter < Hyrax::WorkShowPresenter
	delegate :contact_email, to: :solr_document
end
