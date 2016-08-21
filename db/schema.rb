# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_160_816_200_409) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'authentication_tokens', force: :cascade do |t|
    t.string   'body'
    t.integer  'user_id'
    t.datetime 'last_used_at'
    t.string   'ip_address'
    t.string   'user_agent'
    t.datetime 'created_at',   null: false
    t.datetime 'updated_at',   null: false
    t.index ['user_id'], name: 'index_authentication_tokens_on_user_id', using: :btree
  end

  create_table 'customers', force: :cascade do |t|
    t.string   'full_name'
    t.string   'email'
    t.string   'phone'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string   'email'
    t.string   'password_digest'
    t.datetime 'created_at',      null: false
    t.datetime 'updated_at',      null: false
    t.index ['email'], name: 'index_users_on_email', using: :btree
  end

  add_foreign_key 'authentication_tokens', 'users'
end