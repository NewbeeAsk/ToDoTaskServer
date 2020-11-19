require 'rails_helper'

RSpec.describe TodoController, type: :controller do
  context "todo actions" do
    it 'returns a success response' do
      contact = Contact.create(email: 'test554545445@gamil.com', password: '123456789', password_confirmation: '123456789')
      contact.to_do_items.create(title: 'qweqweqwe')
      get :show, params: {id: contact.id}
      expect(response.status).to eq(201)
    end
    it 'returns a success response' do
      contact = Contact.create(email: 'test554545445@gamil.com', password: '123456789', password_confirmation: '123456789')
      post :create, params: {contact_id: contact.id, priority: 1, title: 'q1weqweqwe'}
      expect(response.status).to eq(201)
    end
    it 'returns a success response' do
      contact = Contact.create(email: 'test554545445@gamil.com', password: '123456789', password_confirmation: '123456789')
      todoitem = contact.to_do_items.create(title: 'qweqweqwe')
      patch :update, params: {contact_id: contact.id, id: todoitem.id, priority: 1, title: 'q1weqweqwe'}
      expect(response.status).to eq(201)
    end
    it 'returns a success response' do
      contact = Contact.create(email: 'test554545445@gamil.com', password: '123456789', password_confirmation: '123456789')
      todoitem = contact.to_do_items.create(title: 'qweqweqwe')
      delete :destroy, params: {id: todoitem.id}
      expect(response.status).to eq(200)
    end
  end
end
