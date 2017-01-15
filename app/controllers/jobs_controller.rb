class JobsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def show
    @job = Job.find(params[:id])
    if @job.is_hidden
      flash[:warning] = "This Job already archieved"
      redirect_to root_path
    end
  end

  def index
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.published.order('wage_lower_bound DESC')
            when 'by_upper_bound'
              Job.published.order('wage_upper_bound DESC')
            when 'by_category1'
              Job.where(:category => "category1").recent
            when 'by_category2'
              Job.where(:category => "category2").recent
            when 'by_category3'
              Job.where(:category => "category3").recent
            when 'by_category4'
              Job.where(:category => "category4").recent
            when 'by_category5'
              Job.where(:category => "category5").recent
            when 'by_category6'
              Job.where(:category => "category6").recent
            when 'by_category7'
              Job.where(:category => "category7").recent
            when 'by_category8'
              Job.where(:category => "category8").recent
            else
              Job.published.recent
            end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to root_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:alert] = "Job deleted"
    redirect_to root_path
  end

  def search
    @search = Job.search do
      fulltext params[:search]
    end
    @jobs = @search.results
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :wage_lower_bound, :wage_upper_bound, :contact_email, :is_hidden, :category, :company, :city)
  end
end
