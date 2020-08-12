module Samurai
    module Admin
        class UsersController < ApplicationController
            def index
                @users = Samurai::User.ordered
            end
        end
    end
end