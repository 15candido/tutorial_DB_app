class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.text :conteudo
      t.integer :user_id

      t.timestamps
    end
  end
end
