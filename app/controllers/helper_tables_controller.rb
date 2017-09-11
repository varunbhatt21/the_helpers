class HelperTablesController < ApplicationController

 layout "admin"

  before_action :confirm_logged_in

  def index
    @helpertables = HelperTable.sorted
  end

  def show
    @helpertable = HelperTable.find(params[:id])
  end

  def new
    @helpertable= HelperTable.new({:name => "Default"})
    @helpertable_count = HelperTable.count + 1
  end


  def create
   @helpertable = HelperTable.new(helpertable_params)
   if @helpertable.save
       flash[:notice] = "Profession Created Successfully"
       redirect_to(:action => 'index')
   else
     @helpertable_count = HelperTable.count + 1
      render('new')
    end
  end

  def edit
      @helpertable = HelperTable.find(params[:id])
      @helpertable_count = HelperTable.count
  end

  def update
   @helpertable = HelperTable.find(params[:id])
   if @helpertable.update_attributes(helpertable_params)
     flash[:notice] = "Profession Updated Successfully"
       redirect_to(:action => 'show' , :id => @helpertable.id)
   else
      @helpertable_count = HelperTable.count
      render('edit')
    end
  end

  def delete
    @helpertable = HelperTable.find(params[:id])
  end 

  def destroy
    helpertable = HelperTable.find(params[:id]).destroy
    flash[:notice] = "Profession '#{helpertable.name}' Destroyed Successfully"
    redirect_to(:action => 'index')

  end

  private

    def helpertable_params
       params.require(:helpertable).permit(:name, :position , :created_at)
    end
end
