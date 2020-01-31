class Admin::JobsController < ApplicationController
  before_action :set_job, only: [:edit, :update, :destroy]

  def new
    @job = Job.new
    authorize @job
  end

  def create
    @job = Job.new(job_params)
    @job.text1 = params[:text1]
    @job.text2 = params[:text2]
    @job.country = Country.find(params[:job][:country_id])
    if @job.save
      redirect_to jobs_path
    else
      raise
      render :new
    end
    authorize @job
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to jobs_path
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to jobs_path
  end

  private

  def set_job
    @job = Job.find(params[:id])
    authorize @job
  end

  def job_params
    params.require(:job).permit(:title,
                                :team,
                                :location,
                                :job_type,
                                :text1,
                                :text2,
                                :expectation1,
                                :expectation2,
                                :expectation3,
                                :expectation4,
                                :expectation5,
                                :expectation6,
                                :expectation7,
                                :expectation8,
                                :expectation9,
                                :expectation10,
                                :responsibility1,
                                :responsibility2,
                                :responsibility3,
                                :responsibility4,
                                :responsibility5,
                                :responsibility6,
                                :responsibility7,
                                :responsibility8,
                                :responsibility9,
                                :responsibility10
                                )
  end
end
