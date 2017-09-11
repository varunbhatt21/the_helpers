class HelperRequestController < ApplicationController

  def index
    @helperreq = HelperRequest.new
  end

  def show

    @helperreq = HelperRequest.find(params[:id])

  end

  def new
    @helperreq = HelperRequest.new
  end

  def create
     @helperreq = HelperRequest.new(helperrequest_params)
     params[:position] = params[:id].to_i
     if @helperreq.save
  #     BookingMailer.new_booking(@helperreq).deliver_now
  #     @helperreq.email="varunbhatt21@gmail.com"
  #     BookingMailer.new_booking(@helperreq).deliver_now
       redirect_to(:action => 'show',:id => @helperreq.id)
     else
       render('index')
     end
  end

  def delete
    helperreq = HelperRequest.find(params[:id]).destroy
    flash[:notice] = "Profession '#{helperreq.name}' Destroyed Successfully"
    redirect_to(:action => 'view')
  end

  def save
    @helperreq = HelperRequest.new(helperrequest_params)
    @helperreq.save
  end

  def update
    @helperreq = HelperRequest.find(params[:id])
    if @helperreq.update_attributes(helperrequest_params)
      redirect_to(:action => 'show', :id => @helperreq.id)
    else
      render('index')
    end
  end

  def view
    @helperreq = HelperRequest.sorted
  end


  private

    def helperrequest_params
       params.require(:helperreq).permit(:name ,:service,:address,:mobile,:email,:date,:time,:position,:Status)
    end

end