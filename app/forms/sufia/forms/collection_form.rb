module Sufia::Forms
  class CollectionForm < CurationConcerns::Forms::CollectionEditForm
    delegate :depositor, :permissions, to: :model

    def initialize(model, current_ability)
      @user_info = current_ability.current_user.user_key
      super model
    end

    def rendered_terms
      terms - [:visibility]
    end
  end
end
