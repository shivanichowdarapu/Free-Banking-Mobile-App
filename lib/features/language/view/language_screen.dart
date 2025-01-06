import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/services/navigation_services.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';
import 'package:free_banking_mobile_app/widgets/logo_widget.dart';
import 'package:free_banking_mobile_app/widgets/text_widget.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> _transactions = [
    {'title': 'English', 'url': ImagesConstants.us},
    {'title': 'Australia', 'url': ImagesConstants.australia},
    {'title': 'French', 'url': ImagesConstants.france},
    {'title': 'Spanish', 'url': ImagesConstants.spanish},
    {'title': 'Armenia', 'url': ImagesConstants.armenia},
    {'title': 'Vietnam', 'url': ImagesConstants.vietnam},
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
          final searchLower = query.toLowerCase();
          return title.contains(searchLower);
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
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    NavigationServices().goBack();
                  },
                  child: LogoWidget(url: ImagesConstants.back),
                ),
                SizedBox(width:100 ,),
                TextWidget(
                  textdata: "Language",
                  size: 20,
                  fontweight: FontWeight.w500,
                  textcolor: ColorsConstants.titlecolor,
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
                      Row(
                        children: [
                          // LogoWidget(url: transaction['url']!),
                          // SizedBox(width: 15,),
                          // TextWidget(textdata: transaction['title']!, size: 16, fontweight: FontWeight.w500,)
                          GestureDetector(
                            onTap: () {
                              final selectedLanguage = transaction[
                                  'title']; // Get the selected language
                              Navigator.pop(context,
                                  selectedLanguage); // Return the selected language
                            },
                            child: Row(
                              children: [
                                LogoWidget(url: transaction['url']!),
                                SizedBox(width: 15),
                                TextWidget(
                                  textdata: transaction['title']!,
                                  size: 16,
                                  fontweight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                        ],
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
