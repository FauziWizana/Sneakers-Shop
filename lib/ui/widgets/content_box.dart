part of 'widgets.dart';

class ContentBox extends StatelessWidget {
  final Shoes shoes;

  ContentBox(this.shoes);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ProductDetail(shoes));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5 - 40,
        height: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                  child: (shoes.discount != 0)
                      ? Container(
                          decoration: BoxDecoration(
                              color: Colors.blue[400],
                              borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Text(
                              shoes.discount.toString() + '%',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      : SizedBox(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: Icon(Icons.favorite_border),
                  ),
                )
              ],
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.pink[200]),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 120,
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
                      height: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(shoes.picturePath),
                              fit: BoxFit.contain)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              shoes.name,
              style: GoogleFonts.poppins(
                  color: Colors.deepPurple, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$",
                  style: GoogleFonts.poppins(
                      color: Colors.deepPurple, fontSize: 14),
                ),
                Text(shoes.price.toString(),
                    style: GoogleFonts.poppins(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600,
                        fontSize: 20)),
              ],
            ),
            Center(child: RatingStars(shoes.rate)),
          ],
        ),
      ),
    );
  }
}
