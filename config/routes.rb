Rails.application.routes.draw do
  # get "/first_contact", controller: "contacts", action: "first_contact"
  get "/first_contact" => "contacts#first_contact"
  # get "/all_contacts", controller: "contacts", action: "all_contacts"
  get "/all_contacts" => "contacts#all_contacts"
end
