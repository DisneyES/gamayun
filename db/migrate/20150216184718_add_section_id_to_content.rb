class AddSectionIdToContent < ActiveRecord::Migration
  def change
    add_column :contents, :section_id, :integer
  end
end
