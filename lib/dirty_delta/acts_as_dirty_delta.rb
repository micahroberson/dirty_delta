module DirtyDelta
  module ActsAsDirtyDelta
    extend ActiveSupport::Concern
    include ActiveModel::AttributeMethods

    included do
      attribute_method_suffix '_delta'
    end

    module ClassMethods
      def acts_as_dirty_delta
        include DirtyDelta::ActsAsDirtyDelta::InstanceMethods
      end
    end

    module InstanceMethods
      def attribute_delta(attr)
        if [:float, :integer].include?(column_for_attribute(attr).type)
          attribute_changed?(attr) ? __send__(attr) - (changed_attributes[attr] || 0) : 0
        else
          nil
        end
      end

      def attribute_deltas
        changed_attributes.inject({}) do |memo, (attr, value)|
          memo[attr] = __send__("#{attr.to_s}_delta")
          memo
        end.with_indifferent_access
      end
    end
  end
end

ActiveRecord::Base.send :include, DirtyDelta::ActsAsDirtyDelta