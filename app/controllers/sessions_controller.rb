class SessionsController < ApplicationController

  def create
    contact = Contact.where(email: params[:email]).first
    if contact&.valid_password?(params[:password])
      contact.save
      render json: contact.as_json(only: [:id, :authentication_token]), status: :created
    else
      head(:unauthorized)
    end
  end
end