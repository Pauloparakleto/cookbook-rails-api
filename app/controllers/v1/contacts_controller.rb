class V1::ContactsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    def index
        @contacts = Contact.all
        render json: @contacts, status: :ok
    end

    def show
        @contact = Contact.find(params[:id])
        if @contact
            render json: @contact, status: :ok 
        else
            record_not_found           
        end
    end

    def create
        @contact = Contact.new(contact_params)
        @contact.save
        render json: @contact, status: :created
    end

    def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy
        head(:no_content) 
    end

    private

    def contact_params
        params.require(:contact).permit(:first_name, :last_name, :email)
    end

    def record_not_found
        head :no_content
    end
end
