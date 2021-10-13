class CreateDons < ActiveRecord::Migration[5.2]
  def change
    create_table :dons do |t|
      t.string :name
      t.string :tel_num
      t.float :summ

      t.timestamps
    end
  end
end
