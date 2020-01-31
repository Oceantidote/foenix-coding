class AddTeamToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :team, :string, default: "Sales"
    remove_column :jobs, :job_type
    add_column :jobs, :job_type, :string, default: "Full Time"
  end
end
