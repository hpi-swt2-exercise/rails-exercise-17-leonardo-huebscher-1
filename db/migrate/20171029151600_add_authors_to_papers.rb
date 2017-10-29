class AddAuthorsToPapers < ActiveRecord::Migration
	def change
		add_column :papers, :author_id, :has_many
	end
end
