class ChangeBooleanColumnNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :email_reminder?, :email_reminder
    rename_column :users, :sms_reminder?, :sms_reminder
    rename_column :users, :admin?, :admin
  end
end
