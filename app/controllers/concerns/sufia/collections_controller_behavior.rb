module Sufia
  module CollectionsControllerBehavior
    extend ActiveSupport::Concern

    included do
      include Sufia::Breadcrumbs

      before_action :has_access?, except: :show
      before_action :build_breadcrumbs, only: [:edit, :show]
      layout "sufia-one-column"
      # include the link_to_remove_from_collection view helper methods
      helper CurationConcerns::CollectionsHelper
      self.presenter_class = Sufia::CollectionPresenter
      self.form_class = Sufia::Forms::CollectionForm
    end

    protected

      def form
        @form ||= form_class.new(@collection, current_ability)
        # @user_info = current_user.user_key
      end

  end
end
