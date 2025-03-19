part of '../wallet_screen.dart';

class _WalletBody extends StatelessWidget {
  const _WalletBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (context, state) {
        if (state.isLoading || state.isInitial) {
          return const Center(child: AppLoadingWidget());
        }
        if (state.isFailure) {
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
                  ? const Center(child: Text('No Wallets Found'))
                  : ListView.separated(
                      padding: EdgeInsets.only(
                        top: 12.h,
                        bottom: 30.h,
                        left: 24.w,
                        right: 24.w,
                      ),
                      itemCount: state.wallets?.length ?? 0,
                      separatorBuilder: (context, index) => verticalSpace(16),
                      itemBuilder: (context, index) {
                        final wallet = state.wallets![index];
                        return WalletCardItem(
                          key: ValueKey(wallet.id),
                          wallet: wallet,
                          onTap: () {
                            context.pushNamed(Routes.walletDetailsScreen);
                          },
                        );
                      },
                    ),
            ),
          ],
        );
      },
    );
  }
}
