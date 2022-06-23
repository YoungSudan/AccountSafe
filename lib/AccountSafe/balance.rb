require 'byebug'

module AccountSafe

    class Balance
        attr_accessor :assets ,:liab , :equ 
        def initialize(assets:0, liab:0, equ:0)
            @assets = assets
            @liab = liab
            @equ = equ
        end

        def assets
            return @liab + @equ
        end

        def equity
            return @assets - @liab
        end 

        def validate_balance! 
            return  @assets == @liab + @equ && @equ == @assets - @liab
        end
    end

end