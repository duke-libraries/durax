# app/presenters/work_presenter.rb
class WorkPresenter < Hyrax::WorkShowPresenter
   delegate :contact_email, to: :solr_document
end
