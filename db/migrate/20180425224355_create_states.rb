class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.text :content

      t.timestamps
    end
  end
end
