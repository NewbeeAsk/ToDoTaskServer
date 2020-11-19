class Devise::RegistrationsController < ApplicationController

  def create
    registration = Contact.create(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation],
                                  first_name: params[:first_name], last_name: params[:last_name])
    render json: registration.as_json(only: [:email]), status: :created
  end
end