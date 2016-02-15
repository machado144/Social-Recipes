User.create(email: 'admin@adm.com', password: 'admin1234', admin: true)
Kitchen.create(name: 'Espanhola')
Kitchen.create(name: 'Japonesa')
Kitchen.create(name: 'Brasileira')
Meal.create(name: 'Jantar')
Meal.create(name: 'Sobremesa')
Meal.create(name: 'Café da Manhã')
Kind.create(name: 'Sem Glutén')
Kind.create(name: 'Sem Lactose')
Kind.create(name: 'Sem Sabor')

Recipe.create(recipe: 'Bolinho', kitchen: 'Espanhola', meal: 'Jantar',
 kind: 'Sem Glutén', quantity: 3, time: '5~15 Minutos', difficulty: 'Médio',
 ingredients: 'Teste A, Teste B', steps: 'Teste A + Teste B',
 upload_file_name: 'BoloBacalhau.png')
Recipe.create(recipe: 'Bolovo', kitchen: 'Espanhola', meal: 'Jantar',
 kind: 'Sem Glutén', quantity: 3, time: '5~15 Minutos', difficulty: 'Médio',
 ingredients: 'Teste A, Teste B', steps: 'Teste A + Teste B',
 upload_file_name: 'BoloBacalhau.png')
Recipe.create(recipe: 'Boluva', kitchen: 'Espanhola', meal: 'Jantar',
 kind: 'Sem Glutén', quantity: 3, time: '5~15 Minutos', difficulty: 'Médio',
 ingredients: 'Teste A, Teste B', steps: 'Teste A + Teste B',
 upload_file_name: 'BoloBacalhau.png')

Recipe.create(recipe: 'Bolitos', kitchen: 'Japonesa', meal: 'Sobremesa',
 kind: 'Sem Lactose', quantity: 3, time: '5~15 Minutos', difficulty: 'Médio',
 ingredients: 'Teste A, Teste B', steps: 'Teste A + Teste B',
 upload_file_name: 'Biscoito.png')
Recipe.create(recipe: 'Bolotitos', kitchen: 'Japonesa', meal: 'Sobremesa',
 kind: 'Sem Lactose', quantity: 3, time: '5~15 Minutos', difficulty: 'Médio',
 ingredients: 'Teste A, Teste B', steps: 'Teste A + Teste B',
 upload_file_name: 'Biscoito.png')
Recipe.create(recipe: 'Bolutitos', kitchen: 'Japonesa', meal: 'Sobremesa',
 kind: 'Sem Lactose', quantity: 3, time: '5~15 Minutos', difficulty: 'Médio',
 ingredients: 'Teste A, Teste B', steps: 'Teste A + Teste B',
 upload_file_name: 'Biscoito.png')

Recipe.create(recipe: 'BoloBahiano', kitchen: 'Brasileira', meal: 'Café da Manhã',
 kind: 'Sem Sabor', quantity: 3, time: '5~15 Minutos', difficulty: 'Médio',
 ingredients: 'Teste A, Teste B', steps: 'Teste A + Teste B',
 upload_file_name: 'Bolo.png')
Recipe.create(recipe: 'Bolo de Acarajé', kitchen: 'Brasileira', meal: 'Café da Manhã',
 kind: 'Sem Sabor', quantity: 3, time: '5~15 Minutos', difficulty: 'Médio',
 ingredients: 'Teste A, Teste B', steps: 'Teste A + Teste B',
 upload_file_name: 'Bolo.png')
Recipe.create(recipe: 'Bolito de Acarajé', kitchen: 'Brasileira', meal: 'Café da Manhã',
 kind: 'Sem Sabor', quantity: 3, time: '5~15 Minutos', difficulty: 'Médio',
 ingredients: 'Teste A, Teste B', steps: 'Teste A + Teste B',
 upload_file_name: 'Bolo.png')
