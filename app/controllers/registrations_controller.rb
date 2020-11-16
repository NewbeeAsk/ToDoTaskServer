class RegistrationsController < ApplicationController

  def create
    registration = Contact.create(first_name: params[:first_name], last_name: params[:last_name],
                                  email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
      render json: registration.as_json(only: [:email]), status: :created
  end
end