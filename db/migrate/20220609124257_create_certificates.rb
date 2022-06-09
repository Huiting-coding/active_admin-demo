class CreateCertificates < ActiveRecord::Migration[6.0]
  def change
    create_table :certificates do |t|
      t.string :name
      t.string :number
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
