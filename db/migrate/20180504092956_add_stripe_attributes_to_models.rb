class AddStripeAttributesToModels < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :stripe_customer_id, :string
    add_column :orders, :payment_details, :jsonb
  end
end
