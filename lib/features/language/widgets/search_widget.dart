import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resturant_delivery_boy/localization/language_constrants.dart';
import 'package:resturant_delivery_boy/features/language/providers/language_provider.dart';
import 'package:resturant_delivery_boy/utill/dimensions.dart';
import 'package:resturant_delivery_boy/utill/images.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, searchProvider, child) => TextField(
        cursorColor: Theme.of(context).primaryColor,
        onChanged: (String query) {
          searchProvider.searchLanguage(query, context);
        },
        style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: Dimensions.fontSizeLarge),
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(style: BorderStyle.none, width: 0),
          ),
          isDense: true,
          hintText: getTranslated('find_language', context),
          fillColor: Theme.of(context).cardColor,
          hintStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontSize: Dimensions.fontSizeSmall,
            color: Theme.of(context).hintColor.withOpacity(0.6),
          ),
          filled: true,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: Dimensions.paddingSizeLarge, right: Dimensions.paddingSizeSmall),
            child: Image.asset(Images.search, width: 15, height: 15),
          ),
        ),
      ),
    );
  }
}
