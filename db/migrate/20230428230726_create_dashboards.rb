class CreateDashboards < ActiveRecord::Migration[7.0]
  def change
    create_table :dashboards, id: :uuid do |t|

      t.timestamps
    end
  end
end
