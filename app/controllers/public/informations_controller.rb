class Public::InformationsController < ApplicationController
  def term
  end

  def privacy
  end

  def contact
    @contact = Contact.new
    if verify_recaptcha(model: @contact) && @contact.save
      redirect_to @contact
    else
      render 'contact'
    end
  end

  def completed
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ::ContactMailer.contact_mail(@contact).deliver
      redirect_to completed_informations_path
    else
      flash[:alert] = "もう一度入力してください"
      redirect_to contact_informations_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :name_kana, :company, :department, :email, :phone_number, :body, :agreement)
  end
end
