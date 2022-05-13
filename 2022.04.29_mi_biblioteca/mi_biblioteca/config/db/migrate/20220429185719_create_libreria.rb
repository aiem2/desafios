class CreateLibreria < ActiveRecord::Migration[7.0]
  def change
    create_table :libreria do |t|
      t.string :title
      t.string :author
      t.string :status
      t.date :date_borrowed
      t.date :date_recieved

      t.timestamps
    end
  end
end
