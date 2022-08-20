class Item {
  final int id;
  final String name;
  final String desc;
  final String image;
  final num price;
  final String color;

  Item(this.id, this.name, this.desc, this.image, this.price, this.color);
}

class CatalogModel {
  static final items = [Item(
      01,
      "iphone 12 pro",
      "Apple iphone 12th gen",
      "https://mobilecity.co.nz/wp-content/uploads/2021/03/K17-scaled-4-1024x1024.jpg",
      999,
      "#33505a")];
}
