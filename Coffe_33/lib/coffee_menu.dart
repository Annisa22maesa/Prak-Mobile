class CoffeeMenu {
  String name;
  List<String> imageUrls;
  String description;
  String price;
  List<String> ingredients;
  String nutrition;
  String reviewAverage;
  String reviewCount;
  String linkStore;


  CoffeeMenu({
    required this.name,
    required this.imageUrls,
    required this.description,
    required this.price,
    required this.ingredients,
    required this.nutrition,
    required this.reviewAverage,
    required this.reviewCount,
    required this.linkStore,
  });
}

var coffeeList = [
  CoffeeMenu(
    name: "Caffè Americano",
    imageUrls: [
      "https://www.starbucks.co.id/storage/image/temporary/summernote_image_1648177928.jpg",
      "https://globalassets.starbucks.com/assets/f12bc8af498d45ed92c5d6f1dac64062.jpg",
      "https://www.rukita.co/stories/wp-content/uploads/2019/11/starbucks-americano.jpg",
    ],
    description: "HOT: Rich, full-bodied espresso with hot water.",
    price: "Rp. 20.000",
    ingredients: [
      "Water", "Brewed Espresso"
    ],
    nutrition: "15 calories",
    reviewAverage: "88%",
    reviewCount: "6875",
    linkStore: "https://www.starbucks.com/menu/product/406/hot",
  ),
  CoffeeMenu(
    name: "Caffè Latte",
    imageUrls: [
      "https://www.starbucks.co.id/storage/image/temporary/summernote_image_1648177502.jpg",
      "https://globalassets.starbucks.com/assets/b635f407bbcd49e7b8dd9119ce33f76e.jpg",
      "https://www.foodierate.com/uploads/fullsize/111/16N7dz5ca7133c85993_daftar-harga-menu-starbucks-indonesia-latte.jpg",
    ],
    description: "Rich, full-bodied espresso in steamed milk, lightly topped with foam. A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it.",
    price: "Rp24.000",
    ingredients: [
      "Milk", "Brewed Espresso"
    ],
    nutrition: "190 calories",
    reviewAverage: "89%",
    reviewCount: "8209",
    linkStore: "https://www.starbucks.com/menu/product/407/hot",
  ),
  CoffeeMenu(
    name: "Cappuccino",
    imageUrls: [
      "https://www.starbucks.co.id/storage/image/temporary/summernote_image_1648177603.jpg",
      "https://globalassets.starbucks.com/assets/5c515339667943ce84dc56effdf5fc1b.jpg",
      "https://cdn.idntimes.com/content-images/post/20181024/grubstreetcom-04a843333703cea02e698a964c51aee7.jpg",
    ],
    description: "Espresso with steamed milk, topped with a deep layer of foam.",
    price: "Rp22.000",
    ingredients: [
      "Milk", "Brewed Espresso"
    ],
    nutrition: "140 calories",
    reviewAverage: "92%",
    reviewCount: "2973",
    linkStore: "https://www.starbucks.com/menu/product/409/hot",
  ),
  CoffeeMenu(
    name: "Flat White",
    imageUrls: [
      "https://static.republika.co.id/uploads/images/inpicture_slide/kopi-flat-white-starbucks-_150107161241-449.jpg",
      "https://globalassets.starbucks.com/assets/fedee22e49724cd09fbcc7ee2e567377.jpg",
      "https://static.republika.co.id/uploads/images/inpicture_slide/kopi-flat-white-starbucks-_150107161241-449.jpg",
    ],
    description: "Expertly steamed milk poured over a double shot of our signature espresso and finished with a thin layer of velvety microfoam.",
    price: "Rp24.000",
    ingredients: [
      "Milk", "Brewed Espresso"
    ],
    nutrition: "140 calories",
    reviewAverage: "87%",
    reviewCount: "5763",
    linkStore: "https://www.starbucks.com/menu/product/565/hot",
  ),
  CoffeeMenu(
    name: "Caramel Macchiato",
    imageUrls: [
      "https://www.starbucks.co.id/storage/image/temporary/summernote_image_1648177837.jpg",
      "https://globalassets.starbucks.com/assets/58db701349cb48738069e8c912e2b3ac.jpg",
      "https://blog.elevenia.co.id/wp-content/uploads/2020/09/28920-Caramel-Macchiato-Starbucks-Insidet.jpg",
    ],
    description: "Espresso combined with vanilla-flavoured syrup, milk and caramel sauce over ice. A Starbucks classic, chilled for a classic summer’s day. To our signature espresso we add a creamy mix of vanilla syrup and cold milk poured over ice; it’s then topped with our proprietary buttery caramel sauce. Sweet!",
    price: "Rp26.000",
    ingredients: [
      "Milk", "Brewed Espresso", "Vanilla Syrup", "Caramel Sauce"
    ],
    nutrition: "250 calories",
    reviewAverage: "85%",
    reviewCount: "3748",
    linkStore: "https://www.starbucks.com/menu/product/413/hot",
  ),
  CoffeeMenu(
    name:"Caffè Mocha",
    imageUrls: [
      "https://5.imimg.com/data5/XS/UQ/UX/SELLER-18856673/mocha-coffee-500x500.jpg",
      "https://globalassets.starbucks.com/assets/915736da018842e788147f7eab73db73.jpg",
      "https://www.foodierate.com/uploads/fullsize/111/1l8iDP5ca71d46eb1f9_menu-starbucks-caffe-mocha-min.jpeg",
    ],
    description: "Espresso with bittersweet mocha sauce and steamed milk, topped with sweetened whipped cream. Delightful.",
    price: "Rp27.000",
    ingredients: [
      "Milk", "Brewed Espresso", "Mocha Sauce", "Whipped Cream"
    ],
    nutrition: "370 calories",
    reviewAverage: "85%",
    reviewCount: "8943",
    linkStore: "https://www.starbucks.com/menu/product/408/hot",
  ),
  CoffeeMenu(
    name: "Vanilla Sweet Cream Cold Brew",
    imageUrls: [
      "https://www.starbucks.co.id/storage/image/temporary/summernote_image_1648179465.jpg",
      "https://globalassets.starbucks.com/assets/07951b9a7d7d47a2892dfa7a707fd318.jpg",
      "https://copykat.com/wp-content/uploads/2021/08/Starbucks-Vanilla-Sweet-Cream-Cold-Brew-Pin-1.jpg",
    ],
    description: "Just before serving, our slow-steeped Cold Brew is topped with a delicate float of house-made vanilla sweet cream that cascades throughout the cup.",
    price: "Rp27.000",
    ingredients: [
      "Ice", 'Brewed Coffee', 'Vanilla Sweet Cream', 'Vanilla Syrup'
    ],
    nutrition: '110 calories',
    reviewAverage: '90%',
    reviewCount: '8733',
    linkStore: 'https://www.starbucks.com/menu/product/2121859/iced',
  ),
  CoffeeMenu(
    name: 'Signature Chocolate',
    imageUrls: [
      'https://www.starbucks.co.id/storage/image/temporary/summernote_image_1648480637.jpg',
      'https://globalassets.starbucks.com/assets/677d276173ec4bc192c2b9a21776339f.jpg',
      'https://www.foodierate.com/uploads/fullsize/111/1O3n4z5ca7273cd84d4_menu-starbucks-indonesia-chocolate-mousse-frappucino.jpg',
    ],
    description: 'Chocolate and dairy milk, steamed together to create a hot chocolate fit for a chocaholic! Topped with whipped cream and dusted with cocoa.',
    price: 'Rp25.000',
    ingredients: [
      'Milk', 'Mocha Sauce', 'Whipped Cream'
    ],
    nutrition: '370 calories',
    reviewAverage: '88%',
    reviewCount: '9873',
    linkStore: 'https://www.starbucks.com/menu/product/471/hot',
  ),
  CoffeeMenu(
    name: 'Chai Tea Latte',
    imageUrls: [
      'https://www.starbucks.co.id/storage/image/temporary/summernote_image_1648608998.jpg',
      'https://globalassets.starbucks.com/assets/2d52f16a22fb40ff898be1815ecc952e.jpg',
      'https://globalassets.starbucks.com/assets/98c8bafe1e2241f3ad02212eca2376e3.jpg',
    ],
    description: 'A less-sweet take on our beloved Classic Chai Tea Latte. Black tea-infused with cinnamon, clove and other warming spices-is steamed with milk and sweetened with liquid cane sugar.',
    price: 'Rp22.000',
    ingredients: [
      'Milk', 'Water', 'Chai Tea Concentrate'
    ],
    nutrition: '240 calories',
    reviewAverage: '90%',
    reviewCount: '8464',
    linkStore: 'https://www.starbucks.com/menu/product/466/hot',
  ),
  CoffeeMenu(
    name: 'Matcha Tea Latte',
    imageUrls: [
      'https://www.starbucks.co.id/storage/image/temporary/summernote_image_1648608894.jpg',
      'https://globalassets.starbucks.com/assets/8b1b6d808cca4787afd2b30cf8dd5676.jpg',
      'https://selerasa.com/wp-content/uploads/2015/12/images_greentea-latte-ala-starbucks-1200x802.png',
    ],
    description: 'Smooth and creamy matcha is lightly sweetened and served with steamed milk.',
    price: 'Rp26.000',
    ingredients: [
      'Milk', 'Matcha Tea Blend'
    ],
    nutrition: '240 calories',
    reviewAverage: '89%',
    reviewCount: '3428',
    linkStore: 'https://www.starbucks.com/menu/product/468/hot',
  )
];