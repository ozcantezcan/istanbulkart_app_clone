import 'package:flutter/material.dart';
//import 'package:perforated_bottom_navigation_bar/perforated_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _textMenu = Row(
      children: [
        Container(
          //margin: const EdgeInsets.all(5),
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: const Text(
              'Tümü',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: const Text(
              'Kampanyalar',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: const Text(
              'Haberler',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
    final _homePageBody = Center(
      child: ListView(
        shrinkWrap: false,
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        children: [
          _textMenu,
          GridView.count(
            childAspectRatio: 0.72,
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Image.asset('banners/istanbulkart1.jpg'),
              Image.asset('banners/istanbulkart2.jpg'),
              Image.asset('banners/istanbulkart3.jpg'),
              Image.asset('banners/istanbulkart4.jpg'),
              Image.asset('banners/istanbulkart2.jpg'),
              Image.asset('banners/istanbulkart3.jpg'),
              Image.asset('banners/istanbulkart4.jpg'),
            ],
          ),
        ],
      ),
    );
    final _homePageAppBar = PreferredSize(
      preferredSize: const Size.fromHeight(60.0),
      child: AppBar(
        leading: const Icon(
          size: 30,
          Icons.favorite,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
    var _selectedIndex = 0;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      appBar: _homePageAppBar,
      body: _homePageBody,
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: const Color.fromARGB(255, 24, 23, 23),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12.0,
          color: Color.fromARGB(255, 58, 62, 84),
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 14.0,
          color: Colors.white,
        ),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 58, 62, 84),
            ),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              color: Color.fromARGB(255, 58, 62, 84),
            ),
            label: 'Kartlarım',
          ),
          BottomNavigationBarItem(
            icon: Icon(null),
            label: 'QR ile öde',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.compare_arrows,
              color: Color.fromARGB(255, 58, 62, 84),
            ),
            label: 'İşlemler',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Color.fromARGB(255, 58, 62, 84),
            ),
            label: 'Bul',
          ),
        ],
        currentIndex: _selectedIndex,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 58, 62, 84),
        child: const Icon(Icons.qr_code_scanner),
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
