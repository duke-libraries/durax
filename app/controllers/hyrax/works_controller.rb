# Generated via
#  `rails generate hyrax:work Work`

module Hyrax
  class WorksController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks

    # Ayse 20170626 - for error inadding new work after 
    # addition of new metadata contact_email to the generic Work type
    include Hyrax::CurationConcernController

    self.curation_concern_type = ::Work
    # Ayse maybe I don't need this..
    #self.show_presenter = WorkPresenter
  end
end
