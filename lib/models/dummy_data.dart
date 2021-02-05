import 'package:RTW/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<Product> accessoriesPdts = [
  Product(
    id: 1,
    categoryId: '2',
    title: 'watch',
    description: 'Brown leather watch',
    price: 350.99,
    categoryName: 'Accessories',
    tagId: ["watch", "silver"],
    imageUrl:
        'https://forsale.com.gh/wp-content/uploads/2020/02/LIGE-2020-New-Watch-Men-Fashion-Sport-Quartz-Clock-Mens-Watches-Brand-Luxury-Leather-Business-Waterproof-5.jpg',
  ),
  Product(
    id: 2,
    categoryId: '2',
    title: 'bracelet',
    description: 'Mens bracelet.',
    price: 99.99,
    categoryName: 'Accessories',
    tagId: ["Bracelet", "silver"],
    imageUrl:
        'https://smhttp-ssl-80183.nexcesscdn.net/pub/media/catalog/product/cache/487456a5d2282f00d24412879de55a38/b/m/bm90148bl_main.jpg',
  ),
  Product(
    id: 3,
    categoryId: '2',
    title: 'bowtie',
    description: 'Navy bowtie.',
    price: 65.99,
    categoryName: 'Accessories',
    tagId: ["Bowtie", "black"],
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0269/7759/products/AZ_DarkNavy_BT1_1024x1024.jpg',
  ),
  Product(
    id: 4,
    categoryId: '2',
    title: 'pouch',
    description: 'Brown leather pouch.',
    price: 200.99,
    categoryName: 'Accessories',
    tagId: ["bag", "brown"],
    imageUrl:
        'https://5.imimg.com/data5/DN/UH/NF/SELLER-23522164/designer-mens-leather-pouch-500x500.jpg',
  ),
  Product(
    id: 5,
    categoryId: '4',
    title: 'cufflinks',
    description: 'Golden knot cufflinks for men ',
    price: 200.99,
    categoryName: 'Accessories',
    tagId: ["cufflinks", "silver"],
    imageUrl:
        'https://gh.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/04/525441/1.jpg?3584',
  ),
];

final List<Product> clothingProducts = [
  Product(
    categoryId: '1',
    title: 'Shirt',
    description: 'blue OCBD shirt',
    price: 129.99,
    categoryName: 'Clothing',
    tagId: ["shirt", "blue"],
    imageUrl:
        'https://cdn.shopify.com/s/files/1/0420/0029/products/HAMILTON-BUTTON-DOWN-DRESS-SHIRT-BLUE-OXFORD-1.jpg',
  ),
  Product(
    categoryId: '1',
    title: 't-shirts',
    description: 'A blue polo t-shirt.',
    price: 89.99,
    categoryName: 'Clothing',
    tagId: ["polo shirt", "blue"],
    imageUrl:
        'https://image.uniqlo.com/UQ/ST3/WesternCommon/imagesgoods/407942/item/goods_69_407942.jpg',
  ),
  Product(
    categoryId: '1',
    title: 'Double breasted suit',
    description: 'grey double breasted suit with subtle window pane partern',
    price: 650.99,
    categoryName: 'Clothing',
    tagId: ["suit", "double breasted"],
    imageUrl:
        'https://smhttp-ssl-85991.nexcesscdn.net/media/catalog/product/cache/2accacfcf7bc449eee367fe2319d84b6/imp/ort/grey-check-double-breasted-suit-jacket-mfj355afg.jpg',
  ),
  Product(
    categoryId: '1',
    title: 'Gurkha pants',
    description: 'Grey gurkha pants.',
    price: 149.99,
    categoryName: 'Clothing',
    tagId: ["pants", "grey"],
    imageUrl:
        'https://www.paulstuart.com/dw/image/v2/BDLD_PRD/on/demandware.static/-/Sites-paulstuart-master-catalog/default/dwae803965/images/large/82850001-charcoal-10.jpg',
  ),
  Product(
    categoryId: '1',
    title: 'Jeans',
    description: 'Dress jeans for men.',
    price: 149.99,
    categoryName: 'Clothing',
    tagId: ["jeans", "black"],
    imageUrl:
        'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1555450404-slim3-buck-1555450398.jpg',
  ),
   Product(
    categoryId: '1',
    title: 'Jeans',
    description: 'Men\'s boxers.',
    price: 49.99,
    categoryName: 'Clothing',
    tagId: ["boxers", "black"],
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/A14D04TqlSL._AC_UL1500_.jpg',
  ),
];

final List<Product> shoesProducts = [
  Product(
    categoryId: '3',
    title: 'Chukka boots',
    description: 'Brown seude chukka boots',
    price: 500.99,
    categoryName: 'Shoes',
     tagId: ['2'],
    imageUrl:
        'https://www.carminashoemaker.com/cdnassets/chukka_carmina_10027_sadl-3.jpg',
  ),
  Product(
    categoryId: '3',
    title: 'oxfords',
    description: 'Black oxfords',
    categoryName: 'Shoes',
    tagId: ['1'],
    price: 699.99,
    imageUrl:
        'https://www.carminashoemaker.com/cdnassets/black_calf_oxford_shoes_carmina_732_l.jpg',
  ),
  
  Product(
    categoryId: '3',
    title: 'White sneakers',
    description: 'white sneakers.',
    price: 240.99,
    categoryName: 'shoes',
   tagId: ['3'],
    imageUrl:
        'https://i.pinimg.com/originals/a9/ed/a3/a9eda301c11c35906c698d7570f8ac5e.png',
  ),
  Product(
    categoryId: '3',
    title: 'Double Monkstraps',
    description: 'brown double monkstraps.',
    price: 440.99,
    categoryName: 'shoes',
    tagId: ['1'],
    imageUrl:
        'https://static.zara.net/photos///2020/I/1/2/p/2405/520/105/2/w/1920/2405520105_2_1_1.jpg?ts=1603716086821',
  ),
    Product(
    categoryId: '3',
    title: 'Loafers',
    description: 'brown tassel loafers.',
    price: 240.99,
    categoryName: 'shoes',
    tagId: ['4'],
    imageUrl:
        'https://www.carminashoemaker.com/cdnassets/tassel_loafers_polo_suede_80367_l-2.jpg',
  ),
  Product(
    categoryId: '3',
    title: 'Slippers',
    description: 'brown leather slippers.',
    price: 200.99,
    categoryName: 'shoes',
    tagId: ['5'],
    imageUrl:
        'https://5.imimg.com/data5/RH/TT/MY-35974098/kraasa-401-tan-slippers-500x500.jpg',
  ),
  
];

final List<Product> giftProducts = [
  Product(
    categoryId: '4',
    title: 'cufflinks',
    description: 'Golden knot cufflinks for men ',
    price: 200.99,
    categoryName: 'Accessories',
    tagId: ['1'],
    imageUrl:
        'https://gh.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/04/525441/1.jpg?3584',
  ),
  Product(
    categoryId: '4',
    title: 'watch',
    description: 'Logines hydroquest 41mm automatic men\'s watch',
    price: 450.99,
    categoryName: 'Accessories',
    tagId: ['2'],
    imageUrl:
        'https://content.thewosgroup.com/productimage/17470267/17470267_1.jpg?impolicy=hero',
  ),
  Product(
    categoryId: '4',
    title: 'Tie accessories',
    description: 'well curated accessories for the gentleman',
    price: 300.99,
    categoryName: 'Accessories',
     tagId: ['3'],
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/91JtNW1PvSL._AC_UL1500_.jpg',
  ),
  Product(
    categoryId: '4',
    title: 'Perfume',
    description: 'Creed Aventus.',
    price: 1900.99,
    categoryName: 'Accessories',
    tagId: ['4'],
    imageUrl: 'https://cdn.fragrancenet.com/images/photos/900x900/288145.jpg',
  ), Product(
    categoryId: '2',
    title: 'bracelet',
    description: 'Mens bracelet.',
    price: 99.99,
    categoryName: 'Accessories',
     tagId: ['5'],
    imageUrl:
        'https://smhttp-ssl-80183.nexcesscdn.net/pub/media/catalog/product/cache/487456a5d2282f00d24412879de55a38/b/m/bm90148bl_main.jpg',
  ),

];


    final List<Product> newCollection = [  
    Product(
      categoryId: '1',
      title: 'shirt',
      description: 'Wrinkle-free oxford cotton button down shirt!',
      price: 120.99,
          categoryName: 'Clothing',
    tagId: ["Shirts", "blue"],
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0420/0029/products/HAMILTON-BUTTON-DOWN-DRESS-SHIRT-BLUE-OXFORD-1.jpg',
    ),
    Product(
      categoryId: '2',
      title: 'Bowtie',
      description: 'Black bowtie.',
      price: 59.99,
          categoryName: 'Accessories',
    tagId: ["Bowtie", "black"],
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0269/7759/products/AZ_DarkNavy_BT1_1024x1024.jpg',
    ),
    Product(
      categoryId: '3',
      title: 'chukka boots',
      description: 'Brown seude chukka boots',
      price: 650.99,
          categoryName: 'Shoes',
    tagId: ["Boots", "Brown"],
      imageUrl:
          'https://www.carminashoemaker.com/cdnassets/chukka_carmina_10027_sadl-3.jpg',
    ),
    Product(
      categoryId: '4',
      title: 'Creed Aventus',
      description: 'perfume for men.',
      price: 49.99,
          categoryName: 'Gifts',
    tagId: ["Perfume", "silver"],
      imageUrl:
          'https://cdn.fragrancenet.com/images/photos/900x900/288145.jpg',
    ),
];
