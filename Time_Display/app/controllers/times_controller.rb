class TimesController < ApplicationController
    def main 
        @time = Time.now
        @local_time = @time.localtime
    end
end
