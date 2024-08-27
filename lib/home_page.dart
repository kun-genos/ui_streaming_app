import 'package:flutter/material.dart';
import 'package:ui_srtreaming_app/colors_schema.dart';
import 'package:ui_srtreaming_app/widgets/menu_widget.dart';
import 'package:ui_srtreaming_app/widgets/plus_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedType = "movie";
  String selectedFrequency = "Tahunan";

  void onChangeType(String type) {
    selectedType = type;
    setState(() {});
  }

  void onChangeFrequency(String freq) {
    selectedFrequency = freq;
    setState(() {});
  }

  int isSelectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text("Home Page"),
    Text("Paket Page"),
    Text("Transaksi Page"),
    Text("Profil Page"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      isSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(top: 21),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(top: 25, left: 35),
            child: Text(
              "Paket Streaming",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              "Pilihan Paket",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    onChangeType("movie");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 98,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          color: ColMenu,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/img/movie.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Movie",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        child: selectedType == "movie"
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.black87,
                                size: 20,
                              )
                            : Container(),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangeType("sport");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 98,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          color: ColMenu,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/img/sport.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Sport",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        child: selectedType == "sport"
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.black87,
                                size: 20,
                              )
                            : Container(),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangeType("all");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 98,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          color: ColMenu,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/img/all.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "All Package",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        child: selectedType == "all"
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.black87,
                                size: 20,
                              )
                            : Container(),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Pilih Durasi Paket",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    onChangeFrequency("1-bulan");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "1-bulan"
                        ? BoxDecoration(
                            color: ColMenu,
                            borderRadius: BorderRadius.all(Radius.circular(10)))
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "1-Bulan",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedFrequency == "1-bulan"
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangeFrequency("2-bulan");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "2-bulan"
                        ? BoxDecoration(
                            color: ColMenu,
                            borderRadius: BorderRadius.all(Radius.circular(10)))
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "2-Bulan",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedFrequency == "2-bulan"
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangeFrequency("1-Tahun");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "1-Tahun"
                        ? BoxDecoration(
                            color: ColMenu,
                            borderRadius: BorderRadius.all(Radius.circular(10)))
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "1-Tahun",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: selectedFrequency == "1-Tahun"
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Tambahan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PlusWidget(name: "Musik", img: "musik", isSelected: true),
                PlusWidget(name: "Sepak Bola", img: "bola", isSelected: false),
                PlusWidget(name: "Fitness", img: "fitnes", isSelected: false),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PlusWidget(name: "Anime", img: "anime", isSelected: true),
                PlusWidget(name: "Tv", img: "tv", isSelected: true),
                PlusWidget(name: "Rugby", img: "rugby", isSelected: false),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: "Paket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Transaksi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),
        ],
        currentIndex: isSelectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: ColButton,
        onTap: _onItemTapped,
      ),
    );
  }
}
