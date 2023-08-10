class CreateRubbishes < ActiveRecord::Migration[7.0]
  def change
    create_table :rubbishes do |t|
      t.references :rubbish_type, null: false, foreign_key: true
      t.boolean :status
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
