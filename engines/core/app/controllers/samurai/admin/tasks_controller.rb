module Samurai
    module Admin
        class TasksController < ApplicationController
            def index
                @tasks = Samurai::Tasks::Task.all
            end
        end
    end
end