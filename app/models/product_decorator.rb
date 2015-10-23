Spree::Product.class_eval do
  def next
    Spree::Product.where("id > ?", id).limit(1).first
  end

  def prev
    Spree::Product.where("id < ?", id).limit(1).first
  end
end