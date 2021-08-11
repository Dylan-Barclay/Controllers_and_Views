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

    def counter
        if session[:counter]
            session[:counter] += 1
        else
            session[:counter] = 1
        end
    end
    
    def restart
        session[:counter] = 0
        redirect_to "/times"
    end

end
