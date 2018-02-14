class AddPictureToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :picture, :string
  end
end
