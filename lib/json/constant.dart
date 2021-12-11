import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String homeImg = 'https://images.unsplash.com/photo-1583744946564-b52ac1c389c8?auto=format&fit=crop&w=687&q=80';

const String profileUrl =
    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?auto=format&fit=crop&w=880&q=80';

const List<Map<String, Object>> categories = [
  {
    'title': 'New In',
    'imgUrl': 'https://images.unsplash.com/photo-1638763757006-94414ab2ccf2?auto=format&fit=crop&w=687&q=80',
  },
  {
    'title': 'Men',
    'imgUrl': 'https://images.unsplash.com/photo-1586083702768-190ae093d34d?auto=format&fit=crop&w=759&q=80',
  },
  {
    'title': 'Clothing',
    'imgUrl': 'https://images.unsplash.com/photo-1571867424485-369464ed33cc?auto=format&fit=crop&w=1170&q=80',
  },
  {
    'title': 'Women',
    'imgUrl': 'https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Couple',
    'imgUrl': 'https://images.unsplash.com/photo-1550614000-4895a10e1bfd?auto=format&fit=crop&w=800&q=60',
  },
];

const List<Map<String, Object>> recommends = [
  {
    'title': 'Summer Loose Korean T-shirt',
    'price': '30',
    'imgUrl': 'https://images.unsplash.com/photo-1581044777550-4cfa60707c03?auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Bat Sleeve Student T-shirt Summer',
    'price': '35',
    'imgUrl': 'https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Summer New Korean Version',
    'price': '25',
    'imgUrl': 'https://images.unsplash.com/photo-1562572159-4efc207f5aff?auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Loose-fitting Outside Shirt',
    'price': '30',
    'imgUrl': 'https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?auto=format&fit=crop&w=400&q=60',
  },
  {
    'title': 'Cotton Short-sleeved T-shirt',
    'price': '20',
    'imgUrl': 'https://images.unsplash.com/photo-1541257710737-06d667133a53?auto=format&fit=crop&w=400&q=60',
  }
];

const List<Map<String, Object>> recently = [
  {
    'title': 'Summer Loose Korean T-shirt',
    'price': '30',
    'imgUrl': 'https://images.unsplash.com/photo-1475180098004-ca77a66827be?auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Bat Sleeve Student T-shirt Summer',
    'price': '35',
    'imgUrl': 'https://images.unsplash.com/photo-1563826904577-6b72c5d75e53?format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Summer New Korean Version',
    'price': '25',
    'imgUrl': 'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?auto=format&fit=crop&w=800&q=60',
  },
  {
    'title': 'Loose-fitting Outside Shirt',
    'price': '30',
    'imgUrl': 'https://images.unsplash.com/photo-1533407411655-dcce1534c1a6?auto=format&fit=crop&w=376&q=80',
  },
  {
    'title': 'Cotton Short-sleeved T-shirt',
    'price': '20',
    'imgUrl': 'https://images.unsplash.com/photo-1507007727303-1532f71109cf?auto=format&fit=crop&w=400&q=60',
  }
];

const List<String> slider = [
  'https://images.unsplash.com/photo-1554568218-0f1715e72254?auto=format&fit=crop&w=687&q=80',
  'https://images.unsplash.com/photo-1638156332423-e837806b1ae4?auto=format&fit=crop&w=687&q=80',
  'https://images.unsplash.com/flagged/photo-1574876242429-3164fb8bf4bc?auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1483118714900-540cf339fd46?auto=format&fit=crop&w=400&q=60'
];

const List<Map<String, Object>> explores = [
  {
    'title': 'Jackets',
    'imgUrl': 'https://images.unsplash.com/photo-1551537482-f2075a1d41f2?auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Coats',
    'imgUrl': 'https://images.unsplash.com/photo-1520012218364-3dbe62c99bee?auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Accessories',
    'imgUrl': 'https://images.unsplash.com/photo-1509741102003-ca64bfe5f069?auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Demin',
    'imgUrl': 'https://images.unsplash.com/photo-1548435407-2d408a5f0aa3?auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Handbag',
    'imgUrl': 'https://images.unsplash.com/photo-1524498250077-390f9e378fc0?auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Hat',
    'imgUrl': 'https://images.unsplash.com/photo-1514327605112-b887c0e61c0a?auto=format&fit=crop&w=800&q=60'
  }
];

const List<Map<String, Object>> exploreProduct = [
  {
    'title': 'Jacket',
    'subTitle': 'Blues Explorsion',
    'imgUrl': 'https://images.unsplash.com/photo-1487222477894-8943e31ef7b2?auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Coats',
    'subTitle': 'Blues Explorsion',
    'imgUrl': 'https://images.unsplash.com/photo-1539533018447-63fcce2678e3?auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Accessories',
    'subTitle': 'Blues Explorsion',
    'imgUrl': 'https://images.unsplash.com/photo-1556656793-08538906a9f8?auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Demin',
    'subTitle': 'Blues Explorsion',
    'imgUrl': 'https://images.unsplash.com/photo-1544642899-f0d6e5f6ed6f?auto=format&fit=crop&w=800&q=60'
  },
  {
    'title': 'Handbag',
    'subTitle': 'Blues Explorsion',
    'imgUrl': 'https://images.unsplash.com/photo-1560891958-68bb1fe7fb78?auto=format&fit=crop&w=800&q=60'
  }
];

const List<String> exploreSlide = [
  'https://images.unsplash.com/photo-1591997297702-d43f7f008486?auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1565155003033-252a7073802c?auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1561537051-cf36d6224a9f?auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1549822944-02701d3e20ed?auto=format&fit=crop&w=500&q=60'
];

const List<Map<String, Color>> colors = [
  {'title': Colors.green},
  {'title': Colors.blue},
  {'title': Colors.orange},
  {'title': Colors.black},
];

const List<Map<String, Object>> sizes = [
  {'title': 'S'},
  {'title': 'M'},
  {'title': 'L'},
  {'title': 'XL'},
  {'title': 'XXL'},
];

const List exploreBanner = [
  {
    'year': '2019',
    'title': 'Urban Collection',
    'description': 'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2020',
    'title': 'Urban Fashion',
    'description': 'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
  {
    'year': '2021',
    'title': 'Urban Collection',
    'description': 'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2022',
    'title': 'Urban Fashion',
    'description': 'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
];

const List productDetail = [
  'https://images.unsplash.com/photo-1565155003033-252a7073802c?auto=format&fit=crop&w=700&q=80',
  'https://images.unsplash.com/photo-1545911825-6bfa5b0c34a9?auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1572112686886-5c0b5bc8dacd?auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1582041148887-67274b989ae3?auto=format&fit=crop&w=500&q=60',
];

const List brands = ['Adidas', 'Bershka', 'Converse', 'Diesel'];

const List historySearches = ['Red Sunglasses', 'Large T-Shirt', 'Jaws Hoodie', 'Blue Sweater', 'Levi’s Jeans'];

const List cartList = [
  {
    "img": "https://images.unsplash.com/photo-1495385794356-15371f348c31?auto=format&fit=crop&w=800&q=60",
    "name": "Snoopy T-shirt",
    "ref": "04559812",
    "price": "\$40",
    "size": "S"
  },
  {
    "img": "https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?auto=format&fit=crop&w=800&q=60",
    "name": "American",
    "ref": "04459811",
    "price": "\$30",
    "size": "M"
  },
];

List menusMore = ["Home", "Explore", "Stores", "Cart", "Notifications", "Loyalty Card", "My orders"];

List itemsTab = [
  {"icon": Icons.home, "size": 28.0},
  {"icon": FontAwesomeIcons.mapMarkerAlt, "size": 22.0},
  {"icon": FontAwesomeIcons.userAlt, "size": 21.0},
  {"icon": FontAwesomeIcons.shoppingBag, "size": 22.0},
  {"icon": Icons.more_horiz, "size": 40.0},
];

List accountList = [
  "Account Details",
  "Loyalty card & offers",
  "Notifications",
  "Delivery Information",
  "Payment Information",
  "Language",
  "Privacy Settings"
];

List storeList = [
  {
    "img": "https://images.unsplash.com/photo-1507914372368-b2b085b925a1?auto=format&fit=crop&w=800&q=60",
    "name": "Châtelet - Les Halles, Paris",
    "open": 1
  },
  {
    "img": "https://images.unsplash.com/photo-1546213290-e1b492ab3eee?auto=format&fit=crop&w=800&q=60",
    "name": "Champs-Élysées, Paris",
    "open": 0
  },
  {
    "img": "https://images.unsplash.com/photo-1555529771-7888783a18d3?auto=format&fit=crop&w=800&q=60",
    "name": "Châtelet - Les Halles, Paris",
    "open": 1
  },
];
