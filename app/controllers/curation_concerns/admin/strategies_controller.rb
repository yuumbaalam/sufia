module CurationConcerns
  module Admin
    class StrategiesController < Flipflop::StrategiesController
      before_action do
        authorize! :manage, Sufia::Feature
      end

      # TODO: we could remove this if we used an isolated engine
      def features_url
        curation_concerns.admin_features_path
      end
    end
  end
end
