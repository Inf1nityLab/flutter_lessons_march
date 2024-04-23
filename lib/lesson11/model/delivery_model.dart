class Delivery {
  final String image;
  final bool like;
  final String name;
  final String timer;
  final String value;
  final List<String> ingredients;

  Delivery(
      {required this.image,
      required this.like,
      required this.name,
      required this.timer,
      required this.value,
      required this.ingredients});
}

List<Delivery> data = [
  Delivery(image: '', like: false, name: '', timer: '', value: '', ingredients: ['', '', '']),
  Delivery(image: '', like: false, name: '', timer: '', value: '', ingredients: ['', '', '']),
];

