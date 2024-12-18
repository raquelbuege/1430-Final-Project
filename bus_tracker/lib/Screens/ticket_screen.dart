import 'package:flutter/material.dart';


class TicketScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<TicketScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Tickets & Wallet'),
        backgroundColor: Color(0xff226F54),
        foregroundColor: Color(0xffFFFFFF),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: const Color(0xffC4D7F2),
          // Active tab indicator color
          labelColor: const Color(0xffC4D7F2),
          // Active tab text/icon color
          unselectedLabelColor: const Color(0xffffffff),
          // Inactive tab text/icon color
          tabs: [
            Tab(text: 'Buy Tickets', icon: Icon(Icons.confirmation_number)),
            Tab(text: 'Wallet', icon: Icon(Icons.account_balance_wallet)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          BuyTicketsScreen(),
          WalletScreen(),
        ],
      ),
    );
  }
}
class BuyTicketsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Color(0xff35251D),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Spacer(),
              Text(
                'Buy Tickets',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Fare Type',
            style: TextStyle(fontSize: 18, 
            color: Colors.white,
            fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff8D6B94)),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Full Fare', style: TextStyle(color: Colors.white)),
                Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Available Fares',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xffFFFFFF)),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                FareOption(title: '3 Hour Pass - Full Fare', price: '\$2.75'),
                FareOption(title: 'Day Pass - Full Fare', price: '\$7.00'),
                FareOption(title: '7 Day Pass - Full Fare', price: '\$25.00'),
                FareOption(title: '31 Day Pass', price: '\$97.50'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FareOption extends StatelessWidget {
  final String title;
  final String price;

  const FareOption({required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      color: Color(0xff226F54),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Color(0xffFFFFFF), fontSize: 18, fontWeight: FontWeight.bold),),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Color(0xff8D6B94),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            price,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Color(0xff35251D),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Wallet',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xffFFFFFF)),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                WalletItem(title: 'Driver\'s License', description: 'ID: 1234567890'),
                WalletItem(title: 'Credit Card', description: 'Visa - **** **** **** 1234'),
                WalletItem(title: 'Student ID', description: 'University:  University of Pittsburgh'),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xff8D6B94), foregroundColor: Color(0xffFFFFFF)),
            onPressed: () {},
            child: Text('Add New Item'),
          ),
        ],
      ),
    );
  }
}

class WalletItem extends StatelessWidget {
  final String title;
  final String description;

  const WalletItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff8D6B94),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(Icons.folder, color: Colors.blue),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffFFFFFF))),
        subtitle: Text(description, style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffFFFFFF))),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
      ),
    );
  }
}
