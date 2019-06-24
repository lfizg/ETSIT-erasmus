class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :signed_acceptance_letter_file_name, :varchar
    add_column :users, :signed_acceptance_letter_content_type, :varchar
    add_column :users, :signed_acceptance_letter_file_size, :integer
    add_column :users, :signed_acceptance_letter_updated_at, :timestamp
  end
end
