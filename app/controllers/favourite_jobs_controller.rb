class FavouriteJobsController < ApplicationController
  before_action :get_user
  before_action :set_favourite_job, only: [:show, :edit, :update, :destroy]

  def index
    @favourite_jobs = @user.favourite_jobs
    render json: { favourite_jobs: @favourite_jobs }
  end

  def create
    @favourite_job = @user.favourite_jobs.build(favourite_job_params)

    if @favourite_job.save
      render json: { status: :created, favourite_job: @favourite_job }
    else
      render json: { status: :unprocessable_entity }
    end
  end

  # PATCH/PUT /favourite_jobs/1
  # PATCH/PUT /favourite_jobs/1.json
  def update
    if @favourite_job.update(favourite_job_params)
      render json: { status: :ok, favourite_job: @favourite_job }
    else
      render json:{ status: :unprocessable_entity }
    end
  end

  # DELETE /favourite_jobs/1
  # DELETE /favourite_jobs/1.json
  def destroy
    @favourite_job.destroy
    render json: { status: 200, destroyed: true, favourite_job: @favourite_job }
  end

  private
    def get_user
      @user = User.find(params[:user_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_favourite_job
      @favourite_job = @user.favourite_jobs.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favourite_job_params
      params.require(:favourite_job).permit(:title, :salary, :description, :functions, :benefits, :remote, :city, :country, :seniority, :logo_url, :modality, :company_name, :company_description, :job_id, :user_id)
    end
end
