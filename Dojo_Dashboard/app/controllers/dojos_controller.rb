class DojosController < ApplicationController
    def index
        @dojos = Dojo.all
    end

    def new 

    end
    def create

        Dojo.create(branch: params[:dojo][:branch], street: params[:dojo][:street], city: params[:dojo][:city], state: params[:dojo][:state])
        redirect_to ''
    end
    # private 
    #     def
    #         params.require(:dojo).permit(:branch,:street,:city,:state)
    #     end

end
