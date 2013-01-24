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

ActiveRecord::Schema.define(:version => 20121217020606) do

  create_table "fastui_m_acl_entries", :force => true do |t|
    t.string   "aco_type",        :limit => 60, :default => ""
    t.integer  "aco_id",                        :default => 0
    t.string   "aro_type",        :limit => 60, :default => ""
    t.integer  "aro_id",                        :default => 0
    t.string   "permit",          :limit => 60, :default => ""
    t.string   "access_level",                  :default => ""
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "actived",                       :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_actions", :force => true do |t|
    t.string   "title"
    t.string   "event_type"
    t.string   "event_name"
    t.integer  "m_tab_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "fastui_m_actions", ["m_tab_id"], :name => "index_fastui_m_actions_on_m_tab_id"

  create_table "fastui_m_columns", :force => true do |t|
    t.integer  "m_tab_id"
    t.integer  "m_property_id"
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.integer  "width",                         :default => 35
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_datatypes", :force => true do |t|
    t.integer  "m_entity_id"
    t.string   "type"
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.string   "filter",                        :default => ""
    t.string   "access_level",                  :default => ""
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_entities", :force => true do |t|
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.string   "access_level",                  :default => ""
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_fields", :force => true do |t|
    t.integer  "m_tab_id"
    t.integer  "m_property_id"
    t.string   "title",           :limit => 60,                    :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.boolean  "is_display",                    :default => true
    t.boolean  "is_readonly",                   :default => false
    t.string   "entity_kind",                   :default => ""
    t.string   "default_logic",                 :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "fastui_m_list_items", :force => true do |t|
    t.integer  "m_list_id"
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_menu_items", :force => true do |t|
    t.integer  "m_menu_id"
    t.integer  "m_window_id"
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_menus", :force => true do |t|
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_orgs", :force => true do |t|
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.string   "type"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_people", :force => true do |t|
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.string   "login_name",      :limit => 60, :default => ""
    t.string   "login_password",  :limit => 60, :default => ""
    t.string   "type"
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_properties", :force => true do |t|
    t.integer  "m_entity_id"
    t.integer  "m_datatype_id"
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.string   "external_key",                  :default => ""
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_relationships", :force => true do |t|
    t.integer  "m_person_id"
    t.integer  "m_org_id"
    t.integer  "m_role_id"
    t.string   "type"
    t.string   "entity_kind",     :default => ""
    t.integer  "seq",             :default => 0
    t.boolean  "is_active",       :default => true
    t.integer  "createdbyorg_id", :default => 0
    t.integer  "createdby_id",    :default => 0
    t.integer  "updatedby_id",    :default => 0
    t.string   "help",            :default => ""
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "fastui_m_roles", :force => true do |t|
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "name",            :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "type"
    t.string   "access_level",                  :default => ""
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  create_table "fastui_m_tabs", :force => true do |t|
    t.integer  "m_window_id"
    t.integer  "m_entity_id"
    t.string   "title",           :limit => 60,                    :null => false
    t.string   "name",            :limit => 60, :default => ""
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.boolean  "is_readonly",                   :default => false
    t.integer  "included_tab_id",               :default => 0
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "fastui_m_windows", :force => true do |t|
    t.string   "title",           :limit => 60,                   :null => false
    t.string   "print_text",      :limit => 60, :default => ""
    t.string   "note",                          :default => ""
    t.string   "name",            :limit => 60, :default => ""
    t.string   "window_kind",                   :default => ""
    t.string   "entity_kind",                   :default => ""
    t.integer  "seq",                           :default => 0
    t.boolean  "is_active",                     :default => true
    t.integer  "createdbyorg_id",               :default => 0
    t.integer  "createdby_id",                  :default => 0
    t.integer  "updatedby_id",                  :default => 0
    t.string   "help",                          :default => ""
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

end
