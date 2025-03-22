part of '../wallet_screen.dart';

class _SearchBar extends StatefulWidget {
  final Function(String) onSearch;
  const _SearchBar({required this.onSearch});

  @override
  State<_SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<_SearchBar> {
  late final TextEditingController _searchController;
  late final StreamController<String> _searchStreamController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchStreamController = StreamController<String>();
    _searchStreamController.stream
        .debounceTime(const Duration(milliseconds: 500))
        .listen((query) {
      widget.onSearch(query);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 55.h, left: 23.w, right: 23.w, bottom: 13.h),
      decoration: BoxDecoration(
        color: ColorsManager.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 29.5,
            color: ColorsManager.black.withValues(alpha: 0.12),
            offset: const Offset(0, 16),
          ),
        ],
      ),
      child: AppTextFormField(
        controller: _searchController,
        hintText: context.tr(LocaleKeys.search_for_card),
        prefixSvgIcon: AppIcons.search,
        maxLines: 1,
        onChanged: (value) => _searchStreamController.add(value),
        validator: (value) {},
      ),
    );
  }
}
