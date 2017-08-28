# Generated via
#  `rails generate hyrax:work DigColl`

module Hyrax
  class DigCollsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::DigColl
    self.show_presenter = DigCollPresenter
  end
end
