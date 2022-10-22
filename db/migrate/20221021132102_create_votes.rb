class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes, comment: 'ユーザーの投票情報' do |t|
      t.string :session_id, null: false, comment: 'ユーザーのセッションID'
      t.references :subject, null: false, foreign_key: { on_delete: :cascade, on_update: :cascade }
      t.references :subject_choice, null: false, foreign_key: { on_delete: :cascade, on_update: :cascade }

      t.timestamps
    end

    add_index :votes, %i[session_id subject_id], unique: true
  end
end
