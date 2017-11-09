class HelperListsController < ApplicationController

layout "admin"

  before_action :confirm_logged_in
  before_action :find_subject

def index
#  @helperlists = HelperList.sorted
  @helperlists = @helpertable.helper_lists.sorted
end

def show
  @helperlist = HelperList.find(params[:id])
end

def new
  @helperlist = HelperList.new({:helper_table_id => @helpertable.id , :first_name => "Default"})
  @helpertables = HelperTable.order('position ASC')
  @helperlist_count = HelperTable.count + 1
end

def create
  @helperlist = HelperList.new(helperlist_params)
  if @helperlist.save
    flash[:notice] = "Entry created successfully."
    redirect_to(:action => 'index' , :helper_table_id => @helpertable.id)
  else
    @helpertables = HelperTable.order('position ASC')
    @helperlist_count = HelperTable.count + 1
    render('new')
  end
end

def edit
  @helperlist = HelperList.find(params[:id])
  @helpertables = HelperTable.order('position ASC')
  @helperlist_count = HelperTable.count
end

def update
  @helperlist = HelperList.find(params[:id])
  if @helperlist.update_attributes(helperlist_params)
    flash[:notice] = "List updated successfully."
    redirect_to(:action => 'show', :id => @helperlist.id , :helper_table_id => @helpertable.id)
  else
    @helpertables = HelperTable.order('position ASC')
    @helperlist_count = HelperTable.count
    render('edit')
  end
end

def delete
  @helperlist = HelperList.find(params[:id])
end

def destroy
  helperlist = HelperList.find(params[:id]).destroy
  flash[:notice] = "Entry deleted successfully."
  redirect_to(:action => 'index' , :helper_table_id => @helpertable.id)
end


private

  def helperlist_params
    params.require(:helperlist).permit(:helper_table_id, :first_name, :last_name, :position, :rating, :company_name, :mobile,:address,:created_at)
  end

  def find_subject
    if params[:helper_table_id]
      @helpertable = HelperTable.find(params[:helper_table_id])
  end
 end
end
