class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @jobs = policy_scope(Job)
    @countries = Country.all
    @teams = Job.all.map { |j| j.team }.uniq
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

      # Country Filter
      if params[:search][:country] != ''
        @set = @set.where(country: Country.find(params[:search][:country]))
      end

      # Job Type Filter
      if params[:search][:job_type] != ''
        @set = @set.where(job_type: params[:search][:job_type])
      end

      #Team filter
      if params[:search][:team] != ''
        @set = @set.where(team: params[:search][:team])
      end

      # Search
      @results = @set.search(params[:search][:name])
    end
  end
end
