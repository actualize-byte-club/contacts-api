class ContactsController < ApplicationController

  def index
    contacts = Contact.all #array of contact hashes
    render json: contacts.as_json
  end

  def show
    contact = Contact.find(params[:id]) #single hash of contact data
    render json: contact.as_json
  end

  def update
    contact = Contact.find(params[:id])
    if params[:address]
      coordinates = Geocoder.coordinates(params[:address])
      contact.latitude = coordinates[0]
      contact.longitude = coordinates[1]
    end
    contact.first_name = params[:first_name] || contact.first_name
    contact.last_name = params[:last_name] || contact.last_name
    contact.email = params[:email] || contact.email
    contact.phone_number = params[:phone_number] || contact.phone_number
    contact.save
    render json: contact.as_json
  end

end
