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
      "discount-offer":" 15"
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


}