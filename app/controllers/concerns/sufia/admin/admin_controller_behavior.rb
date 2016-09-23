module Sufia
  module Admin
    module AdminControllerBehavior
      def search_builder
        super.except(:add_advanced_parse_q_to_solr)
      end
    end
  end
end