class DigCollPresenter < Hyrax::WorkShowPresenter

   delegate :curator_email, :contact_telephone, :based_near, :department, to: :solr_document

end
