module CurationConcerns
  class Admin::StatsController < ApplicationController
    include Sufia::Admin::StatsBehavior

    before_action :load_configuration

    def load_configuration
      @configuration = CurationConcerns::AdminController.configuration
    end
  end
end
