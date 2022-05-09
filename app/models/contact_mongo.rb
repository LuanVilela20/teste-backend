class ContactMongo
  include Mongoid::Document

  field :id, type: Integer
  field :name, type: String
  field :birthday, type: String
  field :email, type: String
  field :mobile, type: Integer
  field :message, type: String
  field :advertising, type: Boolean
  field :active, type: Boolean
  field :created_at, type: Date
  field :updated_at, type: Date
  field :cpf_cnpj, type: Integer

end