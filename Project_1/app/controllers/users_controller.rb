class UsersController < ApplicationController

    def hello
        p 'Hello'
    end

    def say
        p 'saying hello'
    end

    def joe

    end
    def michael
        redirect_to '/say/hello/joe'
    end



end
