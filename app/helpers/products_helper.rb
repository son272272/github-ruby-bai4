module ProductsHelper
    def find_by_name(name)
        products.select { |product| name == product.name }
      end
end
