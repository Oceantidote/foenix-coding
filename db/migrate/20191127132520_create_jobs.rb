class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :country, foreign_key: true
      t.string :location
      t.string :title
      t.string :job_type
      t.string :text1
      t.string :text2
      t.string :expectation1
      t.string :expectation2
      t.string :expectation3
      t.string :expectation4
      t.string :expectation5
      t.string :expectation6
      t.string :expectation7
      t.string :expectation8
      t.string :expectation9
      t.string :expectation10
      t.string :responsibility1
      t.string :responsibility2
      t.string :responsibility3
      t.string :responsibility4
      t.string :responsibility5
      t.string :responsibility6
      t.string :responsibility7
      t.string :responsibility8
      t.string :responsibility9
      t.string :responsibility10

      t.timestamps
    end
  end
end
