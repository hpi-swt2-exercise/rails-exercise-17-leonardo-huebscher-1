class AddPapersToAuthors < ActiveRecord::Migration
	def change
		add_column :authors, :paper_id, :has_many
	end
end
