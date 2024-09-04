class PopularModel {
  String title;
  String image;
  String desc;
  String price;

  PopularModel(this.title, this.image, this.desc, this.price);
}

List<PopularModel> popularData = [
  PopularModel("Dennis Lingo", "assets/1.jpg", "Hazy Rose", "\$250"),
  PopularModel("Marks & Spencer", "assets/3.png", "Hazy Rose", "\$140"),
  PopularModel("Trucker Jacket", "assets/2.jpg", "Hazy Rose", "\$200"),
  PopularModel("Dennis", "assets/4.png", "Hazy Rose", "\$3000")
];
