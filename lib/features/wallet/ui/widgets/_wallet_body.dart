part of '../wallet_screen.dart';

class _WalletBody extends StatelessWidget {
  const _WalletBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (context, state) {
        return Column(
          children: [
            _SearchBar(
              onSearch: (query) {
                context
                    .read<WalletCubit>()
                    .getWallet(searchQuery: query, isRefresh: true);
              },
            ),
            Expanded(
              child: state.isLoading || state.isInitial
                  ? const Center(child: AppLoadingWidget())
                  : state.isFailure
                      ? AppErrorWidget(
                          message: state.message ?? '',
                          onRefresh: () {
                            context.read<WalletCubit>().getWallet();
                          },
                        )
                      : _SuccessView(
                          wallets: (state.filteredWallets ?? []).isNotEmpty
                              ? state.filteredWallets!
                              : state.wallets ?? [],
                          hasMore: context.read<WalletCubit>().hasMore,
                          onLoadMore: () {
                            context.read<WalletCubit>().getWallet();
                          },
                          isLoading: state.isLoading,
                        ),
            ),
          ],
        );
      },
    );
  }
}
