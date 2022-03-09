class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|
      t.text :m_h_y
      t.text :m_h_s
      t.text :m_h_t
      t.text :m_h_k
      t.text :m_h_d
      t.text :swot_s
      t.text :swot_w
      t.text :swot_o
      t.text :swot_t
      t.text :s_o
      t.text :s_t
      t.text :w_o
      t.text :w_t
      t.text :will
      t.text :can
      t.text :must
      t.string :id_pass

      t.timestamps
    end
  end
end
