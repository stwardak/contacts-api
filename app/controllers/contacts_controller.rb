class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render template: "contacts/index"
  end
  
  def show
    @contact = Contact.first
    render template: "contacts/show"
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      address: params[:address],
      latitude: params[:latitude],
      longitude: params[:longitude],
    )
  end
end