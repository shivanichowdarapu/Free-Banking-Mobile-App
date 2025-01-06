import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/routes/route_constants.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';
import 'package:free_banking_mobile_app/widgets/transaction_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> _transactions = [
    {'title': 'Apple Store', 'subtitle': 'Entertainment', 'amount': '-\$5,99', 'url': ImagesConstants.apple},
    {'title': 'Spotify', 'subtitle': 'Music', 'amount': '-\$12,99', 'url': ImagesConstants.spotify},
    {'title': 'Money Transfer', 'subtitle': 'Transaction', 'amount': '\$300', 'url': ImagesConstants.moneytransfer},
    {'title': 'Grocery', 'subtitle': 'Shopping', 'amount': '-\$88', 'url': ImagesConstants.grocery},
    {'title': 'Apple Store', 'subtitle': 'Entertainment', 'amount': '-\$5,99', 'url': ImagesConstants.apple},
    {'title': 'Spotify', 'subtitle': 'Music', 'amount': '-\$12,99', 'url': ImagesConstants.spotify},
    {'title': 'Money Transfer', 'subtitle': 'Transaction', 'amount': '\$300', 'url': ImagesConstants.moneytransfer},
    {'title': 'Grocery', 'subtitle': 'Shopping', 'amount': '-\$88', 'url': ImagesConstants.grocery},
    {'title': 'Apple Store', 'subtitle': 'Entertainment', 'amount': '-\$5,99', 'url': ImagesConstants.apple},
    {'title': 'Spotify', 'subtitle': 'Music', 'amount': '-\$12,99', 'url': ImagesConstants.spotify},
    {'title': 'Money Transfer', 'subtitle': 'Transaction', 'amount': '\$300', 'url': ImagesConstants.moneytransfer},
    {'title': 'Grocery', 'subtitle': 'Shopping', 'amount': '-\$88', 'url': ImagesConstants.grocery},
  ];

  List<Map<String, String>> _filteredTransactions = [];

  @override
  void initState() {
    super.initState();
    _filteredTransactions = _transactions; // Initialize with all transactions
  }

  void _filterTransactions(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredTransactions = _transactions;
      } else {
        _filteredTransactions = _transactions.where((transaction) {
          final title = transaction['title']!.toLowerCase();
          final subtitle = transaction['subtitle']!.toLowerCase();
          final searchLower = query.toLowerCase();
          return title.contains(searchLower) || subtitle.contains(searchLower);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 74, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    NavigationServices().goBack();
                  },
                  child: LogoWidget(url: ImagesConstants.back),
                ),
                TextWidget(
                  textdata: "Search",
                  size: 20,
                  fontweight: FontWeight.w500,
                  textcolor: ColorsConstants.titlecolor,
                ),
                GestureDetector(
                  onTap: () {
                    NavigationServices().replaceAll(RoutesConstants.homeScreen);
                  },
                  child: LogoWidget(url: ImagesConstants.cross),
                ),
              ],
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _searchController,
              onChanged: _filterTransactions,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Language',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredTransactions.length,
                itemBuilder: (context, index) {
                  final transaction = _filteredTransactions[index];
                  return Column(
                    children: [
                      TransactionWidget(
                        titledata: transaction['title']!,
                        subtitledata: transaction['subtitle']!,
                        transacData: transaction['amount']!,
                        transacColor: ColorsConstants.titlecolor,
                        url: transaction['url']!,
                      ),
                      const SizedBox(height: 25),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
