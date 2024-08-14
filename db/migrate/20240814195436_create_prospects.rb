class CreateProspects < ActiveRecord::Migration[7.2]
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :company_name
      t.string :linkedin_url

      t.timestamps
    end
  end
end
