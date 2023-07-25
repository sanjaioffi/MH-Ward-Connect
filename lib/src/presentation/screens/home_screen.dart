import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:madurai_ward_connect/src/presentation/themes/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> suggestions = [
    'Santhi Nagar',
    'Koodal Nagar',
    'Anaiyur',
    'Sambandhar Alankulam',
    'B.B.Kulam',
    'Meenambalpuram',
    'Kailaasapuram',
    'Vilangudi',
    'Thathaneri',
    'Aarappalayam',
    'Ponnaharam',
    'Krishnaapalayam',
    'Azhagaradi',
    'Viswasapuri',
    'Melapponnaharam',
    'Railway Colony',
    'Ellis Nagar',
    'S.S.Colony',
    'Ponmeni',
    'Arasaradi Othakkadai',
    'Bethaniyapuram',
    'Kochadai',
    'Visalakshi Nagar',
    'Thiruppaalai',
    'Kannanendhal',
    'Parasuraamanpatti',
    'Karpaga Nagar',
    'Uthangudi',
    'Masthaanpatti',
    'Melamadai',
    'Tahsildhar Nagar',
    'Vandiyur',
    'Saathamangalam',
    'Arignar Anna Nagar',
    'Madhichiyam',
    'Aazhwarpuram',
    'Sellur',
    'Pandhalkudi',
    'Goripalayam',
    'Ahimsapuram',
    'Narimedu',
    'Chokkikulam',
    'Tallakulam',
    'K.K.Nagar',
    'Pudur',
    'Lourdhu Nagar',
    'Reserve Line',
    'Aathikulam',
    'Naahanakulam',
    'Swami Sannidhi',
    'Ismailpuram',
    'Sourashtra Hr. Sec. School',
    'Pangajam Colony',
    'Mariamman Theppakulam',
    'Iraavadhanallur',
    'Sinna Anuppanadi',
    'Anuppanadi',
    'Chinthamani',
    'Meenakshi Nagar',
    'Avaniyaapuram',
    'Villapuram Pudhu Nagar',
    'Kathirvel Nagar',
    'Villaapuram',
    'Keeraithurai',
    'Sappani Kovil',
    'South Krishnan Kovil',
    'Manjanakara Street',
    'Dhrowpathi Amman Kovil',
    'St.Marys',
    'Kaamarajapuram',
    'Balaranganathapuram',
    'Navarathinapuram',
    'Lakshmipuram',
    'Thirumalai Naicker Mahal',
    'Maadakkulam',
    'Pazhangaanatham',
    'Sundarajapuram',
    'Madurai Baskaradass Nagar',
    'Perumal Theppakulam',
    'Krishnarayar Theppakulam',
    'Tamilsangam',
    'Sokkanadhar Kovil',
    'North Krishnan Kovil',
    'Meenakshi Kovil',
    'Jadamuni Kovil',
    'Kaajimar Street',
    'Subramaniapuram',
    'Solai Azhagupuram',
    'Jaihindpuram',
    'Veerakali Amman Kovil',
    'Thennaharam',
    'Kovalan Nagar',
    'T.V.S.Nagar',
    'Paamban Swami Nagar',
    'Mannar College',
    'Thirupparamkundram',
    'Haarvipatti',
    'Thirunahar',
    'Balaji Nagar',
    'Muthuramalingapuram',
  ];
  List<String> imageList = [
    'https://imgnew.outlookindia.com/public/uploads/articles/2020/8/18/Meenakshi_Amman_Temple,_Madurai.jpg',
    'https://static.india.com/wp-content/uploads/2019/01/Madurai.jpg',
    'https://imgnew.outlookindia.com/public/uploads/articles/2020/8/18/Meenakshi_Amman_Temple,_Madurai.jpg',
    // Add more image URLs here
  ];
  int _currentIndex = 0;

  String _selectedItem = '';
  TextEditingController wardName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ward Connect',
                    style: TextStyle(
                        color: AppColor.whatsAppTealGreen,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.person_rounded,
                    size: 30,
                    color: AppColor.black,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Icon(Icons.search, color: AppColor.grey),
                    SizedBox(width: 8),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Show the suggestion list here
                        },
                        child: TypeAheadField(
                          textFieldConfiguration: TextFieldConfiguration(
                            controller:
                                TextEditingController(text: _selectedItem),
                            decoration: InputDecoration(
                              hintText: 'Search Wards...',
                              border: InputBorder.none,
                            ),
                          ),
                          suggestionsCallback: (pattern) async {
                            return suggestions
                                .where((item) => item
                                    .toLowerCase()
                                    .contains(pattern.toLowerCase()))
                                .toList();
                          },
                          itemBuilder: (context, suggestion) {
                            return ListTile(
                              title: Text(suggestion),
                            );
                          },
                          onSuggestionSelected: (suggestion) {
                            setState(() {
                              _selectedItem = suggestion;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  // You can adjust the height as per your UI requirements
                  // aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: imageList.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            DotsIndicator(
              dotsCount: imageList.length,
              position: _currentIndex.toInt(),
              decorator: DotsDecorator(
                activeColor: AppColor
                    .whatsAppTealGreen, // You can customize the color of active dot
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
