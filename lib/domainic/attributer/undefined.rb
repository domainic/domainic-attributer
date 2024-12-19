# frozen_string_literal: true

module Domainic
  module Attributer
    # A singleton object representing an undefined value
    #
    # This object is used throughout {Domainic::Attributer} to represent values that
    # are explicitly undefined, as opposed to nil which represents the absence of
    # a value. It is immutable and implements custom string representations for
    # debugging purposes
    #
    # @api private
    # @!visibility private
    # @author {https://aaronmallen.me Aaron Allen}
    # @since 0.1.0
    Undefined = Object.new.tap do |undefined|
      # Prevent cloning of the singleton
      #
      # @return [Undefined] self
      def undefined.clone(...)
        self
      end

      # Prevent duplication of the singleton
      #
      # @return [Undefined] self
      def undefined.dup
        self
      end

      # Get a string representation of the object
      #
      # @return [String] the string 'Undefined'
      def undefined.inspect
        to_s
      end

      # Convert the object to a string
      #
      # @return [String] the string 'Undefined'
      def undefined.to_s
        'Undefined'
      end
    end.freeze #: Object
  end
end
