# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130126230249) do

  create_table "brains", :force => true do |t|
    t.integer  "project_id"
    t.string   "status"
    t.string   "flavor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "brains", ["project_id"], :name => "index_brains_on_project_id"

  create_table "etiquetas", :force => true do |t|
    t.integer  "project_id"
    t.string   "label"
    t.string   "images"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "etiquetas", ["project_id"], :name => "index_etiquetas_on_project_id"

  create_table "likes", :force => true do |t|
    t.integer  "project_id"
    t.integer  "likes"
    t.integer  "views"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "likes", ["project_id"], :name => "index_likes_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "fecha"
    t.string   "image"
    t.string   "link_url"
    t.boolean  "commercial"
    t.string   "label"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tags", :force => true do |t|
    t.integer  "project_id"
    t.string   "tag_label"
    t.string   "image_reference"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
