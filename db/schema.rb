# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_27_221828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "asanas", force: :cascade do |t|
    t.string "translation"
    t.bigint "family_id", null: false
    t.text "advanced_actions"
    t.text "connections"
    t.text "observe"
    t.text "benefits"
    t.text "caution"
    t.text "contraindications"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["family_id"], name: "index_asanas_on_family_id"
  end

  create_table "asanas_movements", force: :cascade do |t|
    t.bigint "asana_id", null: false
    t.bigint "movement_id", null: false
    t.index ["asana_id"], name: "index_asanas_movements_on_asana_id"
    t.index ["movement_id"], name: "index_asanas_movements_on_movement_id"
  end

  create_table "asanas_words", force: :cascade do |t|
    t.bigint "asana_id", null: false
    t.bigint "word_id", null: false
    t.index ["asana_id"], name: "index_asanas_words_on_asana_id"
    t.index ["word_id"], name: "index_asanas_words_on_word_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "content_type"
    t.bigint "content_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.index ["content_type", "content_id"], name: "index_exercises_on_content_type_and_content_id"
  end

  create_table "families", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "translation", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movements", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "joint", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.string "taggable_type", null: false
    t.bigint "taggable_id", null: false
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.integer "category", null: false
    t.boolean "premium", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "variations", force: :cascade do |t|
    t.string "tagline"
    t.bigint "asana_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["asana_id"], name: "index_variations_on_asana_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "translation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "asanas", "families"
  add_foreign_key "asanas_movements", "asanas"
  add_foreign_key "asanas_movements", "movements"
  add_foreign_key "asanas_words", "asanas"
  add_foreign_key "asanas_words", "words"
  add_foreign_key "taggings", "tags"
  add_foreign_key "variations", "asanas"
end
