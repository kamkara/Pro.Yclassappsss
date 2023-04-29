class CreateStatuts < ActiveRecord::Migration[7.0]
  def change
    create_table :statuts, id: :uuid do |t|
      t.string :title, null: false
      t.string :slug, null: false
      t.belongs_to :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
