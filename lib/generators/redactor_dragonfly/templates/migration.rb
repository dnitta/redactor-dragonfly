class CreateRedactorDragonflyAttaches < ActiveRecord::Migration
  def self.up
    create_table :redactor_dragonfly_attaches do |t|
      t.string  :file_uid
      t.string  :file_name

      t.timestamps
    end
  end

  def self.down
    drop_table :redactor_dragonfly_attaches
  end
end

