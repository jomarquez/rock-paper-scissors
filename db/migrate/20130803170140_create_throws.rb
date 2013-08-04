class CreateThrows < ActiveRecord::Migration
  def change
    create_table :throws do |t|
      t.string :choice
      t.string :computer_choice
      t.string :result
      t.timestamps
    end
  end
end
