# Generated via
#  `rails generate hyrax:work DigColl`

module Hyrax
  class DigCollsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::DigColl

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::DigCollPresenter
  end
end
