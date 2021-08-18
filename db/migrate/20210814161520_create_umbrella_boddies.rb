class CreateUmbrellaBoddies < ActiveRecord::Migration[6.0]
  def change
    create_table :umbrella_boddies do |t|
      t.string :organisation
      t.string :meetingDay
      t.string :feastDay
      t.string :patronSaint
      t.string :motto
      t.string :slogan

      t.timestamps
    end
  end
end
