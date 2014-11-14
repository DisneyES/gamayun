class AddPublishedToContent < ActiveRecord::Migration
  def change
    add_column :contents, :published, :boolean, default: false
  end
end
