# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Popular Clientes
Cliente.create(nome: "DECOY", cpf: "123123213123", dt_nascimento: "2014-10-24", sexo: "Masculino", email: "asdas@daasda", endereco_id: 4, telefone: "123123", nr_habilitacao: "123123")

# Popular endereços
Endereco.create(cep: '656565656', rua: 'Oliveira Paiva', bairro: 'Vincente pinzon', numero: '123', cidade: 'Fortaleza', estado: 'CE')
Endereco.create(cep: '656565655', rua: 'Jardim das Oliveiras', bairro: 'Cidade 2000', numero: '321', cidade: 'Fortaleza', estado: 'CE')
Endereco.create(cep: '685656578', rua: 'Francisco paz', bairro: 'Edson Queiroz', numero: '231', cidade: 'Fortaleza', estado: 'CE')

# Popular Garagem
Garagem.create(nome: 'Garagem A', endereco_id: 1)
Garagem.create(nome: 'Garagem B', endereco_id: 2)
Garagem.create(nome: 'Garagem C', endereco_id: 3)

# Popular Categorias
Categoria.create(nome: 'Carro', capacidade_passageiros: 4, qt_bagagem_pequena: 4, qt_bagagem_grande: 2)
Categoria.create(nome: 'Moto', capacidade_passageiros: 2, qt_bagagem_pequena: 1, qt_bagagem_grande: 1)
Categoria.create(nome: 'Van', capacidade_passageiros: 6, qt_bagagem_pequena: 10, qt_bagagem_grande: 8)
Categoria.create(nome: 'Pickup', capacidade_passageiros: 4, qt_bagagem_pequena: 10, qt_bagagem_grande: 6)
Categoria.create(nome: 'Limo', capacidade_passageiros: 8, qt_bagagem_pequena: 10, qt_bagagem_grande: 4)
Categoria.create(nome: 'Familia', capacidade_passageiros: 4, qt_bagagem_pequena: 12, qt_bagagem_grande: 10)
Categoria.create(nome: 'Frete Comum', capacidade_passageiros: 2, qt_bagagem_pequena: 20, qt_bagagem_grande: 34)
Categoria.create(nome: 'Frete Frigorifico', capacidade_passageiros: 2, qt_bagagem_pequena: 20, qt_bagagem_grande: 34)

# Popular Locadoras
Locadora.create(cnpj: 1111, nome: 'DECOY', endereco_id: 1, responsavel: 'asdasd', email: 'teste@teste', telefone: 123123)
Locadora.create(cnpj: 1111, nome: 'Locadora A', endereco_id: 1, responsavel: 'Chico', email: 'teste@teste', telefone: 123123)
Locadora.create(cnpj: 2211, nome: 'Locadora B', endereco_id: 2, responsavel: 'Jose', email: 'teste@testeteste', telefone: 1234123)

# Usuarios
admin = User.create email: 'admin@email.com',  password: '12345678', password_confirmation: '12345678', role: 'admin'
cliente = User.create email: 'cliente@email.com',  password: '12345678', password_confirmation: '12345678', role: 'cliente', cliente_id: 1
locadora = User.create email: 'locadora@email.com',  password: '12345678', password_confirmation: '12345678', role: 'locadora', locadora_id: 1

# Popular veiculos
#Carros
Veiculo.create(placa: 'HXB-3890', marca: 'FIAT', ano: 2009, modelo: 'UNO', cor: 'prata', valor_diaria: 200, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 2, foto_file_name: "mille.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HBB-4090', marca: 'Pegeout', ano: 2004, modelo: '204', cor: 'branco', valor_diaria: 250, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 2, foto_file_name: "p208.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HZT-3890', marca: 'MAZDA', ano: 2010, modelo: 'RX-7', cor: 'preto', valor_diaria: 300, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 3, foto_file_name: "rx7.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HVB-4990', marca: 'FIAT', ano: 2009, modelo: 'NOVO UNO', cor: 'prata', valor_diaria: 200, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 2, foto_file_name: "novo_uno.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HBO-3890', marca: 'WOLKSVAGEN', ano: 2005, modelo: 'GOL', cor: 'prata', valor_diaria: 100, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 3, foto_file_name: "gol.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HXX-4422', marca: 'TOYOTA', ano: 2015, modelo: 'COROLA', cor: 'prata', valor_diaria: 450, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 2, foto_file_name: "corola.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HYB-2030', marca: 'WOLSKVAGEN', ano: 1992, modelo: 'FUSCA', cor: 'verde', valor_diaria: 200, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 3, foto_file_name: "fusca.jpg", foto_content_type: "image/jpg")
Veiculo.create(placa: 'HOB-1090', marca: 'WOLSKVAGEN', ano: 1988, modelo: 'BRASILIA', cor: 'verde', valor_diaria: 100, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 3, foto_file_name: "brasilia.jpg", foto_content_type: "image/jpg")
Veiculo.create(placa: 'HYY-1192', marca: 'FIAT', ano: 1988, modelo: 'CHEVETE', cor: 'dourado', valor_diaria: 100, alugado: false, categoria_id: 1, garagem_id: 1, locadora_id: 3, foto_file_name: "chevete.jpg", foto_content_type: "image/jpg")
#Motos
Veiculo.create(placa: 'HXO-3399', marca: 'HONDA', ano: 2005, modelo: 'XL', cor: 'amarela', valor_diaria: 100, alugado: false, categoria_id: 2, garagem_id: 1, locadora_id: 2, foto_file_name: "honda_xl.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HXU-2309', marca: 'HONDA', ano: 1993, modelo: 'LAMBRETA', cor: 'vermelha', valor_diaria: 100, alugado: false, categoria_id: 2, garagem_id: 1, locadora_id: 2, foto_file_name: 'lambreta.jpg', foto_content_type: "image/jpeg")
#Vans
Veiculo.create(placa: 'HJO-4323', marca: 'WOLKSVAGEN', ano: 1995, modelo: 'KOMBI', cor: 'verde', valor_diaria: 500, alugado: false, categoria_id: 3, garagem_id: 1, locadora_id: 2, foto_file_name: "kombi.jpg", foto_content_type: "image/jpeg")
#Pickups
Veiculo.create(placa: 'HXO-4323', marca: 'HYUNDAI', ano: 2001, modelo: 'HILUX', cor: 'grafite', valor_diaria: 500, alugado: false, categoria_id: 4, garagem_id: 1, locadora_id: 2, foto_file_name: "hilux.jpg", foto_content_type: "image/jpeg")
#Limouzines
Veiculo.create(placa: 'HXO-4323', marca: 'GM', ano: 2001, modelo: 'HUMMER LIMOUSINE', cor: 'grafite', valor_diaria: 2500, alugado: false, categoria_id: 5, garagem_id: 1, locadora_id: 3, foto_file_name: "hummer.jpg", foto_content_type: "image/jpeg")
#Familia
Veiculo.create(placa: 'HXO-4323', marca: 'HONDA', ano: 2001, modelo: 'DECISION', cor: 'grafite', valor_diaria: 500, alugado: false, categoria_id: 6, garagem_id: 1, locadora_id: 4, foto_file_name: "decision.jpeg", foto_content_type: "image/jpeg")
#Frete Comum
Veiculo.create(placa: 'HXO-4323', marca: 'KIA', ano: 2001, modelo: 'BONGO', cor: 'grafite', valor_diaria: 500, alugado: false, categoria_id: 7, garagem_id: 1, locadora_id: 4, foto_file_name: "bongo.jpg", foto_content_type: "image/jpeg")
#Frete Frigorifico
Veiculo.create(placa: 'HXO-4323', marca: 'HYUNDAI', ano: 2001, modelo: 'HD78', cor: 'grafite', valor_diaria: 500, alugado: false, categoria_id: 8, garagem_id: 1, locadora_id: 2, foto_file_name: "hd_78.jpg", foto_content_type: "image/jpeg")
Veiculo.create(placa: 'HXO-3399', marca: 'HONDA', ano: 2005, modelo: 'XL', cor: 'amarela', valor_diaria: 100, alugado: false, categoria_id: 2, garagem_id: 1, locadora_id: 1, foto_file_name: "honda_xl.jpg", foto_content_type: "image/jpeg")

#Opcionais
Opcional.create(descricao: 'Cadeira para bebê até 2 anos', nome: 'Cadeira de bebê',valor: 20, locadora_id: 1 )
Opcional.create(descricao: 'GPS tela 5pol', nome: 'GPS',valor: 10, locadora_id: 1 )


