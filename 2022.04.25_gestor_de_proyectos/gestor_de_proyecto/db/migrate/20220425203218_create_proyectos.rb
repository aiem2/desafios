class CreateProyectos < ActiveRecord::Migration[7.0]
  def change
    create_table :proyectos do |t|
      t.string :title
      t.text :description
      t.date :date_start
      t.date :date_end
      t.string :state

      t.timestamps
    end
  end
end
