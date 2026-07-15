import 'package:get/get.dart';

class HomeController extends GetxController{

// top category
  var category=[
    {"title": "Glocery",
      "image": "assets/category/oil.png"
    },
    {"title": "Vegetable",
      "image": "assets/category/tomato.png"
    },
    {"title": "Fruits",
      "image": "assets/category/strawberry.png"
    },
    {"title": "Dairy Products",
      "image": "assets/category/milk.png"
    },
    {"title": "Bakery Items",
      "image": "assets/category/powder.png"
    }
  ].obs;

  //top product

  var topProduct=[
    {"title": "Fresh Rice",
      "image": "assets/top_product/chal.webp",
      "price":"65",
      "discount-offer":"15"
    },
    {"title": "Chicken",
      "image": "assets/top_product/chicken.webp",
      "price":"300",
      "discount-offer":"5"
    },
    {"title": "Mosur Dal",
      "image": "assets/top_product/dal.webp",
      "price":"140",
      "discount-offer":"10"
    },
    {"title": "PRAN Sour Curd 500 gm",
      "image": "assets/top_product/doi.webp",
      "price":"500",
      "discount-offer":"20"
    },
    {"title": "PRAN Ghee Premium 200gm",
      "image": "assets/top_product/ghi.webp",
      "price":"320",
      "discount-offer":"5"
    },
    {"title": "PRAN Full Cream Milk Powder 500 gm",
      "image": "assets/top_product/milk.webp",
      "price":"120",
      "discount-offer":"10"
    },
    {"title": "Mr. Noodles Magic Masala Flavor 12 pcs Family Pack",
      "image": "assets/top_product/noodles.webp",
      "price":"120",
      "discount-offer":"10"
    },
    {"title": "Fresh Fortified Soyabean Oil - 5ltr",
      "image": "assets/top_product/oil.webp",
      "price":"220",
      "discount-offer":"2"
    },
    {"title": "Ray Washing Powder 500gm",
      "image": "assets/top_product/washing powder.webp",
      "price":"180",
      "discount-offer":"3"
    },
  ].obs;

  //Deal Of the Week

  var dealOfWeek = [
    {
      "title": "Premium White Rice",
      "image": "https://images.unsplash.com/photo-1586201375761-83865001e31c",
      "price": "65",
      "discount-offer": "15"
    },
    {
      "title": "Fresh Whole Chicken",
      "image": "https://images.unsplash.com/photo-1604503468506-a8da13d82791",
      "price": "300",
      "discount-offer": "5"
    },
    {
      "title": "Red Lentils (Masoor Dal)",
      "image": "https://images.unsplash.com/photo-1515543904379-3d757afe72e3",
      "price": "140",
      "discount-offer": "10"
    },
    {
      "title": "Fresh Yogurt",
      "image": "https://images.unsplash.com/photo-1571212515416-fef01fc43637",
      "price": "120",
      "discount-offer": "20"
    },
    {
      "title": "Pure Cow Ghee",
      "image": "https://images.unsplash.com/photo-1628088062854-d1870b4553da",
      "price": "320",
      "discount-offer": "5"
    },
    {
      "title": "Milk Powder",
      "image": "https://images.unsplash.com/photo-1550583724-b2692b85b150",
      "price": "220",
      "discount-offer": "10"
    },
    {
      "title": "Instant Noodles",
      "image": "https://images.unsplash.com/photo-1617093727343-374698b1b08d",
      "price": "120",
      "discount-offer": "10"
    },
    {
      "title": "Soybean Cooking Oil",
      "image": "https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5",
      "price": "220",
      "discount-offer": "2"
    },
    {
      "title": "Laundry Washing Powder",
      "image": "https://images.unsplash.com/photo-1583947582886-f40ec95dd752",
      "price": "180",
      "discount-offer": "3"
    },
  ].obs;

  //Feature Items

  var featureItem = [
    {
      "title": "Fresh Apples",
      "image": "https://images.unsplash.com/photo-1567306226416-28f0efdc88ce",
      "price": "180",
      "net-weight": "1 kg"
    },
    {
      "title": "Fresh Bananas",
      "image": "https://images.unsplash.com/photo-1603833665858-e61d17a86224",
      "price": "70",
      "net-weight": "1 dozen"
    },
    {
      "title": "Fresh Tomatoes",
      "image": "https://images.unsplash.com/photo-1546094096-0df4bcaaa337",
      "price": "60",
      "net-weight": "1 kg"
    },
    {
      "title": "Fresh Carrots",
      "image": "https://images.unsplash.com/photo-1447175008436-054170c2e979",
      "price": "50",
      "net-weight": "500 g"
    },
    {
      "title": "Fresh Broccoli",
      "image": "https://images.unsplash.com/photo-1459411621453-7b03977f4bfc",
      "price": "120",
      "net-weight": "500 g"
    },
    {
      "title": "Fresh Eggs",
      "image": "https://images.unsplash.com/photo-1506976785307-8732e854ad03",
      "price": "140",
      "net-weight": "12 pcs"
    },
    {
      "title": "Fresh Milk",
      "image": "https://images.unsplash.com/photo-1550583724-b2692b85b150",
      "price": "90",
      "net-weight": "1 L"
    },
    {
      "title": "Whole Wheat Bread",
      "image": "https://images.unsplash.com/photo-1509440159596-0249088772ff",
      "price": "80",
      "net-weight": "400 g"
    },
    {
      "title": "Orange Juice",
      "image": "https://images.unsplash.com/photo-1621506289937-a8e4df240d0b",
      "price": "150",
      "net-weight": "1 L"
    },
    {
      "title": "Cheddar Cheese",
      "image": "https://images.unsplash.com/photo-1486297678162-eb2a19b0a32d",
      "price": "280",
      "net-weight": "250 g"
    },
  ].obs;


  // Glocery Product

  var groceryProducts = [
    {
      "id": 1,
      "title": "Fresh Soybean Oil",
      "img": "https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?w=600",
      "net_weight": "5 L",
      "price": 980,
      "discount_price": 920,
      "discount_parcent": 6,
      "description": "Premium refined soybean oil suitable for daily cooking."
    },
    {
      "id": 2,
      "title": "Basmati Rice",
      "img": "https://images.unsplash.com/photo-1586201375761-83865001e31c?w=600",
      "net_weight": "5 Kg",
      "price": 780,
      "discount_price": 740,
      "discount_parcent": 5,
      "description": "Long grain aromatic basmati rice for delicious meals."
    },
    {
      "id": 3,
      "title": "Red Lentils",
      "img": "https://images.unsplash.com/photo-1515543904379-3d757afe72e3?w=600",
      "net_weight": "1 Kg",
      "price": 165,
      "discount_price": 150,
      "discount_parcent": 9,
      "description": "Fresh and nutritious red lentils rich in protein."
    },
    {
      "id": 4,
      "title": "Premium Sugar",
      "img": "https://images.unsplash.com/photo-1581441363689-1f3c3c414635?w=600",
      "net_weight": "1 Kg",
      "price": 135,
      "discount_price": 125,
      "discount_parcent": 7,
      "description": "Refined white sugar for beverages and desserts."
    },
    {
      "id": 5,
      "title": "Iodized Salt",
      "img": "https://images.unsplash.com/photo-1518110925495-5fe2cb8f5a4b?w=600",
      "net_weight": "1 Kg",
      "price": 45,
      "discount_price": 40,
      "discount_parcent": 11,
      "description": "Pure iodized table salt for healthy cooking."
    },
    {
      "id": 6,
      "title": "Whole Wheat Flour",
      "img": "https://images.unsplash.com/photo-1574323347407-f5e1ad6d020b?w=600",
      "net_weight": "2 Kg",
      "price": 145,
      "discount_price": 135,
      "discount_parcent": 7,
      "description": "Stone-ground whole wheat flour for soft chapati."
    },
    {
      "id": 7,
      "title": "Chickpeas",
      "img": "https://images.unsplash.com/photo-1590080875515-8a3a8dc5735e?w=600",
      "net_weight": "1 Kg",
      "price": 180,
      "discount_price": 165,
      "discount_parcent": 8,
      "description": "Premium quality chickpeas perfect for healthy meals."
    },
    {
      "id": 8,
      "title": "Black Pepper",
      "img": "https://images.unsplash.com/photo-1599909533547-5b4c1d4f7a42?w=600",
      "net_weight": "100 g",
      "price": 220,
      "discount_price": 199,
      "discount_parcent": 10,
      "description": "Freshly packed whole black pepper with rich aroma."
    },
    {
      "id": 9,
      "title": "Turmeric Powder",
      "img": "https://images.unsplash.com/photo-1615485925600-97237c4fc1ec?w=600",
      "net_weight": "200 g",
      "price": 95,
      "discount_price": 85,
      "discount_parcent": 11,
      "description": "Natural turmeric powder without artificial color."
    },
    {
      "id": 10,
      "title": "Green Tea",
      "img": "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=600",
      "net_weight": "100 g",
      "price": 280,
      "discount_price": 250,
      "discount_parcent": 11,
      "description": "Refreshing premium green tea leaves for a healthy lifestyle."
    },
  ].obs;

// vegetableProducts

  var vegetableProducts = [
    {
      "id": 101,
      "title": "Fresh Tomato",
      "img": "https://images.pexels.com/photos/1327838/pexels-photo-1327838.jpeg",
      "net_weight": "1 Kg",
      "price": 90,
      "discount_price": 80,
      "discount_parcent": 11,
      "description": "Fresh red tomatoes rich in vitamins and perfect for salads and cooking."
    },
    {
      "id": 102,
      "title": "Potato",
      "img": "https://images.pexels.com/photos/2286776/pexels-photo-2286776.jpeg",
      "net_weight": "1 Kg",
      "price": 65,
      "discount_price": 58,
      "discount_parcent": 11,
      "description": "Farm fresh potatoes suitable for everyday cooking."
    },
    {
      "id": 103,
      "title": "Onion",
      "img": "https://images.pexels.com/photos/4197441/pexels-photo-4197441.jpeg",
      "net_weight": "1 Kg",
      "price": 85,
      "discount_price": 75,
      "discount_parcent": 12,
      "description": "Fresh onions with natural flavor and long shelf life."
    },
    {
      "id": 104,
      "title": "Carrot",
      "img": "https://images.pexels.com/photos/143133/pexels-photo-143133.jpeg",
      "net_weight": "500 g",
      "price": 60,
      "discount_price": 54,
      "discount_parcent": 10,
      "description": "Crunchy carrots rich in Vitamin A."
    },
    {
      "id": 105,
      "title": "Cucumber",
      "img": "https://images.pexels.com/photos/2329440/pexels-photo-2329440.jpeg",
      "net_weight": "500 g",
      "price": 45,
      "discount_price": 40,
      "discount_parcent": 11,
      "description": "Fresh cucumbers ideal for salads and healthy snacks."
    },
    {
      "id": 106,
      "title": "Cauliflower",
      "img": "https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg",
      "net_weight": "1 Pc",
      "price": 70,
      "discount_price": 63,
      "discount_parcent": 10,
      "description": "Fresh white cauliflower packed with nutrients."
    },
    {
      "id": 107,
      "title": "Broccoli",
      "img": "https://images.pexels.com/photos/47347/broccoli-vegetable-food-healthy-47347.jpeg",
      "net_weight": "500 g",
      "price": 180,
      "discount_price": 165,
      "discount_parcent": 8,
      "description": "Premium fresh broccoli rich in fiber and vitamins."
    },
    {
      "id": 108,
      "title": "Eggplant",
      "img": "https://images.pexels.com/photos/321551/pexels-photo-321551.jpeg",
      "net_weight": "1 Kg",
      "price": 75,
      "discount_price": 68,
      "discount_parcent": 9,
      "description": "Fresh purple eggplant perfect for curries and grilling."
    },
    {
      "id": 109,
      "title": "Green Chili",
      "img": "https://images.pexels.com/photos/5945903/pexels-photo-5945903.jpeg",
      "net_weight": "250 g",
      "price": 40,
      "discount_price": 35,
      "discount_parcent": 13,
      "description": "Fresh green chilies with natural spicy flavor."
    },
    {
      "id": 110,
      "title": "Capsicum",
      "img": "https://images.pexels.com/photos/2893635/pexels-photo-2893635.jpeg",
      "net_weight": "500 g",
      "price": 140,
      "discount_price": 125,
      "discount_parcent": 11,
      "description": "Fresh green capsicum suitable for salads, pizza, and stir fry."
    },
  ].obs;

// fruitProducts

  var fruitProducts = [
    {
      "id": 201,
      "title": "Red Apple",
      "img": "https://images.pexels.com/photos/102104/pexels-photo-102104.jpeg",
      "net_weight": "1 Kg",
      "price": 280,
      "discount_price": 255,
      "discount_parcent": 9,
      "description": "Fresh and juicy red apples rich in fiber and vitamins."
    },
    {
      "id": 202,
      "title": "Banana",
      "img": "https://images.pexels.com/photos/1093038/pexels-photo-1093038.jpeg",
      "net_weight": "12 pcs",
      "price": 120,
      "discount_price": 110,
      "discount_parcent": 8,
      "description": "Naturally sweet bananas packed with energy and potassium."
    },
    {
      "id": 203,
      "title": "Orange",
      "img": "https://images.pexels.com/photos/42059/citrus-diet-food-fresh-42059.jpeg",
      "net_weight": "1 Kg",
      "price": 220,
      "discount_price": 199,
      "discount_parcent": 10,
      "description": "Fresh oranges loaded with Vitamin C and natural sweetness."
    },
    {
      "id": 204,
      "title": "Mango",
      "img": "https://images.pexels.com/photos/918643/pexels-photo-918643.jpeg",
      "net_weight": "1 Kg",
      "price": 180,
      "discount_price": 165,
      "discount_parcent": 8,
      "description": "Sweet and delicious ripe mangoes sourced from local farms."
    },
    {
      "id": 205,
      "title": "Strawberry",
      "img": "https://images.pexels.com/photos/89778/strawberries-frisch-ripe-sweet-89778.jpeg",
      "net_weight": "250 g",
      "price": 350,
      "discount_price": 320,
      "discount_parcent": 9,
      "description": "Fresh strawberries with rich flavor and natural sweetness."
    },
    {
      "id": 206,
      "title": "Watermelon",
      "img": "https://images.pexels.com/photos/1313267/pexels-photo-1313267.jpeg",
      "net_weight": "3 Kg",
      "price": 180,
      "discount_price": 165,
      "discount_parcent": 8,
      "description": "Refreshing watermelon perfect for hot summer days."
    },
    {
      "id": 207,
      "title": "Pineapple",
      "img": "https://images.pexels.com/photos/947879/pexels-photo-947879.jpeg",
      "net_weight": "1 Pc",
      "price": 150,
      "discount_price": 135,
      "discount_parcent": 10,
      "description": "Sweet tropical pineapple rich in vitamins and minerals."
    },
    {
      "id": 208,
      "title": "Grapes",
      "img": "https://images.pexels.com/photos/708777/pexels-photo-708777.jpeg",
      "net_weight": "500 g",
      "price": 260,
      "discount_price": 235,
      "discount_parcent": 10,
      "description": "Fresh seedless grapes with juicy and sweet taste."
    },
    {
      "id": 209,
      "title": "Papaya",
      "img": "https://images.pexels.com/photos/5945846/pexels-photo-5945846.jpeg",
      "net_weight": "1 Pc",
      "price": 90,
      "discount_price": 80,
      "discount_parcent": 11,
      "description": "Naturally ripe papaya rich in Vitamin A and digestive enzymes."
    },
    {
      "id": 210,
      "title": "Kiwi",
      "img": "https://images.pexels.com/photos/51372/kiwi-fruit-vitamins-healthy-51372.jpeg",
      "net_weight": "500 g",
      "price": 420,
      "discount_price": 390,
      "discount_parcent": 7,
      "description": "Premium kiwi fruit packed with antioxidants and Vitamin C."
    },
  ].obs;

// dairyProducts

  var dairyProducts = [
    {
      "id": 301,
      "title": "Fresh Whole Milk",
      "img": "https://images.pexels.com/photos/416656/pexels-photo-416656.jpeg",
      "net_weight": "1 L",
      "price": 95,
      "discount_price": 89,
      "discount_parcent": 6,
      "description": "Fresh whole milk rich in calcium and protein for daily nutrition."
    },
    {
      "id": 302,
      "title": "Cheddar Cheese",
      "img": "https://images.pexels.com/photos/821365/pexels-photo-821365.jpeg",
      "net_weight": "250 g",
      "price": 320,
      "discount_price": 290,
      "discount_parcent": 9,
      "description": "Premium cheddar cheese with a rich and creamy taste."
    },
    {
      "id": 303,
      "title": "Salted Butter",
      "img": "https://images.pexels.com/photos/531334/pexels-photo-531334.jpeg",
      "net_weight": "200 g",
      "price": 180,
      "discount_price": 165,
      "discount_parcent": 8,
      "description": "Creamy salted butter made from fresh dairy cream."
    },
    {
      "id": 304,
      "title": "Greek Yogurt",
      "img": "https://images.pexels.com/photos/1435735/pexels-photo-1435735.jpeg",
      "net_weight": "500 g",
      "price": 150,
      "discount_price": 135,
      "discount_parcent": 10,
      "description": "Thick and creamy Greek yogurt packed with protein."
    },
    {
      "id": 305,
      "title": "Mozzarella Cheese",
      "img": "https://images.pexels.com/photos/4109948/pexels-photo-4109948.jpeg",
      "net_weight": "200 g",
      "price": 350,
      "discount_price": 320,
      "discount_parcent": 9,
      "description": "Soft mozzarella cheese ideal for pizza and pasta."
    },
    {
      "id": 306,
      "title": "Fresh Cream",
      "img": "https://images.pexels.com/photos/5946639/pexels-photo-5946639.jpeg",
      "net_weight": "250 ml",
      "price": 140,
      "discount_price": 128,
      "discount_parcent": 9,
      "description": "Smooth fresh cream perfect for desserts and cooking."
    },
    {
      "id": 307,
      "title": "Vanilla Ice Cream",
      "img": "https://images.pexels.com/photos/1352278/pexels-photo-1352278.jpeg",
      "net_weight": "500 ml",
      "price": 220,
      "discount_price": 199,
      "discount_parcent": 10,
      "description": "Classic vanilla ice cream with a rich creamy texture."
    },
    {
      "id": 308,
      "title": "Ghee",
      "img": "https://images.pexels.com/photos/5946082/pexels-photo-5946082.jpeg",
      "net_weight": "500 g",
      "price": 650,
      "discount_price": 610,
      "discount_parcent": 6,
      "description": "Pure clarified butter with authentic rich flavor."
    },
    {
      "id": 309,
      "title": "Cottage Cheese",
      "img": "https://images.pexels.com/photos/1435895/pexels-photo-1435895.jpeg",
      "net_weight": "250 g",
      "price": 190,
      "discount_price": 175,
      "discount_parcent": 8,
      "description": "Fresh cottage cheese rich in protein and calcium."
    },
    {
      "id": 310,
      "title": "Chocolate Milk",
      "img": "https://images.pexels.com/photos/5946973/pexels-photo-5946973.jpeg",
      "net_weight": "500 ml",
      "price": 110,
      "discount_price": 99,
      "discount_parcent": 10,
      "description": "Delicious chocolate flavored milk loved by kids and adults."
    },
  ].obs;

// bakeryProducts

  var bakeryProducts = [
    {
      "id": 401,
      "title": "White Bread",
      "img": "https://images.pexels.com/photos/1775043/pexels-photo-1775043.jpeg",
      "net_weight": "400 g",
      "price": 70,
      "discount_price": 65,
      "discount_parcent": 7,
      "description": "Soft and freshly baked white bread, perfect for breakfast and sandwiches."
    },
    {
      "id": 402,
      "title": "Whole Wheat Bread",
      "img": "https://images.pexels.com/photos/209206/pexels-photo-209206.jpeg",
      "net_weight": "450 g",
      "price": 85,
      "discount_price": 79,
      "discount_parcent": 7,
      "description": "Healthy whole wheat bread rich in fiber and nutrients."
    },
    {
      "id": 403,
      "title": "Chocolate Cake",
      "img": "https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg",
      "net_weight": "500 g",
      "price": 450,
      "discount_price": 399,
      "discount_parcent": 11,
      "description": "Rich chocolate cake made with premium cocoa and fresh cream."
    },
    {
      "id": 404,
      "title": "Blueberry Muffin",
      "img": "https://images.pexels.com/photos/1657343/pexels-photo-1657343.jpeg",
      "net_weight": "2 pcs",
      "price": 120,
      "discount_price": 110,
      "discount_parcent": 8,
      "description": "Soft blueberry muffins with a sweet fruity flavor."
    },
    {
      "id": 405,
      "title": "Butter Croissant",
      "img": "https://images.pexels.com/photos/2135/food-france-morning-breakfast.jpg",
      "net_weight": "2 pcs",
      "price": 140,
      "discount_price": 128,
      "discount_parcent": 9,
      "description": "Flaky French-style butter croissants baked to perfection."
    },
    {
      "id": 406,
      "title": "Chocolate Cookies",
      "img": "https://images.pexels.com/photos/230325/pexels-photo-230325.jpeg",
      "net_weight": "250 g",
      "price": 160,
      "discount_price": 145,
      "discount_parcent": 9,
      "description": "Crunchy chocolate cookies made with premium ingredients."
    },
    {
      "id": 407,
      "title": "Donut",
      "img": "https://images.pexels.com/photos/4686960/pexels-photo-4686960.jpeg",
      "net_weight": "2 pcs",
      "price": 90,
      "discount_price": 80,
      "discount_parcent": 11,
      "description": "Fresh glazed donuts with a soft and fluffy texture."
    },
    {
      "id": 408,
      "title": "Cupcake",
      "img": "https://images.pexels.com/photos/1055272/pexels-photo-1055272.jpeg",
      "net_weight": "2 pcs",
      "price": 110,
      "discount_price": 99,
      "discount_parcent": 10,
      "description": "Delicious vanilla cupcakes topped with creamy frosting."
    },
    {
      "id": 409,
      "title": "Cheese Puff",
      "img": "https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg",
      "net_weight": "200 g",
      "price": 150,
      "discount_price": 135,
      "discount_parcent": 10,
      "description": "Crispy cheese puffs with a rich buttery taste."
    },
    {
      "id": 410,
      "title": "Apple Pie",
      "img": "https://images.pexels.com/photos/2693447/pexels-photo-2693447.jpeg",
      "net_weight": "500 g",
      "price": 380,
      "discount_price": 340,
      "discount_parcent": 11,
      "description": "Classic apple pie filled with fresh apples and cinnamon."
    },
  ].obs;






}