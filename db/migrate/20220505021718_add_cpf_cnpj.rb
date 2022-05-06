class AddCpfCnpj < ActiveRecord::Migration[7.0]
  def change
    change_table :contacts do |t|
      t.integer :cpf_cnpj
    end
  end
end
