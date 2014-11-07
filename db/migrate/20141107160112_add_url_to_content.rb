class AddUrlToContent < ActiveRecord::Migration
  def change
    add_column :contents, :url, :string
  end
end
