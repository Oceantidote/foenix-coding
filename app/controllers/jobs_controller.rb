class JobsController < ApplicationController
  def index
    @jobs = policy_scope(Job)
    @countries = Country.all
    @types = Job.all.map { |j| j.job_type }.uniq
    authorize @jobs
    pg_search
  end

  def show
    @job = Job.find(params[:id])
    authorize @job
  end

  private

  def pg_search
    if params[:search]
      @set = Job.all
      if params[:search][:country] != ''
        @set = @set.where(country: Country.find(params[:search][:country]))
      end
      if params[:search][:job_type] != ''
        @set = @set.where(job_type: params[:search][:job_type])
      end
      @results = @set.search(params[:search][:name])
    end
  end
end
