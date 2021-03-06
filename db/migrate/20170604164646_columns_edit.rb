class ColumnsEdit < ActiveRecord::Migration[5.0]
  def change
    remove_column :watches, :cam, :boolean
    remove_column :watches, :megapixels, :decimal
    remove_column :watches, :photo_res_x, :integer
    remove_column :watches, :photo_res_y, :integer
    remove_column :watches, :autofocus, :boolean
    remove_column :watches, :video_rec, :boolean
    remove_column :watches, :video_res_x, :integer
    remove_column :watches, :video_res_y, :integer
    remove_column :watches, :fps, :integer
    add_column :watches, :disp_protect, :string
    add_column :watches, :glonass, :boolean
    add_column :watches, :light_sensor, :boolean
    remove_column :phones, :barometer, :boolean
    add_column :phones, :glonass, :boolean
    add_column :phones, :sim, :string
    add_column :phones, :disp_protect, :string
    add_column :phones, :card, :boolean
    add_column :phones, :card_max, :integer
    add_column :phones, :light_sensor, :boolean
    add_column :phones, :compass, :boolean
    add_column :phones, :proximity, :boolean
    add_column :phones, :autofocus, :boolean
    add_column :phones, :diaphragm, :decimal, precision: 3, scale: 1
    add_column :phones, :jack, :boolean
    remove_column :tablets, :barometer, :boolean
    add_column :tablets, :glonass, :boolean
    add_column :tablets, :sim, :string
    add_column :tablets, :disp_protect, :string
    add_column :tablets, :card, :boolean
    add_column :tablets, :card_max, :integer
    add_column :tablets, :light_sensor, :boolean
    add_column :tablets, :compass, :boolean
    add_column :tablets, :proximity, :boolean
    add_column :tablets, :autofocus, :boolean
    add_column :tablets, :diaphragm, :decimal, precision: 3, scale: 1
    add_column :tablets, :jack, :boolean
    remove_column :transformers, :barometer, :boolean
    remove_column :transformers, :nfc, :boolean
    remove_column :transformers, :cards, :string
    add_column :transformers, :glonass, :boolean
    add_column :transformers, :disp_protect, :string
    add_column :transformers, :card, :boolean
    add_column :transformers, :card_max, :integer
    add_column :transformers, :light_sensor, :boolean
    add_column :transformers, :compass, :boolean
    add_column :transformers, :jack, :boolean
    add_column :developers, :founded, :integer
    add_column :developers, :founders, :string
  end
end
