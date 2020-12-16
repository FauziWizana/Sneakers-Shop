part of 'pages.dart';

class ProductDetail extends StatefulWidget {
  final Shoes shoes;
  ProductDetail(this.shoes);
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {});
        }),
        title: Center(
          child: Text(
            'XE',
            style: GoogleFonts.patuaOne().copyWith(color: Colors.blue[400]),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (widget.shoes.discount != 0)
                  ? Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Text(
                          widget.shoes.discount.toString() + '%',
                          style:
                              GoogleFonts.poppins(fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.pink[200]),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink[100],
                        border: Border.all(
                          color: Colors.white,
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.shoes.picturePath),
                            fit: BoxFit.contain)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
                color: Colors.grey[300]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(widget.shoes.name,
                          style: GoogleFonts.poppins(
                              color: Colors.deepPurple,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              MdiIcons.star,
                              color: Colors.yellow,
                            ),
                            Text(widget.shoes.rate.toString(),
                                style: GoogleFonts.poppins(
                                    color: Colors.grey[600], fontSize: 12))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 10),
                  child: Text(widget.shoes.description,
                      style: GoogleFonts.poppins(
                          color: Colors.deepPurple,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Text('size',
                          style: GoogleFonts.poppins(
                            color: Colors.grey[600],
                            fontSize: 12,
                          )),
                      Wrap(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Chip(
                              backgroundColor: Colors.blue[400],
                              label: Text(
                                'US 6',
                                style: GoogleFonts.poppins(fontSize: 14),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Chip(
                            backgroundColor: Colors.grey[300],
                            label: Text(
                              'US 7',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Chip(
                            backgroundColor: Colors.grey[300],
                            label: Text(
                              'US 8',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Chip(
                            backgroundColor: Colors.grey[300],
                            label: Text(
                              'US 9',
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Available Color',
                          style: GoogleFonts.poppins(
                            color: Colors.grey[600],
                            fontSize: 12,
                          )),
                      Wrap(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.yellow[100],
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        shape: BoxShape.circle,
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.red[100],
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.purple[100],
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.purple,
                                        shape: BoxShape.circle,
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 24,
                            ),
                            Text(
                              "\$",
                              style: GoogleFonts.poppins(
                                  color: Colors.deepPurple, fontSize: 24),
                            ),
                            Text(widget.shoes.price.toString(),
                                style: GoogleFonts.poppins(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 40)),
                            Text(
                              ".00",
                              style: GoogleFonts.poppins(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        margin: EdgeInsets.only(top: 12),
                        height: MediaQuery.of(context).size.height * 0.04,
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: RaisedButton(
                            onPressed: () {},
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            color: Colors.grey[200],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  MdiIcons.cart,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Add To Cart",
                                  style: GoogleFonts.poppins(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
