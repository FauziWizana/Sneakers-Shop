part of 'pages.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    String _value;
    return BlocBuilder<CategoryBloc, int>(
      builder: (context, number) => Scaffold(
        backgroundColor: Colors.grey[200],
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
            IconButton(icon: Icon(Icons.search_sharp), onPressed: null)
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Our Product",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 24),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: Text(
                        'Sort By',
                        style: GoogleFonts.poppins(color: Colors.black),
                      ),
                      items: [
                        DropdownMenuItem<String>(
                          child: Text('By Name'),
                          value: 'name',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('By Date'),
                          value: 'date',
                        ),
                      ],
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  )
                ],
              ),
              Wrap(
                children: [
                  ChoiceChip(
                    backgroundColor: Colors.white,
                    label: Text(
                      'Sneakers',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    selected: (number == 1) ? true : false,
                    avatar: Image(image: AssetImage('assets/sniker1.png')),
                    onSelected: (bool selected) {
                      setState(() {
                        BlocProvider.of<CategoryBloc>(context).add(number = 1);
                      });
                    },
                    selectedColor: Colors.blue[70],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.white,
                    avatar: Image(image: AssetImage('assets/watch.png')),
                    label: Text(
                      'Watch',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    selected: (number == 2) ? true : false,
                    onSelected: (bool selected) {
                      setState(() {
                        BlocProvider.of<CategoryBloc>(context).add(number = 2);
                      });
                    },
                    selectedColor: Colors.blue[70],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.white,
                    avatar: Image(image: AssetImage('assets/backpack.png')),
                    label: Text(
                      'Backpack',
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    selected: (number == 3) ? true : false,
                    onSelected: (bool selected) {
                      setState(() {
                        BlocProvider.of<CategoryBloc>(context).add(number = 3);
                      });
                    },
                    selectedColor: Colors.blue[70],
                  ),
                ],
              ),
              Expanded(
                  child: GridView.count(
                childAspectRatio: 0.7,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: mockShoes.map((e) => ContentBox(e)).toList(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
