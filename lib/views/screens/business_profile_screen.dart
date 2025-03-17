import 'package:bluecs_assignment/configure/colors.dart';
import 'package:bluecs_assignment/views/widgets/store_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BusinessProfileScreen extends StatelessWidget {
  const BusinessProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        centerTitle: true,
        title: const Text('Business Profile'),
        titleTextStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 8),
                  _createButton(title: "Profile", isSelected: true),
                  _createButton(title: "Inventory", isSelected: false),
                  _createButton(title: "All Posts", isSelected: false),
                  _createButton(title: "Job Posts", isSelected: false),
                  const SizedBox(width: 8),
                ],
              ),
            ),
            const SizedBox(height: 18),
            _buildBrandHeader(),
            _buildRatingSection(),
            _buildSharSection(),
            const SizedBox(height: 21),
            _buildAboutSection(),
            const SizedBox(height: 11),
            _reviewSection(),
            const SizedBox(height: 21),
            _buildImageGallery(),
            const SizedBox(height: 11),
            _buildLocationMap(),
            _buildProductsAndServices(),
            _buildSimilarStores(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _createButton({required String title, required bool isSelected}) {
    return Container(
      height: 30,
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? Colors.blue : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        border: Border.all(color: isSelected ? Colors.blue : Colors.white),
      ),
      child: Text(title),
    );
  }

  Widget _buildBrandHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: const AssetImage('assets/mcdonalds_logo.png'),
                backgroundColor: CustomColors.cardBackgroundColor,
              ),
              const SizedBox(width: 18),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('McDonalds', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Container(
                          height: 22,
                          width: 90,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(50)),
                            border: Border.all(color: Colors.yellow.shade100),
                          ),
                          child: const Text("Restaurtant", style: TextStyle(fontSize: 10)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade400,
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Icon(Icons.location_on_outlined, size: 16),
                        ),
                        const SizedBox(width: 10),
                        const Flexible(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor ',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: const ButtonStyle(
                            padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 40, vertical: 4)),
                            foregroundColor: WidgetStatePropertyAll(Colors.white),
                            backgroundColor: WidgetStatePropertyAll(Colors.blue),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Follow'),
                        ),
                        const SizedBox(width: 4),
                        ElevatedButton(
                          style: const ButtonStyle(
                            padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 40, vertical: 4)),
                            foregroundColor: WidgetStatePropertyAll(Colors.white),
                            backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(14)),
                                side: BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Chat'),
                        ),
                        const SizedBox(width: 4),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildRatingSection() {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: CustomColors.cardBackgroundColor,
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Rate Our Business',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.yellow.shade600,
            ),
          ),
          const SizedBox(height: 18),
          Image.asset(
            'assets/rating.png',
            height: 32,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(height: 12),
          const Text(
            '0 Rated-View Ratings',
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }

  Widget _buildSharSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            foregroundColor: const WidgetStatePropertyAll(Colors.white),
            backgroundColor: WidgetStatePropertyAll(CustomColors.buttonBackgroundColor),
          ),
          onPressed: () {},
          child: const Text("Share Visiting card"),
        ),
        ElevatedButton(
          style: ButtonStyle(
            foregroundColor: const WidgetStatePropertyAll(Colors.white),
            backgroundColor: WidgetStatePropertyAll(CustomColors.buttonBackgroundColor),
          ),
          onPressed: () {},
          child: const Text("Share profile"),
        )
      ],
    );
  }

  Widget _buildAboutSection() {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "About Our Business",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Icon(Icons.arrow_forward_sharp),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: TextStyle(fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _reviewSection() {
    return Container(
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 28),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(22)),
        color: CustomColors.cardBackgroundColor,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _infoItem("assets/star_icon.svg", '4.5'),
              Container(height: 20, width: 1, color: Colors.white24),
              _infoItem("assets/eye_icon.svg", '100+'),
              Container(height: 20, width: 1, color: Colors.white24),
              _infoItem("assets/message_icon.svg", '50+'),
              Container(height: 20, width: 1, color: Colors.white24),
              _infoItem("assets/person_icon.svg", '50+'),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Since 1980', style: TextStyle(color: Colors.white, fontSize: 11)),
              Text('Joined At : 1/1/2024', style: TextStyle(color: Colors.white, fontSize: 11)),
              Text('Posts : 31', style: TextStyle(color: Colors.white, fontSize: 11)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoItem(String path, String text) {
    return Row(
      children: [
        SvgPicture.asset(path, height: 14, width: 14),
        const SizedBox(width: 4),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildImageGallery() {
    return Container(
      height: 220,
      padding: const EdgeInsets.symmetric(vertical: 28),
      decoration: BoxDecoration(
        color: CustomColors.cardBackgroundColor,
      ),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/mcd_image${index + 1}.jpg', width: 120, height: 100, fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildProductsAndServices() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: CustomColors.cardBackgroundColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 18),
              ElevatedButton(
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 40, vertical: 4)),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                ),
                onPressed: () {},
                child: const Text('Products'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: const WidgetStatePropertyAll(Colors.white),
                  backgroundColor: WidgetStatePropertyAll(CustomColors.buttonBackgroundColor),
                ),
                onPressed: () {},
                child: const Text("Services"),
              )
            ],
          ),
          const SizedBox(height: 18),
          SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset('assets/product${index + 1}.jpg', width: 130, fit: BoxFit.cover),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationMap() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Business Location Here",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 18),
          Image.asset("assets/map.png"),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildSimilarStores() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const SizedBox(height: 18),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Similar Stores",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('View All', style: TextStyle(color: Colors.blue, fontSize: 14)),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_forward_sharp, color: Colors.blue, size: 18),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  StoreCard(),
                  StoreCard(),
                  StoreCard(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      // unselectedLabelStyle: const TextStyle(fontSize: 11),
      // selectedLabelStyle: const TextStyle(fontSize: 11),
      items: [
        BottomNavigationBarItem(
          icon: SizedBox(
            height: 26,
            width: 26,
            child: SvgPicture.asset("assets/home_icon.svg", height: 26, width: 26),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              child: SvgPicture.asset(
                "assets/bag_icon.svg",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          label: 'Jobs',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assets/store_icon.svg", height: 18, width: 18),
          ),
          label: 'Store',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/people_icon.svg", height: 26, width: 26),
          label: 'Connections',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/person_icon.svg", height: 22, width: 22),
          label: 'Profile',
        ),
      ],
    );
  }
}
