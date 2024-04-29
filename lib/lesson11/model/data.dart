
class Data{
  final String image;
  final String name;
  final int price;

  Data({required this.image, required this.name, required this.price});
}

List<Data> data = [
  Data(image: 'assets/images/creamcheese.png', name: 'Creamcheese', price: 10),
  Data(image: 'assets/images/avocado.png', name: 'Avocado', price: 11),
  Data(image: 'assets/images/avocado.png', name: 'Tomato', price: 12),
];