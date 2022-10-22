class CreateSubjectChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :subject_choices, comment: 'お題の選択肢' do |t|
      t.references :subject, null: false, foreign_key: { on_delete: :cascade, on_update: :cascade }
      t.string :name, null: false, comment: '選択肢 名称'

      t.timestamps
    end
  end
end
