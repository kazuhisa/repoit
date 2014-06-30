class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :title
      t.binary :data,
      t.timestamps
    end
  end
end
