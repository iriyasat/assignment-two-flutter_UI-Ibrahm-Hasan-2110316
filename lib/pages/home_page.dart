import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String _studentName = 'Ibrahim Hasan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 18),
                _buildBalanceCard(),
                const SizedBox(height: 18),
                _buildQuickActions(),
                const SizedBox(height: 24),
                _buildTransactionsHeader(),
                const SizedBox(height: 12),
                ..._transactions.map((transaction) => _TransactionCard(transaction: transaction)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: AppColors.primary,
          backgroundImage: const AssetImage('assets/images/profile_photo.jpg'),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back,',
                style: TextStyle(
                  color: Color(0xFF8C91A3),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 2),
              Text(
                _studentName,
                style: TextStyle(
                  color: Color(0xFF111827),
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
              color: const Color(0xFF1F2937),
              iconSize: 30,
            ),
            Positioned(
              right: 13,
              top: 12,
              child: Container(
                width: 9,
                height: 9,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF4D4D),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBalanceCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, Color(0xFF7B6FE8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.white.withValues(alpha: 0.4), width: 1.2),
                ),
                child: const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
              children: [
                TextSpan(
                        text: '৳8,945',
                  style: TextStyle(fontSize: 32),
                ),
                TextSpan(
                  text: '.32',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Savings: ৳5,500',
                style: TextStyle(
                  color: Color(0xE6FFFFFF),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Last 30 days: +৳300',
                    style: TextStyle(
                      color: Color(0xE6FFFFFF),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward, color: Color(0xE6FFFFFF), size: 16),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Row(
      children: const [
        Expanded(
          child: _QuickActionCard(
            icon: Icons.swap_vert,
            label: 'Transfer',
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: _QuickActionCard(
            icon: Icons.receipt_long,
            label: 'Pay Bills',
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: _QuickActionCard(
            icon: Icons.trending_up,
            label: 'Invest',
          ),
        ),
      ],
    );
  }

  Widget _buildTransactionsHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Recent Transactions',
          style: TextStyle(
            color: Color(0xFF1F2937),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          'View All',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  static const List<_TransactionData> _transactions = [
    _TransactionData(
      icon: Icons.movie,
      iconBackground: Color(0xFFF2F4FF),
      iconColor: AppColors.primary,
      title: 'Netflix Subscripti...',
      subtitle: 'Entertainment • Today',
      amount: '৳19.99',
      amountColor: AppColors.expense,
    ),
    _TransactionData(
      icon: Icons.coffee,
      iconBackground: Color(0xFFF2F4FF),
      iconColor: AppColors.primary,
      title: 'Coffee Shop',
      subtitle: 'Food & Drink • Today',
      amount: '৳4.50',
      amountColor: AppColors.expense,
    ),
    _TransactionData(
      icon: Icons.payments,
      iconBackground: Color(0xFFE9FBF0),
      iconColor: AppColors.income,
      title: 'Salary Deposit',
      subtitle: 'Income • Yesterday',
      amount: '+৳3,500.00',
      amountColor: AppColors.income,
    ),
    _TransactionData(
      icon: Icons.shopping_cart,
      iconBackground: Color(0xFFF2F4FF),
      iconColor: AppColors.primary,
      title: 'Grocery Store',
      subtitle: 'Shopping • Yesterday',
      amount: '৳55.80',
      amountColor: AppColors.expense,
    ),
    _TransactionData(
      icon: Icons.shopping_cart,
      iconBackground: Color(0xFFF2F4FF),
      iconColor: AppColors.primary,
      title: 'Amazon Purchase',
      subtitle: 'Shopping • 2 days ago',
      amount: '৳120.45',
      amountColor: AppColors.expense,
    ),
  ];
}

class _QuickActionCard extends StatelessWidget {
  const _QuickActionCard({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Color(0xFFF2F0FF),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: AppColors.primary,
              size: 24,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF374151),
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _TransactionData {
  const _TransactionData({
    required this.icon,
    required this.iconBackground,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.amountColor,
  });

  final IconData icon;
  final Color iconBackground;
  final Color iconColor;
  final String title;
  final String subtitle;
  final String amount;
  final Color amountColor;
}

class _TransactionCard extends StatelessWidget {
  const _TransactionCard({required this.transaction});

  final _TransactionData transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 14,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: transaction.iconBackground,
                shape: BoxShape.circle,
              ),
              child: Icon(transaction.icon, color: transaction.iconColor, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title,
                    style: const TextStyle(
                      color: Color(0xFF1F2937),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    transaction.subtitle,
                    style: const TextStyle(
                      color: Color(0xFF7C8495),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Text(
              transaction.amount,
              style: TextStyle(
                color: transaction.amountColor,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
