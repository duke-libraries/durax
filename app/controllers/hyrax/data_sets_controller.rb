# Generated via
#  `rails generate hyrax:work DataSet`

module Hyrax
  class DataSetsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::DataSet
  end
end
