# frozen_string_literal: true

require_relative "AccountSafe/version"
require_relative "AccountSafe/balance"
require_relative "AccountSafe/income"
# Main class for calculating slimple finacial equations
module AccountSafe
  class Error < StandardError; end
end
