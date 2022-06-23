# frozen_string_literal: true

require_relative "AccountSafe/version"

# Main class for calculating slimple finacial equations
module AccountSafe
  class Error < StandardError; end

  def self.assets(liab:, equ:)
    liab + equ
  end
end
