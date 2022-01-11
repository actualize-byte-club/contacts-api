class ContactsController < ApplicationController

  def first_contact
    contact = Contact.first #single hash of contact data
    render json: contact.as_json
  end

  def all_contacts
    contacts = Contact.all #array of contact hashes
    render json: contacts.as_json
  end

end
