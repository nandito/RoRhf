class CreateOraks < ActiveRecord::Migration
  def change
    create_table :oraks do |t|
      t.string :evad

      t.timestamps
    end
  end
end
