# Pizza Store

This project was create in order to create endpoints for obtain all products, all toppings and perform and order of 1 - n items

## Architecture

An Abstract class product was created with the abstract methods type and prepare a Product has a name, price, recipe and preparation time, the preparation depends of the product.
From this class inherits a Pizza and RegularProduct classes, that implements type and prepare functions, I assumed that all the other products has the same preparation mode thats why I generalized all of them into only one class.
About cheeses, borders, sauces I created enums inside pizza class in order to restrict to the user only these options and because those products will never change ever. Same idea for size but adding a default amount of slices in every size.
Also Pizza has an array of extra toppings and slices amount that obtain a default value from the size but can be modified.
Topping class is very simple only has a name and a price.
For the orders I created some classes, OrderItem that contains a product and the amount (of orders for that product) also I implemented two decorators for this class OrderPizzaItem and OrderRegularItem that implements a price function, on regular item is only price x amount but on a pizza is the price of the selected size * amount + sum of all the selected extra topping prices.
Finally a class Order that contains an array of items, a flag to know if the user want that we send his order and some user info.

##Asumptions

- There was not any requirement about what to do on pizza preparation or orders so I only printed a console message.
- Lagsagna, salad and spaghetti,was presented as products but without any specification, so I generalize these 3 items into 1 class.
- I am assuming that every extra topping has an extra price.
- I am creating a default data set inside a helper


