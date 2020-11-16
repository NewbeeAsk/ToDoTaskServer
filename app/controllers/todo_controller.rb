class TodoController < ApplicationController

  def create
    toDoItem = Contact.find_by(id: params[:contact_id])
                   .to_do_items
                   .create(title: params[:title], description: params[:description], priority: params[:priority], done: params[:done])
    render json: toDoItem.as_json(), status: :created
  end

  def destroy
    ToDoItem.find_by(id: params[:id]).destroy
    render  json: ToDoItem.find_by(id: 1), status: :ok
  end

  def update
    Contact.find_by(id: params[:contact_id]).to_do_items.find_by(id: params[:id]).update(title: params[:title], description: params[:description], priority: params[:priority], done: params[:done], due_date: params[:due_date])
    render json: Contact.find_by(id: params[:contact_id]).to_do_items.find_by(id: params[:id]).as_json(), status: :created
  end
  
  def show
    toDoItems = Contact.find_by(id: params[:id]).to_do_items.all
    render json: toDoItems.as_json(), status: :created
  end
end
