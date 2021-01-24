class SenderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :code, :amount, :created_at
end
