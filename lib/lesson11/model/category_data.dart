class DistInfo {
  final String name;
  final String name2;
  final String image;
  final String description;
  final String price;
  String ratting;
  DistInfo({
    required this.name,
    required this.price,
    required this.description,
    required this.name2,
    required this.image,
    required this.ratting,
  });
}

List<DistInfo> smallCon = [
  DistInfo(
      description:
      "A veggie burger is a hamburger patty that does not contain meat. It may be made from ingredients like beans.",
      name: "Burger",
      price: "\$${10}",
      name2: " Vegetarian Burger",
      ratting: " 9.1 Perfect (125)",
      image:
      "https://gas-kvas.com/grafic/uploads/posts/2023-09/1695925257_gas-kvas-com-p-kartinki-burger-51.jpg"),
  DistInfo(
      description:
      "A veggie pizza  roasted red peppers, baby spinach, onions, mushrooms, tomatoes, and black olives.",
      price: "\$${12}",
      name: "Pizza",
      name2: " Vegetarian Pizaa",
      ratting: " 8.1 Good (122)",
      image: "https://catherineasquithgallery.com/uploads/posts/2021-03/1614548256_57-p-pitstsa-na-belom-fone-91.jpg"),
  DistInfo(
      description:
      "sushi, a staple rice dish of Japanese cuisine, consisting of cooked rice flavoured with vinegar.",
      price: "\$${11}",
      name: "Sushi",
      name2: "Sushii",
      ratting: " 8.3 Good (123)",
      image:
      "https://i0.wp.com/bamboounion.pk/wp-content/uploads/2022/02/best-sushi-restaurant-in-Lahore.jpg?fit=1183%2C756&ssl=1"),
  DistInfo(
      name: "Salad",
      description:
      "Try starting with romaine lettuce, a cheese they like, then move to their favorite vegetable, and dressing. ",
      price: "\$${10}",
      name2: " Vegetarian Salaad",
      ratting: " 8.1 Good (122)",
      image:
      "https://www.momontimeout.com/wp-content/uploads/2021/08/snickers-apple-salad-square.jpeg"),
];