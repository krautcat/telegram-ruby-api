module TelegramBot
  module Types

    class BaseType

      include Virtus.model

      def to_compact_hash
        Hash[attributes.dup.delete_if { |_, v| v.nil? }.map do |key, value|
          value =
            if value.class.ancestors.include?(TelegramBot::Types::BaseType)
              value.to_compact_hash
            else
              value
            end

          [key, value]
        end]
      end

    end

  end
end
