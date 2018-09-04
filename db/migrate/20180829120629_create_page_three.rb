class CreatePageThree < ActiveRecord::Migration
  def change
     create_table :page_threes do |t|
    	t.string :head_title
    	t.string :head_main_title
    	t.string :main_title
    	t.string :title
     	t.text   :description
     end
     PageThree.create_translation_table! :head_title => :string,
     :head_main_title => :string, :main_title => :string, 
     :title => :string, :description => :text
    end
    def down
    	drop_table :page_threes
    	PageThree.drop_translation_table!
    end
end
