# frozen_string_literal: true

module AccountSafe
  class Balance
    attr_accessor :assets, :liab, :equ

    def initialize(assets: 0, liab: 0, equ: 0)
      @assets = assets
      @liab = liab
      @equ = equ
    end

    def equity
      @assets - @liab
    end

    def validate_balance!
      @assets == @liab + @equ && @equ == @assets - @liab
    end
  end
end
