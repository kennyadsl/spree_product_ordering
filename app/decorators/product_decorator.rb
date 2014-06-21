if Product.table_exists?
  Product.class_eval do
    acts_as_list
  
    scope :ordered, :order => 'products.position'
    default_scope ordered
  end
end
