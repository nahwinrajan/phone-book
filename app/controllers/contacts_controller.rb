class ContactsController < ApplicationController
  before_action :find_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all.order("first_name ASC")
  end

  def new
    @contact = (flash[:contact]) ? flash[:contact] : Contact.new
    # @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to root_path
    else
      flash[:contact] = @contact
      redirect_to new_contact_path
      # render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @contact.update(contact_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @contact.destroy
      redirect_to root_path
  end

  private
  def find_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :job, :phone,
      :email, :twitter_acc, :address_line1, :address_line2, :city, :country);
  end
end
