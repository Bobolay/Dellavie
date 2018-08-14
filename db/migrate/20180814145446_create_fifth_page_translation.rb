class CreateFifthPageTranslation < ActiveRecord::Migration
  def change
    create_table :fifth_page_translations do |t|
    t.string :main_title
    	t.string :left_main_title
    	t.string :left_title
    	t.text   :left_description    	
     end
     FifthPageTranslation.create_translation_table! :main_title => :string,
     :left_main_title => :string,:left_title => :string, :left_description => :text     
    end
    def down
    	drop_table :fifth_page_translations
    	FifthPageTranslation.drop_translation_table!
    end
end