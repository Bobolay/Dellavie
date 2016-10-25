class AddBgImageToMainSlides < ActiveRecord::Migration
  def change
    change_table :main_slides do |t|
      t.attachment :background_image
    end
  end
end
