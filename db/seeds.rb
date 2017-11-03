# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




User.create(id: 1, name: 'Nicholas', phone: '847-999-9999', email: 'nicholas@nicholas.com', homes_id: 1, password: 'Nicholas')
User.create(id: 2, name: 'Anna', phone: '847-999-9999', email: 'anna@anna.com' , homes_id: 1, password: 'Anna12')
User.create(id: 3, name: 'Max', phone: '847-999-9999', email: 'max@max.com' , homes_id: 1, password: 'Max123')
User.create(id: 4, name: 'Wyatt', phone: '847-999-9999', email: 'wyatt@wyatt.com' , homes_id: 1, password: 'Wyatt1')
User.create(id: 5, name: 'Akshit', phone: '847-999-9999', email: 'akshit@akshit.com' , homes_id: 1, password: 'Akshit')
User.create(id: 6, name: 'Hari', phone: '847-999-9999', email: 'hari@hari.com' , homes_id: 1, password: 'Hari12')

User.create(id: 7, name: 'Mike', phone: '847-999-9999', email: 'mike@mike.com' , homes_id: 2, password: 'Mike12')
User.create(id: 8, name: 'Sara', phone: '847-999-9999', email: 'sara@sara.com' , homes_id: 2, password: 'Sara12')
User.create(id: 9, name: 'Allison', phone: '847-999-9999', email: 'allison@allison.com' , homes_id: 2, password: 'Allison')
User.create(id: 10, name: 'Brianna', phone: '847-999-9999', email: 'brianna@brianna.com' , homes_id: 2, password: 'Brianna')

User.create(id: 11, name: 'Vishrut', phone: '847-999-9999', email: 'vishrut@vishrut.com' , homes_id: 3, password: 'Vishrut')
User.create(id: 12, name: 'Nishant', phone: '847-999-9999', email: 'nishant@nishant.com' , homes_id: 3, password: 'Nishant')
User.create(id: 13, name: 'Amber', phone: '847-999-9999', email: 'amber@amber.com' , homes_id: 3, password: 'Amber1')
User.create(id: 14, name: 'Paige', phone: '847-999-9999', email: 'paige@paige.com' , homes_id: 3, password: 'Paige1')

Home.create(id: 1, name: 'Home1', address: 'Purdue University', electricService: 1, waterService: 1, gasService: 1, homePicture: 1)
Home.create(id: 2, name: 'Home2', address: 'Purdue University 2', electricService: 1, waterService: 1, gasService: 1, homePicture: 1)
Home.create(id: 3, name: 'Home2', address: 'Purdue University 3', electricService: 1, waterService: 1, gasService: 1, homePicture: 1)

GroceryList.create(id: 1, price: 1.00, name: 'item1', quantity: 1, shouldBuy: true, timesBought: 1, homes_id: 1)
GroceryList.create(id: 2, price: 2.00, name: 'item2', quantity: 2, shouldBuy: true, timesBought: 2, homes_id: 1)
GroceryList.create(id: 3, price: 3.00, name: 'item3', quantity: 3, shouldBuy: true, timesBought: 3, homes_id: 1)
GroceryList.create(id: 4, price: 4.00, name: 'item4', quantity: 4, shouldBuy: true, timesBought: 4, homes_id: 1)
GroceryList.create(id: 5, price: 5.00, name: 'item5', quantity: 5, shouldBuy: true, timesBought: 5, homes_id: 1)
GroceryList.create(id: 6, price: 6.00, name: 'item6', quantity: 6, shouldBuy: true, timesBought: 6, homes_id: 1)
GroceryList.create(id: 7, price: 7.00, name: 'item7', quantity: 7, shouldBuy: true, timesBought: 7, homes_id: 1)
GroceryList.create(id: 8, price: 8.00, name: 'item8', quantity: 8, shouldBuy: true, timesBought: 8, homes_id: 1)
GroceryList.create(id: 9, price: 9.00, name: 'item9', quantity: 9, shouldBuy: true, timesBought: 9, homes_id: 1)
GroceryList.create(id: 10, price: 10.00, name: 'item10', quantity: 10, shouldBuy: true, timesBought: 10, homes_id: 1)
GroceryList.create(id: 11, price: 11.00, name: 'item11', quantity: 11, shouldBuy: true, timesBought: 11, homes_id: 1)
GroceryList.create(id: 12, price: 11.00, name: 'item11', quantity: 12, shouldBuy: true, timesBought: 12, homes_id: 1)

GroceryList.create(id: 13, price: 13.00, name: 'item13', quantity: 13, shouldBuy: true, timesBought: 13, homes_id: 2)
GroceryList.create(id: 14, price: 14.00, name: 'item14', quantity: 14, shouldBuy: true, timesBought: 14, homes_id: 2)
GroceryList.create(id: 15, price: 15.00, name: 'item15', quantity: 15, shouldBuy: true, timesBought: 15, homes_id: 2)
GroceryList.create(id: 16, price: 16.00, name: 'item16', quantity: 16, shouldBuy: true, timesBought: 16, homes_id: 2)
GroceryList.create(id: 17, price: 17.00, name: 'item17', quantity: 17, shouldBuy: true, timesBought: 17, homes_id: 2)
GroceryList.create(id: 18, price: 18.00, name: 'item18', quantity: 18, shouldBuy: true, timesBought: 18, homes_id: 2)
GroceryList.create(id: 19, price: 19.00, name: 'item19', quantity: 19, shouldBuy: true, timesBought: 19, homes_id: 2)
GroceryList.create(id: 20, price: 20.00, name: 'item20', quantity: 20, shouldBuy: true, timesBought: 20, homes_id: 2)
GroceryList.create(id: 21, price: 21.00, name: 'item21', quantity: 21, shouldBuy: true, timesBought: 21, homes_id: 2)
GroceryList.create(id: 22, price: 22.00, name: 'item22', quantity: 22, shouldBuy: true, timesBought: 22, homes_id: 2)
GroceryList.create(id: 23, price: 23.00, name: 'item23', quantity: 23, shouldBuy: true, timesBought: 23, homes_id: 2)
GroceryList.create(id: 24, price: 24.00, name: 'item24', quantity: 24, shouldBuy: true, timesBought: 24, homes_id: 2)



