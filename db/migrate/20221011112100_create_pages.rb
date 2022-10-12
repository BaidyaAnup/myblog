class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.text :about
      t.text :skills
      t.text :education
      t.text :contact
      t.text :work_experience
      t.text :hobbies

      t.timestamps
    end
  end
end
