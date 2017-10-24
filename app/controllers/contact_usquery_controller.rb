class ContactUsqueryController < ApplicationController

  layout false , only: [:view, :show]

  def contact_query
    @contactus = Contact.new(contact_params)
    params[:cposition] = params[:id].to_i
    flash[:notice]="Mai chl gya"
    if @contactus.save
      ContactusMailer.new_contactus(@contactus).deliver_now
      @contactus.cemail="apnahelper@gmail.com"
      ContactusMailer.new_contactus(@contactus).deliver_now
      redirect_to(:action => 'show',:id => @contactus.id)
    else
      #render('index')
    end
  end


  def save
    @contactus = Contact.new(contact_params)
    @contactus.save
  end

  def view
    @contactus = Contact.sorted
  end

  def show
    @contactus = Contact.find(params[:id])
  end

  def delete
    contactus = Contact.find(params[:id]).destroy
    flash[:notice] = "Request '#{contactus.fname}' Destroyed Successfully"
    redirect_to(:action => 'view')
  end


  private

    def contact_params
      params.require(:contactus).permit(:fname ,:lname , :cemail ,:cposition,:cmobile,:description)
    end

  end
