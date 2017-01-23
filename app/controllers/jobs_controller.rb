class JobsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :validate_search_key, only: [:search]

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
              Job.published.lower_salary.paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
              Job.published.upper_salary.paginate(:page => params[:page], :per_page => 5)
            else
              Job.published.recent.paginate(:page => params[:page], :per_page => 5)
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
    if @query_string.present?
      search_result = Job.ransack(@search_criteria).result(:distinct => true)
      @jobs = search_result.recent.paginate(:page => params[:page], :per_page => 5 )
    end
  end

  def developer
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.published.where(:category => "developer").lower_salary.paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
              Job.published.where(:category => "developer").upper_salary.paginate(:page => params[:page], :per_page => 5)
            else
              Job.published.where(:category => "developer").recent.paginate(:page => params[:page], :per_page => 5)
            end
  end

  def healthcare
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.published.where(:category => "healthcare").lower_salary.paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
              Job.published.where(:category => "healthcare").upper_salary.paginate(:page => params[:page], :per_page => 5)
            else
              Job.published.where(:category => "healthcare").recent.paginate(:page => params[:page], :per_page => 5)
            end
  end

  def customer_service
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.published.where(:category => "customer-service").lower_salary.paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
              Job.published.where(:category => "customer-service").upper_salary.paginate(:page => params[:page], :per_page => 5)
            else
              Job.published.where(:category => "customer-service").recent.paginate(:page => params[:page], :per_page => 5)
            end
  end

  def sales_marketing
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.published.where(:category => "sales-marketing").lower_salary.paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
              Job.published.where(:category => "sales-marketing").upper_salary.paginate(:page => params[:page], :per_page => 5)
            else
              Job.published.where(:category => "sales-marketing").recent.paginate(:page => params[:page], :per_page => 5)
            end
  end

  def legal
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.published.where(:category => "legal").lower_salary.paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
              Job.published.where(:category => "legal").upper_salary.paginate(:page => params[:page], :per_page => 5)
            else
              Job.published.where(:category => "legal").recent.paginate(:page => params[:page], :per_page => 5)
            end
  end

  def non_profit
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.published.where(:category => "non-profit").lower_salary.paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
              Job.published.where(:category => "non-profit").upper_salary.paginate(:page => params[:page], :per_page => 5)
            else
              Job.published.where(:category => "non-profit").recent.paginate(:page => params[:page], :per_page => 5)
            end
  end

  def human_resource
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.published.where(:category => "human-resource").lower_salary.paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
              Job.published.where(:category => "human-resource").upper_salary.paginate(:page => params[:page], :per_page => 5)
            else
              Job.published.where(:category => "human-resource").recent.paginate(:page => params[:page], :per_page => 5)
            end
  end

  def design
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.published.where(:category => "design").lower_salary.paginate(:page => params[:page], :per_page => 5)
            when 'by_upper_bound'
              Job.published.where(:category => "design").upper_salary.paginate(:page => params[:page], :per_page => 5)
            else
              Job.published.where(:category => "design").recent.paginate(:page => params[:page], :per_page => 5)
            end
  end

  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "")
    if params[:q].present?
      @search_criteria =  {
        title_or_company_or_city_cont: @query_string
      }
    end
  end


  def search_criteria(query_string)
    { :title_cont => query_string }
  end

  def render_highlight_content(job,query_string)
    excerpt_cont = excerpt(job.title, query_string, radius: 500)
    highlight(excerpt_cont, query_string)
  end

  private

  def job_params
    params.require(:job).permit!(:title, :description, :wage_lower_bound, :wage_upper_bound, :contact_email, :is_hidden, :category, :company, :city)
  end
end
