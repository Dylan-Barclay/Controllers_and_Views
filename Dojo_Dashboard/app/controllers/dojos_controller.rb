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
    def edit
        @dojo = Dojo.find(params[:id])
    end


    def show
        @dojo = Dojo.find(params[:id])

    end

    def update
        dojo = Dojo.find(params[:id])
        dojo.update(dojo_params)
        dojo.save
        puts dojo.errors.full_messages if dojo.errors
        redirect_to ''
    end

    def destroy
        dojo = Dojo.find(params[:id])
        dojo.destroy
        redirect_to ''
    end

    private 
        def dojo_params
            params.require(:dojo).permit(:branch, :street, :city, :state)
        end

end
