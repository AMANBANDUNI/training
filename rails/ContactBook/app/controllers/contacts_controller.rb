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
  	  redirect_to contacts_path, notice: "New Contact Created succefully"
  	else
  	  render new
  	end
  end

  def edit 
  end

  def update
  end

  def destroy
  end

  private

  def contact_params
  	params.require(:contact).permit(:name,:email,:phone_number,:address,:image).merge(user_id: current_user.id)
  end

end