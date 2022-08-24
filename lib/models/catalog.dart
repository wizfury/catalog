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
      "https://media.istockphoto.com/photos/iphone-13-pro-sierra-blue-picture-id1371695315?k=20&m=1371695315&s=612x612&w=0&h=p0uldk-gMobGtneOLRKXi8agV15hRuWxYTNFs5k9k3k=",
      999,
      "#33505a")];
}
