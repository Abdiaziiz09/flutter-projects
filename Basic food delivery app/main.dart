import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double productValueOfBanana = 0.0;
  double productValueOfOrange = 0.0;
  double productValueOfApple = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // App title or app name
      appBar: AppBar(
        backgroundColor: const Color(0xFF3A3A3A),
        title: Text(
          "Food delivery",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      // Products
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Products
          children: [
            // Product 1
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 180.0,
                    decoration: BoxDecoration(
                      color: Color(0xffFBFBFB),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        // Image: Image
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          child: Image.asset(
                            "assets/banana.png",
                            width: double.infinity,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        // Price: Price: $0.75
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Container(
                            alignment: AlignmentDirectional.topStart,
                            child: Row(
                              children: <Widget>[
                                //
                                Text("Price:"),
                                SizedBox(width: 3.0),
                                Text(
                                  "\$0.75",
                                  style: GoogleFonts.poppins(
                                    color: Color(0xff479A5D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Description: A sweet, energy-rich fruit enjoyed worldwide
                        SizedBox(height: 6.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            "A sweet, energy-rich fruit enjoyed worldwide",
                          ),
                        ),
                        SizedBox(height: 8.0),
                        // Icon: add or ++ icon
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 50.0,
                                height: 50.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    // Code statement
                                    setState(() {
                                      productValueOfBanana =
                                          productValueOfBanana + 0.75;
                                    });
                                    print(
                                      "Change product value of banana now is: ${productValueOfBanana.toStringAsFixed(2)}",
                                    );
                                  },
                                  icon: Icon(Icons.add, size: 28.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ),

                // Product 2
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 180.0,
                    decoration: BoxDecoration(
                      color: Color(0xffFBFBFB),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        // Image: Image
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          child: Image.asset(
                            "assets/orange.png",
                            width: double.infinity,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        // Price: Price: $1.3
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Container(
                            alignment: AlignmentDirectional.topStart,
                            child: Row(
                              children: <Widget>[
                                //
                                Text("Price:"),
                                SizedBox(width: 3.0),
                                Text(
                                  "\$1.3",
                                  style: GoogleFonts.poppins(
                                    color: Color(0xff479A5D),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Description: A sweet, energy-rich fruit enjoyed worldwide
                        SizedBox(height: 6.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            "A sweet, juicy fruit full of flavor and vitamins",
                          ),
                        ),
                        SizedBox(height: 8.0),
                        // Icon: add or ++ icon
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 50.0,
                                height: 50.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    // Code statement
                                    setState(() {
                                      productValueOfOrange =
                                          productValueOfOrange + 1.3;
                                    });
                                    print(
                                      "Change product value of orange now is: ${productValueOfOrange.toStringAsFixed(2)}",
                                    );
                                  },
                                  icon: Icon(Icons.add, size: 28.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Product 3
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 180.0,
                decoration: BoxDecoration(
                  color: Color(0xffFBFBFB),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: <Widget>[
                    // Image: Image
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      child: Image.asset(
                        "assets/apple.png",
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    // Price: Price: $2.7
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Row(
                          children: <Widget>[
                            //
                            Text("Price:"),
                            SizedBox(width: 3.0),
                            Text(
                              "\$2.7",
                              style: GoogleFonts.poppins(
                                color: Color(0xff479A5D),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Description: A sweet, energy-rich fruit enjoyed worldwide
                    SizedBox(height: 6.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        "A zesty, vitamin-rich fruit loved for its juice and flavor",
                      ),
                    ),
                    SizedBox(height: 8.0),
                    // Icon: add or ++ icon
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 50.0,
                            height: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xffF2F2F2),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: IconButton(
                              onPressed: () {
                                // Code statement
                                setState(() {
                                  productValueOfApple =
                                      productValueOfApple + 2.7;
                                });
                                print(
                                  "Change product value of apple now is: ${productValueOfApple.toStringAsFixed(2)}",
                                );
                              },
                              icon: Icon(Icons.add, size: 28.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Qeeybta waxa yaabaha aad u baahan tahay in aad iibsato badhan/button-ka ku geeyn lahaay
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        shape: CircleBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PricePage(
                bananaTotal: productValueOfBanana,
                orangeTotal: productValueOfOrange,
                appleTotal: productValueOfApple,
              ),
            ),
          );
        },
        child: Icon(Icons.shopping_bag, color: Colors.white),
      ),
    );
  }
}

// ===========================================================
// Price Page
// ===========================================================
class PricePage extends StatefulWidget {
  final double bananaTotal;
  final double orangeTotal;
  final double appleTotal;
  const PricePage({
    super.key,

    required this.bananaTotal,
    required this.orangeTotal,
    required this.appleTotal,
  });

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  void price() {
    double total = widget.bananaTotal + widget.orangeTotal + widget.appleTotal;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Total price", style: GoogleFonts.poppins()),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Total banana
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total banana", style: GoogleFonts.poppins()),
                  Text("${widget.bananaTotal.toStringAsFixed(2)}"),
                ],
              ),

              SizedBox(height: 8.0),

              // Total orange
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total orange", style: GoogleFonts.poppins()),
                  Text("${widget.orangeTotal.toStringAsFixed(2)}"),
                ],
              ),

              SizedBox(height: 8.0),

              //  Total apple
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total apple", style: GoogleFonts.poppins()),
                  Text("${widget.appleTotal.toStringAsFixed(2)}"),
                ],
              ),

              SizedBox(height: 15.0),

              //  Total products
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total products", style: GoogleFonts.poppins()),
                  Text("${total.toStringAsFixed(2)}"),
                ],
              ),

              SizedBox(height: 15.0),

              // Buy button
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        //
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      child: TextButton(
                        child: Text(
                          "Pay",
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3A3A3A),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Price",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          // Product 1
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 5.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(5.0),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/banana.png"),
              ),
              title: Text(
                "Banana",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "A sweet, energy-rich fruit enjoyed worldwide",
                style: GoogleFonts.poppins(fontSize: 13.0),
              ),
              trailing: Column(
                children: <Widget>[
                  Text(
                    "\$${widget.bananaTotal.toStringAsFixed(2)}",
                    style: GoogleFonts.poppins(
                      color: Color(0xff479A5D),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "3 item",
                    style: GoogleFonts.poppins(
                      color: Color(0xff121111),
                      fontSize: 13.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Divider(),

          // Product 2
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 5.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(5.0),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/orange.png"),
              ),
              title: Text(
                "Banana",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "A sweet, juicy fruit full of flavor and vitamins",
                style: GoogleFonts.poppins(fontSize: 13.0),
              ),
              trailing: Column(
                children: <Widget>[
                  Text(
                    "\$${widget.orangeTotal.toStringAsFixed(2)}",
                    style: GoogleFonts.poppins(
                      color: Color(0xff479A5D),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "3 item",
                    style: GoogleFonts.poppins(
                      color: Color(0xff121111),
                      fontSize: 13.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Divider(),

          // Product 3
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 5.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(5.0),
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("assets/apple.png"),
              ),
              title: Text(
                "Banana",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "A zesty, vitamin-rich fruit loved for its juice and flavor",
                style: GoogleFonts.poppins(fontSize: 13.0),
              ),
              trailing: Column(
                children: <Widget>[
                  Text(
                    "\$${widget.appleTotal.toStringAsFixed(2)}",
                    style: GoogleFonts.poppins(
                      color: Color(0xff479A5D),
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "3 item",
                    style: GoogleFonts.poppins(
                      color: Color(0xff121111),
                      fontSize: 13.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Divider(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
          bottom: 25.0,
        ),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Price title
            Text(
              "Price total",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Price number
            InkWell(
              child: Text(
                "Pay",
                style: GoogleFonts.poppins(
                  color: Color(0xff2CED5F),
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: price,
            ),
          ],
        ),
      ),
    );
  }
}
