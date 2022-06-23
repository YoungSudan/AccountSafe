module AccountSafe

    class Income
        attr_accessor :rev, :exp, :cogs, :opp_ex
        def initialize(rev:0, exp:0, cogs: 0, opp_ex: 0)
            @rev = rev
            @exp = exp
            @cogs = cogs
            @opp_ex = opp_ex
        end

        def net_income
            return @rev - @exp
        end

        def gross_prof
            return @rev - @cogs
        end 

        def opp_income
            return gross_prof - @opp_ex
        end

    end

end