# frozen_string_literal: true

require_relative 'AccountSafe/version'
require_relative 'AccountSafe/balance'
require_relative 'AccountSafe/income'
require_relative 'AccountSafe/import_cvs'
require_relative 'AccountSafe/account'
# Main class for calculating slimple finacial equations
module AccountSafe
  class Error < StandardError; end
  class MathError < StandardError; end

end
