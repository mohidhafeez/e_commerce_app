class SliderData {
  final String tag;
  final String title;
  final String imageURL;
  final int price;
  SliderData(
      {required this.tag,
      required this.imageURL,
      required this.price,
      required this.title});
}

List<SliderData> content = [
  SliderData(
      tag: "New",
      imageURL:
          "https://images.pexels.com/photos/375889/pexels-photo-375889.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 2000,
      title: "Gifts Hampers"),
  SliderData(
      tag: "",
      imageURL:
          "https://images.pexels.com/photos/860227/pexels-photo-860227.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 1000,
      title: "Ladies Bags"),
  SliderData(
      tag: "New",
      imageURL:
          "https://images.pexels.com/photos/375889/pexels-photo-375889.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 4000,
      title: "Makeover products"),
  SliderData(
      tag: "",
      imageURL:
          "https://images.pexels.com/photos/860227/pexels-photo-860227.jpeg?auto=compress&cs=tinysrgb&w=600",
      price: 3000,
      title: "Cargo pents"),
];

class StoryImages {
  final String imageURLs;

  StoryImages(this.imageURLs);
}

List<String> imageURLs = [
  // StoryImages(
  "https://images.pexels.com/photos/375889/pexels-photo-375889.jpeg?auto=compress&cs=tinysrgb&w=600",
  // ),
  // StoryImages(
  "https://images.pexels.com/photos/860227/pexels-photo-860227.jpeg?auto=compress&cs=tinysrgb&w=600",
  // ),
  // StoryImages(
  "https://images.pexels.com/photos/2802809/pexels-photo-2802809.jpeg?auto=compress&cs=tinysrgb&w=600",
  // ),
  // StoryImages(
  "https://images.pexels.com/photos/2280359/pexels-photo-2280359.jpeg?auto=compress&cs=tinysrgb&w=600",
  // ),
  // StoryImages(
  "https://images.pexels.com/photos/3038786/pexels-photo-3038786.jpeg?auto=compress&cs=tinysrgb&w=600",
  // ),
  // StoryImages(
  "https://images.pexels.com/photos/2448523/pexels-photo-2448523.jpeg?auto=compress&cs=tinysrgb&w=600",
  // ),
  // StoryImages(
  "https://images.pexels.com/photos/2460457/pexels-photo-2460457.jpeg?auto=compress&cs=tinysrgb&w=600",
  // ),
];

class CuratedStores {
  final String imageUrl;
  final String brandName;
  final String storeName;
  final double rating;
  final int reviews;
  CuratedStores(
      {required this.brandName,
      required this.imageUrl,
      required this.rating,
      required this.reviews,
      required this.storeName});
}

List<CuratedStores> shoesDetails = [
  CuratedStores(
      brandName: "LV",
      imageUrl:
          "https://images.pexels.com/photos/1478442/pexels-photo-1478442.jpeg?auto=compress&cs=tinysrgb&w=600",
      rating: 4.6,
      reviews: 1024,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "Puma",
      imageUrl:
          "https://images.pexels.com/photos/15036819/pexels-photo-15036819/free-photo-of-close-up-shot-of-a-puma-rubber-shoes.jpeg?auto=compress&cs=tinysrgb&w=600",
      rating: 4.5,
      reviews: 998,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "Addidas",
      imageUrl:
          "https://images.pexels.com/photos/8268989/pexels-photo-8268989.jpeg?auto=compress&cs=tinysrgb&w=600",
      rating: 4.6,
      reviews: 996,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "Skechers",
      imageUrl:
          "https://images.pexels.com/photos/5710075/pexels-photo-5710075.jpeg?auto=compress&cs=tinysrgb&w=600",
      rating: 4.6,
      reviews: 1110,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "Vans",
      imageUrl:
          "https://images.pexels.com/photos/4277509/pexels-photo-4277509.jpeg?auto=compress&cs=tinysrgb&w=600",
      rating: 4.6,
      reviews: 1290,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "Puma",
      imageUrl:
          "https://images.pexels.com/photos/15036819/pexels-photo-15036819/free-photo-of-close-up-shot-of-a-puma-rubber-shoes.jpeg?auto=compress&cs=tinysrgb&w=600",
      rating: 4.5,
      reviews: 998,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "LV",
      imageUrl:
          "https://images.pexels.com/photos/1478442/pexels-photo-1478442.jpeg?auto=compress&cs=tinysrgb&w=600",
      rating: 4.6,
      reviews: 1024,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "LV",
      imageUrl:
          "https://images.pexels.com/photos/1478442/pexels-photo-1478442.jpeg?auto=compress&cs=tinysrgb&w=600",
      rating: 4.6,
      reviews: 1024,
      storeName: "KBR Store"),
];

class BrandStores {
  final String imageUrl;
  final String brandName;
  final String storeName;
  final double rating;
  final int reviews;
  BrandStores(
      {required this.brandName,
      required this.imageUrl,
      required this.rating,
      required this.reviews,
      required this.storeName});
}

List<CuratedStores> storeDetails = [
  CuratedStores(
      brandName: "Eikund",
      imageUrl:
          "https://images.pexels.com/photos/1458681/pexels-photo-1458681.jpeg?auto=compress&cs=tinysrgb&w=600",
      rating: 4.6,
      reviews: 1024,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "H&M",
      imageUrl:
          "https://images.pexels.com/photos/916446/pexels-photo-916446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      rating: 4.5,
      reviews: 998,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "Outfitters",
      imageUrl:
          "https://images.pexels.com/photos/2303337/pexels-photo-2303337.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      rating: 4.6,
      reviews: 996,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "Levi's",
      imageUrl:
          "https://images.pexels.com/photos/904289/pexels-photo-904289.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      rating: 4.6,
      reviews: 1110,
      storeName: "KBR Store"),
  CuratedStores(
      brandName: "Dior",
      imageUrl:
          "https://images.pexels.com/photos/1458681/pexels-photo-1458681.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      rating: 4.6,
      reviews: 1290,
      storeName: "KBR Store"),
];

class AnyTime {
  final String imagePath;
  final String title;
  final String storeName;
  final double rating;
  final int reviews;
  final int time;
  AnyTime(
      {required this.title,
      required this.imagePath,
      required this.rating,
      required this.reviews,
      required this.storeName,
      required this.time});
}

List<AnyTime> anyTimeDetails = [
  AnyTime(
      title: "Skincare Products by Sadia",
      imagePath: 'assets/images/1.png',
      rating: 4.6,
      reviews: 1024,
      storeName: "KBR Store",
      time: 5),
  AnyTime(
      title: "Skincare Products by Aleena",
      imagePath: 'assets/images/2.png',
      rating: 4.5,
      reviews: 998,
      storeName: "KBR Store",
      time: 5),
  AnyTime(
      title: "Skincare Products by Nazish",
      imagePath: 'assets/images/3.png',
      rating: 4.6,
      reviews: 996,
      storeName: "KBR Store",
      time: 6),
  AnyTime(
      title: "Skincare Products by Shazia",
      imagePath: 'assets/images/4.png',
      rating: 4.6,
      reviews: 1110,
      storeName: "KBR Store",
      time: 4),
  AnyTime(
      title: "DiorSkincare Products by Ayesha",
      imagePath: 'assets/images/5.png',
      rating: 4.6,
      reviews: 1290,
      storeName: "KBR Store",
      time: 5),
];

class ServiceProvider {
  final String imagePath;
  final String title;

  final double rating;
  final int reviews;

  ServiceProvider({
    required this.title,
    required this.imagePath,
    required this.rating,
    required this.reviews,
  });
}

List<ServiceProvider> serviceProviderDetails = [
  ServiceProvider(
    title: "Tom & Jay",
    imagePath: 'assets/images/h1.png',
    rating: 4.6,
    reviews: 1024,
  ),
  ServiceProvider(
    title: "British Barbar",
    imagePath: 'assets/images/h2.png',
    rating: 4.5,
    reviews: 998,
  ),
  ServiceProvider(
    title: "The Urban",
    imagePath: 'assets/images/h3.png',
    rating: 4.6,
    reviews: 996,
  ),
  ServiceProvider(
    title: "Style Cave",
    imagePath: 'assets/images/h4.png',
    rating: 4.6,
    reviews: 1110,
  ),
  ServiceProvider(
    title: "Gold Barbar",
    imagePath: 'assets/images/h5.png',
    rating: 4.6,
    reviews: 1290,
  ),
];
