class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects, comment: '投票の対象となるお題' do |t|
      t.string :title, null: false, comment: 'タイトル'

      t.timestamps
    end
  end
end
