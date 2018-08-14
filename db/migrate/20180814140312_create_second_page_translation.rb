class CreateSecondPageTranslation < ActiveRecord::Migration
  def change
    create_table :second_page_translations do |t|
    	t.string :main_title
    	t.string :left_main_title
    	t.string :left_title
    	t.text   :left_description
    	t.string :middle_main_title
    	t.string :middle_title
    	t.text   :middle_description
    	t.string :right_main_title
    	t.string :right_title
    	t.text   :right_description
     end
     SecondPageTranslation.create_translation_table! :main_title => :string,
     :left_main_title => :string,:left_title => :string, :left_description => :text,
     :middle_main_title => :string, :middle_title => :string,
     :middle_description => :text, :right_main_title => :string,
     :right_title => :string, :right_description => :text
    end
    def down
    	drop_table :second_page_translations
    	SecondPageTranslation.drop_translation_table!
    end
end