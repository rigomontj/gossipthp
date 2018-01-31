class CreateRumors < ActiveRecord::Migration[5.1]
  def change
    create_table :rumors do |t|
      t.string :a_author
      t.string :content

      t.timestamps
    end
  end
end
