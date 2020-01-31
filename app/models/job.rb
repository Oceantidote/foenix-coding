class Job < ApplicationRecord
  belongs_to :country

  include PgSearch::Model
  pg_search_scope :search_jobs,
    against: [ :title, :job_type, :location, :team ],
    using: {
      tsearch: { prefix: true }
    }

  def self.search(query)
    if query.present?
      search_jobs(query)
    else
      order("created_at DESC")
    end
  end
end
