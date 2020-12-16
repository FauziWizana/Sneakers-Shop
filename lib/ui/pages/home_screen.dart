part of 'pages.dart';

class HomeScreen extends StatefulWidget {
  final int bottomNavBarIndex;

  HomeScreen({this.bottomNavBarIndex = 0});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomNavBarIndex;
  PageController pageController;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: Colors.grey,
          )),
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              bottomNavBarIndex = index;
            },
            children: [ProductList()],
          ),
          createCustomBottomNavBar(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 46,
              width: 46,
              margin: EdgeInsets.only(bottom: 52),
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: Colors.deepPurple,
                onPressed: () {},
                child: SizedBox(
                  height: 26,
                  width: 26,
                  child: Icon(
                    MdiIcons.walletPlus,
                    color: Colors.black.withOpacity(0.54),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget createCustomBottomNavBar() => Align(
        alignment: Alignment.bottomCenter,
        child: ClipPath(
          clipper: BottomNavBarClipper(),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.grey[100],
                selectedItemColor: Colors.deepPurple,
                unselectedItemColor: Color(0xffe5e5e5),
                selectedLabelStyle: GoogleFonts.raleway(
                    fontSize: 13, fontWeight: FontWeight.w600),
                items: [
                  BottomNavigationBarItem(
                      icon: Container(
                        margin: EdgeInsets.only(bottom: 6, right: 20),
                        height: 20,
                        child: Icon(Icons.home),
                      ),
                      label: ""),
                  BottomNavigationBarItem(
                      icon: Container(
                        margin: EdgeInsets.only(bottom: 6, right: 90),
                        height: 20,
                        child: Icon(Icons.home),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        margin: EdgeInsets.only(bottom: 6),
                        height: 20,
                        child: Icon(Icons.home),
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        margin: EdgeInsets.only(bottom: 6),
                        height: 20,
                        child: Icon(Icons.home),
                      ),
                      label: ''),
                ]),
          ),
        ),
      );
}

class BottomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width / 2 - 28, 0);
    path.quadraticBezierTo(size.width / 2 - 28, 33, size.width / 2, 33);
    path.quadraticBezierTo(size.width / 2 + 28, 33, size.width / 2 + 28, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
