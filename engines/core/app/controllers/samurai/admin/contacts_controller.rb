module Samurai
    module Admin
        class ContactsController < ApplicationController
            def index
                @contacts = Samurai::Contacts::Contact.all
            end
        end
    end
end