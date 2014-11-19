class CreateVideoChannels < ActiveRecord::Migration
  def change
    create_table :video_channels do |t|
      t.references :video, index: true
      t.references :channel, index: true

      t.timestamps
    end
  end
end
