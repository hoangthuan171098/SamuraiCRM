module Samurai
    module Admin
        class AdminController < ApplicationController

            def index
                authorize! :manage, Samurai::User
            end
        
        end
    end
end