class AddPosterToContent < ActiveRecord::Migration
  def change
    add_column :contents, :poster, :string
  end
end
