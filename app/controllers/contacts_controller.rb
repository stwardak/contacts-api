class ContactsController < ApplicationController
  def show_contact
    contact = Contact.first
    render json: {
      id: contact.id,
      first_name: contact.first_name,
      last_name: contact.last_name,
      email: contact.email,
      phone_number: contact.phone_number
    }
  end
  def show_all_contacts
    all_contacts = Contact.all
    render json: all_contacts
  end
end
