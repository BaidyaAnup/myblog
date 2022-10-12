class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    
    if @page.save
      redirect_to @page
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @page = Page.find_by_id(params[:id])
  end

  def update
  end

  def destroy
    @page = Page.find_by_id(params[:id])
    @page.destroy
    redirect_to root_path status: 200
  end

  private

  def page_params
    params.require(:page).permit(:about, :contact, :skills, :work_experience, :hobbies, :education)
  end
end
