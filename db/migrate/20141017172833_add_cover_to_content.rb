class AddCoverToContent < ActiveRecord::Migration
  def change
    add_column :contents, :cover, :string
  end
end
