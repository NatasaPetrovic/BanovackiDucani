class PremiumInfoController < ApplicationController
    
    def new
        @premium_info = PremiumInfo.new
    end
    
    def create
        @premium_info = PremiumInfo.new(info_params)
        @premium_info.save
            
    end
    
    private
    def info_params
       params.require(:premium_info).permit(:premium_info) 
    end
end
