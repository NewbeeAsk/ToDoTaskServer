require 'rails_helper'

RSpec.describe Contact, type: :model do
  context 'validation tests' do
    it 'ensures first and last name presence' do
      contact = Contact.create(email: 'test1@gmail.com', password: '123456test', "password_confirmation": "123456test").save
      expect(contact).to eq(true)
    end

    it 'ensures password confirmation presence' do
      contact = Contact.create(email: 'test1@gmail.com', password: '123456test').save
      expect(contact).to eq(false)
    end

    it 'ensures password presence' do
      contact = Contact.create(email: 'test1@gmail.com', password_confirmation: '123456test').save
      expect(contact).to eq(false)
    end

    it 'ensures email presence' do
      contact = Contact.create(first_name: "test", last_name: "test", password: '123456test', "password_confirmation": "123456test").save
      expect(contact).to eq(false)
    end

    it 'all params are exist' do
      contact = Contact.create(first_name: "test222", last_name: "test222", email: 'test12@gmail.com', password: '123456test',
                               "password_confirmation": "123456test").save
      expect(contact).to eq(true)
    end
  end
end