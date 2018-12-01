# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false
      t.string :encrypted_password, null: false
      t.string :nome,               null: false
      t.string :cognome,            null: false
      t.string :sesso,              null: false
      t.string :numero_matricola,   null: true
      t.string :indirizzo,          null: false
      t.string :citta,              null: false
      t.string :numero_telefono,    null: false
      t.boolean :is_admin,           null: false, default: false
      t.boolean :is_professore,      null: false, default: false
      t.string :province,           null: false
      #t.integer :course_id,         null: true
      #t.integer :degree_appeals_id, null: false, default: "0"

      
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      #t.integer  :sign_in_count, default: 0, null: false
      #t.datetime :current_sign_in_at
      #t.datetime :last_sign_in_at
      #t.string   :current_sign_in_ip
      #t.string   :last_sign_in_ip

      ##Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      #t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                  unique: true
    add_index :users, :reset_password_token,   unique: true
    add_index :users, :confirmation_token,     unique: true
    #add_index :users, :unlock_token,          unique: true
  end
end
