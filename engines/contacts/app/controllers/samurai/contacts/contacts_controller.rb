require_dependency "samurai/contacts/application_controller"

module Samurai
  module Contacts
    class ContactsController < ApplicationController
      before_action :set_contact, only: [:show, :edit, :update, :destroy]

      def index
        @contacts = current_user.contacts
      end
      
      def show
        authorize! :manage, @contact
      end
      
      def new
        @contact = Contact.new
      end
      
      def edit
        authorize! :manage, @contact
      end
      
      def create
        @contact = Contact.new(contact_params)
        @contact.user = current_user
        if @contact.save
          # Add samurai to access the correct path
          redirect_to [samurai, @contact], notice: 'Contact was successfully created.'
        else
          render :new
        end
      end
      
      def update
        if @contact.update(contact_params)
          redirect_to [samurai, @contact], notice: 'Contact was successfully updated.'
        else
          render :edit
        end
      end
      
      def destroy
        authorize! :manage, @contact
        @contact.destroy
        # Add samurai to access the correct path
        redirect_to samurai.contacts_url, notice: 'Contact was successfully destroyed.'
      end
      
      private
        def set_contact
          @contact = Contact.find(params[:id])
        end
        
        def contact_params
        # Add the parameters we allow
        params.require(:contact).permit(:first_name, :last_name, :company, :email, :phone, :user_id)
        end

    end
  end
end
