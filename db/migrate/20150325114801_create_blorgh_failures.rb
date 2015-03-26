class CreateBlorghFailures < ActiveRecord::Migration
  def change
    create_table :blorgh_failures do |t|
      t.text :message

      t.timestamps null: false
    end
  end
end
