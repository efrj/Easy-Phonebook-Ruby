require 'sinatra'
require 'sinatra/flash'
require_relative 'models/contact.rb'
require_relative 'helpers/contacts_helper.rb'

enable :sessions

get '/' do
  erb :index
end

post '/contact/save' do
  contact = Contact.new
  if params[:letter_contact] and params[:xml_file]
    contact.dropFile params[:letter_contact], params[:xml_file]
  end

  new_contact = contact.save(params[:contact_name],
    params[:contact_email],
    params[:contact_birthdate],
    params[:contact_phone_number])

  flash[:notice] = 'The contact was saved successfully.'
  redirect '/letter/' << new_contact
end

get '/letter/:letter' do
  contacts = Contact.new
  @files = contacts.findAll params[:letter]
  @letter = params[:letter]
  erb :list
end

get '/contact/show/:letter/:file' do
  @letter_contact = params[:letter]
  xml_file = params[:file]
  contact = Contact.new
  @file = contact.find @letter_contact, xml_file
  erb :show, :layout => false do
    erb :show
  end
end

get '/contact/delete/:letter/:file' do
  contact = Contact.new
  contact.dropFile params[:letter], params[:file]
  flash[:notice] = 'The contact was deleted successfully.'
  redirect '/letter/' << params[:letter]
end