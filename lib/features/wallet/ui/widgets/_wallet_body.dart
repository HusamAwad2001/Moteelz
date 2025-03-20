part of '../wallet_screen.dart';

class _WalletBody extends StatelessWidget {
  const _WalletBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (context, state) {
        if (state.isLoading || state.isInitial) {
          return const Center(child: AppLoadingWidget());
        } else if (state.isFailure) {
          return AppErrorWidget(
            message: state.message ??
                context.tr(
                  LocaleKeys.General_unknownError,
                ),
            onRefresh: () => context.read<WalletCubit>().getWallet(),
          );
        }
        return Column(
          children: [
            const _SearchBar(),
            Expanded(
              child: state.wallets?.isEmpty ?? true
                  ? Center(child: Text(context.tr(LocaleKeys.empty_wallets)))
                  : _SuccessView(
                      wallets: (state.filteredWallets ?? []).isNotEmpty
                          ? state.filteredWallets!
                          : state.wallets ?? [],
                    ),
            ),
          ],
        );
      },
    );
  }
}

class _SuccessView extends StatelessWidget {
  final List<WalletModel> wallets;
  const _SuccessView({required this.wallets});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
        top: 12.h,
        bottom: 30.h,
        left: 24.w,
        right: 24.w,
      ),
      itemCount: wallets.length,
      separatorBuilder: (context, index) => verticalSpace(16),
      itemBuilder: (context, index) {
        final wallet = wallets[index];
        return WalletCardItem(
          key: ValueKey(wallet.id),
          wallet: wallet,
          onTap: () {
            context.pushNamed(Routes.walletDetailsScreen);
          },
        );
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
