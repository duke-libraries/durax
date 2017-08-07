# Generated via
#  `rails generate hyrax:work Photograph`

module Hyrax
  class PhotographsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::Photograph

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::PhotographPresenter
  end
end
