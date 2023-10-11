class Slider {
  final String tag;
  final String title;
  final String imageURL;
  final int price;
  Slider(
      {required this.tag,
      required this.imageURL,
      required this.price,
      required this.title});
}

List<Slider> content = [
  Slider(
      tag: "New",
      imageURL:
          "https://images.pexels.com/photos/375889/pexels-photo-375889.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 2000,
      title: "Gifts Hampers"),
  Slider(
      tag: "",
      imageURL:
          "https://images.pexels.com/photos/860227/pexels-photo-860227.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 1000,
      title: "Ladies Bags"),
  Slider(
      tag: "New",
      imageURL:
          "https://images.pexels.com/photos/375889/pexels-photo-375889.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 4000,
      title: "Makeover products"),
  Slider(
      tag: "",
      imageURL:
          "https://images.pexels.com/photos/860227/pexels-photo-860227.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 3000,
      title: "Cargo pents"),
];
