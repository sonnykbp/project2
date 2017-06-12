# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dessert.destroy_all
Recipe.destroy_all



cookies = Dessert.create(name: "Cookies", dessert_image: "http://images.media-allrecipes.com/userphotos/560x315/1107530.jpg")
cupcakes = Dessert.create(name: "Cupcakes", dessert_image: "https://www.browneyedbaker.com/wp-content/uploads/2010/11/red-velvet-cupcakes-32-600.jpg")
brownies_bars = Dessert.create(name: "Brownies & Bars", dessert_image: "https://images-gmi-pmc.edge-generalmills.com/5c41d5f9-aeac-4de4-a502-2838fee0ad8b.jpg")
cakes = Dessert.create(name: "Cakes", dessert_image: "https://www.bbcgoodfood.com/sites/default/files/styles/category_retina/public/recipe-collections/collection-image/2013/05/chocolate-and-lime-cake.jpg?itok=UydD8bk5")
pies_tarts = Dessert.create(name: "Pies & Tarts", dessert_image: "http://www.willcookforsmiles.com/wp-content/uploads/2013/11/Apple-Pie-Custard-Tart-6-from-willcookforsmiles.com-tart-custard-applepie-650x429.jpg")


sonnykbp = User.create!(username: "Sonnykbp", email: "sonnykbp@google.com", password: "123456")

brown_butter_cookies = Recipe.create!(name: "Brown Butter Cookies", description: "Using butter (NOT margarine) is essential for the success of this rich, but highly addictive cookie! You may need as little as 3 cups confectioners' sugar for the icing; just stop adding it when you've reached the desired consistency.", ingredients: ["2 cups butter", "2 cups brown sugar", "2 eggs", "2 teaspoons vanilla extract", "1 teaspoon baking soda", "1/2 teaspoon baking powder", "1/2 teaspoon salt"], direction: "Preheat oven to 350 degrees F (175 degrees C). Heat butter over medium heat for 5 minutes or so, until it turns nut brown in color. The foaming and bubbling is part of the browning process, but watch it carefully so that you don't burn the butter. Remove from heat, and cool slightly. Reserve 1/2 cup of the butter for the frosting.
Pour remaining browned butter into a large mixing bowl. Beat browned butter with brown sugar until the butter is no longer hot. Mix in eggs, 2 teaspoons vanilla, baking soda, baking powder, and salt. Beat thoroughly. Mix in flour and chopped pecans. Drop tablespoons of dough onto ungreased baking sheets. Bake for 10 minutes in the preheated oven, or until light brown around the edges. Cool. In a medium bowl, mix the reserved 1/2 cup browned butter with 2 teaspoons vanilla, confectioners' sugar, and hot water. Beat until smooth, and use to frost cooled cookies.", preptime: 30, cooktime: 10, recipe_image: "http://images.media-allrecipes.com/userphotos/560x315/744345.jpg", dessert: cookies, user: sonnykbp)

apple_crumb_pie = Recipe.create!(name: "Apple Crumb Pie", description: "You can add walnuts and raisins to this apple crumb pie to make it even dreamier!", ingredients: ["1 (9 inch) pie shell", "6 cups thinly sliced apples", "1 tablespoon lemon juice (optional)", "3/4 cup white sugar", "2 tablespoons all-purpose flour", "1/2 teaspoon ground cinnamon", "1/8 teaspoon ground nutmeg", "1/2 cup raisins (optional)", "1/2 cup chopped walnuts (optional)", "1/2 cup all-purpose", "1/2 cup packed brown","sugar 3 tablespoons butter"], direction: "Preheat oven to 375 degrees F (190 degrees C).
Place sliced apples in a large bowl. Sprinkle with lemon juice if desired. In a small bowl, mix together white sugar, 2 tablespoons flour, cinnamon, and nutmeg. Sprinkle mixture over apples. Toss until apples are evenly coated. Stir in raisins and walnuts if desired. Spoon mixture into pastry shell.
In a small bowl mix together 1/2 cup flour and brown sugar. Cut in butter or margarine until mixture is crumbly. Sprinkle mixture over apple filling. Cover top loosely with aluminum foil.
Bake in preheated oven for 25 minutes. Remove foil and bake an additional 25 to 30 minutes, until top is golden brown. Cool on a wire rack.", preptime: 30, cooktime: 60, recipe_image: "http://assets.kraftfoods.com/recipe_images/opendeploy/54069_640x428.jpg", dessert: pies_tarts, user: sonnykbp)
