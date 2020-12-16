part of 'widgets.dart';

class RatingStars extends StatelessWidget {
  final double rate;

  RatingStars(this.rate);
  @override
  Widget build(BuildContext context) {
    int numberOfStars = rate.round();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
              5,
              (index) => Icon(
                    (index < numberOfStars)
                        ? MdiIcons.star
                        : MdiIcons.starOutline,
                    size: 16,
                    color: Colors.yellow,
                  )) +
          [
            SizedBox(
              width: 4,
            ),
            Text('($rate)',
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey))
          ],
    );
  }
}
