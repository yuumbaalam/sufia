module Sufia::Forms
  class CollectionForm < CurationConcerns::Forms::CollectionEditForm

    delegate :depositor, to: :model

    def rendered_terms
      terms - [:visibility]
    end
  end
end
