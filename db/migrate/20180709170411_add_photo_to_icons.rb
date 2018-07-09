class AddPhotoToIcons < ActiveRecord::Migration[5.1]
  def change
    add_column :icons, :photo, :string
  end
end
