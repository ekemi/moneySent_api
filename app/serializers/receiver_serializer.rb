class ReceiverSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :completed, :created_at, :sender_id
end
