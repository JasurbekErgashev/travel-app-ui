import 'package:flutter/cupertino.dart';

const cScaffoldBackgroundColor = Color(0xFFF9F9F9);

const clightBlackColor = Color(0xFF545454);
const cdarkBlackColor = Color(0xFF1D1D1D);
const cVeryLightGreyColor = Color(0xFFA1A1A1);

const cLightReddishColor = Color(0xFFE59E8B);
const cDarkReddishColor = Color(0xFFe85c45);

const cLightYellowishColor = Color(0xFFF3AE80);
const cDarkYellowishColor = Color(0xFFE88944);

const cGreyLikeBackgroundColor = Color(0x99BEB7B0);
const cGreyTextColor = Color(0xFFD9D9D9);

const Map<String, String> cIconPaths = {
  'bookmark': 'assets/icons/bookmark.png',
  'home': 'assets/icons/home.png',
  'note': 'assets/icons/note.png',
  'shopping-cart': 'assets/icons/shopping-cart.png',
  'user': 'assets/icons/user.png',
};

const cLightHeadingTextStyle = TextStyle(
  color: clightBlackColor,
  fontFamily: 'Montserrat',
  fontSize: 28.0,
);

const cDarkHeadingTextStyle = TextStyle(
  color: cdarkBlackColor,
  fontFamily: 'Montserrat',
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
);

const cSubheadingTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 25.0,
  color: cdarkBlackColor,
);

const cDefaultHeight = SizedBox(
  height: 20.0,
);

const List<Map<String, dynamic>> cDummyDataSet = [
  {
    'iconImagePath': 'assets/images/sky_tour_icon.png',
    'sectionName': 'Sky',
    'places': [
      {
        'placeName': 'Hot Air Balloon',
        'imagePath': [
          'assets/images/sky/1.png',
          'assets/images/sky/2.png',
          'assets/images/sky/3.png',
          'assets/images/sky/4.png',
        ],
        'location': 'Cappadocia, Turkey',
        'price': '159',
        'distance': '897',
        'ratings': '4.8',
        'description':
            'Cappadocia is an amazing and spectacular landscape that has been sculpted by erosion over thousands of years. These cave like dwellings and rock-hewn sanctuaries date back to the Byzantine post-Iconoclastic period, as far back as 4th Century. Today what is left are these amazing troglodyte villages, underground cities that once contained human habitat and beautiful valleys that go for as far as the eye can see. For those who want the hassle taken out of organizing your day, we offer several package tours that start from Istanbul to Cappadocia. All included flight tickets, accommodation and daily sightseeing tours while in Cappadocia.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images/sky/1.png',
          'assets/images/sky/1.png',
          'assets/images/sky/1.png',
          'assets/images/sky/1.png',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images/sky/1.png',
          'assets/images/sky/1.png',
          'assets/images/sky/1.png',
          'assets/images/sky/1.png',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images/sky/1.png',
          'assets/images/sky/1.png',
          'assets/images/sky/1.png',
          'assets/images/sky/1.png',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
    ],
  },
  {
    'iconImagePath': 'assets/images/beach_walk_icon.png',
    'sectionName': 'Beach',
    'places': [
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
    ],
  },
  {
    'iconImagePath': 'assets/images/historical_icon.png',
    'sectionName': 'History',
    'places': [
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
    ],
  },
  {
    'iconImagePath': 'assets/images/meals_icon.png',
    'sectionName': 'Meals',
    'places': [
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
    ],
  },
  {
    'iconImagePath': 'assets/images/city_tour_icon.png',
    'sectionName': 'City',
    'places': [
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
      {
        'placeName': 'Thiksey Monastery',
        'imagePath': [
          'assets/images....',
          'assets/images....',
          'assets/images....',
          'assets/images....',
        ],
        'location': 'Ladakh, India',
        'price': '148',
        'distance': '625',
        'ratings': '4.6',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
      },
    ],
  },
];
