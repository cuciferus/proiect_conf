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

ActiveRecord::Schema.define(:version => 20110606124605) do

  create_table "bcrs", :force => true do |t|
    t.date     "data"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "capds", :force => true do |t|
    t.date     "data"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centrus", :force => true do |t|
    t.string   "nume"
    t.integer  "protocol_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diabets", :force => true do |t|
    t.date     "data"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hemo_lunars", :force => true do |t|
    t.date     "data"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "hemoglobina"
    t.float    "hematocrit"
    t.float    "hematii"
    t.float    "leucocite"
    t.float    "trombocite"
    t.float    "uree"
    t.float    "creatinina"
    t.float    "sodiu"
    t.float    "potasiu"
    t.float    "tgo"
    t.float    "tgp"
    t.float    "glicemie"
    t.float    "calciu"
    t.float    "fosfor"
    t.float    "inr"
  end

  create_table "hemo_semestrials", :force => true do |t|
    t.date     "data"
    t.float    "aghbs"
    t.float    "achbs"
    t.float    "achcv"
    t.float    "achiv"
    t.float    "pth"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hemodializas", :force => true do |t|
    t.date     "data"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "hemoglobina"
    t.float    "hematocrit"
    t.float    "hematii"
    t.float    "leucocite"
    t.float    "trombocite"
    t.float    "uree"
    t.float    "creatinina"
    t.float    "sodiu"
    t.float    "potasiu"
    t.float    "tgo"
    t.float    "tgp"
    t.float    "glicemie"
    t.float    "calciu"
    t.float    "fosfor"
    t.float    "fier_seric"
    t.float    "colesterol"
    t.float    "lipide"
    t.float    "trigliceride"
    t.float    "ctlf"
    t.float    "inr"
    t.float    "aptt"
    t.float    "ap"
    t.float    "fibrinogen"
    t.float    "tquick"
    t.float    "proteine_serice"
    t.float    "hemoglobina_glicozilata"
    t.float    "saturarea_transferinei"
    t.float    "pcr"
    t.float    "urr"
    t.float    "ektv"
    t.float    "fosfataza_alcalina"
    t.float    "albumina"
    t.float    "alfa1"
    t.float    "alfa2"
    t.float    "beta"
    t.float    "gamma"
    t.float    "aghbs"
    t.float    "achbs"
    t.float    "achcv"
    t.float    "achiv"
    t.float    "pth"
    t.float    "greutate"
    t.integer  "sga"
    t.integer  "tas"
    t.integer  "tad"
    t.float    "indice_b_mortalitate"
    t.float    "spitalizare"
    t.integer  "vit_d"
    t.integer  "binder_fosfor"
    t.integer  "epo_saptamana"
    t.integer  "durata_hd"
    t.float    "heparina_dializa"
  end

  create_table "pacients", :force => true do |t|
    t.string   "nume"
    t.string   "prenume"
    t.integer  "cnp"
    t.date     "data_integrarii"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "protocols", :force => true do |t|
    t.date     "data"
    t.integer  "pacient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "centru"
    t.string   "program"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "nume"
    t.string   "prenume"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
