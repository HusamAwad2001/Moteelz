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
                      hasMore: context.read<WalletCubit>().hasMore,
                      onLoadMore: () => context.read<WalletCubit>().getWallet(),
                      isLoading: state.isLoading,
                    ),
            ),
          ],
        );
      },
    );
  }
}
