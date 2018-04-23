json.extract! business, :id, :name, :address1, :address2, :city, :state, :zip, :phone, :email, :category, :fee, :website, :leader_name, :rep_phone, :rep_email, :service_product, :receive_email, :created_at, :updated_at
json.url business_url(business, format: :json)
