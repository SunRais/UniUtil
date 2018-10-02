class NewDatabase < ActiveRecord::Migration[5.2]
  def change
	drop_table :posts
	drop_table :reviews
	
	add_column :courses, :typology, :string
	add_column :courses, :description, :text
	rename_column :courses, :nome, :name
	
	rename_column :subjects, :nome, :name
	rename_column :subjects, :descrizione, :description
	add_column :subjects, :duration, :integer
	add_column :subjects, :year, :integer
	add_column :subjects, :semester, :integer
	add_column :subjects, :user_id, :integer

	rename_column :users, :nome, :name
	rename_column :users, :cognome, :surname
	rename_column :users, :sesso, :sex
	rename_column :users, :numero_matricola, :badge_number
	rename_column :users, :indirizzo, :address
	rename_column :users, :citta, :city
	rename_column :users, :numero_telefono, :telephone_number
	rename_column :users, :is_professore, :is_professor
	
	create_table :appeals do |a|
	  a.datetime :date
	  a.string :place
	  a.text :note
	  a.string :classroom
	  a.string :is_partial
	  a.integer :subject_id
	  a.datetime :date_start_signing_up
	  a.datetime :date_stop_signing_up
	  a.timestamps null: false
	end
	
	create_table :results do |r|
	  r.integer :result
	  r.string :state
	  r.integer :subject_id
	  r.integer :user_id
	  r.string :is_confirmed
	  r.timestamps null: false
	end
	
	create_table :discussions do |d|
	  d.text :title
	  d.text :description
	  d.integer :user_id
	  d.timestamps null: false
	end
	
	create_table :comments do |c|
	  c.text :description
	  c.integer :discussion_id
	  c.integer :user_id
	  c.timestamps null: false
	end
	
	create_table :events do |e|
	  e.string :name
	  e.datetime :date
	  e.string :place
	  e.text :description
	  e.timestamps null: false
	end
	
	create_table :fees do |f|
	  f.integer :cost
	  f.datetime :deadline
	  f.integer :user_id
	  f.timestamps null: false
	end
	
	create_table :lessons do |l|
	  l.date :date
	  l.time :start_time
	  l.string :classroom
	  l.string :building
	  l.text :topic, null: true
	  l.integer :user_id
	  l.integer :subject_id
	  l.timestamps null: false
	end

	create_table :profiles do |l|
	  l.string :email
	  l.string :badge_number
	  l.string :code
	  l.integer :course_id
	  l.timestamps null: false
	end
  end
end
