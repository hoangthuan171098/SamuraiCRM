module Samurai
    class DashboardController < ApplicationController

        def index
            authorize! :read, Samurai::User
        end
    end
end
    