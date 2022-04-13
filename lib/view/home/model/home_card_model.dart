class HomeCardModel {
  final String name;
  final String image;
  final int distance;
  final int price;
  final double rating;

  const HomeCardModel({
    required this.name,
    required this.image,
    required this.distance,
    required this.price,
    required this.rating,
  });
}

const List<HomeCardModel> homeList = [
  HomeCardModel(
    name: 'Mason York',
    image: 'assets/images/dog_1.jpg',
    distance: 7,
    price: 3,
    rating: 4.1,
  ),
  HomeCardModel(
    name: 'Mark Greene',
    image: 'assets/images/dog_2.jpg',
    distance: 8,
    price: 4,
    rating: 4.2,
  ),
  HomeCardModel(
    name: "Michiel Shoot",
    image: 'assets/images/dog_1.jpg',
    distance: 9,
    price: 5,
    rating: 4.3,
  ),
];
