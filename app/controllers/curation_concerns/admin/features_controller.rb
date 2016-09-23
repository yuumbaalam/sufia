module CurationConcerns
  module Admin
    class FeaturesController < Flipflop::FeaturesController
      before_action :load_configuration

      def load_configuration
        @configuration = CurationConcerns::AdminController.configuration
      end

      layout 'admin'
      before_action do
        authorize! :manage, Sufia::Feature
        # add_breadcrumb t(:'sufia.controls.home'), root_path
        # add_breadcrumb t(:'sufia.toolbar.admin.menu'), sufia.admin_path
        # add_breadcrumb t(:'sufia.admin.sidebar.settings'), sufia.admin_features_path
      end
    end
  end
end
