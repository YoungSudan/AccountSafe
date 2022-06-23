# frozen_string_literal: true

module AccountSafe
  class Income
    attr_accessor :rev, :exp, :cogs, :opp_ex

    def initialize(rev: 0, exp: 0, cogs: 0, opp_ex: 0)
      @rev = rev
      @exp = exp
      @cogs = cogs
      @opp_ex = opp_ex
    end

    def net_income
      @rev - @exp
    end

    def gross_prof
      @rev - @cogs
    end

    def opp_income
      gross_prof - @opp_ex
    end
  end
end
