class ContactsController < ApplicationController
  # before_action :contact_params
  # skip_before_action :verify_authenticity_token

  def index
  	@contacts = current_user.contacts
  end

  def show
  	@contact = Contact.find(params[:id])
  end

  def new
  	@contact = Contact.new
  end

  def create
  	if Contact.create!(contact_params)
  	  redirect_to contacts_path, notice: "New Contact Created successfully"
  	else
  	  render :new
  	end
  end

  def edit 
  	@contact = Contact.find(params[:id])
  end

  def update
  	@contact = Contact.find(params[:id])
  	if @contact.update(contact_params)
  	  redirect_to contacts_path, notice: "Contact Updated successfully"
  	else
  	  render :edit
  	end
  end

  def destroy
  	@contact = Contact.find(params[:id])
  	@contact.destroy
  	redirect_to contacts_path, notice: "Contact deleted successfully"
  end

  private

  def contact_params
  	params.require(:contact).permit(:name,:email,:phone_number,:address,:image).merge(user_id: current_user.id)
  end

end