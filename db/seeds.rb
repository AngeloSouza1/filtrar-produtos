# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Populando o banco de dados com 20 itens de exemplo

# Limpa todos os registros existentes para evitar duplicatas
Product.destroy_all

# Cria 20 produtos de exemplo
20.times do |n|
  name = "Produto #{n + 1}"
  category = ["Eletrônicos", "Roupas", "Alimentos", "Livros"].sample
  price = rand(10.0..100.0).round(2) # Preço aleatório entre 10 e 100

  Product.create!(
    name: name,
    category: category,
    price: price
  )
end