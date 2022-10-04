class CreateUserNotificationTimings < ActiveRecord::Migration[7.0]
  def change
    create_table :user_notification_timings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :notification_timing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
