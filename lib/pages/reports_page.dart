import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

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
                const Text(
                  'Monthly Spending Report',
                  style: TextStyle(
                    color: Color(0xFF1F2937),
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 18),
                _buildTotalExpensesCard(),
                const SizedBox(height: 18),
                _buildSpendingBreakdownCard(),
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
                'Ibrahim Hasan',
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

  Widget _buildTotalExpensesCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Total Expenses (Last 30 days)',
            style: TextStyle(
              color: Color(0xFF6B7280),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '-৳1,270.00',
            style: TextStyle(
              color: AppColors.expense,
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Icon(
                Icons.arrow_upward,
                size: 16,
                color: AppColors.expense,
              ),
              SizedBox(width: 6),
              Text(
                'Up 12% from last month',
                style: TextStyle(
                  color: AppColors.expense,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpendingBreakdownCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Spending Breakdown',
            style: TextStyle(
              color: Color(0xFF1F2937),
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 18),
          _BreakdownItem(
            label: 'Food & Drink',
            amount: '৳450.00',
            percentText: '(35%)',
            progress: 0.35,
            color: Color(0xFFE53935),
          ),
          SizedBox(height: 14),
          _BreakdownItem(
            label: 'Shopping',
            amount: '৳320.00',
            percentText: '(25%)',
            progress: 0.25,
            color: Color(0xFF1E88E5),
          ),
          SizedBox(height: 14),
          _BreakdownItem(
            label: 'Housing',
            amount: '৳280.00',
            percentText: '(22%)',
            progress: 0.22,
            color: Color(0xFFFDD835),
          ),
          SizedBox(height: 14),
          _BreakdownItem(
            label: 'Transport',
            amount: '৳150.00',
            percentText: '(12%)',
            progress: 0.12,
            color: Color(0xFF43A047),
          ),
          SizedBox(height: 14),
          _BreakdownItem(
            label: 'Other',
            amount: '৳70.00',
            percentText: '(6%)',
            progress: 0.06,
            color: Color(0xFF9CA3AF),
          ),
        ],
      ),
    );
  }
}

class _BreakdownItem extends StatelessWidget {
  const _BreakdownItem({
    required this.label,
    required this.amount,
    required this.percentText,
    required this.progress,
    required this.color,
  });

  final String label;
  final String amount;
  final String percentText;
  final double progress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF374151),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              '$amount $percentText',
              style: const TextStyle(
                color: Color(0xFF1F2937),
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: SizedBox(
            height: 8,
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: const Color(0xFFE5E7EB),
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
