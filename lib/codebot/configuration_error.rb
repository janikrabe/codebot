# frozen_string_literal: true

require 'codebot/user_error'

module Codebot
  # This exception stores information about an error that occurred due to an
  # invalid configuration file, for example when an entry has the wrong data
  # type.
  class ConfigurationError < UserError
    # Constructs a new configuration error.
    #
    # @param message [String] the error message
    def initialize(message)
      super
    end
  end
end
