part of '../wallet_screen.dart';

class _SuccessView extends StatefulWidget {
  final List<WalletModel> wallets;
  final bool hasMore;
  final Function() onLoadMore;
  final bool isLoading;
  const _SuccessView({
    required this.wallets,
    required this.hasMore,
    required this.onLoadMore,
    required this.isLoading,
  });

  @override
  State<_SuccessView> createState() => _SuccessViewState();
}

class _SuccessViewState extends State<_SuccessView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent * 0.9) {
      if (widget.hasMore && !widget.isLoading) {
        widget.onLoadMore();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      padding: EdgeInsets.only(
        top: 12.h,
        bottom: 30.h,
        left: 24.w,
        right: 24.w,
      ),
      itemCount: widget.wallets.length,
      separatorBuilder: (context, index) => verticalSpace(16),
      itemBuilder: (context, index) {
        if (index < widget.wallets.length) {
          final wallet = widget.wallets[index];
          return WalletCardItem(
            key: ValueKey(wallet.id),
            wallet: wallet,
            onTap: () => context.pushNamed(
              Routes.walletDetailsScreen,
              arguments: wallet.id,
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
    /*
        PagedListView(
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Category>(
            firstPageProgressIndicatorBuilder: (context) {
              return const Center(child: Loading());
            },
            itemBuilder: (context, category, index) {
              return Item();
            },
          ),
        )
     */
  }
}
