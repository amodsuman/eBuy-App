class EBuyModel {

  //Get item by id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //Get item by position
  Item getByPosition(int pos) => items[pos];


  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1604021661000"),
    Item(
        id: 2,
        name: "Pixel 5",
        desc: "Google Pixel phone 5th generation",
        price: 699,
        color: "#00ac51",
        image:
            "https://www.telstra.com.au/content/dam/tcom/lego/2020/plans-devices/mobiles/google-pixel-5/shared-google-pixel-5-black-05-900x1200.png"),
    Item(
        id: 3,
        name: "Playstation 5",
        desc: "Sony Playstation 5th generation",
        price: 500,
        color: "#544ee4",
        image:
            "https://i1.wp.com/freepngimages.com/wp-content/uploads/2020/07/Playstation-5-games-console-transparent-background-png-image.png?fit=1000%2C1000"),
    Item(
        id: 4,
        name: "Galaxy S21 Ultra",
        desc: "Samsung Galaxy S21 Ultra 2021 edition.",
        price: 1299,
        color: "#1c1c1c",
        image:
            "https://lh3.googleusercontent.com/qRQPjHrhRVIs-xnfNSyiPXOH2vH97ylMacgbTKebqJtRfNH3LlYo8pN-5igsLDWUH62tGl5zNpTsl5xd8SprzGmXoCEmWFOi2-2cQVGS-r3PaRXHt62DmJHq-jrYX0UQvWZ9BA=s800-c"),
    Item(
        id: 5,
        name: "iPad Pro",
        desc: "Apple iPad Pro 2020 edition",
        price: 799,
        color: "#f73984",
        image:
            "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-12-select-wifi-silver-202003_FMT_WHH?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1583551131102"),
    Item(
        id: 6,
        name: "Airpods Pro",
        desc: "Apple Aipods Pro 1st generation",
        price: 200,
        color: "#e3e4e9",
        image:
            "https://crdms.images.consumerreports.org/c_lfill,w_598/prod/products/cr/models/400116-wireless-portable-headphones-apple-airpods-pro-10009323.png"),
    Item(
        id: 7,
        name: "M1 Macbook Air",
        desc: "Apple Macbook air with apple silicon",
        price: 1099,
        color: "#e0bfae",
        image:
            "https://support.apple.com/library/APPLE/APPLECARE_ALLGEOS/SP825/macbookair.png"),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
