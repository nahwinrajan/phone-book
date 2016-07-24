class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.order("first_name ASC")
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params_permit)

    if @contact.save
      # => on success creation redirect back to index page
      redirect_to root_path
    else
      render 'new'
  end

  def update
  end

  def show
  end

  private

    def contact_params_permit
      params.require(:contact).permit(:first_name, :last_name, :job, :city,
        :country, :address_line1, :address_line1, :twitter_acc, :email,
        :phone);
    end
  end
end
