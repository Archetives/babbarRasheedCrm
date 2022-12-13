-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2022 at 06:55 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babarras_crm_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `log_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `project_id`, `task_id`, `deal_id`, `log_type`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 1, 'Move', '{\"title\":\"testDeal\",\"old_status\":\"Draft\",\"new_status\":\"Open\"}', '2022-09-22 21:52:37', '2022-09-22 21:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `admin_payment_settings`
--

CREATE TABLE `admin_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allowances`
--

CREATE TABLE `allowances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `allowance_option` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allowances`
--

INSERT INTO `allowances` (`id`, `employee_id`, `allowance_option`, `title`, `amount`, `type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Travel', 2000, 'fixed', 1, '2022-09-24 22:06:04', '2022-09-24 22:06:04'),
(2, 14, 1, 'Petrol Allownce', 2000, 'fixed', 1, '2022-09-29 22:59:56', '2022-09-29 22:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `allowance_options`
--

CREATE TABLE `allowance_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allowance_options`
--

INSERT INTO `allowance_options` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testallowance', 1, '2022-09-21 21:43:26', '2022-09-21 21:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcement_employees`
--

CREATE TABLE `announcement_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT '0',
  `employee` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appraisal_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT '0',
  `marketing` int(11) NOT NULL DEFAULT '0',
  `administration` int(11) NOT NULL DEFAULT '0',
  `professionalism` int(11) NOT NULL DEFAULT '0',
  `integrity` int(11) NOT NULL DEFAULT '0',
  `attendance` int(11) NOT NULL DEFAULT '0',
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appraisals`
--

INSERT INTO `appraisals` (`id`, `branch`, `employee`, `rating`, `appraisal_date`, `customer_experience`, `marketing`, `administration`, `professionalism`, `integrity`, `attendance`, `remark`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 1, 1, '{\"1\":\"5\"}', '2022-09-22', 0, 0, 0, 0, 0, 0, 'frwrw', 1, '2022-09-21 23:24:38', '2022-09-21 23:24:38');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `supported_date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `purchase_date`, `supported_date`, `amount`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testasset', '2022-09-21', '2022-09-22', 0.11, 'sdfghj', 1, '2022-09-21 21:57:12', '2022-09-21 21:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_employees`
--

CREATE TABLE `attendance_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in` time NOT NULL,
  `clock_out` time NOT NULL,
  `late` time NOT NULL,
  `early_leaving` time NOT NULL,
  `overtime` time NOT NULL,
  `total_rest` time NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_employees`
--

INSERT INTO `attendance_employees` (`id`, `employee_id`, `date`, `status`, `clock_in`, `clock_out`, `late`, `early_leaving`, `overtime`, `total_rest`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 0, '0000-00-00', 'Present', '00:00:00', '00:00:00', '-838:59:59', '838:59:59', '00:00:00', '00:00:00', 9, '2022-09-22 02:08:09', '2022-09-22 02:08:24'),
(2, 0, '0000-00-00', 'Present', '00:00:00', '00:00:00', '-838:59:59', '838:59:59', '00:00:00', '00:00:00', 10, '2022-09-22 16:53:55', '2022-09-22 16:54:58'),
(3, 0, '0000-00-00', 'Present', '00:00:00', '00:00:00', '-838:59:59', '838:59:59', '00:00:00', '00:00:00', 10, '2022-09-22 17:01:49', '2022-09-22 17:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `award_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gift` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` double(15,2) NOT NULL DEFAULT '0.00',
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `holder_name`, `bank_name`, `account_number`, `opening_balance`, `contact_number`, `bank_address`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'cash', '', '-', 0.00, '-', '-', 1, '2022-09-19 18:02:17', '2022-11-15 20:24:22'),
(2, 'ABC', 'ABC', '123', 1000000.00, '298374157', 'xzdvasdjhkkv sdiafgasdj', 1, '2022-09-24 22:46:00', '2022-09-24 22:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfers`
--

CREATE TABLE `bank_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT '0',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `vender_id` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `order_number` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `shipping_display` int(11) NOT NULL DEFAULT '1',
  `send_date` date DEFAULT NULL,
  `discount_apply` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_payments`
--

CREATE TABLE `bill_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_products`
--

CREATE TABLE `bill_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testbranch', 1, '2022-09-21 21:32:39', '2022-09-21 21:32:39'),
(2, 'test 2', 1, '2022-09-21 23:21:15', '2022-09-21 23:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_data` text COLLATE utf8mb4_unicode_ci,
  `expense_data` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `assign_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_comments`
--

CREATE TABLE `bug_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_files`
--

CREATE TABLE `bug_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_statuses`
--

CREATE TABLE `bug_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bug_statuses`
--

INSERT INTO `bug_statuses` (`id`, `title`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Confirmed', 1, 0, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(2, 'Resolved', 1, 0, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(3, 'Unconfirmed', 1, 0, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(4, 'In Progress', 1, 0, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(5, 'Verified', 1, 0, '2022-09-19 18:02:18', '2022-09-19 18:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `sub_type` int(11) NOT NULL DEFAULT '0',
  `is_enabled` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `name`, `code`, `type`, `sub_type`, `is_enabled`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Accounts Receivable', 120, 1, 1, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(2, 'Computer Equipment', 160, 1, 2, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(3, 'Office Equipment', 150, 1, 2, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(4, 'Inventory', 140, 1, 3, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(5, 'Budget - Finance Staff', 857, 1, 6, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(6, 'Accumulated Depreciation', 170, 1, 7, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(7, 'Accounts Payable', 200, 2, 8, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(8, 'Accruals', 205, 2, 8, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(9, 'Office Equipment', 150, 2, 8, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(10, 'Clearing Account', 855, 2, 8, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(11, 'Employee Benefits Payable', 235, 2, 8, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(12, 'Employee Deductions payable', 236, 2, 8, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(13, 'Historical Adjustments', 255, 2, 8, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(14, 'Revenue Received in Advance', 835, 2, 8, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(15, 'Rounding', 260, 2, 8, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(16, 'Costs of Goods Sold', 500, 3, 11, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(17, 'Advertising', 600, 3, 12, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(18, 'Automobile Expenses', 644, 3, 12, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(19, 'Bad Debts', 684, 3, 12, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(20, 'Bank Revaluations', 810, 3, 12, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(21, 'Bank Service Charges', 605, 3, 12, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(22, 'Consulting & Accounting', 615, 3, 12, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(23, 'Depreciation', 700, 3, 12, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(24, 'General Expenses', 628, 3, 12, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(25, 'Interest Income', 460, 4, 13, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(26, 'Other Revenue', 470, 4, 13, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(27, 'Purchase Discount', 475, 4, 13, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(28, 'Sales', 400, 4, 13, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(29, 'Common Stock', 330, 5, 16, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(30, 'Owners Contribution', 300, 5, 16, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(31, 'Owners Draw', 310, 5, 16, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(32, 'Retained Earnings', 320, 5, 16, 1, NULL, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(33, 'Cash', 1, 1, 1, 1, '', 1, '2022-09-24 22:36:34', '2022-09-24 22:36:34'),
(34, 'Capital', 2, 5, 16, 1, '', 1, '2022-11-22 23:32:59', '2022-11-22 23:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_sub_types`
--

CREATE TABLE `chart_of_account_sub_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_account_sub_types`
--

INSERT INTO `chart_of_account_sub_types` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Current Asset', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(2, 'Fixed Asset', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(3, 'Inventory', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(4, 'Non-current Asset', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(5, 'Prepayment', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(6, 'Bank & Cash', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(7, 'Depreciation', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(8, 'Current Liability', 2, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(9, 'Liability', 2, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(10, 'Non-current Liability', 2, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(11, 'Direct Costs', 3, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(12, 'Expense', 3, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(13, 'Revenue', 4, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(14, 'Sales', 4, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(15, 'Other Income', 4, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(16, 'Equity', 5, '2022-09-19 18:02:18', '2022-09-19 18:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_account_types`
--

CREATE TABLE `chart_of_account_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_account_types`
--

INSERT INTO `chart_of_account_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Assets', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(2, 'Liabilities', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(3, 'Expenses', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(4, 'Income', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(5, 'Equity', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` int(11) NOT NULL,
  `to_id` int(11) DEFAULT NULL,
  `seen` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client_deals`
--

CREATE TABLE `client_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_deals`
--

INSERT INTO `client_deals` (`id`, `client_id`, `deal_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2022-09-21 20:54:02', '2022-09-21 20:54:02'),
(2, 7, 2, '2022-09-21 22:54:22', '2022-09-21 22:54:22'),
(3, 7, 3, '2022-09-26 23:46:18', '2022-09-26 23:46:18'),
(4, 7, 4, '2022-09-26 23:46:19', '2022-09-26 23:46:19'),
(5, 14, 5, '2022-09-27 18:01:20', '2022-09-27 18:01:20'),
(6, 7, 6, '2022-09-29 06:42:15', '2022-09-29 06:42:15'),
(7, 3, 7, '2022-10-08 17:06:23', '2022-10-08 17:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commissions`
--

INSERT INTO `commissions` (`id`, `employee_id`, `title`, `amount`, `type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sale', 25, 'percentage', 1, '2022-09-24 22:06:29', '2022-09-24 22:06:29'),
(2, 1, 'Sale', 25, 'percentage', 1, '2022-09-24 22:06:29', '2022-09-24 22:06:29'),
(3, 10, 'monthly', 0, 'percentage', 1, '2022-09-26 22:54:22', '2022-09-26 22:54:22'),
(4, 10, 'sales', 5, 'percentage', 1, '2022-09-26 23:01:23', '2022-09-26 23:01:23'),
(5, 11, 'monthly', 5, 'percentage', 1, '2022-09-28 17:34:20', '2022-09-28 17:34:35'),
(6, 14, 'Muneeb', 1, 'percentage', 1, '2022-09-29 22:59:11', '2022-09-29 22:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `company_payment_settings`
--

CREATE TABLE `company_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_policies`
--

CREATE TABLE `company_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_policies`
--

INSERT INTO `company_policies` (`id`, `branch`, `title`, `description`, `attachment`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'testpolicy', 'dfghjkl', 'BABAR RASHID1-01-01_1663757961.png', 1, '2022-09-21 21:59:21', '2022-09-21 21:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

CREATE TABLE `competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competencies`
--

INSERT INTO `competencies` (`id`, `name`, `type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testv2', '1', '1', '2022-09-21 23:22:04', '2022-09-21 23:22:04'),
(2, 'muhin', '1', '1', '2022-09-21 23:25:22', '2022-09-21 23:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_from` int(11) NOT NULL,
  `complaint_against` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_name` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contract_types`
--

CREATE TABLE `contract_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `limit` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_notes`
--

CREATE TABLE `credit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` int(11) NOT NULL DEFAULT '0',
  `customer` int(11) NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_id`, `lead_id`, `name`, `email`, `tax_number`, `password`, `contact`, `avatar`, `created_by`, `is_active`, `email_verified_at`, `billing_name`, `billing_country`, `billing_state`, `billing_city`, `billing_phone`, `billing_zip`, `billing_address`, `shipping_name`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_phone`, `shipping_zip`, `shipping_address`, `lang`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
(120, 120, 91, 'Khizer', '', '', '', '3005107780', '', 1, 1, '0000-00-00 00:00:00', 'Khizer', '681', '2', '1 knal', '3005107780', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 121, 92, 'Mulazim', '', '', '', '3038976948', '', 1, 1, '0000-00-00 00:00:00', 'Mulazim', '5', '0', '1 kanal', '3038976948', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 119, 90, 'Sarmad', '', '', '', '3155279490', '', 1, 1, '0000-00-00 00:00:00', 'Sarmad', '20', '0', '8 marla', '3155279490', '', 'Blok f Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 89, 59, 'Ghani', '', '', '', '3335599225', '', 1, 1, '0000-00-00 00:00:00', 'Ghani', '20', '30', '7 marla', '3335599225', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 90, 60, 'Col noor', '', '', '', '3315511821', '', 1, 1, '0000-00-00 00:00:00', 'Col noor', '12', '24', '1 knal', '3315511821', '', 'C- 4th avenue Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 91, 61, 'M. Sajid', '', '', '', '3490251049', '', 1, 1, '0000-00-00 00:00:00', 'M. Sajid', '12', '34', '1 knal', '3490251049', '', 'C Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 117, 88, 'Ahsan', '', '', '', '3330510056', '', 1, 1, '0000-00-00 00:00:00', 'Ahsan', '635', '2', '15 mrla', '3330510056', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 116, 87, 'Ashraf', '', '', '', '3030553298', '', 1, 1, '0000-00-00 00:00:00', 'Ashraf', '257', '18', '1 knal', '3030553298', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 115, 86, 'Azad', '', '', '', '0333-5247531', '', 1, 1, '0000-00-00 00:00:00', 'Azad', '162', '12', '1 knal', '0333-5247531', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 114, 85, 'Col tahir', '', '', '', '3089114000', '', 1, 1, '0000-00-00 00:00:00', 'Col tahir', '0', '8', '1 knal', '3089114000', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 113, 84, 'Mazhar', '', '', '', '3006064275', '', 1, 1, '0000-00-00 00:00:00', 'Mazhar', '23', '0', '1 kanal', '3006064275', '', 'Blok f Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 112, 83, 'Ghulam abbas', '', '', '', '3344709063', '', 1, 1, '0000-00-00 00:00:00', 'Ghulam abbas', '49', '35', '12 marla', '3344709063', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 111, 82, 'Ahsan/Zaffar', '', '', '', '03201116660/03016703180', '', 1, 1, '0000-00-00 00:00:00', 'Ahsan/Zaffar', '42', '35', '12 marla', '03201116660/03016703180', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 110, 81, 'Waris', '', '', '', '3125312371', '', 1, 1, '0000-00-00 00:00:00', 'Waris', '0', '3', '1 knal', '3125312371', '', 'F Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 108, 79, 'Zohaib', '', '', '', '3175446520', '', 1, 1, '0000-00-00 00:00:00', 'Zohaib', '25', '35', '14 marla', '3175446520', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 107, 78, 'Haji saklain', '', '', '', '3365245839', '', 1, 1, '0000-00-00 00:00:00', 'Haji saklain', '0', '4', '1 knal', '3365245839', '', 'F Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 105, 76, 'faisal haneef', '', '', '', '3235006000', '', 1, 1, '0000-00-00 00:00:00', 'faisal haneef', '234', '14', '1 knal', '3235006000', '', 'F Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 104, 75, 'Umar', '', '', '', '3011110272', '', 1, 1, '0000-00-00 00:00:00', 'Umar', '2', '0', '1 knal', '3011110272', '', 'F Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 102, 72, 'Tanveer', '', '', '', '3008155265', '', 1, 1, '0000-00-00 00:00:00', 'Tanveer', '350', '0', '1 knal', '3008155265', '', 'F Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 101, 102, 'Wajid', '', '', '', '3215106320', '', 1, 1, '0000-00-00 00:00:00', 'Wajid', '628', '27', '15 mrla', '3215106320', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 99, 69, 'Mudasir khan', '', '', '', '0301 7481642', '', 1, 1, '0000-00-00 00:00:00', 'Mudasir khan', '0', '44', '2 knal', '0301 7481642', '', 'Executive block Gulberg', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 98, 68, 'Col basit', '', '', '', '3125123613', '', 1, 1, '0000-00-00 00:00:00', 'Col basit', '298', '5', '1 knal', '3125123613', '', 'B Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 97, 67, 'Mudasir bilal', '', '', '', '3099128083', '', 1, 1, '0000-00-00 00:00:00', 'Mudasir bilal', '152', '11', '15 mrla', '3099128083', '', 'B1 Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 95, 65, 'Waqar', '', '', '', '3005355239', '', 1, 1, '0000-00-00 00:00:00', 'Waqar', '2', '26', '1 knal', '3005355239', '', 'A Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 118, 89, 'M. Sohail aziz', '', '', '', '3005006364', '', 1, 1, '0000-00-00 00:00:00', 'M. Sohail aziz', '705', '25', '15 mrla', '3005006364', '', 'Overseas 4 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 109, 80, 'Hafiz sher gul', '', '', '', '3349701075', '', 0, 0, '0000-00-00 00:00:00', 'Hafiz sher gul', '35', '35', '12 marla', '3349701075', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 106, 77, 'Rajab', '', '', '', '3005539688', '', 0, 0, '0000-00-00 00:00:00', 'Rajab', '24', '1', '1 knal', '3005539688', '', 'F Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 103, 73, 'Dr khalid', '', '', '', '3342566808', '', 0, 0, '0000-00-00 00:00:00', 'Dr khalid', '75', '34', '1 knal', '3342566808', '', 'F Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 100, 71, 'Shemroz', '', '', '', '3454903176', '', 0, 0, '0000-00-00 00:00:00', 'Shemroz', '0', '3', '15 mrla', '3454903176', '', 'F Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 96, 66, 'Sheikh fiyaz', '', '', '', '3337602385', '', 0, 0, '0000-00-00 00:00:00', 'Sheikh fiyaz', '11', '1', '1 knal', '3337602385', '', 'A Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 92, 62, 'Asad', '', '', '', '3008129203', '', 0, 0, '0000-00-00 00:00:00', 'Asad', '3', '18', '1 knal', '3008129203', '', 'B-orchard Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 93, 63, 'Qamar', '', '', '', '3337482447', '', 0, 0, '0000-00-00 00:00:00', 'Qamar', '152', '11', '1 knal', '3337482447', '', 'B-orchard Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 94, 64, 'Zohaib Ali', '', '', '', '3171504117', '', 0, 0, '0000-00-00 00:00:00', 'Zohaib Ali', '18', '22', '6 marla', '3171504117', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 88, 56, 'Khan', '', '', '', '3029215066', '', 0, 0, '0000-00-00 00:00:00', 'Khan', '61', '34', '7 marla', '3029215066', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 87, 55, 'Iqbal', '', '', '', '3345237742', '', 0, 0, '0000-00-00 00:00:00', 'Iqbal', '60', '34', '10 marla', '3345237742', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 86, 54, 'Abdul sattar', '', '', '', '3445945788', '', 0, 0, '0000-00-00 00:00:00', 'Abdul sattar', '8', '9', '7 marla', '3445945788', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 85, 57, 'Azmat', '', '', '', '3078572792', '', 0, 0, '0000-00-00 00:00:00', 'Azmat', '58', '33', '7 marla', '3078572792', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 84, 53, 'Sajid', '', '', '', '3335610570', '', 0, 0, '0000-00-00 00:00:00', 'Sajid', '13', '32', '1 knal', '3335610570', '', 'C Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 82, 51, 'Yaseen', '', '', '', '3345177899', '', 0, 0, '0000-00-00 00:00:00', 'Yaseen', '9', '45', '7 marla', '3345177899', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 83, 52, 'Nadeem', '', '', '', '3095192374', '', 0, 0, '0000-00-00 00:00:00', 'Nadeem', '12', '22', '1 knal', '3095192374', '', 'C Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 81, 50, 'Nawaz khan', '', '', '', '3169935636', '', 0, 0, '0000-00-00 00:00:00', 'Nawaz khan', '30', '23', '1 knal', '3169935636', '', 'C Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 80, 49, 'Raja. M. Arshad', '', '', '', '3005146685', '', 0, 0, '0000-00-00 00:00:00', 'Raja. M. Arshad', '24', '23', '1 knal', '3005146685', '', 'C Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 79, 151, 'Wasif', '', '', '', '3009288255', '', 0, 0, '0000-00-00 00:00:00', 'Wasif', '528', '3', '10 mrla', '3009288255', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 78, 48, 'Col riyaz', '', '', '', '3215019876', '', 0, 0, '0000-00-00 00:00:00', 'Col riyaz', '20', '23', '1 knal', '3215019876', '', 'C Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 76, 46, 'Abrar ahmed', '', '', '', '3005124713', '', 0, 0, '0000-00-00 00:00:00', 'Abrar ahmed', '1', '14', '1 knal', '3005124713', '', 'B-orchard Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 77, 47, 'Hasnain', '', '', '', '3025474897', '', 0, 0, '0000-00-00 00:00:00', 'Hasnain', '19', '45', '10 marla', '3025474897', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 75, 45, 'Khalid', '', '', '', '3335119413', '', 0, 0, '0000-00-00 00:00:00', 'Khalid', '17', '20', '1 knal', '3335119413', '', 'B-orchard Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 74, 44, 'Zafar iqbal', '', '', '', '3005006148', '', 0, 0, '0000-00-00 00:00:00', 'Zafar iqbal', '26', '44', '10 marla', '3005006148', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 72, 42, 'Arab', '', '', '', '3024901541', '', 0, 0, '0000-00-00 00:00:00', 'Arab', '4', '40', '10 marla', '3024901541', '', 'Blok h Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 73, 43, 'Ibraheem', '', '', '', '3448595862', '', 0, 0, '0000-00-00 00:00:00', 'Ibraheem', '7', '19', '1 knal', '3448595862', '', 'B-orchard Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 71, 158, 'M. Deen', '', '', '', '3315001076', '', 1, 1, '0000-00-00 00:00:00', 'M. Deen', '215', '6', '10 mrla', '3315001076', '', 'J Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 69, 40, 'nadeem', '', '', '', '3339302408', '', 1, 1, '0000-00-00 00:00:00', 'nadeem', '7', '8', '1 knal', '3339302408', '', 'A Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 70, 41, 'Haji  ahsan', '', '', '', '3305870182', '', 1, 1, '0000-00-00 00:00:00', 'Haji  ahsan', '7', '13', '1 knal', '3305870182', '', 'D Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 68, 39, 'raza', '', '', '', '3455890864', '', 1, 1, '0000-00-00 00:00:00', 'raza', '16', '12', '1 knal', '3455890864', '', 'A Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 67, 36, 'Col khurram', '', '', '', '3335105000', '', 1, 1, '0000-00-00 00:00:00', 'Col khurram', '3', '1', '1 knal', '3335105000', '', 'C Dha 1', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 66, 29, 'Rab Nawaz', '', '', '', '3007511638', '', 1, 1, '0000-00-00 00:00:00', 'Rab Nawaz', '15', '34', '12 marla', '3007511638', '', ' River garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 65, 28, 'Shareef', '', '', '', '3462249786', '', 1, 1, '0000-00-00 00:00:00', 'Shareef', '20', '23', '1 kanal', '3462249786', '', ' River garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 64, 30, 'Rameez', '', '', '', '3217967614', '', 1, 1, '0000-00-00 00:00:00', 'Rameez', '22', '34', '14 marla', '3217967614', '', ' River garden', '', '', '', '', '', '', '', 'en', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 308, 286, 'Shehzaad', NULL, NULL, NULL, '03005530409', '', 1, 1, NULL, 'Shehzaad', '78', '786', '1 knal', '03005530409', NULL, 'G 13-4 Islamabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 0.00, NULL, '2022-12-12 17:47:56', '2022-12-12 17:47:56'),
(309, 309, 287, 'Ahad sami', NULL, NULL, NULL, '03124578901', '', 1, 1, NULL, 'Ahad sami', '43', '158', '10 mrla', '03124578901', NULL, 'G 13-4 Islamabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 0.00, NULL, '2022-12-12 18:31:32', '2022-12-12 18:31:32'),
(122, 122, 93, 'Jawad', '', '', '', '3335915507', '', 1, 1, '0000-00-00 00:00:00', 'Jawad', '538', '2', '15 mrla', '3335915507', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 123, 94, 'Zaib kiyani', '', '', '', '3205261094', '', 1, 1, '0000-00-00 00:00:00', 'Zaib kiyani', '2', '0', '6 marla', '3205261094', '', 'Blok f Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 124, 95, 'Mushtaq', '', '', '', '3335249224', '', 1, 1, '0000-00-00 00:00:00', 'Mushtaq', '48', '0', '1 kanal', '3335249224', '', 'Phase 1 Aghosh society', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 125, 96, 'Amir', '', '', '', '3355354641', '', 1, 1, '0000-00-00 00:00:00', 'Amir', '628', '3', '15 mrla', '3355354641', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 126, 97, 'Ghori', '', '', '', '3456711114', '', 1, 1, '0000-00-00 00:00:00', 'Ghori', '0', '6', '1 kanal', '3456711114', '', 'Phase 1 Aghosh society', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 127, 98, 'Nasir Ali', '', '', '', '3007209983', '', 1, 1, '0000-00-00 00:00:00', 'Nasir Ali', '146', '8', '1 kanal', '3007209983', '', 'Phase 1 Aghosh society', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 128, 99, 'Mansoor', '', '', '', '3320904456', '', 1, 1, '0000-00-00 00:00:00', 'Mansoor', '642', '2', '1 knal', '3320904456', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 129, 100, 'Toqeer', '', '', '', '3355376737', '', 1, 1, '0000-00-00 00:00:00', 'Toqeer', '671', '2', '1 knal', '3355376737', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 130, 101, 'Basit', '', '', '', '3159251345', '', 1, 1, '0000-00-00 00:00:00', 'Basit', '12', '9', '1 knal', '3159251345', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 131, 103, 'Waseem', '', '', '', '3125921410', '', 1, 1, '0000-00-00 00:00:00', 'Waseem', '589', '10', '10 mrla', '3125921410', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 132, 104, 'Imran', '', '', '', '3239887569', '', 1, 1, '0000-00-00 00:00:00', 'Imran', '527', '2', '10 mrla', '3239887569', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 133, 105, 'Mudasir', '', '', '', '3006291866', '', 1, 1, '0000-00-00 00:00:00', 'Mudasir', '22', '9', '12 marla', '3006291866', '', 'A blok Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 134, 106, 'Qadeer', '', '', '', '3428328371', '', 1, 1, '0000-00-00 00:00:00', 'Qadeer', '27', '7', '12 marla', '3428328371', '', 'A blok Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 72, 107, 'Noor', '', '', '', '3365006104', '', 1, 1, '0000-00-00 00:00:00', 'Noor', '28', '8', '1 knal', '3365006104', '', 'I Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 73, 108, 'Sindhi shb', '', '', '', '3325198277', '', 1, 1, '0000-00-00 00:00:00', 'Sindhi shb', '4', '7', '12 marla', '3325198277', '', 'A blok Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 137, 109, 'Naveed', '', '', '', '3205884499', '', 1, 1, '0000-00-00 00:00:00', 'Naveed', '3', '5', '12 marla', '3205884499', '', 'A blok Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 138, 110, 'Umair', '', '', '', '3040055677', '', 1, 1, '0000-00-00 00:00:00', 'Umair', '43', '1', '10 marla', '3040055677', '', 'Blok b Soan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 139, 111, 'Tasaduq Hussain', '', '', '', '3005323654', '', 1, 1, '0000-00-00 00:00:00', 'Tasaduq Hussain', '166', '27', '15 mrla', '3005323654', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 140, 112, 'Azam', '', '', '', '3478217719', '', 1, 1, '0000-00-00 00:00:00', 'Azam', '449', '1', '1 knal', '3478217719', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 141, 113, 'Jawaid', '', '', '', '3129126677', '', 1, 1, '0000-00-00 00:00:00', 'Jawaid', '20', '5', '1 kanal', '3129126677', '', 'Blok c Sohan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 142, 114, 'Azeem', '', '', '', '3337554665', '', 1, 1, '0000-00-00 00:00:00', 'Azeem', '5', '0', '1 knal', '3337554665', '', 'A1 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 143, 115, 'Madam', '', '', '', '3253055425', '', 1, 1, '0000-00-00 00:00:00', 'Madam', '252', '25', '10 mrla', '3253055425', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 144, 116, 'Danial', '', '', '', '3439216124', '', 1, 1, '0000-00-00 00:00:00', 'Danial', '13', '5', '1 kanal', '3439216124', '', 'Block C Soan garden', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 145, 117, 'Iqbal', '', '', '', '3215186373', '', 1, 1, '0000-00-00 00:00:00', 'Iqbal', '93', '2', '1 knal', '3215186373', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 146, 118, 'Asif', '', '', '', '3218442159', '', 1, 1, '0000-00-00 00:00:00', 'Asif', '18', '6', '1 kanal', '3218442159', '', 'Sector F Dha 5', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 147, 119, 'Ahsan', '', '', '', '3066266833', '', 1, 1, '0000-00-00 00:00:00', 'Ahsan', '12', '31', '1 kanal', '3066266833', '', 'Sector F Dha 5', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 148, 120, 'Malik shahbaz javed', '', '', '', '3005058924', '', 1, 1, '0000-00-00 00:00:00', 'Malik shahbaz javed', '830', '0', '15 mrla', '3005058924', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 149, 121, 'Shahid', '', '', '', '3345001566', '', 1, 1, '0000-00-00 00:00:00', 'Shahid', '978', '0', '10 mrla', '3345001566', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 150, 122, 'Hassan', '', '', '', '3240870310', '', 1, 1, '0000-00-00 00:00:00', 'Hassan', '121', '22', '15 mrla', '3240870310', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 151, 123, 'Asim', '', '', '', '3155844232', '', 1, 1, '0000-00-00 00:00:00', 'Asim', '0', '25', '15 mrla', '3155844232', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 152, 124, 'Muzaffar', '', '', '', '3366024975', '', 1, 1, '0000-00-00 00:00:00', 'Muzaffar', '1516', '0', '15 mrla', '3366024975', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 153, 135, 'Col pevaiz', '', '', '', '3005044214', '', 1, 1, '0000-00-00 00:00:00', 'Col pevaiz', '28', '4', '14 marla', '3005044214', '', 'A blok Dha 5', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 154, 125, 'Naeem', '', '', '', '3005981995', '', 1, 1, '0000-00-00 00:00:00', 'Naeem', '30', '1', '1 kanal', '3005981995', '', 'Sector A Dha 5', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 155, 126, 'Nabeel', '', '', '', '3120081969', '', 1, 1, '0000-00-00 00:00:00', 'Nabeel', '4', '11', '1 kanal', '3120081969', '', 'Sector A Dha 5', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 156, 127, 'Javaid', '', '', '', '3246364185', '', 1, 1, '0000-00-00 00:00:00', 'Javaid', '131', '22', '15 mrla', '3246364185', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 157, 128, 'Hassan', '', '', '', '3362203339', '', 1, 1, '0000-00-00 00:00:00', 'Hassan', '145', '0', '10 mrla', '3362203339', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 158, 129, 'Haji zafar', '', '', '', '3335262821', '', 1, 1, '0000-00-00 00:00:00', 'Haji zafar', '13', '13', '1 kanal', '3335262821', '', 'Sector A Dha 5', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 159, 130, 'Saleem', '', '', '', '3345132824', '', 1, 1, '0000-00-00 00:00:00', 'Saleem', '346', '1', '15 mrla', '3345132824', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 160, 131, 'Wajahat', '', '', '', '3355426452', '', 1, 1, '0000-00-00 00:00:00', 'Wajahat', '505', '2', '15 mrla', '3355426452', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 161, 132, 'Raja khurram', '', '', '', '3065157712', '', 1, 1, '0000-00-00 00:00:00', 'Raja khurram', '458', '17', '10 mrla', '3065157712', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 162, 133, 'Haider shah', '', '', '', '3345528452', '', 1, 1, '0000-00-00 00:00:00', 'Haider shah', '5', '0', '1 kanal', '3345528452', '', 'A blok Dha 5', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 163, 134, 'Gul fam', '', '', '', '3055575555', '', 1, 1, '0000-00-00 00:00:00', 'Gul fam', '9', '17', '1 kanal', '3055575555', '', 'A blok Dha 5', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 164, 136, 'Zamaan', '', '', '', '3314955557', '', 1, 1, '0000-00-00 00:00:00', 'Zamaan', '261', '14', '10 mrla', '3314955557', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 165, 137, 'Tariq', '', '', '', '3449991952', '', 1, 1, '0000-00-00 00:00:00', 'Tariq', '233', '15', '15 mrla', '3449991952', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 166, 138, 'Hassan', '', '', '', '3189622842', '', 1, 1, '0000-00-00 00:00:00', 'Hassan', '44', '15', '10 mrla', '3189622842', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 167, 139, 'Jaleel', '', '', '', '3142121272', '', 1, 1, '0000-00-00 00:00:00', 'Jaleel', '129', '11', '10 mrla', '3142121272', '', 'B Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 168, 140, 'Dr rasheed', '', '', '', '3365565528', '', 1, 1, '0000-00-00 00:00:00', 'Dr rasheed', '1056', '33', '10 mrla', '3365565528', '', 'E Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 169, 141, 'M. Gulam abas', '', '', '', '3338916526', '', 1, 1, '0000-00-00 00:00:00', 'M. Gulam abas', '1525', '37', '15 mrla', '3338916526', '', 'E Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 170, 142, 'Afzal kiyani', '', '', '', '0347 5052794', '', 1, 1, '0000-00-00 00:00:00', 'Afzal kiyani', '0', '26', '15 mrla', '0347 5052794', '', 'E1 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 171, 143, 'Waleed', '', '', '', '3315954196', '', 1, 1, '0000-00-00 00:00:00', 'Waleed', '973', '27', '15 mrla', '3315954196', '', 'Overseas 3 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 172, 144, 'M. Imran', '', '', '', '3005501576', '', 1, 1, '0000-00-00 00:00:00', 'M. Imran', '956', '27', '12 mrla', '3005501576', '', 'Overseas 3 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 173, 145, 'Faheem', '', '', '', '3063271796', '', 1, 1, '0000-00-00 00:00:00', 'Faheem', '11', '8', '10 mrla', '3063271796', '', 'Overseas 3 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 174, 146, 'Haider', '', '', '', '3335557230', '', 1, 1, '0000-00-00 00:00:00', 'Haider', '602', '17', '15 mrla', '3335557230', '', 'Overseas 3 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 175, 147, 'Asif', '', '', '', '3125192800', '', 1, 1, '0000-00-00 00:00:00', 'Asif', '910', '18', '1 knal', '3125192800', '', 'Overseas 6 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 176, 148, 'Rizwan', '', '', '', '3328566001', '', 1, 1, '0000-00-00 00:00:00', 'Rizwan', '948', '20', '1 knal', '3328566001', '', 'Overseas 6 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 177, 149, 'Usama', '', '', '', '3325411201', '', 1, 1, '0000-00-00 00:00:00', 'Usama', '1200', '14', '15 mrla', '3325411201', '', 'Overseas 6 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 178, 150, 'Jama', '', '', '', '3025662024', '', 1, 1, '0000-00-00 00:00:00', 'Jama', '1121', '6', '10 mrla', '3025662024', '', 'Overseas 6 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 179, 152, 'Shabeer', '', '', '', '3342122521', '', 1, 1, '0000-00-00 00:00:00', 'Shabeer', '444', '13', '12 mrla', '3342122521', '', 'I Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 180, 153, 'Iqbal', '', '', '', '3065886477', '', 1, 1, '0000-00-00 00:00:00', 'Iqbal', '0', '4', '10 mrla', '3065886477', '', 'I Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 181, 154, 'Shehroz', '', '', '', '3315042506', '', 1, 1, '0000-00-00 00:00:00', 'Shehroz', '1060', '33', '10 mrla', '3315042506', '', 'E Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 182, 155, 'Waheed', '', '', '', '3125302636', '', 1, 1, '0000-00-00 00:00:00', 'Waheed', '1191', '29', '10 mrla', '3125302636', '', 'E Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 183, 156, 'Tanveer', '', '', '', '0336 5229600', '', 1, 1, '0000-00-00 00:00:00', 'Tanveer', '937', '32', '10 mrla', '0336 5229600', '', 'E Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 184, 157, 'Raja tariq', '', '', '', '3229213799', '', 1, 1, '0000-00-00 00:00:00', 'Raja tariq', '124', '0', '14 marla', '3229213799', '', 'A blok Zaraj', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 185, 159, 'Bilal', '', '', '', '3110540974', '', 1, 1, '0000-00-00 00:00:00', 'Bilal', '13', '1', '15 marla', '3110540974', '', 'I blok Gulberg', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 186, 160, 'Tayyab', '', '', '', '3355144487', '', 1, 1, '0000-00-00 00:00:00', 'Tayyab', '1', '1', '10 mrla', '3355144487', '', 'J Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 187, 161, 'Saleem', '', '', '', '3005361410', '', 0, 0, '0000-00-00 00:00:00', 'Saleem', '2', '1', '10 mrla', '3005361410', '', 'J Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 125, 162, 'Ikraam', '', '', '', '3041096543', '', 0, 0, '0000-00-00 00:00:00', 'Ikraam', '28', '1', '15 marla', '3041096543', '', 'I blok Gulberg', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 126, 163, 'Junaid', '', '', '', '3008557787', '', 0, 0, '0000-00-00 00:00:00', 'Junaid', '64', '0', '5 kanal', '3008557787', '', 'Executive blok Gulberg', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 127, 164, 'Akhter', '', '', '', '3335105265', '', 0, 0, '0000-00-00 00:00:00', 'Akhter', '1502', '29', '15 mrla', '3335105265', '', 'F8/1 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 128, 165, 'Junaid', '', '', '', '3319162062', '', 0, 0, '0000-00-00 00:00:00', 'Junaid', '64', '0', '1 kanal', '3319162062', '', 'J blok Gulberg', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 129, 166, 'Nasir', '', '', '', '3005055215', '', 0, 0, '0000-00-00 00:00:00', 'Nasir', '1493', '29', '15 mrla', '3005055215', '', 'F8/1 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 130, 167, 'M. Nasir', '', '', '', '3448820426', '', 0, 0, '0000-00-00 00:00:00', 'M. Nasir', '8', '29', '12 mrla', '3448820426', '', 'F8/1 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 131, 168, 'Mehroz', '', '', '', '3217463089', '', 0, 0, '0000-00-00 00:00:00', 'Mehroz', '0', '2', '1 kanal', '3217463089', '', 'J blok Gulberg', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 132, 169, 'Tanveer', '', '', '', '3465042478', '', 0, 0, '0000-00-00 00:00:00', 'Tanveer', '222', '5', '12 mrla', '3465042478', '', 'F8/1 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 133, 170, 'Arslan', '', '', '', '3168774079', '', 0, 0, '0000-00-00 00:00:00', 'Arslan', '226', '5', '10 mrla', '3168774079', '', 'F8/1 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 134, 171, 'Zulkarnain', '', '', '', '3215067421', '', 0, 0, '0000-00-00 00:00:00', 'Zulkarnain', '73', '3', '12 mrla', '3215067421', '', 'F8/1 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 135, 172, 'Hamad', '', '', '', '3006888877', '', 0, 0, '0000-00-00 00:00:00', 'Hamad', '5', '1', '14 kanal', '3006888877', '', 'Blok c Gulberg', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 136, 173, 'Arshad', '', '', '', '3325580963', '', 0, 0, '0000-00-00 00:00:00', 'Arshad', '41', '0', '5 kanal', '3325580963', '', 'Blok c Gulberg', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 137, 174, 'Qaisar', '', '', '', '3335183547', '', 0, 0, '0000-00-00 00:00:00', 'Qaisar', '508', '2', '15 mrla', '3335183547', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 138, 175, 'Alam khan', '', '', '', '3115629911', '', 0, 0, '0000-00-00 00:00:00', 'Alam khan', '705', '3', '15 mrla', '3115629911', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 139, 176, 'Ishtiyaq', '', '', '', '3334729519', '', 0, 0, '0000-00-00 00:00:00', 'Ishtiyaq', '771', '4', '12 mrla', '3334729519', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 140, 177, 'Irfan', '', '', '', '3007852122', '', 0, 0, '0000-00-00 00:00:00', 'Irfan', '263', '26', '15 mrla', '3007852122', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 141, 178, 'Abdulqader', '', '', '', '3331481944', '', 0, 0, '0000-00-00 00:00:00', 'Abdulqader', '235', '26', '15 mrla', '3331481944', '', 'H Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 142, 179, 'Hamid', '', '', '', '3005009721', '', 0, 0, '0000-00-00 00:00:00', 'Hamid', '681', '2', '15 mrla', '3005009721', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 143, 180, 'Imran', '', '', '', '3320988768', '', 0, 0, '0000-00-00 00:00:00', 'Imran', '1340', '51', '10 marla', '3320988768', '', 'Phase#3 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 144, 181, 'Shakeel', '', '', '', '3097452451', '', 0, 0, '0000-00-00 00:00:00', 'Shakeel', '1236', '49', '10 marla', '3097452451', '', 'Phase#3 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 145, 182, 'Ahsaan', '', '', '', '3149065133', '', 0, 0, '0000-00-00 00:00:00', 'Ahsaan', '1267', '50', '10 marla', '3149065133', '', 'Phase#3 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 146, 183, 'Ramzan', '', '', '', '3255276590', '', 0, 0, '0000-00-00 00:00:00', 'Ramzan', '643', '30', '1 kanal', '3255276590', '', 'Phase#3 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 147, 184, 'Zain ul abedeen', '', '', '', '3160512493', '', 0, 0, '0000-00-00 00:00:00', 'Zain ul abedeen', '523', '24', '14 marla', '3160512493', '', 'Phase#3 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 148, 185, 'Saeed', '', '', '', '3335134709', '', 0, 0, '0000-00-00 00:00:00', 'Saeed', '97', '2', '10 marla', '3335134709', '', 'Phase 4 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 212, 186, 'Abdul waheed', '', '', '', '3006425996', '', 1, 1, '0000-00-00 00:00:00', 'Abdul waheed', '430', '13', '10 marla', '3006425996', '', 'Phase 4 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 213, 187, 'Ali', '', '', '', '3444017534', '', 1, 1, '0000-00-00 00:00:00', 'Ali', '118', '0', '1 kanal', '3444017534', '', 'Phase 4 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 214, 188, 'Mansoor', '', '', '', '3336584552', '', 1, 1, '0000-00-00 00:00:00', 'Mansoor', '412', '20', '1 kanal', '3336584552', '', 'Phase#3 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 215, 189, 'Amar', '', '', '', '3125082202', '', 1, 1, '0000-00-00 00:00:00', 'Amar', '236', '9', '1 kanal', '3125082202', '', 'Phase#3 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 216, 190, 'Naseer', '', '', '', '3005170136', '', 1, 1, '0000-00-00 00:00:00', 'Naseer', '243', '11', '1 kanal', '3005170136', '', 'Phase#3 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 217, 191, 'Syed brothoers', '', '', '', '3003181885', '', 1, 1, '0000-00-00 00:00:00', 'Syed brothoers', '18', '2', '16 marla', '3003181885', '', 'Phase#3 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 218, 192, 'Wahaj', '', '', '', '3054466007', '', 1, 1, '0000-00-00 00:00:00', 'Wahaj', '52', '8', '10 mrla', '3054466007', '', 'J Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 219, 193, 'Sami', '', '', '', '3137070415', '', 1, 1, '0000-00-00 00:00:00', 'Sami', '96', '14', '10 mrla', '3137070415', '', 'J Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 220, 194, 'Sheikh roman', '', '', '', '3335119631', '', 1, 1, '0000-00-00 00:00:00', 'Sheikh roman', '6', '7', '12 mrla', '3335119631', '', 'Overseas 7 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 221, 195, 'Fahad', '', '', '', '3318514931', '', 1, 1, '0000-00-00 00:00:00', 'Fahad', '4', '3', '15 mrla', '3318514931', '', 'Overseas 7 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 222, 196, 'Narma builder', '', '', '', '3360762762', '', 1, 1, '0000-00-00 00:00:00', 'Narma builder', '17', '2', '10 mrla', '3360762762', '', 'Overseas 7 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 223, 197, 'Usman', '', '', '', '0335 -8436653', '', 1, 1, '0000-00-00 00:00:00', 'Usman', '3', '12', '10 mrla', '0335 -8436653', '', 'Overseas 7 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 224, 198, 'Mirza bilal', '', '', '', '3455935058', '', 1, 1, '0000-00-00 00:00:00', 'Mirza bilal', '616', '18', '10 marla', '3455935058', '', 'Phase 4 Behria', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 225, 199, 'Ali', '', '', '', '3339613877', '', 1, 1, '0000-00-00 00:00:00', 'Ali', '349', '800', '1 kanal', '3339613877', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 226, 200, 'Irfan', '', '', '', '3335577725', '', 1, 1, '0000-00-00 00:00:00', 'Irfan', '317', '31', '12 marla', '3335577725', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 227, 201, 'Fazal haq', '', '', '', '3125666400', '', 1, 1, '0000-00-00 00:00:00', 'Fazal haq', '232', '39', '14 marla', '3125666400', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 228, 202, 'Afaq', '', '', '', '3225006778', '', 1, 1, '0000-00-00 00:00:00', 'Afaq', '570', '40', '10 marla', '3225006778', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 229, 203, 'Faisal', '', '', '', '3188333954', '', 1, 1, '0000-00-00 00:00:00', 'Faisal', '406', '26', '5 marla', '3188333954', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 230, 204, 'Saqib', '', '', '', '0345 8502856', '', 1, 1, '0000-00-00 00:00:00', 'Saqib', '155', '8', '10 mrla', '0345 8502856', '', 'F8/3 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 231, 205, 'Ahsan', '', '', '', '3065530006', '', 1, 1, '0000-00-00 00:00:00', 'Ahsan', '94', '3', '12 mrla', '3065530006', '', 'F8/3 Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 232, 206, 'Doctor Habib', '', '', '', '3018045200', '', 1, 1, '0000-00-00 00:00:00', 'Doctor Habib', '663', '47', '9 marla', '3018045200', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 233, 207, 'Imran', '', '', '', '3365544427', '', 1, 1, '0000-00-00 00:00:00', 'Imran', '142', '51', '1.5 kanal', '3365544427', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 234, 208, 'Saleem', '', '', '', '3333818179', '', 1, 1, '0000-00-00 00:00:00', 'Saleem', '647', '47', '10 marla', '3333818179', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 235, 209, 'Faizan', '', '', '', '0306 5847201', '', 1, 1, '0000-00-00 00:00:00', 'Faizan', '95', '6', '15 mrla', '0306 5847201', '', 'G Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 236, 210, 'Ali homes', '', '', '', '3215019029', '', 1, 1, '0000-00-00 00:00:00', 'Ali homes', '743', '46', '14 marla', '3215019029', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 237, 211, 'Ahsaan ullah', '', '', '', '3335244278', '', 1, 1, '0000-00-00 00:00:00', 'Ahsaan ullah', '1063', '6', '4 marla', '3335244278', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 238, 212, 'Abdul Rehman Minhas', '', '', '', '3335173816', '', 1, 1, '0000-00-00 00:00:00', 'Abdul Rehman Minhas', '1216', '16', '7 marla', '3335173816', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 239, 213, 'Usama zahoor', '', '', '', '3075536371', '', 1, 1, '0000-00-00 00:00:00', 'Usama zahoor', '1217', '16', '8 kanal', '3075536371', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 240, 214, 'Saad', '', '', '', '3125583669', '', 1, 1, '0000-00-00 00:00:00', 'Saad', '543', '29', '1 knal', '3125583669', '', 'P Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 241, 215, 'Bilal', '', '', '', '3045729993', '', 1, 1, '0000-00-00 00:00:00', 'Bilal', '53', '3', '1 knal', '3045729993', '', 'P Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 242, 216, 'Akash', '', '', '', '3349141988', '', 1, 1, '0000-00-00 00:00:00', 'Akash', '10', '1', '1 knal', '3349141988', '', ' P', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 243, 217, 'Sharjeel', '', '', '', '3115149578', '', 1, 1, '0000-00-00 00:00:00', 'Sharjeel', '750', '37', '1 knal', '3115149578', '', 'P Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 244, 218, 'Asger', '', '', '', '3131429196', '', 1, 1, '0000-00-00 00:00:00', 'Asger', '573', '28', '1 knal', '3131429196', '', 'P Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 245, 219, 'Moeez', '', '', '', '3175090235', '', 1, 1, '0000-00-00 00:00:00', 'Moeez', '0', '13', '1 knal', '3175090235', '', 'A Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 246, 220, 'Taimoor', '', '', '', '3336311925', '', 1, 1, '0000-00-00 00:00:00', 'Taimoor', '23', '7', '1 knal', '3336311925', '', 'Club city Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 247, 221, 'Mian estate', '', '', '', '3355828186', '', 1, 1, '0000-00-00 00:00:00', 'Mian estate', '28', '7', '1 knal', '3355828186', '', 'Club city Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 248, 222, 'Gulrauf', '', '', '', '3366868196', '', 1, 1, '0000-00-00 00:00:00', 'Gulrauf', '1343', '2', '10 marla', '3366868196', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 249, 223, 'Danish husain', '', '', '', '3230870170', '', 1, 1, '0000-00-00 00:00:00', 'Danish husain', '852', '2', '12 marla', '3230870170', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 250, 224, 'Haji jawaid', '', '', '', '3415353531', '', 1, 1, '0000-00-00 00:00:00', 'Haji jawaid', '750', '0', '14 marla', '3415353531', '', 'G-14/4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 251, 225, 'Anwar khan', '', '', '', '3329966216', '', 1, 1, '0000-00-00 00:00:00', 'Anwar khan', '30', '0', '14 marla', '3329966216', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 252, 226, 'Shahid abbasi', '', '', '', '3105774728', '', 1, 1, '0000-00-00 00:00:00', 'Shahid abbasi', '11', '101', 'Kanal', '3105774728', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 253, 227, 'Bilal', '', '', '', '3074745301', '', 1, 1, '0000-00-00 00:00:00', 'Bilal', '2', '802', '14 marla', '3074745301', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 254, 228, 'Adnan', '', '', '', '3088838882', '', 1, 1, '0000-00-00 00:00:00', 'Adnan', '1', '89', '12 marla', '3088838882', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 255, 229, 'Wasid', '', '', '', '3075464517', '', 1, 1, '0000-00-00 00:00:00', 'Wasid', '98', '13', '1 knal', '3075464517', '', 'Club city Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 256, 230, 'Dilazak', '', '', '', '3355817653', '', 1, 1, '0000-00-00 00:00:00', 'Dilazak', '105', '13', '1 knal', '3355817653', '', 'Club city Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 257, 231, 'Bilal', '', '', '', '3326125024', '', 1, 1, '0000-00-00 00:00:00', 'Bilal', '119', '12', '1 knal', '3326125024', '', 'Club city Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 258, 232, 'Ahsan', '', '', '', '3225352852', '', 1, 1, '0000-00-00 00:00:00', 'Ahsan', '111', '15', '1 knal', '3225352852', '', 'Club city Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 259, 233, 'Farooq shafqat', '', '', '', '3215331885', '', 1, 1, '0000-00-00 00:00:00', 'Farooq shafqat', '9', '90', '1 kanal', '3215331885', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 260, 234, 'Haider', '', '', '', '3235001800', '', 1, 1, '0000-00-00 00:00:00', 'Haider', '1', '101', '15 marla', '3235001800', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 261, 235, 'Afzal', '', '', '', '3366155525', '', 1, 1, '0000-00-00 00:00:00', 'Afzal', '44', '92', '14 marla', '3366155525', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 262, 236, 'Imran khan', '', '', '', '3215588872', '', 1, 1, '0000-00-00 00:00:00', 'Imran khan', '46', '108', '12 marla', '3215588872', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `customers` (`id`, `customer_id`, `lead_id`, `name`, `email`, `tax_number`, `password`, `contact`, `avatar`, `created_by`, `is_active`, `email_verified_at`, `billing_name`, `billing_country`, `billing_state`, `billing_city`, `billing_phone`, `billing_zip`, `billing_address`, `shipping_name`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_phone`, `shipping_zip`, `shipping_address`, `lang`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
(263, 263, 237, 'Doctor Tahir', '', '', '', '3485048789', '', 1, 1, '0000-00-00 00:00:00', 'Doctor Tahir', '31', '116', '12 marla', '3485048789', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 264, 238, 'Usman', '', '', '', '3238403773', '', 1, 1, '0000-00-00 00:00:00', 'Usman', '81', '108', '14 marla', '3238403773', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 265, 239, 'Mehmood rana', '', '', '', '3362009464', '', 1, 1, '0000-00-00 00:00:00', 'Mehmood rana', '112', '108', '7 marla', '3362009464', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 266, 240, 'Shahid', '', '', '', '3335144270', '', 1, 1, '0000-00-00 00:00:00', 'Shahid', '118', '92', '14 marla', '3335144270', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 267, 241, 'Blu arc', '', '', '', '3311110272', '', 1, 1, '0000-00-00 00:00:00', 'Blu arc', '1', '0', '15 mrla', '3311110272', '', 'I Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 268, 242, 'Kashif', '', '', '', '3108333507', '', 1, 1, '0000-00-00 00:00:00', 'Kashif', '545', '13', '1 knal', '3108333507', '', 'I Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 269, 243, 'M. Rehman', '', '', '', '0312 6463665', '', 1, 1, '0000-00-00 00:00:00', 'M. Rehman', '35', '0', '15 mrla', '0312 6463665', '', 'I Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 270, 244, 'Madni', '', '', '', '3027341147', '', 1, 1, '0000-00-00 00:00:00', 'Madni', '0', '15', '15 mrla', '3027341147', '', 'I Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 271, 245, 'Basit', '', '', '', '3145021251', '', 1, 1, '0000-00-00 00:00:00', 'Basit', '46', '15', '12 mrla', '3145021251', '', 'I Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 272, 246, 'Shiraz', '', '', '', '3125321921', '', 1, 1, '0000-00-00 00:00:00', 'Shiraz', '54', '15', '10 mrla', '3125321921', '', 'I Bahria phase 8', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 273, 247, 'Azmat', '', '', '', '3335577993', '', 1, 1, '0000-00-00 00:00:00', 'Azmat', '63', '34', '1 knal', '3335577993', '', 'G14-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 274, 248, 'Liaqat', '', '', '', '3335398795', '', 1, 1, '0000-00-00 00:00:00', 'Liaqat', '93', '33', '1 knal', '3335398795', '', 'G14-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 275, 249, 'Haider', '', '', '', '3355414083', '', 1, 1, '0000-00-00 00:00:00', 'Haider', '523', '28', '1 knal', '3355414083', '', 'G14-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 276, 250, 'javed', '', '', '', '3005141314', '', 1, 1, '0000-00-00 00:00:00', 'javed', '339', '17', '', '3005141314', '', 'D12/3 Isiamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 277, 251, 'Saqib', '', '', '', '3335107977', '', 1, 1, '0000-00-00 00:00:00', 'Saqib', '127', '19', '5 mrla', '3335107977', '', 'G14-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 278, 252, 'Mehmood rana', '', '', '', '3335144311', '', 1, 1, '0000-00-00 00:00:00', 'Mehmood rana', '104', '108', '1 knal', '3335144311', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 279, 260, 'M. Ramzan', '', '', '', '3345554176', '', 1, 1, '0000-00-00 00:00:00', 'M. Ramzan', '0', '106', '1 knal', '3345554176', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 280, 259, 'Amjed', '', '', '', '3338890670', '', 1, 1, '0000-00-00 00:00:00', 'Amjed', '34', '49', '1 knal', '3338890670', '', 'G 13-2 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 281, 258, 'Ch arshad', '', '', '', '3235511373', '', 1, 1, '0000-00-00 00:00:00', 'Ch arshad', '43', '47', '1 knal', '3235511373', '', 'G 13-2 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 282, 257, 'aimen', '', '', '', '23456789', '', 1, 1, '0000-00-00 00:00:00', 'aimen', '67', '67', '34fs', '23456789', '', 'g6 islamabd', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 283, 261, 'Adeel', '', '', '', '3014080160', '', 1, 1, '0000-00-00 00:00:00', 'Adeel', '1', '106', '1 knal', '3014080160', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 284, 262, 'Land construction', '', '', '', '3048598491', '', 1, 1, '0000-00-00 00:00:00', 'Land construction', '162', '50', '1 knal', '3048598491', '', 'G14-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 285, 263, 'Raja amir', '', '', '', '3005195619', '', 1, 1, '0000-00-00 00:00:00', 'Raja amir', '59', '448', '1 knal', '3005195619', '', 'G 13-1 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 286, 264, 'Rizwan', '', '', '', '3487673539', '', 1, 1, '0000-00-00 00:00:00', 'Rizwan', '67', '92', '1 knal', '3487673539', '', 'G 13-1 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 287, 265, 'Shakeel abbasi', '', '', '', '3005016800', '', 1, 1, '0000-00-00 00:00:00', 'Shakeel abbasi', '14', '99', '1 knal', '3005016800', '', 'G 13-1 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 288, 266, 'Ali fahad', '', '', '', '3244757948', '', 1, 1, '0000-00-00 00:00:00', 'Ali fahad', '98', '109', '10 mrla', '3244757948', '', 'G 13-1 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 289, 267, 'Awais', '', '', '', '3137052368', '', 1, 1, '0000-00-00 00:00:00', 'Awais', '64', '105', '10 mrla', '3137052368', '', 'G 13-1 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 290, 268, 'Saqlain', '', '', '', '3085704219', '', 1, 1, '0000-00-00 00:00:00', 'Saqlain', '73', '102', '10 mrla', '3085704219', '', 'G 13-1 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 291, 269, 'Mehmood', '', '', '', '3155350760', '', 1, 1, '0000-00-00 00:00:00', 'Mehmood', '50', '98', '15 mrla', '3155350760', '', 'G 13-1 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 229, 270, 'Rana arshad', '', '', '', '3035885776', '', 1, 1, '0000-00-00 00:00:00', 'Rana arshad', '2', '115', '15 mrla', '3035885776', '', 'G 13-1 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 293, 271, 'Shaheer', '', '', '', '3235555991', '', 1, 1, '0000-00-00 00:00:00', 'Shaheer', '8', '42', '10 mrla', '3235555991', '', 'G 13-2 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 294, 272, 'Noor alam', '', '', '', '3345412897', '', 1, 1, '0000-00-00 00:00:00', 'Noor alam', '0', '36', '1.5 knal', '3345412897', '', 'G 13-2 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 295, 273, 'Noor', '', '', '', '3338244048', '', 1, 1, '0000-00-00 00:00:00', 'Noor', '10', '63', '1 knal', '3338244048', '', 'G 13-2 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 296, 274, 'Imran khan', '', '', '', '3025408633', '', 1, 1, '0000-00-00 00:00:00', 'Imran khan', '4', '62', '1 knal', '3025408633', '', 'G 13-2 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 297, 275, 'Khizar', '', '', '', '3427359672', '', 1, 1, '0000-00-00 00:00:00', 'Khizar', '25', '0', '1 knal', '3427359672', '', 'G 13-2 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 298, 276, 'Asif', '', '', '', '3315885175', '', 1, 1, '0000-00-00 00:00:00', 'Asif', '46', '102', '1 knal', '3315885175', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 299, 277, 'Ali', '', '', '', '3335300548', '', 1, 1, '0000-00-00 00:00:00', 'Ali', '42', '102', '1 knal', '3335300548', '', 'G14-3 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 300, 278, 'Faseeh', '', '', '', '3345548858', '', 1, 1, '0000-00-00 00:00:00', 'Faseeh', '14', '155', '1 knal', '3345548858', '', 'G 13-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 301, 279, 'Hafiz m adnan', '', '', '', '3022331234', '', 1, 1, '0000-00-00 00:00:00', 'Hafiz m adnan', '37', '158', '1 knal', '3022331234', '', 'G 13-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 302, 280, 'Umar', '', '', '', '3338884222', '', 1, 1, '0000-00-00 00:00:00', 'Umar', '17', '149', '1 knal', '3338884222', '', 'G 13-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 303, 281, 'Aftaab', '', '', '', '3349994978', '', 1, 1, '0000-00-00 00:00:00', 'Aftaab', '4', '151', '15 mrla', '3349994978', '', 'G 13-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 304, 282, 'Bilal', '', '', '', '0335 5272258', '', 1, 1, '0000-00-00 00:00:00', 'Bilal', '5', '154', '15 mrla', '0335 5272258', '', 'G 13-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 305, 283, 'Haji vilayat', '', '', '', '3341008038', '', 1, 1, '0000-00-00 00:00:00', 'Haji vilayat', '6', '154', '15 mrla', '3341008038', '', 'G 13-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 306, 284, 'Sanaullah', '', '', '', '3457015923', '', 1, 1, '0000-00-00 00:00:00', 'Sanaullah', '22', '130', '15 mrla', '3457015923', '', 'G 13-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 307, 285, 'Fahad abbasi', '', '', '', '3215436607', '', 1, 1, '0000-00-00 00:00:00', 'Fahad abbasi', '32', '130', '1 knal', '3215436607', '', 'G 13-4 Islamabad', '', '', '', '', '', '', '', '', 0.00, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 310, 288, 'Yaseen', NULL, NULL, NULL, '03018504529', '', 1, 1, NULL, 'Yaseen', '15', '163', '1 knal', '03018504529', NULL, 'G 13-4 Islamabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 0.00, NULL, '2022-12-12 20:27:01', '2022-12-12 20:27:01'),
(311, 311, 289, 'Malik raees', NULL, NULL, NULL, '0302 5695084', '', 1, 1, NULL, 'Malik raees', '15', '161', '15 mrla', '0302 5695084', NULL, 'G 13-4 Islamabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 0.00, NULL, '2022-12-12 20:27:44', '2022-12-12 20:27:44'),
(312, 312, 290, 'Fawad', NULL, NULL, NULL, '0346 0993595', '', 1, 1, NULL, 'Fawad', '6', '166', '10 mrla', '0346 0993595', NULL, 'G 13-4 Islamabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 0.00, NULL, '2022-12-12 20:28:26', '2022-12-12 20:28:26'),
(313, 313, 291, 'Noor azam', NULL, NULL, NULL, '03339977993', '', 1, 1, NULL, 'Noor azam', '29', '147', '10 mrla', '03339977993', NULL, 'G 13-4 Islamabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 0.00, NULL, '2022-12-13 18:31:33', '2022-12-13 18:31:33'),
(314, 314, 292, 'Hneef', NULL, NULL, NULL, '03005115593', '', 1, 1, NULL, 'Hneef', '34', '147', '12 mrla', '03005115593', NULL, 'G 13-4 Islamabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 0.00, NULL, '2022-12-13 18:35:08', '2022-12-13 18:35:08'),
(315, 315, 293, 'Zahid', NULL, NULL, NULL, '03335400973', '', 1, 1, NULL, 'Zahid', '14', '2', '15 mrla', '03335400973', NULL, 'G 13-3 Islamabad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 0.00, NULL, '2022-12-13 19:10:38', '2022-12-13 19:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `module`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Commission', 'number', 'account', 1, '2022-09-20 22:34:07', '2022-09-20 22:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `record_id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `record_id`, `field_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '', '2022-09-24 22:46:00', '2022-09-24 22:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `custom_questions`
--

CREATE TABLE `custom_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `labels` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `name`, `phone`, `price`, `pipeline_id`, `stage_id`, `sources`, `products`, `notes`, `labels`, `status`, `order`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'testDeal', '03078577573', 18.00, 1, 3, NULL, NULL, NULL, NULL, 'Active', 0, 1, 1, '2022-09-21 20:54:01', '2022-09-22 21:52:37'),
(2, 'Happy Holidays from vCloud Tech', NULL, 7000.00, 1, 1, '2', '1', '', '2', 'Active', 0, 1, 1, '2022-09-21 22:54:22', '2022-09-24 20:49:40'),
(3, 'deal1', '03078577573', 16.00, 1, 1, NULL, NULL, NULL, NULL, 'Active', 0, 1, 1, '2022-09-26 23:46:14', '2022-09-26 23:46:14'),
(4, 'deal1', '03078577573', 16.00, 1, 1, NULL, NULL, NULL, NULL, 'Active', 0, 1, 1, '2022-09-26 23:46:14', '2022-09-26 23:46:14'),
(5, 'aimensdeal', '03078577573', 19.00, 1, 1, NULL, NULL, NULL, NULL, 'Active', 0, 1, 1, '2022-09-27 18:01:15', '2022-09-27 18:01:15'),
(6, 'WorkEleven', '03331938942', 100000.00, 1, 1, NULL, NULL, NULL, NULL, 'Active', 0, 1, 1, '2022-09-29 06:42:11', '2022-09-29 06:42:11'),
(7, 'client', '03415877400', 999999.99, 1, 1, NULL, NULL, NULL, NULL, 'Active', 0, 1, 1, '2022-10-08 17:06:23', '2022-10-08 17:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `deal_calls`
--

CREATE TABLE `deal_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `call_result` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_discussions`
--

CREATE TABLE `deal_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_emails`
--

CREATE TABLE `deal_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_files`
--

CREATE TABLE `deal_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deal_tasks`
--

CREATE TABLE `deal_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `debit_notes`
--

CREATE TABLE `debit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill` int(11) NOT NULL DEFAULT '0',
  `vendor` int(11) NOT NULL DEFAULT '0',
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deduction_options`
--

CREATE TABLE `deduction_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `branch_id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'testDepartment', 1, '2022-09-21 21:34:20', '2022-09-21 21:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'testDesignation', 1, '2022-09-21 21:34:54', '2022-09-21 21:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `is_required`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testDoc', '0', 1, '2022-09-21 21:36:14', '2022-09-21 21:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `ducument_uploads`
--

CREATE TABLE `ducument_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template_langs`
--

CREATE TABLE `email_template_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `branch_id` int(11) NOT NULL DEFAULT '0',
  `department_id` int(11) NOT NULL DEFAULT '0',
  `designation_id` int(11) NOT NULL DEFAULT '0',
  `company_doj` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identifier_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_payer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `name`, `dob`, `gender`, `phone`, `address`, `email`, `password`, `employee_id`, `branch_id`, `department_id`, `designation_id`, `company_doj`, `documents`, `account_holder_name`, `account_number`, `bank_name`, `bank_identifier_code`, `branch_location`, `tax_payer_id`, `salary_type`, `salary`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(16, 21, 'Hassan', NULL, NULL, NULL, NULL, 'Hassan@babarrashid.com', '$2y$10$tiu4xqr/03ZCt4AYtJnz4.0OLT1JVhfI8xJ.OVMvWTv1cbGm6TzZu', '6', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-10-04 15:38:04', '2022-10-04 15:38:04'),
(17, 22, 'Awais', NULL, NULL, NULL, NULL, 'awais@archetives.com', '$2y$10$qAS0ytVO0ISGe4D3uaJXdOFv0kLDXobML4ysjnQ6iB3ex.Z.4PyRO', '7', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-10-04 21:13:17', '2022-10-04 21:13:17'),
(10, 13, 'Muneeb Satti', NULL, NULL, NULL, NULL, 'admin@babarrashid.com', '$2y$10$K4pUmjMX37.s1p301hS8rOLS8qpktyvgmrp7BlykzEqMEZB2wx5gW', '1', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 25000, 1, 1, '2022-09-26 21:45:50', '2022-09-28 19:17:55'),
(11, 15, 'aimen12', NULL, NULL, NULL, NULL, 'phplarave18@gmail.com', '$2y$10$KRdle4k3Pdw35UsLPCrrX.wU/2oMUZko7YKQ8PXF4Cd/5JxgbkMnW', '2', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 250000, 1, 1, '2022-09-28 17:30:21', '2022-09-28 17:33:49'),
(12, 16, 'Sana', NULL, NULL, NULL, NULL, 'Sana@babarrashid.com', '$2y$10$hG7CrjhG10BpJev.kvJeS.MX05uja4C7OAJfhn1jGQrDOAo3C3nQ.', '3', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-09-28 19:26:31', '2022-09-28 19:26:31'),
(15, 20, 'Atsam', NULL, NULL, NULL, NULL, 'Atsam@babarrashid.com', '$2y$10$cpvHphC4I2l4GXCPdH8uVeTSbzvzsAEojEMKt09x9M2.K6I5WkO/W', '5', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-09-30 15:50:51', '2022-10-04 15:36:49'),
(18, 23, 'bell', '2022-10-04', 'Male', '022111111111', 'sas', 'bell@beller.com', '$2y$10$NYD5puVAABIgX742e6iQmOlvmEjaiOh.Sqrg.xpa9KnBPXSdJ6PCW', '8', 2, 1, 1, '2022-10-05', NULL, '', '', '', '', '', '', NULL, NULL, 1, 1, '2022-10-04 22:11:40', '2022-10-05 00:38:18'),
(19, 24, 'aimen', NULL, NULL, NULL, NULL, 'laravelphp18@gmail.com', '$2y$10$bswng8Nct6DMlUmZ1F7cd.4xzdbK6/Z36UolTLpr5nYoOSCmafswS', '9', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-10-05 00:08:52', '2022-10-18 21:05:24'),
(20, 25, 'CD', NULL, NULL, NULL, NULL, 'cd@123.com', '$2y$10$Hw7QrtJIEr9CiJKo5LPaBekueH7vOn0JNS8QgWUBa13O6Sg86fxgW', '10', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-10-07 22:48:17', '2022-10-07 22:48:17'),
(21, 26, 'Zohaib Abbasi', NULL, NULL, NULL, NULL, 'Zohaib@babarrashid.com', '$2y$10$JqnpFXITcVkGP7QHuPn.kOC5y8lGLZE5g2dqt2SItANx.a8RQJpNq', '11', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-10-08 15:25:30', '2022-10-08 15:25:30'),
(22, 27, 'Raheem Abbasi', NULL, NULL, NULL, NULL, 'Raheem@babarrashid.com', '$2y$10$4jIkGKC7paXzSwMdH1GCIuh9b1ir7GG4EC8KT3hz01r6TEb6aBDla', '12', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-10-08 15:34:10', '2022-10-08 15:34:10'),
(23, 28, 'Kamran Alam', NULL, NULL, NULL, NULL, 'Kamran@babarrashid.com', '$2y$10$/n8ttQ9oWU9NgfGkOcOxfOusYyTNFMDPlyjYc3uz.Iwvo8AMLCaXe', '13', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-10-17 15:56:03', '2022-10-17 15:56:03'),
(24, 29, 'Shabir Shah', NULL, NULL, NULL, NULL, 'shabirshah@babarrashid.com', '$2y$10$pbO4ib/vacJtZL.N5UIjT.Z6RJll5wH3sUreBaOG9gnMYd3HNTRrq', '14', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:11:46', '2022-11-02 20:13:03'),
(25, 30, 'Umer', NULL, NULL, NULL, NULL, 'Umer@babarrashid.com', '$2y$10$B5ICGO5gx5hB0XT1FY5WJuKbMgwkwhjp5w3gvu5JT4/Dj7GWkDx2C', '15', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:14:50', '2022-11-02 20:14:50'),
(26, 31, 'Azhar Mehmood', NULL, NULL, NULL, NULL, 'Azharmehmood@babarrashid.com', '$2y$10$sKOI4i5DDWBfL2wVqXUUDOVXbcfpneC2PVJMKdVRC8MuAE.ZpvaKy', '16', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:16:05', '2022-11-02 20:16:05'),
(27, 32, 'Obaid', NULL, NULL, NULL, NULL, 'Obaid@babarrashid.com', '$2y$10$rmyBoComXgzxwU8NUMDDHeaLgvnZMXPlehhT3kWEiU3u5QxaAW8da', '17', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:17:10', '2022-11-02 20:17:10'),
(28, 33, 'Mauviah', NULL, NULL, NULL, NULL, 'Mauvaih@babarrashid.com', '$2y$10$FwfZbnPU3VWNRaNwYhe65uh/TuTbrGV/9TA/sGQtdOeHrmKiqK4My', '18', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:18:09', '2022-11-02 20:18:09'),
(29, 34, 'Noor khan', NULL, NULL, NULL, NULL, 'Noorkhan@babarrashid.com', '$2y$10$.4suK/v.fz9ZK7Hg8X8ukO.gIm.eSh85g337SEmtGsqjsU0O7I2ky', '19', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:19:09', '2022-11-02 20:19:09'),
(30, 35, 'Sadaqat', NULL, NULL, NULL, NULL, 'Sadaqat@babarrashid.com', '$2y$10$lpo51y6M4UVQoFsNVsX4VuGM5scJ7RwtLAM3CCCKcmmPzSuhud0ne', '20', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:20:21', '2022-11-02 20:20:21'),
(31, 36, 'Shakeel', NULL, NULL, NULL, NULL, 'Shakeel@babarrashid.com', '$2y$10$/F8bTu6YeP6/sCVs6SkdaeK/66LYK6ZATuQ1mAuNNpt5CT8GHTql.', '21', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:21:14', '2022-11-02 20:21:14'),
(32, 37, 'Iqbal Shah', NULL, NULL, NULL, NULL, 'Iqbalshah@babarrashid.com', '$2y$10$4iWbES4NaLu4c9v9ic4Oi.hU0fayzKryvzSfWOAtM1jDR65AmkG22', '22', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:22:07', '2022-11-02 20:22:07'),
(33, 38, 'Bilal', NULL, NULL, NULL, NULL, 'Bilal@babarrashid.com', '$2y$10$aH64sNVCViz.u2CT9Q18tOZHF.nzp3YLJmH4NDaGV5ipiLbpEBsJW', '23', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:24:07', '2022-11-02 20:24:07'),
(34, 39, 'H.Umer', NULL, NULL, NULL, NULL, 'HUmer@babarrashid.com', '$2y$10$/PiSUH9Djoj0B7HND7UkO.YXXJ4miTNO68WrZSEYMO86ipeoDm252', '24', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:25:41', '2022-11-02 20:25:41'),
(35, 40, 'Usama', NULL, NULL, NULL, NULL, 'Usama@babarrashid.com', '$2y$10$GIOWozXfV.Pg0cz52/Ax6OIE.kUqnvvFWH67HfN2WjOkzdKBukzSe', '25', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:26:40', '2022-11-02 20:26:40'),
(36, 41, 'Mahad Amir', NULL, NULL, NULL, NULL, 'Mahadamir@babarrashid.com', '$2y$10$RsK9J/AIfwrR4AdhyF5X1.0pJv5AIx3FcARxa.DjjyWTeXrzfWceO', '26', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:27:39', '2022-11-02 20:27:39'),
(37, 42, 'Qadeer', NULL, NULL, NULL, NULL, 'Qadeer@babarrashid.com', '$2y$10$s8SsFSjX7veMZXmLj5TOueCoc6OEj1W2.Ggb.9dL8TirbDjT8lNK6', '27', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-02 20:28:26', '2022-11-02 20:28:26'),
(38, 43, 'cutter1', NULL, NULL, NULL, NULL, 'uaimen128@gmail.com', '$2y$10$1aT8/FlD/IX0znr3irtpFe62cG8e2Fvscp.FvE49NFm8epRSeIkxm', '28', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-18 22:36:15', '2022-11-18 22:36:15'),
(39, 44, 'Farooq Tahir', NULL, NULL, NULL, NULL, 'farooq@babarrashid.com', '$2y$10$7B3Q0h4DjUktexlhEHT2lOLOfz9.AwIZ/r2WwkkN94j8gBkgeq1e6', '29', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2022-11-24 19:26:13', '2022-11-24 19:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estimations`
--

CREATE TABLE `estimations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estimation_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_date` date NOT NULL,
  `discount` double(8,2) NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_employees`
--

CREATE TABLE `event_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `task_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formulas`
--

CREATE TABLE `formulas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formulas`
--

INSERT INTO `formulas` (`id`, `name`, `size`, `type`, `created_at`, `updated_at`) VALUES
(2, 'Outer frame 80MM 88MM 98MM', '80MM 88MM 98MM', 'Outer frame 80MM 88MM 98MM', '2022-11-15 21:11:40', '2022-11-15 21:11:40'),
(3, 'Sliding Sash', '55', 'sliding sash 55', '2022-11-15 21:12:41', '2022-11-15 21:12:41'),
(4, 'Sliding Sash', '66', 'sliding sash 66', '2022-11-15 21:12:56', '2022-11-15 21:12:56'),
(5, 'Sliding Sash', '73', 'sliding sash 73', '2022-11-15 21:13:08', '2022-11-15 21:13:08'),
(6, 'Sliding Sash Fix', '55', 'Sliding Sash Fix 55', '2022-11-15 21:13:49', '2022-11-15 21:13:49'),
(7, 'Sliding Sash Fix', '66', 'Sliding Sash Fix 66', '2022-11-15 21:14:15', '2022-11-15 21:14:15'),
(8, 'Sliding Sash Fix', '73', 'Sliding Sash Fix 73', '2022-11-15 21:14:42', '2022-11-15 21:14:42'),
(9, 'Sliding Sash 55, 66, 73', '55, 66, 73', 'Sliding Sash 55, 66, 73', '2022-11-15 21:15:27', '2022-11-15 21:15:27'),
(10, 'Latch Lock Sliding Sash', '55', 'Latch Lock Sliding Sash 55', '2022-11-15 21:15:58', '2022-11-15 21:15:58'),
(11, 'Latch Lock Sliding Sash', '66', 'Latch Lock Sliding Sash 66', '2022-11-15 21:16:19', '2022-11-15 21:16:19'),
(12, 'Latch Lock Sliding Sash', '73', 'Latch Lock Sliding Sash 73', '2022-11-15 21:16:36', '2022-11-15 21:16:36'),
(13, '60MM', '60MM', '60MM', '2022-11-15 21:17:17', '2022-11-15 21:17:17'),
(15, '70MM', '70MM', '70MM', '2022-11-15 21:17:53', '2022-11-15 21:17:53'),
(16, 'Mullion 60MM', '60MM', 'Mullion 60MM', '2022-11-15 21:19:35', '2022-11-15 21:19:35'),
(17, 'Mullion 70MM', '70MM', 'Mullion 70MM', '2022-11-15 21:20:06', '2022-11-15 21:20:06'),
(18, 'Openable door sash', '60MM', 'Openable door sash 60MM', '2022-11-16 01:24:39', '2022-11-16 01:24:39'),
(19, 'Openable door sash', '70MM', 'Openable door sash 70MM', '2022-11-16 01:24:56', '2022-11-16 01:24:56'),
(20, 'Openable sash 60MM', '60MM', 'Openable sash 60MM', '2022-11-16 01:25:24', '2022-11-16 01:25:24'),
(21, 'Openable sash 70MM', '70MM', 'Openable sash 70MM', '2022-11-16 01:25:53', '2022-11-16 01:25:53'),
(22, '60MM Frame', '60MM', '60MM Frame', '2022-11-16 01:27:24', '2022-11-16 01:27:24'),
(23, '70MM Frame', '70MM', '70MM Frame', '2022-11-16 01:27:47', '2022-11-16 01:27:47'),
(24, 'Testing', '73', 'Testing 73', '2022-11-22 21:03:54', '2022-11-22 21:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `form_builders`
--

CREATE TABLE `form_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_lead_active` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_builders`
--

INSERT INTO `form_builders` (`id`, `name`, `code`, `is_active`, `is_lead_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Lead Form', '632997a08fc141663670176', 1, 0, 1, '2022-09-20 21:36:16', '2022-10-05 00:54:46'),
(3, 'Test', '63355d7bbc3841664441723', 1, 0, 1, '2022-09-29 19:55:23', '2022-09-29 19:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`id`, `form_id`, `name`, `type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Name', 'text', 1, '2022-09-29 00:26:56', '2022-09-29 00:26:56'),
(2, 1, 'Date', 'date', 1, '2022-09-29 00:28:17', '2022-09-29 00:28:17'),
(3, 1, 'House #', 'text', 1, '2022-09-29 00:28:40', '2022-09-29 00:29:00'),
(4, 1, 'Street #', 'text', 1, '2022-09-29 00:28:49', '2022-09-29 00:28:49'),
(5, 1, 'Sector', 'text', 1, '2022-09-29 00:29:13', '2022-09-29 00:29:13'),
(6, 1, 'Area', 'text', 1, '2022-09-29 00:29:21', '2022-09-29 00:29:21'),
(7, 1, 'House Size', 'text', 1, '2022-09-29 00:29:33', '2022-09-29 00:29:33'),
(8, 1, 'Phone', 'text', 1, '2022-09-29 00:29:47', '2022-09-29 00:29:47'),
(9, 1, 'Who is he', 'text', 1, '2022-09-29 00:30:04', '2022-09-29 00:30:04'),
(10, 1, 'Canvasser', 'text', 1, '2022-09-29 00:30:23', '2022-09-29 00:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `form_field_responses`
--

CREATE TABLE `form_field_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_responses`
--

CREATE TABLE `form_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_responses`
--

INSERT INTO `form_responses` (`id`, `form_id`, `response`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"Name\":\"Awais Abbasi\",\"Date\":\"2022-09-29\",\"House #\":\"55\",\"Street #\":\"1\",\"Sector\":\"D\",\"Area\":\"Sattelite Town\",\"House Size\":\"5 Marla\",\"Phone\":\"923578945789347589\",\"Who is he\":\"Labour\",\"Canvasser\":\"Awais\"}', '2022-09-29 19:52:52', '2022-09-29 19:52:52'),
(2, 1, '{\"Name\":\"Asif\",\"Date\":\"2022-09-30\",\"House #\":\"21\",\"Street #\":\"25\",\"Sector\":\"C\",\"Area\":\"DHA-2\",\"House Size\":\"1 Kanal\",\"Phone\":\"03215371372\",\"Who is he\":\"Owner\",\"Canvasser\":\"Hassan\"}', '2022-09-30 15:43:44', '2022-09-30 15:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `genrate_payslip_options`
--

CREATE TABLE `genrate_payslip_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `is_display` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_trackings`
--

CREATE TABLE `goal_trackings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `goal_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_achievement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `progress` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goal_trackings`
--

INSERT INTO `goal_trackings` (`id`, `branch`, `goal_type`, `start_date`, `end_date`, `subject`, `rating`, `target_achievement`, `description`, `status`, `progress`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-21', '2022-09-22', 'test', '4', 'hghb', 'b hggvbhgh', 0, 50, 1, '2022-09-21 21:44:14', '2022-09-21 23:19:49'),
(2, 2, 2, '2022-09-17', '2022-10-05', 'test', '5', 'wwq', '', 2, 100, 1, '2022-09-21 23:23:50', '2022-09-21 23:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goal_types`
--

INSERT INTO `goal_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testgoal', 1, '2022-09-21 21:41:52', '2022-09-21 21:41:52'),
(2, 'test 2', 1, '2022-09-21 23:21:35', '2022-09-21 23:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `occasion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `image`, `url`, `created_at`, `updated_at`) VALUES
(12, 'Outer frame 80MM 88MM 98MM', '1668502711_formula1.png', 'uploads/windows/1668502711_formula1.png', '2022-11-15 20:58:31', '2022-11-15 20:58:31'),
(13, 'Sliding Sash 55', '1668502739_Fromula2.png', 'uploads/windows/1668502739_Fromula2.png', '2022-11-15 20:58:59', '2022-11-15 20:58:59'),
(14, 'Sliding Sash 66', '1668502761_Fromula2.png', 'uploads/windows/1668502761_Fromula2.png', '2022-11-15 20:59:21', '2022-11-15 20:59:21'),
(15, 'Sliding Sash 73', '1668502820_Fromula2.png', 'uploads/windows/1668502820_Fromula2.png', '2022-11-15 21:00:20', '2022-11-15 21:00:20'),
(16, 'Sliding Sash 55 with Fixed Width/Height', '1668502874_formula3.png', 'uploads/windows/1668502874_formula3.png', '2022-11-15 21:01:14', '2022-11-15 21:01:14'),
(17, 'Sliding Sash 66 with Fixed Width/Height', '1668502946_formula3.png', 'uploads/windows/1668502946_formula3.png', '2022-11-15 21:02:26', '2022-11-15 21:02:26'),
(18, 'Sliding Sash 73 with Fixed Width/Height', '1668502967_formula3.png', 'uploads/windows/1668502967_formula3.png', '2022-11-15 21:02:47', '2022-11-15 21:02:47'),
(19, 'Sliding Sash 55, 63, 73', '1668503006_formula4.png', 'uploads/windows/1668503006_formula4.png', '2022-11-15 21:03:26', '2022-11-15 21:03:26'),
(20, 'Latch Lock Sliding Sash 55', '1668503072_formula5.png', 'uploads/windows/1668503072_formula5.png', '2022-11-15 21:04:32', '2022-11-15 21:04:32'),
(21, 'Latch Lock Sliding Sash 66', '1668503092_formula5.png', 'uploads/windows/1668503092_formula5.png', '2022-11-15 21:04:52', '2022-11-15 21:04:52'),
(22, 'Latch Lock Sliding Sash 73', '1668503117_formula5.png', 'uploads/windows/1668503117_formula5.png', '2022-11-15 21:05:17', '2022-11-15 21:05:17'),
(23, '60MM', '1668503243_formula6.png', 'uploads/windows/1668503243_formula6.png', '2022-11-15 21:07:23', '2022-11-15 21:07:23'),
(24, '70MM', '1668503261_formula6.png', 'uploads/windows/1668503261_formula6.png', '2022-11-15 21:07:41', '2022-11-15 21:07:41'),
(25, 'Mullion 60MM', '1668503291_formula7.png', 'uploads/windows/1668503291_formula7.png', '2022-11-15 21:08:11', '2022-11-15 21:08:11'),
(26, 'Mullion 70MM', '1668503317_formula6.png', 'uploads/windows/1668503317_formula6.png', '2022-11-15 21:08:37', '2022-11-15 21:08:37'),
(27, 'Openable door sash 60MM', '1668517682_formula8.png', 'uploads/windows/1668517682_formula8.png', '2022-11-16 01:08:02', '2022-11-16 01:08:02'),
(28, 'Openable door sash 70MM', '1668517700_formula8.png', 'uploads/windows/1668517700_formula8.png', '2022-11-16 01:08:20', '2022-11-16 01:08:20'),
(29, 'Openable sash 60MM', '1668517735_formula9.png', 'uploads/windows/1668517735_formula9.png', '2022-11-16 01:08:55', '2022-11-16 01:08:55'),
(30, 'Openable sash 70MM', '1668517758_formula9.png', 'uploads/windows/1668517758_formula9.png', '2022-11-16 01:09:18', '2022-11-16 01:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `image_formulas`
--

CREATE TABLE `image_formulas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `formula_id` bigint(20) UNSIGNED NOT NULL,
  `formula_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_formulas`
--

INSERT INTO `image_formulas` (`id`, `image_id`, `formula_id`, `formula_type`, `date`, `created_at`, `updated_at`) VALUES
(4, 12, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-15', NULL, NULL),
(5, 13, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-15', NULL, NULL),
(6, 13, 3, 'sliding sash 55', '2022-11-15', NULL, NULL),
(7, 14, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-15', NULL, NULL),
(8, 14, 4, 'sliding sash 66', '2022-11-15', NULL, NULL),
(9, 16, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-15', NULL, NULL),
(10, 16, 6, 'Sliding Sash Fix 55', '2022-11-15', NULL, NULL),
(11, 15, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-25', NULL, NULL),
(12, 15, 5, 'sliding sash 73', '2022-11-25', NULL, NULL),
(13, 17, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-26', NULL, NULL),
(14, 17, 7, 'Sliding Sash Fix 66', '2022-11-26', NULL, NULL),
(15, 18, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-26', NULL, NULL),
(16, 18, 8, 'Sliding Sash Fix 73', '2022-11-26', NULL, NULL),
(19, 19, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-26', NULL, NULL),
(20, 19, 9, 'Sliding Sash 55, 66, 73', '2022-11-26', NULL, NULL),
(21, 20, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-26', NULL, NULL),
(22, 20, 10, 'Latch Lock Sliding Sash 55', '2022-11-26', NULL, NULL),
(23, 20, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-28', NULL, NULL),
(24, 20, 10, 'Latch Lock Sliding Sash 55', '2022-11-28', NULL, NULL),
(25, 21, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-28', NULL, NULL),
(26, 21, 11, 'Latch Lock Sliding Sash 66', '2022-11-28', NULL, NULL),
(27, 22, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-28', NULL, NULL),
(28, 22, 12, 'Latch Lock Sliding Sash 73', '2022-11-28', NULL, NULL),
(29, 23, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-28', NULL, NULL),
(30, 23, 13, '60MM', '2022-11-28', NULL, NULL),
(31, 24, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-28', NULL, NULL),
(32, 24, 15, '70MM', '2022-11-28', NULL, NULL),
(33, 25, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-28', NULL, NULL),
(34, 25, 16, 'Mullion 60MM', '2022-11-28', NULL, NULL),
(35, 26, 2, 'Outer frame 80MM 88MM 98MM', '2022-11-28', NULL, NULL),
(36, 26, 17, 'Mullion 70MM', '2022-11-28', NULL, NULL),
(37, 27, 18, 'Openable door sash 60MM', '2022-11-28', NULL, NULL),
(38, 27, 22, '60MM Frame', '2022-11-28', NULL, NULL),
(39, 28, 19, 'Openable door sash 70MM', '2022-11-28', NULL, NULL),
(40, 28, 23, '70MM Frame', '2022-11-28', NULL, NULL),
(41, 29, 20, 'Openable sash 60MM', '2022-11-28', NULL, NULL),
(42, 29, 22, '60MM Frame', '2022-11-28', NULL, NULL),
(43, 30, 15, '70MM', '2022-11-28', NULL, NULL),
(44, 30, 21, 'Openable sash 70MM', '2022-11-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL DEFAULT '0',
  `department` int(11) NOT NULL DEFAULT '0',
  `designation` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT '0',
  `marketing` int(11) NOT NULL DEFAULT '0',
  `administration` int(11) NOT NULL DEFAULT '0',
  `professionalism` int(11) NOT NULL DEFAULT '0',
  `integrity` int(11) NOT NULL DEFAULT '0',
  `attendance` int(11) NOT NULL DEFAULT '0',
  `created_user` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`id`, `branch`, `department`, `designation`, `rating`, `customer_experience`, `marketing`, `administration`, `professionalism`, `integrity`, `attendance`, `created_user`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 1, '{\"1\":\"5\"}', 0, 0, 0, 0, 0, 0, 1, 1, '2022-09-21 23:23:01', '2022-09-21 23:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `interview_schedules`
--

CREATE TABLE `interview_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate` int(11) NOT NULL,
  `employee` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `employee_response` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `ref_number` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `shipping_display` int(11) NOT NULL DEFAULT '1',
  `discount_apply` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_id`, `customer_id`, `issue_date`, `due_date`, `send_date`, `category_id`, `ref_number`, `status`, `shipping_display`, `discount_apply`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-21', '2022-09-21', '2022-11-30', 2, 'hjkhkh', 1, 1, 1, 1, '2022-09-21 22:57:07', '2022-12-01 00:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manually',
  `txn_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `quantity`, `tax`, `discount`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '', 0.00, '120.00', 'wwe', '2022-09-21 22:57:07', '2022-09-21 22:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `requirement` text COLLATE utf8mb4_unicode_ci,
  `branch` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `skill` text COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `requirement`, `branch`, `category`, `skill`, `position`, `start_date`, `end_date`, `status`, `applicant`, `visibility`, `code`, `custom_question`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testjob', 'dcf', 'fvvccv', 1, 1, 'computers', 2, '2022-09-21', '2022-09-22', 'active', 'gender,country', 'profile', '632aecd31b672', '', 1, '2022-09-21 21:52:03', '2022-09-21 21:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` text COLLATE utf8mb4_unicode_ci,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '0',
  `skill` text COLLATE utf8mb4_unicode_ci,
  `rating` int(11) NOT NULL DEFAULT '0',
  `is_archive` int(11) NOT NULL DEFAULT '0',
  `custom_question` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job`, `name`, `email`, `phone`, `profile`, `resume`, `cover_letter`, `dob`, `gender`, `country`, `state`, `city`, `stage`, `order`, `skill`, `rating`, `is_archive`, `custom_question`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'une aimen', 'uaimen128@gmail.com', '03078577573', '3D Interior-01_1663757561.png', '', '', '0000-00-00', 'Male', 'Pakistan', 'punjab', 'rawalpindi', 1, 0, NULL, 0, 0, 'null', 1, '2022-09-21 21:52:41', '2022-10-03 21:39:50');

-- --------------------------------------------------------

--
-- Table structure for table `job_application_notes`
--

CREATE TABLE `job_application_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_id` int(11) NOT NULL DEFAULT '0',
  `note_created` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `title`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testcategory', 1, '2022-09-21 21:48:15', '2022-09-21 21:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `job_on_boards`
--

CREATE TABLE `job_on_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application` int(11) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convert_to_employee` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_stages`
--

CREATE TABLE `job_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_stages`
--

INSERT INTO `job_stages` (`id`, `title`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Applied', 0, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(2, 'Phone Screen', 0, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(3, 'Interview', 0, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(4, 'Hired', 0, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(5, 'Rejected', 0, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

CREATE TABLE `journal_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journal_entries`
--

INSERT INTO `journal_entries` (`id`, `date`, `reference`, `description`, `journal_id`, `created_by`, `created_at`, `updated_at`) VALUES
(10, '2022-11-22', '1', '', 1, 1, '2022-11-22 23:33:59', '2022-11-22 23:33:59'),
(11, '2022-11-22', '', '', 2, 1, '2022-11-22 23:35:35', '2022-11-22 23:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `journal_items`
--

CREATE TABLE `journal_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `journal` int(11) NOT NULL DEFAULT '0',
  `account` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `debit` double(8,2) NOT NULL DEFAULT '0.00',
  `credit` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journal_items`
--

INSERT INTO `journal_items` (`id`, `journal`, `account`, `description`, `debit`, `credit`, `created_at`, `updated_at`) VALUES
(19, 10, 33, 'Petty Cash Shah G', 100000.00, 0.00, '2022-11-22 23:33:59', '2022-11-22 23:33:59'),
(20, 10, 34, '', 0.00, 100000.00, '2022-11-22 23:33:59', '2022-11-22 23:33:59'),
(21, 11, 3, '', 50000.00, 0.00, '2022-11-22 23:35:35', '2022-11-22 23:35:35'),
(22, 11, 33, '', 0.00, 50000.00, '2022-11-22 23:35:35', '2022-11-22 23:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `color`, `pipeline_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Size Taken', 'info', 1, 1, '2022-09-19 18:02:18', '2022-10-15 15:48:08'),
(2, 'Quoted', 'warning', 1, 1, '2022-09-19 18:02:18', '2022-10-15 15:48:22'),
(3, 'Busy', 'primary', 1, 1, '2022-09-19 18:02:18', '2022-10-15 16:38:16'),
(4, 'Call after 3 Months', 'danger', 1, 1, '2022-09-19 18:02:18', '2022-10-15 17:08:03'),
(5, 'Switched Off', 'danger', 1, 1, '2022-09-19 18:02:18', '2022-10-15 17:47:02'),
(6, 'rejected', 'danger', 1, 1, '2022-10-22 16:22:11', '2022-10-22 16:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_sections`
--

CREATE TABLE `landing_page_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_order` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci,
  `section_type` enum('section-1','section-2','section-3','section-4','section-5','section-6','section-7','section-8','section-9','section-10','section-plan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_demo_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_blade_file_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'babar@babarrashid.com',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `houseno` int(11) NOT NULL,
  `streetno` int(11) NOT NULL,
  `sector` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `housesize` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whoishe` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `labels` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `quote` int(11) DEFAULT '0',
  `quotedate` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_converted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `date`, `name`, `email`, `phone`, `subject`, `houseno`, `streetno`, `sector`, `area`, `housesize`, `whoishe`, `user_id`, `pipeline_id`, `stage_id`, `sources`, `products`, `notes`, `labels`, `order`, `quote`, `quotedate`, `created_by`, `is_active`, `is_converted`, `created_at`, `updated_at`) VALUES
(30, '2022-10-11', 'Rameez', 'babar@babarrashid.com', '03217967614', 'Cal after 1 month', 22, 34, '', 'River garden', '14 marla', 'Owner', 1, 1, 17, '6', '1', 'CALL REMINDER 11-11-2022', NULL, 17, 0, NULL, 1, 1, 0, '2022-10-11 17:12:59', '2022-10-27 19:00:59'),
(28, '2022-10-11', 'Shareef', 'babar@babarrashid.com', '03462249786', 'Cal after 3 month', 20, 23, '', 'River garden', '1 kanal', 'Contractor', 1, 1, 17, '6', '1', 'Owner 0330-0200200 (Anjum) CALL REMINDER 11-01-2023', '4', 16, 0, NULL, 1, 1, 0, '2022-10-11 16:46:02', '2022-10-27 19:00:59'),
(29, '2022-10-11', 'Rab Nawaz', 'babar@babarrashid.com', '03007511638', 'Ready to fit', 15, 34, '', 'River garden', '12 marla', 'Contractor', 1, 1, 13, '6', '1', '', NULL, 3, 0, NULL, 1, 1, 0, '2022-10-11 16:56:13', '2022-10-15 16:49:04'),
(36, '2022-10-12', 'Col khurram', 'babar@babarrashid.com', '03335105000', 'Call', 3, 1, 'C', 'Dha 1', '1 knal', 'Owner', 13, 1, 11, '6', '1', 'HE WANTS THE QUOTE', NULL, 14, 0, NULL, 1, 1, 0, '2022-10-12 15:23:43', '2022-11-10 19:42:08'),
(39, '2022-10-13', 'raza', 'babar@babarrashid.com', '03455890864', 'Call', 16, 12, 'A', 'Dha 1', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'Or projects Hain In k 2 months k bad call krni hai', NULL, 2, 0, NULL, 1, 1, 0, '2022-10-13 15:24:54', '2022-10-14 21:00:45'),
(40, '2022-10-13', 'nadeem', 'babar@babarrashid.com', '03339302408', 'Call', 7, 8, 'A', 'Dha 1', '1 knal', 'Owner', 1, 1, 17, '6', '1', 'Call After 2 months', NULL, 2, 0, NULL, 1, 1, 0, '2022-10-13 15:27:08', '2022-10-27 19:07:46'),
(41, '2022-10-13', 'Haji  ahsan', 'babar@babarrashid.com', '03305870182 .', 'Call', 7, 13, 'D', 'Dha 1', '1 knal', 'Owner', 1, 1, 20, '6', '1', '', '3', 16, 0, NULL, 1, 1, 0, '2022-10-13 15:28:40', '2022-11-08 22:03:28'),
(158, '2022-11-09', 'M. Deen', 'babar@babarrashid.com', '03315001076', 'Call', 215, 6, 'J', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 9, '6', '1', 'Alumunium', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-09 18:09:35', '2022-11-09 18:19:52'),
(42, '2022-10-13', 'Arab', 'babar@babarrashid.com', '03024901541', 'Cal', 4, 40, 'Blok h', 'Sohan garden', '10 marla', 'Owner', 1, 1, 20, '6', '1', ' ', NULL, 1, 0, NULL, 1, 1, 0, '2022-10-13 16:21:30', '2022-11-21 18:46:39'),
(43, '2022-10-13', 'Ibraheem', 'babar@babarrashid.com', '03448595862', 'Call', 7, 19, 'B-orchard', 'Dha 1', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'Aluminium', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-13 16:42:42', '2022-10-14 21:00:48'),
(44, '2022-10-13', 'Zafar iqbal', 'babar@babarrashid.com', '03005006148', 'Cal', 26, 44, 'Blok h', 'Sohan garden', '10 marla', 'Owner', 1, 1, 11, '6', '1', '', '1', 24, 0, NULL, 1, 1, 0, '2022-10-13 16:56:11', '2022-11-10 19:42:08'),
(45, '2022-10-13', 'Khalid', 'babar@babarrashid.com', '03335119413', 'Call', 17, 20, 'B-orchard', 'Dha 1', '1 knal', 'Owner', 1, 1, 13, '6', '1', '', NULL, 1, 0, NULL, 1, 1, 0, '2022-10-13 16:59:39', '2022-10-14 22:29:11'),
(46, '2022-10-13', 'Abrar ahmed', 'babar@babarrashid.com', '03005124713', 'Call', 1, 14, 'B-orchard', 'Dha 1', '1 knal', 'Contractor', 1, 1, 9, '6', '1', '', NULL, 1, 0, NULL, 1, 1, 0, '2022-10-13 17:03:47', '2022-10-15 17:34:48'),
(47, '2022-10-13', 'Hasnain', 'babar@babarrashid.com', '03025474897', 'Cal', 19, 45, 'Blok h', 'Sohan garden', '10 marla', 'Owner', 1, 1, 11, '6', '1', '', '1', 9, 0, NULL, 1, 1, 0, '2022-10-13 17:57:24', '2022-11-10 19:42:08'),
(48, '2022-10-13', 'Col riyaz', 'babar@babarrashid.com', '03215019876', 'Call', 20, 23, 'C', 'Dha 1', '1 knal', 'Owner', 1, 1, 13, '6', '1', 'r', NULL, 15, 0, NULL, 1, 1, 0, '2022-10-13 18:05:03', '2022-11-05 18:38:20'),
(151, '2022-11-05', 'Wasif', 'babar@babarrashid.com', '03009288255', 'Call after one month', 528, 3, 'B', 'Bahria phase 8', '10 mrla', 'Thekedar', 1, 1, 20, '6', '1', '', '5', 0, 0, NULL, 1, 1, 0, '2022-11-05 18:40:51', '2022-11-08 21:55:37'),
(49, '2022-10-13', 'Raja. M. Arshad', 'babar@babarrashid.com', '03005146685', 'Call after 2 week', 24, 23, 'C', 'Dha 1', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'Not Interested in UPVC', NULL, 18, 0, NULL, 1, 1, 0, '2022-10-13 18:06:12', '2022-11-18 20:15:19'),
(50, '2022-10-13', 'Nawaz khan', 'babar@babarrashid.com', '03169935636', 'Call after 2 week', 30, 23, 'C', 'Dha 1', '1 knal', 'Thekedar', 1, 1, 16, '6', '1', '', NULL, 19, 0, NULL, 1, 1, 0, '2022-10-13 18:07:34', '2022-11-18 18:37:09'),
(51, '2022-10-13', 'Yaseen', 'babar@babarrashid.com', '03345177899', 'Cal', 9, 45, 'Blok h', 'Sohan garden', '7 marla', 'Owner', 1, 1, 11, '6', '1', 'He Wants The Quote', '1', 25, 0, NULL, 1, 1, 0, '2022-10-13 18:57:04', '2022-11-10 19:42:08'),
(52, '2022-10-14', 'Nadeem', 'babar@babarrashid.com', '03095192374', 'Call', 12, 22, 'C', 'Dha 1', '1 knal', 'Thekedar', 1, 1, 20, '6', '1', 'not responding', '5', 18, 0, NULL, 1, 1, 0, '2022-10-14 18:08:36', '2022-11-08 22:04:24'),
(53, '2022-10-14', 'Sajid', 'babar@babarrashid.com', '03335610570', 'He want the quotation', 13, 32, 'C', 'Dha 1', '1 knal', 'Owner', 16, 1, 11, NULL, NULL, NULL, '1', 26, 0, NULL, 1, 1, 0, '2022-10-14 18:10:19', '2022-11-10 19:42:08'),
(57, '2022-10-15', 'Azmat', 'babar@babarrashid.com', '03078572792', 'Cal', 58, 33, 'Blok h', 'Sohan garden', '7 marla', 'Owner', 1, 1, 11, '6', '1', '', '1', 21, 0, NULL, 1, 1, 0, '2022-10-15 17:40:53', '2022-11-10 19:42:08'),
(54, '2022-10-15', 'Abdul sattar', 'babar@babarrashid.com', '03445945788', 'Cal', 8, 9, 'Blok h', 'Sohan garden', '7 marla', 'Contractor', 1, 1, 11, '6', '1', 'Is ko cal kr k owner ka num lena hy ', '1', 22, 0, NULL, 1, 1, 0, '2022-10-15 15:08:29', '2022-11-10 19:42:08'),
(55, '2022-10-15', 'Iqbal', 'babar@babarrashid.com', '03345237742', 'Cal', 60, 34, 'Blok h', 'Sohan garden', '10 marla', 'Contractor', 1, 1, 11, '6', '1', '', '1', 23, 0, NULL, 1, 1, 0, '2022-10-15 16:59:15', '2022-11-10 19:42:08'),
(56, '2022-10-15', 'Khan', 'babar@babarrashid.com', '03029215066', 'Cal', 61, 34, 'Blok h', 'Sohan garden', '7 marla', 'Owner', 1, 1, 9, '6', '1', 'size ni lene diy', '6', 3, 0, NULL, 1, 1, 0, '2022-10-15 17:00:58', '2022-10-22 16:23:01'),
(59, '2022-10-15', 'Ghani', 'babar@babarrashid.com', '03335599225', 'Cal after 2 month', 20, 30, 'Blok h', 'Sohan garden', '7 marla', 'Contractor', 1, 1, 17, '6', '1', 'CALL AFTER 2 MONTHS', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-15 18:10:28', '2022-10-27 19:07:46'),
(60, '2022-10-15', 'Col noor', 'babar@babarrashid.com', '03315511821', 'Call', 12, 24, 'C- 4th avenue', 'Dha 1', '1 knal', 'Owner', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-15 18:11:38', '2022-10-15 18:20:54'),
(61, '2022-10-15', 'M. Sajid', 'babar@babarrashid.com', '03490251049', 'Call after one month', 12, 34, 'C', 'Dha 1', '1 knal', 'Thekedar', 1, 1, 17, '6', '1', 'CALL REMINDER 15-11-2022', NULL, 1, 0, NULL, 1, 1, 0, '2022-10-15 18:15:32', '2022-10-27 19:07:46'),
(62, '2022-10-15', 'Asad', 'babar@babarrashid.com', '03008129203', 'Call after one month', 3, 18, 'B-orchard', 'Dha 1', '1 knal', 'Thekedar', 1, 1, 13, '6', '1', '', NULL, 5, 0, NULL, 1, 1, 0, '2022-10-15 18:28:38', '2022-11-21 18:48:49'),
(63, '2022-10-15', 'Qamar', 'babar@babarrashid.com', '03337482447', 'Call', 152, 11, 'B-orchard', 'Dha 1', '1 knal', 'Owner', 1, 1, 11, '6', '1', 'Asking About Glass And Frames03337482447 kamar&nbsp;H- 19 st 18 b sec b archard dha 1&nbsp;Is ghr k lie 1 month later call krni ha&nbsp;', NULL, 15, 0, NULL, 1, 1, 0, '2022-10-15 18:49:20', '2022-11-10 19:42:08'),
(64, '2022-10-15', 'Zohaib Ali', 'babar@babarrashid.com', '03171504117', 'Cal after 2 month', 18, 22, 'Blok h', 'Sohan garden', '6 marla', 'Owner', 1, 1, 17, '6', '1', 'CALL REMINDER 15-12-2022', NULL, 4, 0, NULL, 1, 1, 0, '2022-10-15 18:56:23', '2022-10-27 19:00:59'),
(65, '2022-10-17', 'Waqar', 'babar@babarrashid.com', '03005355239', 'Call', 2, 26, 'A', 'Dha 1', '1 knal', 'Thekedar', 1, 1, 9, '6', '1', 'ALUMINIUM', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-17 17:05:48', '2022-10-21 20:34:59'),
(66, '2022-10-17', 'Sheikh fiyaz', 'babar@babarrashid.com', '03337602385', 'Call', 11, 1, 'A', 'Dha 1', '1 knal', 'Owner', 1, 1, 13, '6', '1', '', NULL, 7, 0, NULL, 1, 1, 0, '2022-10-17 17:31:45', '2022-11-01 18:05:10'),
(67, '2022-10-17', 'Mudasir bilal', 'babar@babarrashid.com', '03099128083', 'Call after 2 week', 152, 11, 'B1', 'Dha 1', '15 mrla', 'Contractor', 1, 1, 18, '6', '1', '', NULL, 6, 0, NULL, 1, 1, 0, '2022-10-17 18:01:25', '2022-11-08 21:28:06'),
(68, '2022-10-17', 'Col basit', 'babar@babarrashid.com', '03125123613', 'Call', 298, 5, 'B', 'Dha 1', '1 knal', 'Owner', 1, 1, 20, '6', '1', ' Col bahir hote ha un ka munchi kam krwa rha hatemporary blocked number...', '3', 10, 0, NULL, 1, 1, 0, '2022-10-17 18:47:19', '2022-11-08 22:00:00'),
(69, '2022-10-17', 'Mudasir khan', 'babar@babarrashid.com', '0301 7481642', 'Call', 0, 44, 'Executive block', 'Gulberg', '2 knal', 'Thekedar', 1, 1, 11, '6', '1', 'Ye number dia ha abbas eng ne in ka dha 1 ka project ka theka ho gya ha or gulberg k lie quotation dene k lie in se rabta kr le (house 6-8)', NULL, 13, 0, NULL, 1, 1, 0, '2022-10-17 19:51:15', '2022-11-10 19:42:08'),
(71, '2022-10-18', 'Shemroz', 'babar@babarrashid.com', '03454903176', 'Call after 2 week', 0, 3, 'F', 'Dha 1', '15 mrla', 'Thekedar', 1, 1, 18, '6', '1', '', NULL, 8, 0, NULL, 1, 1, 0, '2022-10-18 18:15:29', '2022-11-08 21:35:01'),
(102, '2022-10-24', 'Wajid', 'babar@babarrashid.com', '03215106320', 'Call', 628, 27, 'B', 'Bahria phase 8', '15 mrla', 'Contractor', 1, 1, 16, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-24 17:04:34', '2022-10-31 18:05:19'),
(72, '2022-10-18', 'Tanveer', 'babar@babarrashid.com', '03008155265', 'Call', 350, 0, 'F', 'Dha 1', '1 knal', 'Engineer', 1, 1, 9, '6', '1', '3 ghe bna rha ha ek sat 2 plaster ha ek ka lenter rehta ha 1st floor ka&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ( in ki company k sath detail hui hai)&nbsp; &nbsp; &nbsp;&nbsp;', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-18 19:44:56', '2022-10-19 17:22:40'),
(73, '2022-10-18', 'Dr khalid', 'babar@babarrashid.com', '03342566808', 'Call', 75, 34, 'F', 'Dha 1', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'Inka DHA-1 mai koi project nai hai Baharia mai hai or inko abhi quote nai chahye', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-18 20:32:17', '2022-10-19 17:27:00'),
(75, '2022-10-18', 'Umar', 'babar@babarrashid.com', '03011110272', 'Call', 2, 0, 'F', 'Dha 1', '1 knal', 'Engineer', 1, 1, 20, '6', '1', 'NUMBER SWITCHED OFF JA RAHA HAI.', '5', 17, 0, NULL, 1, 1, 0, '2022-10-18 20:42:14', '2022-11-08 22:04:06'),
(76, '2022-10-19', 'faisal haneef', 'babar@babarrashid.com', '03235006000', 'Call', 234, 14, 'F', 'Dha 1', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'NOT INTERESTED IN UPVC', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-19 18:19:14', '2022-10-21 20:40:13'),
(77, '2022-10-19', 'Rajab', 'babar@babarrashid.com', '03005539688', 'Call', 24, 1, 'F', 'Dha 1', '1 knal', 'Engineer', 1, 1, 9, '6', '1', 'Thekedar', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-19 19:14:53', '2022-10-19 19:39:52'),
(78, '2022-10-19', 'Haji saklain', 'babar@babarrashid.com', '03365245839', 'Call', 0, 4, 'F', 'Dha 1', '1 knal', 'Thekedar', 1, 1, 11, '6', '1', 'New ProjectHouse # 58, Lane 4, Hills View', NULL, 12, 0, NULL, 1, 1, 0, '2022-10-19 19:17:47', '2022-11-10 19:42:08'),
(79, '2022-10-20', 'Zohaib', 'babar@babarrashid.com', '03175446520', 'Cal', 25, 35, 'Blok h', 'Sohan garden', '14 marla', 'Owner', 1, 1, 11, '6', '1', 'HE WANTS THE QUOTE.', '1', 1, 0, NULL, 1, 1, 0, '2022-10-20 16:25:52', '2022-11-10 19:42:08'),
(80, '2022-10-20', 'Hafiz sher gul', 'babar@babarrashid.com', '03349701075', 'Shetring cal after 1 month', 35, 35, 'Blok h', 'Sohan garden', '12 marla', 'Owner', 1, 1, 15, '6', '1', 'call after 1 month 8-12-2022', NULL, 3, 0, NULL, 1, 1, 0, '2022-10-20 16:38:17', '2022-11-08 21:41:43'),
(81, '2022-10-20', 'Waris', 'babar@babarrashid.com', '03125312371', 'Call', 0, 3, 'F', 'Dha 1', '1 knal', 'Owner', 1, 1, 20, '6', '1', '', '5', 1, 0, NULL, 1, 1, 0, '2022-10-20 16:42:07', '2022-11-08 21:58:34'),
(82, '2022-10-20', 'Ahsan/Zaffar', 'babar@babarrashid.com', '03201116660/03016703180', 'Cal', 42, 35, 'Blok h', 'Sohan garden', '12 marla', 'Owner', 1, 1, 13, '6', '1', 'HE IS CONTRACTOR HE WILL PROVIDE OWNER NUMBEROwner is Zaffar', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-20 17:03:17', '2022-10-21 17:36:41'),
(83, '2022-10-20', 'Ghulam abbas', 'babar@babarrashid.com', '03344709063', 'Cal', 49, 35, 'Blok h', 'Sohan garden', '12 marla', 'Owner', 1, 1, 11, '6', '1', 'he wants the quote', NULL, 11, 0, NULL, 1, 1, 0, '2022-10-20 17:34:11', '2022-11-10 19:42:08'),
(84, '2022-10-20', 'Mazhar', 'babar@babarrashid.com', '03006064275', 'Cal', 23, 0, 'Blok f', 'Sohan garden', '1 kanal', 'Owner', 1, 1, 17, '6', '1', 'CALL AFTER 2 MONTHS', NULL, 9, 0, NULL, 1, 1, 0, '2022-10-20 18:13:36', '2022-10-27 19:00:59'),
(85, '2022-10-20', 'Col tahir', 'babar@babarrashid.com', '03089114000', 'Call', 0, 8, 'A', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 11, '6', '1', 'HE WANTS THE QUOTE.', '1', 10, 0, NULL, 1, 1, 0, '2022-10-20 20:37:37', '2022-11-10 19:42:08'),
(86, '2022-10-20', 'Azad', 'babar@babarrashid.com', '0333-5247531', 'Call', 162, 12, 'A', 'Bahria phase 8', '1 knal', 'Thekedar', 1, 1, 11, '6', '1', '', '1', 16, 0, NULL, 1, 1, 0, '2022-10-20 20:38:35', '2022-11-10 19:42:08'),
(87, '2022-10-20', 'Ashraf', 'babar@babarrashid.com', '03030553298', 'Call', 257, 18, 'A', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 16, '6', '1', '', '5', 0, 0, NULL, 1, 1, 0, '2022-10-20 20:39:37', '2022-10-26 18:10:10'),
(88, '2022-10-20', 'Ahsan', 'babar@babarrashid.com', '03330510056', 'Call', 635, 2, 'A', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 17, '6', '1', 'CALL AFTER 3 MONTHS JANUARY 2023', '4', 10, 0, NULL, 1, 1, 0, '2022-10-20 22:09:09', '2022-10-27 19:00:59'),
(89, '2022-10-21', 'M. Sohail aziz', 'babar@babarrashid.com', '03005006364', 'Call', 705, 25, 'Overseas 4', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 11, '6', '1', 'He Wants The Quote.', NULL, 3, 0, NULL, 1, 1, 0, '2022-10-21 16:47:18', '2022-11-18 18:20:08'),
(90, '2022-10-21', 'Sarmad', 'babar@babarrashid.com', '03155279490', 'Cal after 1 month', 20, 0, 'Blok f', 'Sohan garden', '8 marla', 'Contractor', 1, 1, 17, '6', '1', 'CALL REMINDER (6-12-2022)', NULL, 11, 0, NULL, 1, 1, 0, '2022-10-21 16:51:19', '2022-11-21 18:35:18'),
(91, '2022-10-21', 'Khizer', 'babar@babarrashid.com', '03005107780', 'Call', 681, 2, 'A', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 13, '6', '1', 'Aluminium', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-21 17:37:52', '2022-10-21 18:21:12'),
(92, '2022-10-21', 'Mulazim', 'babar@babarrashid.com', '03038976948', 'Cal', 5, 0, 'Blok h', 'Sohan garden', '1 kanal', 'Contractor', 1, 1, 20, '6', '1', '', '5', 12, 0, NULL, 1, 1, 0, '2022-10-21 17:41:06', '2022-11-08 22:00:33'),
(93, '2022-10-21', 'Jawad', 'babar@babarrashid.com', '03335915507', 'Call', 538, 2, 'B', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 17, '6', '1', 'WORK STOP CALL AFTER 2 MONTHS (DECEMBER)', NULL, 12, 0, NULL, 1, 1, 0, '2022-10-21 18:10:50', '2022-10-27 19:00:59'),
(94, '2022-10-21', 'Zaib kiyani', 'babar@babarrashid.com', '03205261094', 'Cal', 2, 0, 'Blok f', 'Sohan garden', '6 marla', 'Owner', 1, 1, 9, '6', '1', 'NOT INTERESTED IN UPVC', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-21 18:27:42', '2022-10-21 20:32:34'),
(95, '2022-10-22', 'Mushtaq', 'babar@babarrashid.com', '03335249224', 'Cal', 48, 0, 'Phase 1', 'Aghosh society', '1 kanal', 'Owner', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-22 16:31:06', '2022-10-22 18:25:39'),
(96, '2022-10-22', 'Amir', 'babar@babarrashid.com', '03355354641', 'Call', 628, 3, 'B', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 16, '6', '1', ', ', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-22 16:44:24', '2022-10-22 18:27:12'),
(97, '2022-10-22', 'Ghori', 'babar@babarrashid.com', '03456711114', 'Cal', 0, 6, 'Phase 1', 'Aghosh society', '1 kanal', 'Owner', 1, 1, 9, '6', '1', 'INKO DUSRI COMPANIES SAY QUOTATIONS GAI HUI HAIN BUT INKO HUMRI COMPANY SAY QUOTE CHAHYE.     HOUSE-127', NULL, 12, 0, NULL, 1, 1, 0, '2022-10-22 16:55:09', '2022-10-28 20:43:47'),
(98, '2022-10-22', 'Nasir Ali', 'babar@babarrashid.com', '03007209983', 'Size taken', 146, 8, 'Phase 1', 'Aghosh society', '1 kanal', 'Owner', 1, 1, 11, '6', '1', 'HE WANTS THE QUOTE', NULL, 18, 0, NULL, 1, 1, 0, '2022-10-22 17:50:56', '2022-11-10 19:42:08'),
(99, '2022-10-22', 'Mansoor', 'babar@babarrashid.com', '03320904456', 'Call', 642, 2, 'A', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 15, '6', '1', 'CALL AFTER 1 MONTHS 22-12-2022', '5', 0, 0, NULL, 1, 1, 0, '2022-10-22 18:09:12', '2022-11-02 19:07:28'),
(100, '2022-10-22', 'Toqeer', 'babar@babarrashid.com', '03355376737', 'Call after one month', 671, 2, 'A', 'Bahria phase 8', '1 knal', 'Engineer', 1, 1, 20, '6', '1', 'CALL REMINDER 22-11-2022', '6', 13, 0, NULL, 1, 1, 0, '2022-10-22 18:19:00', '2022-11-21 18:41:36'),
(101, '2022-10-22', 'Basit', 'babar@babarrashid.com', '03159251345', 'Call', 12, 9, 'A', 'Bahria phase 8', '1 knal', 'Thekedar', 1, 1, 16, '6', '1', 'Invalid Number', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-22 19:05:54', '2022-10-24 20:15:02'),
(103, '2022-10-24', 'Waseem', 'babar@babarrashid.com', '03125921410', 'Call', 589, 10, 'B', 'Bahria phase 8', '10 mrla', 'Thekedar', 1, 1, 20, '6', '1', '', '5', 13, 0, NULL, 1, 1, 0, '2022-10-24 17:27:19', '2022-11-08 22:02:03'),
(104, '2022-10-24', 'Imran', 'babar@babarrashid.com', '03239887569', 'Call', 527, 2, 'B', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 9, '6', '1', 'He don\'t have any project left.&nbsp;', NULL, 4, 0, NULL, 1, 1, 0, '2022-10-24 17:48:24', '2022-11-07 22:03:36'),
(105, '2022-10-24', 'Mudasir', 'babar@babarrashid.com', '03006291866', 'Cal', 22, 9, 'A blok', 'Sohan garden', '12 marla', 'Owner', 1, 1, 16, '6', '1', '', NULL, 5, 0, NULL, 1, 1, 0, '2022-10-24 18:27:36', '2022-10-31 18:26:27'),
(106, '2022-10-24', 'Qadeer', 'babar@babarrashid.com', '03428328371', 'Cal after 2 month', 27, 7, 'A blok', 'Sohan garden', '12 marla', 'Owner', 1, 1, 17, '6', '1', 'CALL REMINDER 24-12-2022', NULL, 14, 0, NULL, 1, 1, 0, '2022-10-24 18:29:49', '2022-10-27 19:00:59'),
(107, '2022-10-24', 'Noor', 'babar@babarrashid.com', '03365006104', 'Call', 28, 8, 'I', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 13, '6', '1', '', NULL, 6, 0, NULL, 1, 1, 0, '2022-10-24 18:58:04', '2022-11-05 18:23:34'),
(108, '2022-10-24', 'Sindhi shb', 'babar@babarrashid.com', '03325198277', 'Cal', 4, 7, 'A blok', 'Sohan garden', '12 marla', 'Owner', 1, 1, 11, '6', '1', 'farm no 80 road 10 sector C pakistan navy farms athal barakahu 26-10-2022 ko quotation deni hai', NULL, 19, 0, NULL, 1, 1, 0, '2022-10-24 19:31:05', '2022-11-10 19:42:08'),
(109, '2022-10-24', 'Naveed', 'babar@babarrashid.com', '03205884499', 'Cal after 2 month', 3, 5, 'A blok', 'Sohan garden', '12 marla', 'Owner', 1, 1, 17, '6', '1', 'CALL REMINDER 24-12-2022', NULL, 15, 0, NULL, 1, 1, 0, '2022-10-24 19:32:18', '2022-10-27 19:00:59'),
(110, '2022-10-25', 'Umair', 'babar@babarrashid.com', '03040055677', 'Cal', 43, 1, 'Blok b', 'Soan garden', '10 marla', 'Owner', 1, 1, 20, '6', '1', 'Switched off', '5', 7, 0, NULL, 1, 1, 0, '2022-10-25 16:20:17', '2022-11-08 21:58:58'),
(111, '2022-10-25', 'Tasaduq Hussain', 'babar@babarrashid.com', '03005323654', 'Call', 166, 27, 'H', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 11, '6', '1', 'He wants the quote.', NULL, 20, 1, '2022-11-10', 1, 1, 0, '2022-10-25 16:38:04', '2022-11-10 19:42:08'),
(112, '2022-10-25', 'Azam', 'babar@babarrashid.com', '03478217719', 'Call', 449, 1, 'H', 'Bahria phase 8', '1 knal', 'Thekedar', 1, 1, 13, '6', '1', 'Windows installed', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-25 16:51:40', '2022-10-25 19:36:51'),
(113, '2022-10-25', 'Jawaid', 'babar@babarrashid.com', '03129126677', 'Cal', 20, 5, 'Blok c', 'Sohan garden', '1 kanal', 'Owner', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-25 16:59:24', '2022-10-25 18:28:47'),
(114, '2022-10-25', 'Azeem', 'babar@babarrashid.com', '03337554665', 'Call', 5, 0, 'A1', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 11, '6', '1', 'he wants the quotation&nbsp;', NULL, 8, 0, NULL, 1, 1, 0, '2022-10-25 17:22:21', '2022-11-21 19:32:43'),
(115, '2022-10-25', 'Madam', 'babar@babarrashid.com', '03253055425', 'Call', 252, 25, 'H', 'Bahria phase 8', '10 mrla', 'Contractor', 1, 1, 20, '6', '1', '', NULL, 9, 0, NULL, 1, 1, 0, '2022-10-25 17:46:03', '2022-11-08 21:59:26'),
(116, '2022-10-25', 'Danial', 'babar@babarrashid.com', '03439216124', 'Cal', 13, 5, 'Block C', 'Soan garden', '1 kanal', 'Site enjinear', 1, 1, 9, '6', '1', 'Aluminium', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-25 17:54:50', '2022-10-26 17:25:57'),
(117, '2022-10-25', 'Iqbal', 'babar@babarrashid.com', '03215186373', 'Call', 93, 2, 'H', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 16, '6', '1', 'Ghullam Nabi inka naam ha or inka koi project nai hai&nbsp;', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-25 18:01:27', '2022-10-26 17:28:49'),
(118, '2022-10-26', 'Asif', 'babar@babarrashid.com', '03218442159', 'Cal', 18, 6, 'Sector F', 'Dha 5', '1 kanal', 'Contractor', 1, 1, 11, '6', '1', 'Owner (Raza Butt:03455890864)', NULL, 17, 0, NULL, 1, 1, 0, '2022-10-26 17:20:47', '2022-11-10 19:42:08'),
(119, '2022-10-26', 'Ahsan', 'babar@babarrashid.com', '03066266833', 'Cal', 12, 31, 'Sector F', 'Dha 5', '1 kanal', 'Owner', 1, 1, 20, '6', '1', '', NULL, 14, 0, NULL, 1, 1, 0, '2022-10-26 18:11:54', '2022-11-08 22:02:43'),
(120, '2022-10-26', 'Malik shahbaz javed', 'babar@babarrashid.com', '03005058924', 'Call', 830, 0, 'H', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 14, '6', '1', 'Call After 2 Months 26-12-2022', NULL, 16, 0, NULL, 1, 1, 0, '2022-10-26 18:39:39', '2022-11-02 18:52:38'),
(121, '2022-10-26', 'Shahid', 'babar@babarrashid.com', '03345001566', 'Call', 978, 0, 'H', 'Bahria phase 8', '10 mrla', 'Thekedar', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-26 18:40:58', '2022-10-26 19:42:44'),
(122, '2022-10-26', 'Hassan', 'babar@babarrashid.com', '03240870310', 'Call', 121, 22, 'H', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 13, '6', '1', 'Aluminum', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-26 18:41:54', '2022-10-26 19:45:12'),
(123, '2022-10-26', 'Asim', 'babar@babarrashid.com', '03155844232', 'Call', 0, 25, 'H', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 13, '6', '1', 'Aluminum&nbsp;', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-26 18:42:35', '2022-10-26 19:46:00'),
(124, '2022-10-26', 'Muzaffar', 'babar@babarrashid.com', '03366024975', 'Call', 1516, 0, 'H', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 14, '6', '1', 'Have 2 months to completeHe wants the quote.', NULL, 17, 0, NULL, 1, 1, 0, '2022-10-26 18:43:34', '2022-10-28 20:47:09'),
(135, '2022-10-31', 'Col pevaiz', 'babar@babarrashid.com', '03005044214', 'Non plastr', 28, 4, 'A blok', 'Dha 5', '14 marla', 'Owner', 1, 1, 15, '6', '1', 'After 2 Months&nbsp; 30-12-2022', NULL, 0, 1, '2022-11-05', 1, 1, 0, '2022-10-31 18:27:05', '2022-11-05 19:22:46'),
(125, '2022-10-27', 'Naeem', 'babar@babarrashid.com', '03005981995', 'Cal', 30, 1, 'Sector A', 'Dha 5', '1 kanal', 'Owner', 1, 1, 17, '6', '1', 'call after two monthsCall on 28/12/22&nbsp;', NULL, 4, 0, NULL, 1, 1, 0, '2022-10-27 16:25:18', '2022-10-28 20:45:36'),
(126, '2022-10-27', 'Nabeel', 'babar@babarrashid.com', '03120081969', 'Cal', 4, 11, 'Sector A', 'Dha 5', '1 kanal', 'Owner', 1, 1, 13, '6', '1', '', NULL, 6, 0, NULL, 1, 1, 0, '2022-10-27 17:18:21', '2022-11-17 21:26:07'),
(127, '2022-10-27', 'Javaid', 'babar@babarrashid.com', '03246364185', 'Call', 131, 22, 'H', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 11, '6', '1', 'HE WANTS THE QUOTEHOUSE # 131B', '1', 2, 0, NULL, 1, 1, 0, '2022-10-27 18:30:17', '2022-11-10 19:42:08'),
(128, '2022-10-27', 'Hassan', 'babar@babarrashid.com', '03362203339', 'Call', 145, 0, 'H', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 9, '6', '1', 'Not interested&nbsp;', NULL, 2, 0, NULL, 1, 1, 0, '2022-10-27 18:32:53', '2022-10-28 21:10:23'),
(129, '2022-10-28', 'Haji zafar', 'babar@babarrashid.com', '03335262821', 'Cal', 13, 13, 'Sector A', 'Dha 5', '1 kanal', 'Owner', 1, 1, 13, '6', '1', 'aluminium', NULL, 1, 0, NULL, 1, 1, 0, '2022-10-28 16:43:24', '2022-11-18 18:05:42'),
(130, '2022-10-29', 'Saleem', 'babar@babarrashid.com', '03345132824', 'Call', 346, 1, 'H', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 13, '6', '1', 'project complete', '5', 0, 0, NULL, 1, 1, 0, '2022-10-29 16:51:24', '2022-11-05 17:37:21'),
(131, '2022-10-29', 'Wajahat', 'babar@babarrashid.com', '03355426452', 'Call after 1 week', 505, 2, 'H', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 13, '6', '1', 'complet ho gaya ha', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-29 17:11:01', '2022-11-05 17:42:05'),
(132, '2022-10-29', 'Raja khurram', 'babar@babarrashid.com', '03065157712', 'Call', 458, 17, 'H', 'Bahria phase 8', '10 mrla', 'Thekedar', 1, 1, 20, '6', '1', 'switched off', '5', 0, 0, NULL, 1, 1, 0, '2022-10-29 17:44:09', '2022-11-08 21:56:07'),
(133, '2022-10-31', 'Haider shah', 'babar@babarrashid.com', '03345528452', 'Cal', 5, 0, 'A blok', 'Dha 5', '1 kanal', 'Owner', 1, 1, 9, '6', '1', 'Not interested', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-31 17:01:39', '2022-11-05 17:33:37'),
(134, '2022-10-31', 'Gul fam', 'babar@babarrashid.com', '03055575555', 'Shetring', 9, 17, 'A blok', 'Dha 5', '1 kanal', 'Owner', 1, 1, 9, '6', '1', 'Aluminium', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-31 17:37:07', '2022-11-18 22:27:09'),
(136, '2022-10-31', 'Zamaan', 'babar@babarrashid.com', '03314955557', 'Call', 261, 14, 'B', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 11, '6', '1', '', '1', 3, 0, '2022-11-05', 1, 1, 0, '2022-10-31 20:18:02', '2022-11-10 19:42:08'),
(137, '2022-10-31', 'Tariq', 'babar@babarrashid.com', '03449991952', 'Call', 233, 15, 'B', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 11, '6', '1', 'HE WANTS THE QUOTE.', '1', 4, 0, NULL, 1, 1, 0, '2022-10-31 20:18:55', '2022-11-10 19:42:08'),
(138, '2022-10-31', 'Hassan', 'babar@babarrashid.com', '03189622842', 'Call', 44, 15, 'B', 'Bahria phase 8', '10 mrla', 'Contractor', 1, 1, 13, '6', '1', 'aluminium', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-31 20:19:56', '2022-11-01 17:27:09'),
(139, '2022-10-31', 'Jaleel', 'babar@babarrashid.com', '03142121272', 'Call', 129, 11, 'B', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 20, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-10-31 20:21:00', '2022-11-08 21:56:29'),
(140, '2022-11-01', 'Dr rasheed', 'babar@babarrashid.com', '03365565528', 'Call', 1056, 33, 'E', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-01 17:19:24', '2022-11-01 19:11:17'),
(141, '2022-11-01', 'M. Gulam abas', 'babar@babarrashid.com', '03338916526', 'Call', 1525, 37, 'E', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 13, '6', '1', 'Deal done with another company', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-01 17:51:25', '2022-11-01 18:19:16'),
(142, '2022-11-01', 'Afzal kiyani', 'babar@babarrashid.com', '0347 5052794', 'Call', 0, 26, 'E1', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-01 19:52:02', '2022-11-02 18:27:58'),
(143, '2022-11-02', 'Waleed', 'babar@babarrashid.com', '03315954196', 'Call', 973, 27, 'Overseas 3', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 11, '6', '1', 'HE WANTS THE QUOTE', '1', 5, 1, '2022-11-10', 1, 1, 0, '2022-11-02 18:49:36', '2022-11-10 19:42:08'),
(144, '2022-11-02', 'M. Imran', 'babar@babarrashid.com', '03005501576', 'Call', 956, 27, 'Overseas 3', 'Bahria phase 8', '12 mrla', 'Owner', 1, 1, 17, '6', '1', 'call on 1 jan', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-02 18:52:28', '2022-12-13 22:09:28'),
(145, '2022-11-02', 'Faheem', 'babar@babarrashid.com', '03063271796', 'Call after one month', 11, 8, 'Overseas 3', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 15, '6', '1', 'Non plaster 2-12 2022', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-02 18:58:07', '2022-11-02 19:02:41'),
(146, '2022-11-02', 'Haider', 'babar@babarrashid.com', '03335557230', 'Call', 602, 17, 'Overseas 3', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 17, '6', '1', 'work stop.call after one month 5/12/2022', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-02 20:01:46', '2022-11-05 18:39:04'),
(147, '2022-11-03', 'Asif', 'babar@babarrashid.com', '03125192800', 'Call', 910, 18, 'Overseas 6', 'Bahria phase 8', '1 knal', 'Thekedar', 1, 1, 11, '6', '1', '', NULL, 6, 0, NULL, 1, 1, 0, '2022-11-03 17:04:59', '2022-11-10 19:42:08'),
(148, '2022-11-03', 'Rizwan', 'babar@babarrashid.com', '03328566001', 'Call', 948, 20, 'Overseas 6', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-03 17:33:15', '2022-11-05 16:54:36'),
(149, '2022-11-03', 'Usama', 'babar@babarrashid.com', '03325411201', 'Call', 1200, 14, 'Overseas 6', 'Bahria phase 8', '15 mrla', 'Contractor', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-03 17:57:49', '2022-11-05 16:50:39'),
(150, '2022-11-04', 'Jama', 'babar@babarrashid.com', '03025662024', 'Call', 1121, 6, 'Overseas 6', 'Bahria phase 8', '10 mrla', 'Thekedar', 1, 1, 13, '6', '1', 'Aluminium', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-04 16:57:23', '2022-11-05 16:52:58'),
(152, '2022-11-05', 'Shabeer', 'babar@babarrashid.com', '03342122521', 'Call', 444, 13, 'I', 'Bahria phase 8', '12 mrla', 'Owner', 1, 1, 11, '6', '1', 'He is already in contact with zohaib as zaeem zaidi.', NULL, 7, 1, '2022-11-10', 1, 1, 0, '2022-11-05 19:55:26', '2022-11-10 19:42:08'),
(153, '2022-11-05', 'Iqbal', 'babar@babarrashid.com', '03065886477', 'Call', 0, 4, 'I', 'Bahria phase 8', '10 mrla', 'Thekedar', 1, 1, 20, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-05 19:58:16', '2022-11-08 21:57:00'),
(154, '2022-11-07', 'Shehroz', 'babar@babarrashid.com', '03315042506', 'Call', 1060, 33, 'E', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 20, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-07 22:15:54', '2022-11-08 21:57:25'),
(155, '2022-11-07', 'Waheed', 'babar@babarrashid.com', '03125302636', 'Call', 1191, 29, 'E', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 20, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-07 22:17:29', '2022-11-08 21:57:53'),
(156, '2022-11-07', 'Tanveer', 'babar@babarrashid.com', '0336 5229600', 'Call', 937, 32, 'E', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 11, '6', '1', 'Quote', NULL, 8, 1, '2022-11-10', 1, 1, 0, '2022-11-07 22:21:12', '2022-11-10 19:42:08'),
(157, '2022-11-08', 'Raja tariq', 'babar@babarrashid.com', '03229213799', 'Cal', 124, 0, 'A blok', 'Zaraj', '14 marla', 'Owner', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-08 17:55:17', '2022-11-08 21:19:13'),
(159, '2022-11-09', 'Bilal', 'babar@babarrashid.com', '03110540974', 'Cal after 1 month', 13, 1, 'I blok', 'Gulberg', '15 marla', 'Owner', 1, 1, 15, '6', '1', 'Call on 9/12/2022', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-09 18:11:58', '2022-11-09 18:35:37'),
(160, '2022-11-09', 'Tayyab', 'babar@babarrashid.com', '03355144487', 'Call', 1, 1, 'J', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-09 19:16:23', '2022-11-09 19:59:38'),
(161, '2022-11-09', 'Saleem', 'babar@babarrashid.com', '03005361410', 'Call', 2, 1, 'J', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-09 19:18:07', '2022-11-09 20:00:08'),
(162, '2022-11-09', 'Ikraam', 'babar@babarrashid.com', '03041096543', 'Cal', 28, 1, 'I blok', 'Gulberg', '15 marla', 'Contractor', 1, 1, 11, '6', '1', 'he wants the quote.', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-09 19:53:19', '2022-11-10 20:14:25'),
(163, '2022-11-10', 'Junaid', 'babar@babarrashid.com', '03008557787', 'Cal', 64, 0, 'Executive blok', 'Gulberg', '5 kanal', 'Site enjinear', 1, 1, 17, '6', '1', 'call after&nbsp; 3 month', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-10 18:13:59', '2022-11-17 20:37:37'),
(164, '2022-11-10', 'Akhter', 'babar@babarrashid.com', '03335105265', 'Call', 1502, 29, 'F8/1', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 11, '6', '1', 'OWNER ASIM 03218522326', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-10 18:43:59', '2022-11-10 19:56:19'),
(165, '2022-11-10', 'Junaid', 'babar@babarrashid.com', '03319162062', 'Cal', 64, 0, 'J blok', 'Gulberg', '1 kanal', 'Owner', 1, 1, 20, '6', '1', '', '5', 0, 0, NULL, 1, 1, 0, '2022-11-10 18:44:13', '2022-11-21 18:43:48'),
(166, '2022-11-10', 'Nasir', 'babar@babarrashid.com', '03005055215', 'Call', 1493, 29, 'F8/1', 'Bahria phase 8', '15 mrla', 'Contractor', 1, 1, 13, '6', '1', 'aluminium', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-10 18:45:47', '2022-11-10 19:09:47'),
(167, '2022-11-10', 'M. Nasir', 'babar@babarrashid.com', '03448820426', 'Call', 8, 29, 'F8/1', 'Bahria phase 8', '12 mrla', 'Owner', 1, 1, 11, '6', '1', 'He wants the quote', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-10 18:51:28', '2022-11-10 20:22:07'),
(168, '2022-11-10', 'Mehroz', 'babar@babarrashid.com', '03217463089', 'Cal after 1 month', 0, 2, 'J blok', 'Gulberg', '1 kanal', 'Owner', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-10 19:28:19', '2022-12-13 21:47:40'),
(169, '2022-11-10', 'Tanveer', 'babar@babarrashid.com', '03465042478', 'Call', 222, 5, 'F8/1', 'Bahria phase 8', '12 mrla', 'Owner', 1, 1, 18, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-10 19:30:02', '2022-11-10 20:31:25'),
(170, '2022-11-10', 'Arslan', 'babar@babarrashid.com', '03168774079', 'Call', 226, 5, 'F8/1', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 13, '6', '1', 'aluminium', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-10 19:32:11', '2022-11-10 20:25:05'),
(171, '2022-11-10', 'Zulkarnain', 'babar@babarrashid.com', '03215067421', 'Call', 73, 3, 'F8/1', 'Bahria phase 8', '12 mrla', 'Owner', 1, 1, 17, '6', '1', 'call after 15 days 25-11-2022', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-10 19:38:20', '2022-11-18 17:44:47'),
(172, '2022-11-11', 'Hamad', 'babar@babarrashid.com', '03006888877', 'Cal', 5, 1, 'Blok c', 'Gulberg', '14 kanal', 'Contractor', 1, 1, 18, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-11 18:05:46', '2022-11-11 21:54:33'),
(173, '2022-11-11', 'Arshad', 'babar@babarrashid.com', '03325580963', 'Cal', 41, 0, 'Blok c', 'Gulberg', '5 kanal', 'Site enjinear', 1, 1, 20, '6', '1', 'powerd off', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-11 18:29:33', '2022-12-12 20:27:12'),
(174, '2022-11-12', 'Qaisar', 'babar@babarrashid.com', '03335183547', 'Call', 508, 2, 'H', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 18, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-12 18:18:21', '2022-11-12 19:23:10'),
(175, '2022-11-12', 'Alam khan', 'babar@babarrashid.com', '03115629911', 'Call', 705, 3, 'H', 'Bahria phase 8', '15 mrla', 'Thekedar', 1, 1, 18, '6', '1', 'owner ishfaq 03238557204', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-12 18:25:26', '2022-11-12 19:50:05'),
(176, '2022-11-12', 'Ishtiyaq', 'babar@babarrashid.com', '03334729519', 'Call', 771, 4, 'H', 'Bahria phase 8', '12 mrla', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-12 18:39:28', '2022-11-12 20:24:14'),
(177, '2022-11-12', 'Irfan', 'babar@babarrashid.com', '03007852122', 'Call', 263, 26, 'H', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 13, '6', '1', 'alum', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-12 19:26:30', '2022-11-12 20:01:53'),
(178, '2022-11-12', 'Abdulqader', 'babar@babarrashid.com', '03331481944', 'Call', 235, 26, 'H', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 11, '6', '1', 'Appointment ho gai hai.', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-12 19:27:22', '2022-11-12 20:29:40'),
(179, '2022-11-12', 'Hamid', 'babar@babarrashid.com', '03005009721', 'Call', 681, 2, 'A', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-12 20:40:24', '2022-11-14 19:52:03'),
(180, '2022-11-17', 'Imran', 'babar@babarrashid.com', '03320988768', 'Cal', 1340, 51, 'Phase#3', 'Behria', '10 marla', 'Owner', 1, 1, 11, '6', '1', 'he wants the quote...', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-17 19:17:09', '2022-11-17 20:13:16'),
(181, '2022-11-17', 'Shakeel', 'babar@babarrashid.com', '03097452451', 'Cal', 1236, 49, 'Phase#3', 'Behria', '10 marla', 'Contractor', 1, 1, 11, '6', '1', 'he wants the quote', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-17 19:42:01', '2022-11-17 20:16:42'),
(182, '2022-11-17', 'Ahsaan', 'babar@babarrashid.com', '03149065133', 'Cal', 1267, 50, 'Phase#3', 'Behria', '10 marla', 'Munchhi', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-17 20:04:34', '2022-11-17 20:25:15'),
(183, '2022-11-18', 'Ramzan', 'babar@babarrashid.com', '03255276590', 'Cal', 643, 30, 'Phase#3', 'Behria', '1 kanal', 'Munchhi', 1, 1, 9, '6', '1', 'Not interested in UPVC', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-18 17:53:39', '2022-11-18 18:03:03'),
(184, '2022-11-18', 'Zain ul abedeen', 'babar@babarrashid.com', '03160512493', 'Cal after 1 month', 523, 24, 'Phase#3', 'Behria', '14 marla', 'Site enjinear', 1, 1, 17, '6', '1', '20-12-2022', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-18 18:49:30', '2022-11-18 18:51:26'),
(185, '2022-11-19', 'Saeed', 'babar@babarrashid.com', '03335134709', 'Cal', 97, 2, 'Phase 4', 'Behria', '10 marla', 'Owner', 1, 1, 20, '6', '1', 'not interested&nbsp;', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-19 17:59:06', '2022-11-21 17:09:17'),
(186, '2022-11-19', 'Abdul waheed', 'babar@babarrashid.com', '03006425996', 'Cal after 1pm', 430, 13, 'Phase 4', 'Behria', '10 marla', 'Contractor', 1, 1, 11, '6', '1', 'he wants the quotation&nbsp;', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-19 18:24:55', '2022-11-21 17:09:54'),
(187, '2022-11-19', 'Ali', 'babar@babarrashid.com', '03444017534', 'Cal', 118, 0, 'Phase 4', 'Behria', '1 kanal', 'Site enjinear', 1, 1, 16, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-19 19:04:23', '2022-11-21 17:10:19'),
(188, '2022-11-21', 'Mansoor', 'babar@babarrashid.com', '03336584552', 'Cal', 412, 20, 'Phase#3', 'Behria', '1 kanal', 'Owner', 1, 1, 15, '6', '1', 'Call on 5 Dec', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-21 18:56:47', '2022-11-22 17:14:42'),
(189, '2022-11-21', 'Amar', 'babar@babarrashid.com', '03125082202', 'Cal after 1 month', 236, 9, 'Phase#3', 'Behria', '1 kanal', 'Contractor', 1, 1, 15, '6', '1', 'Call on 5 Dec', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-21 19:22:17', '2022-11-22 17:15:04'),
(190, '2022-11-21', 'Naseer', 'babar@babarrashid.com', '03005170136', 'Cal', 243, 11, 'Phase#3', 'Behria', '1 kanal', 'Contractor', 1, 1, 9, '6', '1', 'al', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-21 20:14:09', '2022-11-22 20:14:51'),
(191, '2022-11-22', 'Syed brothoers', 'babar@babarrashid.com', '03003181885', 'Cal after 2 month', 18, 2, 'Phase#3', 'Behria', '16 marla', 'Company', 1, 1, 17, '6', '1', 'Non plaster call after 15 days', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-22 17:47:54', '2022-11-23 21:49:11'),
(192, '2022-11-22', 'Wahaj', 'babar@babarrashid.com', '03054466007', 'Call', 52, 8, 'J', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 16, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-22 19:28:09', '2022-11-22 20:19:58'),
(193, '2022-11-22', 'Sami', 'babar@babarrashid.com', '03137070415', 'Call', 96, 14, 'J', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 20, '6', '1', 'Commender assistent', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-22 19:29:05', '2022-12-01 19:01:58'),
(194, '2022-11-23', 'Sheikh roman', 'babar@babarrashid.com', '03335119631', 'Call', 6, 7, 'Overseas 7', 'Bahria phase 8', '12 mrla', 'O', 1, 1, 20, '6', '1', 'powerd off', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-23 20:02:50', '2022-12-12 20:28:38'),
(195, '2022-11-23', 'Fahad', 'babar@babarrashid.com', '03318514931', 'Call', 4, 3, 'Overseas 7', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 16, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-23 20:04:04', '2022-11-23 21:38:31'),
(196, '2022-11-23', 'Narma builder', 'babar@babarrashid.com', '03360762762', 'Call', 17, 2, 'Overseas 7', 'Bahria phase 8', '10 mrla', 'Builders', 1, 1, 17, '6', '1', 'Work stop on site call on 1dec', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-23 20:05:09', '2022-11-23 21:41:55'),
(197, '2022-11-23', 'Usman', 'babar@babarrashid.com', '0335 -8436653', 'Call', 3, 12, 'Overseas 7', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-23 20:06:04', '2022-11-23 21:36:01'),
(198, '2022-11-23', 'Mirza bilal', 'babar@babarrashid.com', '03455935058', 'Cal after 2 month', 616, 18, 'Phase 4', 'Behria', '10 marla', 'Owner', 1, 1, 15, '6', '1', 'call after one month', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-23 21:28:43', '2022-11-26 20:50:13'),
(199, '2022-11-24', 'Ali', 'babar@babarrashid.com', '03339613877', 'Cal', 349, 800, 'G-14/4', 'Islamabad', '1 kanal', 'Owner\'s czn', 1, 1, 11, '6', '1', 'He Wants The Quotation', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-24 18:55:39', '2022-11-24 19:52:58'),
(200, '2022-11-24', 'Irfan', 'babar@babarrashid.com', '03335577725', 'Cal', 317, 31, 'G-14/4', 'Islamabad', '12 marla', 'Contractor', 1, 1, 17, '6', '1', 'Non plasterCall on Dec', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-24 18:59:08', '2022-11-24 21:24:37'),
(201, '2022-11-24', 'Fazal haq', 'babar@babarrashid.com', '03125666400', 'Cal', 232, 39, 'G-14/4', 'Islamabad', '14 marla', 'Contractor', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-24 19:01:35', '2022-11-25 21:46:38'),
(202, '2022-11-24', 'Afaq', 'babar@babarrashid.com', '03225006778', 'Cal', 570, 40, 'G-14/4', 'Islamabad', '10 marla', 'Owner', 1, 1, 18, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-24 19:02:56', '2022-12-01 19:05:34'),
(203, '2022-11-24', 'Faisal', 'babar@babarrashid.com', '03188333954', 'Cal', 406, 26, 'G-14/4', 'Islamabad', '5 marla', 'Munchhi', 1, 1, 11, '6', '1', 'Non plaster', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-24 19:04:46', '2022-11-24 20:42:53'),
(204, '2022-11-24', 'Saqib', 'babar@babarrashid.com', '0345 8502856', 'Call', 155, 8, 'F8/3', 'Bahria phase 8', '10 mrla', 'Owner', 1, 1, 18, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-24 19:23:25', '2022-11-24 20:40:37'),
(205, '2022-11-24', 'Ahsan', 'babar@babarrashid.com', '03065530006', 'Call', 94, 3, 'F8/3', 'Bahria phase 8', '12 mrla', 'Engineer', 1, 1, 13, '6', '1', 'aluminum', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-24 19:27:59', '2022-11-24 20:48:57'),
(206, '2022-11-24', 'Doctor Habib', 'babar@babarrashid.com', '03018045200', 'Cal after 2 month', 663, 47, 'G-14/4', 'Islamabad', '9 marla', 'Owner', 1, 1, 17, '6', '1', 'Under construction cal after 2 month', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-24 21:36:37', '2022-11-25 21:50:03'),
(207, '2022-11-25', 'Imran', 'babar@babarrashid.com', '03365544427', 'Cal', 142, 51, 'G-14/4', 'Islamabad', '1.5 kanal', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-25 17:24:48', '2022-11-25 22:11:30'),
(208, '2022-11-25', 'Saleem', 'babar@babarrashid.com', '03333818179', 'Cal', 647, 47, 'G-14/4', 'Islamabad', '10 marla', 'Owner', 1, 1, 9, '6', '1', 'Client availed Aluminium.', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-25 18:02:35', '2022-12-10 18:08:20'),
(209, '2022-11-25', 'Faizan', 'babar@babarrashid.com', '0306 5847201', 'Call', 95, 6, 'G', 'Bahria phase 8', '15 mrla', 'Engineer', 1, 1, 20, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-25 18:17:56', '2022-12-01 19:16:04'),
(210, '2022-11-25', 'Ali homes', 'babar@babarrashid.com', '03215019029', 'Cal', 743, 46, 'G-14/4', 'Islamabad', '14 marla', 'Contractor', 1, 1, 9, '6', '1', 'Client is not interested in UPVC.', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-25 18:20:16', '2022-12-10 18:06:44'),
(211, '2022-11-25', 'Ahsaan ullah', 'babar@babarrashid.com', '03335244278', 'Cal', 1063, 6, 'G-14/4', 'Islamabad', '4 marla', 'Contractor', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-25 18:50:51', '2022-11-25 22:23:56'),
(212, '2022-11-25', 'Abdul Rehman Minhas', 'babar@babarrashid.com', '03335173816', 'Cal', 1216, 16, 'G-14/4', 'Islamabad', '7 marla', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-25 19:07:33', '2022-11-25 22:39:40'),
(213, '2022-11-25', 'Usama zahoor', 'babar@babarrashid.com', '03075536371', 'Cal', 1217, 16, 'G-14/4', 'Islamabad', '8 kanal', 'Owner', 1, 1, 9, '6', '1', 'Government college bn rha hy ', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-25 20:41:25', '2022-11-28 23:17:53'),
(214, '2022-11-26', 'Saad', 'babar@babarrashid.com', '03125583669', 'Call', 543, 29, 'P', 'Bahria phase 8', '1 knal', 'site eng', 1, 1, 11, '6', '1', 'Already in contact with zohaib from OctoberAlready Quoted', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-26 18:33:54', '2022-12-02 18:42:13'),
(215, '2022-11-26', 'Bilal', 'babar@babarrashid.com', '03045729993', 'Call', 53, 3, 'P', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-26 19:11:02', '2022-11-26 19:35:03'),
(216, '2022-11-26', 'Akash', 'babar@babarrashid.com', '03349141988', 'Call', 10, 1, '', 'P', '1 knal', 'Contractor', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-26 19:11:48', '2022-11-26 20:27:43'),
(217, '2022-11-26', 'Sharjeel', 'babar@babarrashid.com', '03115149578', 'Call', 750, 37, 'P', 'Bahria phase 8', '1 knal', 'Engineer', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-26 19:19:32', '2022-11-26 20:32:30'),
(218, '2022-11-26', 'Asger', 'babar@babarrashid.com', '03131429196', 'Call', 573, 28, 'P', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 16, '6', '1', 'powerd off', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-26 19:21:22', '2022-12-12 20:25:35'),
(219, '2022-11-28', 'Moeez', 'babar@babarrashid.com', '03175090235', 'Call', 0, 13, 'A', 'Bahria phase 8', '1 knal', 'Engineer', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 18:16:19', '2022-11-28 23:09:26'),
(220, '2022-11-28', 'Taimoor', 'babar@babarrashid.com', '03336311925', 'Call', 23, 7, 'Club city', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 19:30:17', '2022-11-28 22:19:24'),
(221, '2022-11-28', 'Mian estate', 'babar@babarrashid.com', '03355828186', 'Call', 28, 7, 'Club city', 'Bahria phase 8', '1 knal', 'Builders', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 19:41:09', '2022-11-28 22:28:20'),
(222, '2022-11-28', 'Gulrauf', 'babar@babarrashid.com', '03366868196', 'Cal', 1343, 2, 'G-14/4', 'Islamabad', '10 marla', 'Contractor', 1, 1, 17, '6', '1', 'Is k do project chal rhy 1343/134528 dec ko rabta krna ha', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 21:39:44', '2022-11-28 22:35:25'),
(223, '2022-11-28', 'Danish husain', 'babar@babarrashid.com', '03230870170', 'Cal', 852, 2, 'G-14/4', 'Islamabad', '12 marla', 'Nephew', 1, 1, 9, '6', '1', 'Do project 852/853', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 21:42:46', '2022-12-01 19:36:18'),
(224, '2022-11-28', 'Haji jawaid', 'babar@babarrashid.com', '03415353531', 'Cal after 2 month', 750, 0, 'G-14/4', 'Islamabad', '14 marla', 'Contractor', 1, 1, 17, '6', '1', 'Shetring lgi hui28 dec ko cal krne ha', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 21:45:50', '2022-11-28 22:38:49'),
(225, '2022-11-28', 'Anwar khan', 'babar@babarrashid.com', '03329966216', 'Cal', 30, 0, 'G14-3', 'Islamabad', '14 marla', 'Contractor', 1, 1, 15, '6', '1', 'Non plaster', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 21:48:04', '2022-11-28 22:39:45'),
(226, '2022-11-28', 'Shahid abbasi', 'babar@babarrashid.com', '03105774728', 'Cal', 11, 101, 'G14-3', 'Islamabad', 'Kanal', 'Site enjinear', 1, 1, 11, '6', '1', 'In ko cal nahi krni mene size utha liya hy ghr ka or in ka whatsp num ye hy 03065291687', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 21:51:12', '2022-11-28 22:47:50'),
(227, '2022-11-28', 'Bilal', 'babar@babarrashid.com', '03074745301', 'Cal', 2, 802, 'G14-3', 'Islamabad', '14 marla', 'Contractor', 1, 1, 11, '6', '1', 'Non plaster', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 22:00:30', '2022-11-28 22:56:04'),
(228, '2022-11-28', 'Adnan', 'babar@babarrashid.com', '03088838882', 'Cal', 1, 89, 'G14-3', 'Islamabad', '12 marla', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-28 22:05:06', '2022-12-01 20:05:52'),
(229, '2022-11-29', 'Wasid', 'babar@babarrashid.com', '03075464517', 'Call', 98, 13, 'Club city', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-29 18:34:00', '2022-11-29 20:33:03'),
(230, '2022-11-29', 'Dilazak', 'babar@babarrashid.com', '03355817653', 'Call', 105, 13, 'Club city', 'Bahria phase 8', '1 knal', 'Builders', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-29 18:47:53', '2022-11-29 20:36:48'),
(231, '2022-11-29', 'Bilal', 'babar@babarrashid.com', '03326125024', 'Call', 119, 12, 'Club city', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-29 19:35:58', '2022-11-29 20:28:25'),
(232, '2022-11-29', 'Ahsan', 'babar@babarrashid.com', '03225352852', 'Call', 111, 15, 'Club city', 'Bahria phase 8', '1 knal', 'Engineer', 1, 1, 15, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-29 19:37:08', '2022-12-01 19:49:44'),
(233, '2022-11-29', 'Farooq shafqat', 'babar@babarrashid.com', '03215331885', 'Cal', 9, 90, 'G14-3', 'Islamabad', '1 kanal', 'Site enjinear', 1, 1, 13, '6', '1', 'Non plaster', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-29 21:17:00', '2022-11-30 19:35:39'),
(234, '2022-11-29', 'Haider', 'babar@babarrashid.com', '03235001800', 'Cal', 1, 101, 'G14-3', 'Islamabad', '15 marla', 'Owner', 1, 1, 15, '6', '1', 'Non plaster', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-29 21:18:25', '2022-11-30 19:43:00'),
(235, '2022-11-29', 'Afzal', 'babar@babarrashid.com', '03366155525', 'Cal', 44, 92, 'G14-3', 'Islamabad', '14 marla', 'Owner', 1, 1, 15, '6', '1', 'Non plaster ', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-29 21:20:39', '2022-11-30 19:41:22'),
(236, '2022-11-29', 'Imran khan', 'babar@babarrashid.com', '03215588872', 'Cal', 46, 108, 'G14-3', 'Islamabad', '12 marla', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-29 21:22:13', '2022-12-01 18:33:46'),
(237, '2022-11-29', 'Doctor Tahir', 'babar@babarrashid.com', '03485048789', 'Cal', 31, 116, 'G14-3', 'Islamabad', '12 marla', 'Owner', 1, 1, 13, '6', '1', 'alumuniom', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-29 21:23:27', '2022-12-07 18:15:05');
INSERT INTO `leads` (`id`, `date`, `name`, `email`, `phone`, `subject`, `houseno`, `streetno`, `sector`, `area`, `housesize`, `whoishe`, `user_id`, `pipeline_id`, `stage_id`, `sources`, `products`, `notes`, `labels`, `order`, `quote`, `quotedate`, `created_by`, `is_active`, `is_converted`, `created_at`, `updated_at`) VALUES
(238, '2022-11-30', 'Usman', 'babar@babarrashid.com', '03238403773', 'Cal', 81, 108, 'G14-3', 'Islamabad', '14 marla', 'Owner', 1, 1, 9, '6', '1', 'Non plaster', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-30 18:24:01', '2022-11-30 19:46:01'),
(239, '2022-11-30', 'Mehmood rana', 'babar@babarrashid.com', '03362009464', 'Cal', 112, 108, 'G14-3', 'Islamabad', '7 marla', 'Owner', 1, 1, 20, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-30 18:25:52', '2022-12-01 18:42:24'),
(240, '2022-11-30', 'Shahid', 'babar@babarrashid.com', '03335144270', 'Cal', 118, 92, 'G14-3', 'Islamabad', '14 marla', 'Owner', 1, 1, 15, '6', '1', 'Half plaste15&nbsp; dec ko cl krne ha', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-30 18:27:19', '2022-11-30 19:53:16'),
(241, '2022-11-30', 'Blu arc', 'babar@babarrashid.com', '03311110272', 'Call', 1, 0, 'I', 'Bahria phase 8', '15 mrla', 'Contractor', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-30 20:53:00', '2022-12-01 19:50:57'),
(242, '2022-11-30', 'Kashif', 'babar@babarrashid.com', '03108333507', 'Call', 545, 13, 'I', 'Bahria phase 8', '1 knal', 'Owner', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-30 20:54:18', '2022-12-01 18:49:54'),
(243, '2022-11-30', 'M. Rehman', 'babar@babarrashid.com', '0312 6463665', 'Call', 35, 0, 'I', 'Bahria phase 8', '15 mrla', 'Owner', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-30 23:20:33', '2022-12-01 18:55:05'),
(244, '2022-11-30', 'Madni', 'babar@babarrashid.com', '03027341147', 'Call', 0, 15, 'I', 'Bahria phase 8', '15 mrla', 'Builders', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-30 23:21:29', '2022-12-01 19:45:31'),
(245, '2022-11-30', 'Basit', 'babar@babarrashid.com', '03145021251', 'Call', 46, 15, 'I', 'Bahria phase 8', '12 mrla', 'Thekedar', 1, 1, 20, '6', '1', 'powerd off', NULL, 0, 0, NULL, 1, 1, 0, '2022-11-30 23:22:23', '2022-12-12 20:29:46'),
(246, '2022-12-01', 'Shiraz', 'babar@babarrashid.com', '03125321921', 'Call after one month', 54, 15, 'I', 'Bahria phase 8', '10 mrla', 'Thekedar', 1, 1, 20, '6', '1', 'powerd off', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-01 19:53:08', '2022-12-12 20:30:50'),
(247, '2022-12-02', 'Azmat', 'babar@babarrashid.com', '03335577993', 'Call', 63, 34, 'G14-4', 'Islamabad', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'Just Called Him He is Not Interested In Giving Measurements And UPVC', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-02 17:07:00', '2022-12-10 17:41:12'),
(248, '2022-12-02', 'Liaqat', 'babar@babarrashid.com', '03335398795', 'Call tomorrow', 93, 33, 'G14-4', 'Islamabad', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'Have Chat With Liaqat He is Not Recommending UPVC.They Are Obtaining Aluminium.', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-02 17:27:26', '2022-12-10 17:45:20'),
(249, '2022-12-02', 'Haider', 'babar@babarrashid.com', '03355414083', 'Call', 523, 28, 'G14-4', 'Islamabad', '1 knal', 'Owner', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-02 18:09:31', '2022-12-02 23:47:55'),
(250, '2022-12-02', 'javed', 'babar@babarrashid.com', '03005141314', 'He wants the quotation', 339, 17, 'D12/3', 'Isiamabad', '', 'Owner', 16, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-02 18:23:32', '2022-12-02 18:24:36'),
(251, '2022-12-02', 'Saqib', 'babar@babarrashid.com', '03335107977', 'Call', 127, 19, 'G14-4', 'Islamabad', '5 mrla', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-02 18:47:02', '2022-12-03 00:07:56'),
(252, '2022-12-02', 'Mehmood rana', 'babar@babarrashid.com', '03335144311', 'Call', 104, 108, 'G14-3', 'Islamabad', '1 knal', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-02 19:50:34', '2022-12-03 00:03:25'),
(260, '2022-12-05', 'M. Ramzan', 'babar@babarrashid.com', '03345554176', 'Call', 0, 106, 'G14-3', 'Islamabad', '1 knal', 'Builders', 1, 1, 9, '6', '1', 'alumium', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-05 19:25:16', '2022-12-07 17:54:13'),
(259, '2022-12-05', 'Amjed', 'babar@babarrashid.com', '03338890670', 'Call', 34, 49, 'G 13-2', 'Islamabad', '1 knal', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-05 19:23:49', '2022-12-12 20:40:08'),
(258, '2022-12-05', 'Ch arshad', 'babar@babarrashid.com', '03235511373', 'Call', 43, 47, 'G 13-2', 'Islamabad', '1 knal', 'Owner', 1, 1, 17, '6', '1', '14dec ko cal krne ha', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-05 18:33:19', '2022-12-07 17:59:33'),
(257, '2022-12-03', 'aimen', 'babar@babarrashid.com', '23456789', 'test', 67, 67, 'g6', 'islamabd', '34fs', 'owner', 24, 1, 12, NULL, NULL, 'call me', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-04 01:19:25', '2022-12-04 01:19:25'),
(261, '2022-12-05', 'Adeel', 'babar@babarrashid.com', '03014080160', 'Call', 1, 106, 'G14-3', 'Islamabad', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'Mr Adeel refused for UPVC measurements as he has complaints of sliding and moulding issues in UPVC.', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-05 19:51:21', '2022-12-10 17:59:09'),
(262, '2022-12-06', 'Land construction', 'babar@babarrashid.com', '03048598491', 'Call', 162, 50, 'G14-4', 'Islamabad', '1 knal', 'Builders', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-06 18:19:41', '2022-12-07 18:44:21'),
(263, '2022-12-06', 'Raja amir', 'babar@babarrashid.com', '03005195619', 'Call', 59, 448, 'G 13-1', 'Islamabad', '1 knal', 'Owner', 1, 1, 11, '6', '1', '', NULL, 1, 0, NULL, 1, 1, 0, '2022-12-06 19:03:37', '2022-12-12 20:24:05'),
(264, '2022-12-06', 'Rizwan', 'babar@babarrashid.com', '03487673539', 'Call', 67, 92, 'G 13-1', 'Islamabad', '1 knal', 'Owner', 1, 1, 15, '6', '1', 'call on 10 jan', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-06 22:53:49', '2022-12-13 22:15:08'),
(265, '2022-12-06', 'Shakeel abbasi', 'babar@babarrashid.com', '03005016800', 'Call', 14, 99, 'G 13-1', 'Islamabad', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'aluimuinom', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-06 22:54:48', '2022-12-07 18:08:24'),
(266, '2022-12-07', 'Ali fahad', 'babar@babarrashid.com', '03244757948', 'Call', 98, 109, 'G 13-1', 'Islamabad', '10 mrla', 'Thekedar', 1, 1, 16, '6', '1', '', NULL, 2, 0, NULL, 1, 1, 0, '2022-12-07 18:24:51', '2022-12-13 20:12:39'),
(267, '2022-12-07', 'Awais', 'babar@babarrashid.com', '03137052368', 'Call', 64, 105, 'G 13-1', 'Islamabad', '10 mrla', 'Contractor', 1, 1, 20, '6', '1', 'powerd off', '5', 0, 0, NULL, 1, 1, 0, '2022-12-07 18:52:00', '2022-12-12 20:41:16'),
(268, '2022-12-07', 'Saqlain', 'babar@babarrashid.com', '03085704219', 'Call', 73, 102, 'G 13-1', 'Islamabad', '10 mrla', 'Thekedar', 1, 1, 20, '6', '1', 'powerd off', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-07 19:06:39', '2022-12-12 20:43:17'),
(269, '2022-12-07', 'Mehmood', 'babar@babarrashid.com', '03155350760', 'Call after 2 week', 50, 98, 'G 13-1', 'Islamabad', '15 mrla', 'Contractor', 1, 1, 10, '6', '1', '', '3', 0, 0, NULL, 1, 1, 0, '2022-12-07 19:32:38', '2022-12-12 20:54:02'),
(270, '2022-12-09', 'Rana arshad', 'babar@babarrashid.com', '03035885776', 'Call', 2, 115, 'G 13-1', 'Islamabad', '15 mrla', 'Owner', 1, 1, 10, '6', '1', '', '3', 0, 0, NULL, 1, 1, 0, '2022-12-09 17:37:26', '2022-12-12 20:54:42'),
(271, '2022-12-09', 'Shaheer', 'babar@babarrashid.com', '03235555991', 'Call', 8, 42, 'G 13-2', 'Islamabad', '10 mrla', 'Contractor', 1, 1, 11, '6', '1', 'Rao naveed', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-09 17:38:15', '2022-12-09 21:30:51'),
(272, '2022-12-09', 'Noor alam', 'babar@babarrashid.com', '03345412897', 'Call', 0, 36, 'G 13-2', 'Islamabad', '1.5 knal', 'Contractor', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-09 17:41:06', '2022-12-09 21:47:01'),
(273, '2022-12-09', 'Noor', 'babar@babarrashid.com', '03338244048', 'Call', 10, 63, 'G 13-2', 'Islamabad', '1 knal', 'Thekedar', 1, 1, 9, '6', '1', 'He Refused UPVC.', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-09 17:41:45', '2022-12-10 17:49:02'),
(274, '2022-12-09', 'Imran khan', 'babar@babarrashid.com', '03025408633', 'Call', 4, 62, 'G 13-2', 'Islamabad', '1 knal', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-09 17:43:03', '2022-12-09 21:31:46'),
(275, '2022-12-09', 'Khizar', 'babar@babarrashid.com', '03427359672', 'Call', 25, 0, 'G 13-2', 'Islamabad', '1 knal', 'Owner', 1, 1, 15, '6', '1', 'call on 25dec', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-09 17:43:52', '2022-12-12 19:02:42'),
(276, '2022-12-09', 'Asif', 'babar@babarrashid.com', '03315885175', 'Call', 46, 102, 'G14-3', 'Islamabad', '1 knal', 'Owner', 1, 1, 18, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-09 17:49:10', '2022-12-12 19:07:14'),
(277, '2022-12-09', 'Ali', 'babar@babarrashid.com', '03335300548', 'Call', 42, 102, 'G14-3', 'Islamabad', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'Mr.Ali is Aluminium Client.', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-09 17:49:51', '2022-12-10 17:54:40'),
(278, '2022-12-09', 'Faseeh', 'babar@babarrashid.com', '03345548858', 'Call', 14, 155, 'G 13-4', 'Islamabad', '1 knal', 'Owner', 1, 1, 9, '6', '1', 'aluminum', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-09 19:41:11', '2022-12-12 19:11:38'),
(279, '2022-12-09', 'Hafiz m adnan', 'babar@babarrashid.com', '03022331234', 'Call', 37, 158, 'G 13-4', 'Islamabad', '1 knal', 'Engineer', 1, 1, 17, '6', '1', 'call on 1 jan', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-09 19:42:27', '2022-12-12 19:14:37'),
(280, '2022-12-10', 'Umar', 'babar@babarrashid.com', '03338884222', 'Call', 17, 149, 'G 13-4', 'Islamabad', '1 knal', 'Engineer', 1, 1, 18, '6', '1', 'is project me aluminum ho gaya ha&nbsp;', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-10 16:59:22', '2022-12-12 19:21:52'),
(281, '2022-12-10', 'Aftaab', 'babar@babarrashid.com', '03349994978', 'Call', 4, 151, 'G 13-4', 'Islamabad', '15 mrla', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-10 17:19:18', '2022-12-12 19:41:15'),
(282, '2022-12-10', 'Bilal', 'babar@babarrashid.com', '0335 5272258', 'Call after one month', 5, 154, 'G 13-4', 'Islamabad', '15 mrla', 'Owner', 1, 1, 17, '6', '1', 'Lenter dal rha ha is ka mumty nahi bnicall on 16jan&nbsp;', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-10 18:08:29', '2022-12-12 19:43:31'),
(283, '2022-12-10', 'Haji vilayat', 'babar@babarrashid.com', '03341008038', 'Call after one month', 6, 154, 'G 13-4', 'Islamabad', '15 mrla', 'Thekedar', 1, 1, 17, '6', '1', 'Is ki mumty nahi bni ani lenter dal rha&nbsp;16 jan ko call krne ha', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-10 18:10:23', '2022-12-12 19:44:59'),
(284, '2022-12-10', 'Sanaullah', 'babar@babarrashid.com', '03457015923', 'Call', 22, 130, 'G 13-4', 'Islamabad', '15 mrla', 'Thekedar', 1, 1, 9, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-10 19:01:51', '2022-12-12 19:50:10'),
(285, '2022-12-10', 'Fahad abbasi', 'babar@babarrashid.com', '03215436607', 'Call', 32, 130, 'G 13-4', 'Islamabad', '1 knal', 'Owner', 1, 1, 17, '6', '1', 'call on15feb', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-10 19:23:23', '2022-12-12 20:15:39'),
(286, '2022-12-12', 'Shehzaad', 'babar@babarrashid.com', '03005530409', 'Call', 78, 786, 'G 13-4', 'Islamabad', '1 knal', 'Owner', 1, 1, 12, '6', '1', '', '3', 0, 0, NULL, 1, 1, 0, '2022-12-12 17:47:56', '2022-12-13 23:03:42'),
(287, '2022-12-12', 'Ahad sami', 'babar@babarrashid.com', '03124578901', 'Call after one month', 43, 158, 'G 13-4', 'Islamabad', '10 mrla', 'Owner', 1, 1, 17, '6', '1', 'call on 13jan&nbsp;', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-12 18:31:32', '2022-12-12 20:17:54'),
(288, '2022-12-12', 'Yaseen', 'babar@babarrashid.com', '03018504529', 'Call', 15, 163, 'G 13-4', 'Islamabad', '1 knal', 'Owner', 1, 1, 11, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-12 20:27:01', '2022-12-12 20:50:36'),
(289, '2022-12-12', 'Malik raees', 'babar@babarrashid.com', '0302 5695084', 'Call', 15, 161, 'G 13-4', 'Islamabad', '15 mrla', 'Owner', 1, 1, 13, '6', '1', 'aluminium', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-12 20:27:44', '2022-12-12 20:59:54'),
(290, '2022-12-12', 'Fawad', 'babar@babarrashid.com', '0346 0993595', 'Call', 6, 166, 'G 13-4', 'Islamabad', '10 mrla', 'Owner', 1, 1, 10, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-12 20:28:26', '2022-12-12 20:57:25'),
(291, '2022-12-13', 'Noor azam', 'babar@babarrashid.com', '03339977993', 'Call', 29, 147, 'G 13-4', 'Islamabad', '10 mrla', 'Thekedar', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-13 18:31:33', '2022-12-13 19:58:35'),
(292, '2022-12-13', 'Hneef', 'babar@babarrashid.com', '03005115593', 'Call', 34, 147, 'G 13-4', 'Islamabad', '12 mrla', 'Owner', 1, 1, 13, '6', '1', '', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-13 18:35:08', '2022-12-13 20:00:03'),
(293, '2022-12-13', 'Zahid', 'babar@babarrashid.com', '03335400973', 'Call', 14, 2, 'G 13-3', 'Islamabad', '15 mrla', 'Thekedar', 1, 1, 17, '6', '1', 'call on 28dec', NULL, 0, 0, NULL, 1, 1, 0, '2022-12-13 19:10:38', '2022-12-13 20:04:15');

-- --------------------------------------------------------

--
-- Table structure for table `lead_activity_logs`
--

CREATE TABLE `lead_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `log_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_activity_logs`
--

INSERT INTO `lead_activity_logs` (`id`, `user_id`, `lead_id`, `log_type`, `remark`, `created_at`, `updated_at`) VALUES
(42, 16, 69, 'Move', '{\"title\":\"Mudasir khan\",\"old_status\":\"Quotation\",\"new_status\":\"Data\"}', '2022-10-27 18:07:18', '2022-10-27 18:07:18'),
(43, 16, 78, 'Move', '{\"title\":\"Haji saklain\",\"old_status\":\"Quotation\",\"new_status\":\"Data\"}', '2022-10-27 18:07:19', '2022-10-27 18:07:19'),
(41, 16, 63, 'Move', '{\"title\":\"Qamar\",\"old_status\":\"Quotation\",\"new_status\":\"Data\"}', '2022-10-27 18:07:17', '2022-10-27 18:07:17'),
(40, 16, 89, 'Move', '{\"title\":\"M. Sohail aziz\",\"old_status\":\"CNA\",\"new_status\":\"Tweek\"}', '2022-10-27 18:06:27', '2022-10-27 18:06:27'),
(39, 16, 36, 'Move', '{\"title\":\"Col khurram\",\"old_status\":\"Data\",\"new_status\":\"Tweek\"}', '2022-10-27 18:04:27', '2022-10-27 18:04:27'),
(38, 16, 36, 'Move', '{\"title\":\"Col khurram\",\"old_status\":\"Quotation\",\"new_status\":\"Data\"}', '2022-10-27 17:55:53', '2022-10-27 17:55:53'),
(37, 16, 42, 'Move', '{\"title\":\"Arab\",\"old_status\":\"SIP\",\"new_status\":\"PND\"}', '2022-10-27 17:55:05', '2022-10-27 17:55:05'),
(28, 16, 30, 'Move', '{\"title\":\"Rameez\",\"old_status\":\"Data\",\"new_status\":\"Quotation\"}', '2022-10-14 17:55:45', '2022-10-14 17:55:45'),
(29, 16, 30, 'Move', '{\"title\":\"Rameez\",\"old_status\":\"Quotation\",\"new_status\":\"Data\"}', '2022-10-14 20:59:21', '2022-10-14 20:59:21'),
(30, 16, 42, 'Move', '{\"title\":\"Arab\",\"old_status\":\"Quotation\",\"new_status\":\"Data\"}', '2022-10-14 22:36:12', '2022-10-14 22:36:12'),
(31, 16, 30, 'Move', '{\"title\":\"Rameez\",\"old_status\":\"Data\",\"new_status\":\"CNA\"}', '2022-10-15 16:38:28', '2022-10-15 16:38:28'),
(32, 16, 54, 'Move', '{\"title\":\"Abdul sattar\",\"old_status\":\"Data\",\"new_status\":\"CNA\"}', '2022-10-15 16:43:01', '2022-10-15 16:43:01'),
(33, 26, 53, 'Move', '{\"title\":\"Sajid\",\"old_status\":\"Data\",\"new_status\":\"Quotation\"}', '2022-10-15 18:01:10', '2022-10-15 18:01:10'),
(35, 16, 47, 'Move', '{\"title\":\"Hasnain\",\"old_status\":\"Quotation\",\"new_status\":\"Data\"}', '2022-10-27 17:34:15', '2022-10-27 17:34:15'),
(36, 16, 80, 'Move', '{\"title\":\"Hafiz sher gul\",\"old_status\":\"SIP\",\"new_status\":\"CNA\"}', '2022-10-27 17:54:58', '2022-10-27 17:54:58'),
(44, 16, 79, 'Move', '{\"title\":\"Zohaib\",\"old_status\":\"Quotation\",\"new_status\":\"Data\"}', '2022-10-27 18:07:19', '2022-10-27 18:07:19'),
(45, 16, 102, 'Move', '{\"title\":\"Wajid\",\"old_status\":\"CNA\",\"new_status\":\"Quotation\"}', '2022-10-27 19:00:41', '2022-10-27 19:00:41'),
(46, 16, 80, 'Move', '{\"title\":\"Hafiz sher gul\",\"old_status\":\"CNA\",\"new_status\":\"Quotation\"}', '2022-10-27 19:00:44', '2022-10-27 19:00:44'),
(47, 16, 81, 'Move', '{\"title\":\"Waris\",\"old_status\":\"CNA\",\"new_status\":\"Quotation\"}', '2022-10-27 19:00:46', '2022-10-27 19:00:46'),
(48, 16, 68, 'Move', '{\"title\":\"Col basit\",\"old_status\":\"CNA\",\"new_status\":\"Quotation\"}', '2022-10-27 19:00:47', '2022-10-27 19:00:47'),
(49, 16, 92, 'Move', '{\"title\":\"Mulazim\",\"old_status\":\"CNA\",\"new_status\":\"Quotation\"}', '2022-10-27 19:00:48', '2022-10-27 19:00:48'),
(50, 16, 81, 'Move', '{\"title\":\"Waris\",\"old_status\":\"Quotation\",\"new_status\":\"CNA\"}', '2022-10-27 19:06:50', '2022-10-27 19:06:50'),
(51, 16, 68, 'Move', '{\"title\":\"Col basit\",\"old_status\":\"CNA\",\"new_status\":\"Quotation\"}', '2022-10-27 19:07:38', '2022-10-27 19:07:38'),
(52, 16, 92, 'Move', '{\"title\":\"Mulazim\",\"old_status\":\"CNA\",\"new_status\":\"Quotation\"}', '2022-10-27 19:07:39', '2022-10-27 19:07:39'),
(53, 16, 103, 'Move', '{\"title\":\"Waseem\",\"old_status\":\"CNA\",\"new_status\":\"Quotation\"}', '2022-10-27 19:07:40', '2022-10-27 19:07:40'),
(54, 16, 79, 'Move', '{\"title\":\"Zohaib\",\"old_status\":\"Data\",\"new_status\":\"Quotation\"}', '2022-10-28 20:42:14', '2022-10-28 20:42:14'),
(55, 16, 47, 'Move', '{\"title\":\"Hasnain\",\"old_status\":\"Data\",\"new_status\":\"Quotation\"}', '2022-10-28 20:42:22', '2022-10-28 20:42:22'),
(56, 16, 78, 'Move', '{\"title\":\"Haji saklain\",\"old_status\":\"Data\",\"new_status\":\"Quotation\"}', '2022-10-28 20:42:28', '2022-10-28 20:42:28'),
(57, 16, 36, 'Move', '{\"title\":\"Col khurram\",\"old_status\":\"Data\",\"new_status\":\"Quotation\"}', '2022-10-28 20:42:30', '2022-10-28 20:42:30'),
(58, 16, 63, 'Move', '{\"title\":\"Qamar\",\"old_status\":\"Data\",\"new_status\":\"Quotation\"}', '2022-10-28 20:42:33', '2022-10-28 20:42:33'),
(59, 16, 69, 'Move', '{\"title\":\"Mudasir khan\",\"old_status\":\"Data\",\"new_status\":\"Quotation\"}', '2022-10-28 20:42:35', '2022-10-28 20:42:35'),
(60, 16, 103, 'Move', '{\"title\":\"Waseem\",\"old_status\":\"Quotation\",\"new_status\":\"CNA\"}', '2022-10-28 20:42:48', '2022-10-28 20:42:48'),
(61, 16, 92, 'Move', '{\"title\":\"Mulazim\",\"old_status\":\"Quotation\",\"new_status\":\"CNA\"}', '2022-10-28 20:42:50', '2022-10-28 20:42:50'),
(62, 16, 68, 'Move', '{\"title\":\"Col basit\",\"old_status\":\"Quotation\",\"new_status\":\"CNA\"}', '2022-10-28 20:42:52', '2022-10-28 20:42:52'),
(63, 16, 128, 'Move', '{\"title\":\"Hassan\",\"old_status\":\"Data\",\"new_status\":\"CNA\"}', '2022-10-28 21:08:41', '2022-10-28 21:08:41'),
(64, 13, 250, 'Move', '{\"title\":\"javed\",\"old_status\":\"Data\",\"new_status\":\"Quotation\"}', '2022-12-02 18:23:44', '2022-12-02 18:23:44');

-- --------------------------------------------------------

--
-- Table structure for table `lead_calls`
--

CREATE TABLE `lead_calls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `call_result` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_calls`
--

INSERT INTO `lead_calls` (`id`, `lead_id`, `subject`, `call_type`, `duration`, `user_id`, `description`, `call_result`, `created_at`, `updated_at`) VALUES
(1, 9, 'Window', 'outbound', '15:47:10', 13, 'Call about windows upvc design', '<p>Positive</p>', '2022-09-28 21:47:20', '2022-09-28 21:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `lead_discussions`
--

CREATE TABLE `lead_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_discussions`
--

INSERT INTO `lead_discussions` (`id`, `lead_id`, `comment`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 54, 'new ghar ka address dia hai \r\nOwner k number ki zarurat nai hai', 16, '2022-10-18 20:14:18', '2022-10-18 20:14:18'),
(6, 136, 'Sham 4 k bad site pr hoty hen', 16, '2022-11-01 17:12:58', '2022-11-01 17:12:58'),
(4, 82, 'Upvc done with another company', 16, '2022-10-21 17:36:16', '2022-10-21 17:36:16'),
(5, 101, 'Hi  please see the quotation', 22, '2022-10-22 21:50:04', '2022-10-22 21:50:04'),
(7, 104, 'he has multiple projects', 16, '2022-11-05 18:12:34', '2022-11-05 18:12:34'),
(8, 104, 'he is intrested in doors', 16, '2022-11-05 18:14:26', '2022-11-05 18:14:26'),
(9, 244, 'owner is mr Burhan\r\n0333-5854440', 16, '2022-12-01 23:13:18', '2022-12-01 23:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `lead_emails`
--

CREATE TABLE `lead_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_files`
--

CREATE TABLE `lead_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_stages`
--

CREATE TABLE `lead_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lead_stages`
--

INSERT INTO `lead_stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(2, 'Sent', 2, 1, 0, '2022-09-19 18:02:18', '2022-09-20 22:36:34'),
(12, 'Data', 1, 1, 0, '2022-09-28 21:23:23', '2022-10-05 22:15:52'),
(4, 'Revised', 2, 1, 0, '2022-09-19 18:02:18', '2022-09-20 22:36:41'),
(9, 'TBO', 1, 1, 8, '2022-09-28 21:15:49', '2022-11-08 21:54:27'),
(11, 'Quotation', 1, 1, 1, '2022-09-28 21:22:37', '2022-11-08 21:54:19'),
(10, 'CNA', 1, 1, 2, '2022-09-28 21:20:48', '2022-11-08 21:54:19'),
(13, 'WAD', 1, 1, 9, '2022-10-14 22:26:16', '2022-11-08 21:54:27'),
(14, 'SIP', 1, 1, 3, '2022-10-14 22:26:55', '2022-11-08 21:54:19'),
(15, 'PND', 1, 1, 4, '2022-10-14 22:27:21', '2022-11-08 21:54:19'),
(16, 'Wrong Number', 1, 1, 7, '2022-10-14 22:27:53', '2022-11-08 21:54:27'),
(17, 'Tweek', 1, 1, 5, '2022-10-14 22:34:37', '2022-11-08 21:54:19'),
(18, 'PWA', 1, 1, 6, '2022-10-19 17:39:36', '2022-11-08 21:54:19'),
(20, 'BOS', 1, 1, 10, '2022-11-08 21:54:01', '2022-11-08 21:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `applied_on` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_leave_days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `leave_type_id`, `applied_on`, `start_date`, `end_date`, `total_leave_days`, `leave_reason`, `remark`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2022-09-21', '2022-09-21', '2022-09-04', '0', 'sadfvdfdfd', 'sddff', 'Pending', 1, '2022-09-21 21:38:18', '2022-09-21 21:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `days`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testleave', 6, 1, '2022-09-21 21:35:34', '2022-09-21 21:35:34'),
(2, 'Annual', 16, 1, '2022-09-24 22:14:18', '2022-09-24 22:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `loan_option` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_options`
--

CREATE TABLE `loan_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_options`
--

INSERT INTO `loan_options` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testloan', 1, '2022-09-21 21:43:02', '2022-09-21 21:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `branch_id`, `department_id`, `employee_id`, `title`, `date`, `time`, `note`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 0, '[\"0\"]', '[\"0\"]', 'fgtcf', '2022-09-21', '07:30:00', 'gvffgtfg', 1, '2022-09-21 21:55:36', '2022-09-21 21:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_employees`
--

CREATE TABLE `meeting_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_employees`
--

INSERT INTO `meeting_employees` (`id`, `meeting_id`, `employee_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-09-21 21:55:36', '2022-09-21 21:55:36'),
(2, 1, 2, 1, '2022-09-21 21:55:36', '2022-09-21 21:55:36'),
(3, 1, 3, 1, '2022-09-21 21:55:36', '2022-09-21 21:55:36'),
(4, 1, 4, 1, '2022-09-21 21:55:36', '2022-09-21 21:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_28_102009_create_settings_table', 1),
(5, '2019_09_30_050856_create_pipelines_table', 1),
(6, '2019_09_30_052036_create_sources_table', 1),
(7, '2019_09_30_061801_create_stages_table', 1),
(8, '2019_09_30_092218_create_labels_table', 1),
(9, '2019_10_03_052618_create_deals_table', 1),
(10, '2019_10_05_045358_create_user_deals_table', 1),
(11, '2019_10_05_045359_create_client_deals_table', 1),
(12, '2019_10_07_054657_create_deal_files_table', 1),
(13, '2019_10_07_091153_create_deal_tasks_table', 1),
(14, '2019_10_14_055151_create_deal_discussions_table', 1),
(15, '2019_10_24_060326_create_projectstages_table', 1),
(16, '2019_11_12_073012_create_bug_comments_table', 1),
(17, '2019_11_12_100007_create_bug_files_table', 1),
(18, '2019_11_13_051828_create_taxes_table', 1),
(19, '2019_11_13_055026_create_invoices_table', 1),
(20, '2019_11_21_090403_create_plans_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2019_12_18_110230_create_bugs_table', 1),
(23, '2019_12_18_112007_create_bug_statuses_table', 1),
(24, '2019_12_26_101754_create_departments_table', 1),
(25, '2019_12_26_101814_create_designations_table', 1),
(26, '2019_12_26_105721_create_documents_table', 1),
(27, '2019_12_27_083751_create_branches_table', 1),
(28, '2019_12_27_090831_create_employees_table', 1),
(29, '2019_12_27_112922_create_employee_documents_table', 1),
(30, '2019_12_28_050508_create_awards_table', 1),
(31, '2019_12_28_050919_create_award_types_table', 1),
(32, '2019_12_31_060916_create_termination_types_table', 1),
(33, '2019_12_31_062259_create_terminations_table', 1),
(34, '2019_12_31_070521_create_resignations_table', 1),
(35, '2019_12_31_072252_create_travels_table', 1),
(36, '2019_12_31_090637_create_promotions_table', 1),
(37, '2019_12_31_092838_create_transfers_table', 1),
(38, '2019_12_31_100319_create_warnings_table', 1),
(39, '2019_12_31_103019_create_complaints_table', 1),
(40, '2020_01_02_090837_create_payslip_types_table', 1),
(41, '2020_01_02_093331_create_allowance_options_table', 1),
(42, '2020_01_02_102558_create_loan_options_table', 1),
(43, '2020_01_02_103822_create_deduction_options_table', 1),
(44, '2020_01_02_110828_create_genrate_payslip_options_table', 1),
(45, '2020_01_02_111807_create_set_salaries_table', 1),
(46, '2020_01_03_084302_create_allowances_table', 1),
(47, '2020_01_03_101735_create_commissions_table', 1),
(48, '2020_01_03_105019_create_loans_table', 1),
(49, '2020_01_03_105046_create_saturation_deductions_table', 1),
(50, '2020_01_03_105100_create_other_payments_table', 1),
(51, '2020_01_03_105111_create_overtimes_table', 1),
(52, '2020_01_04_060343_create_contract_types_table', 1),
(53, '2020_01_04_060343_create_performance_type_table', 1),
(54, '2020_01_04_060354_create_contracts_table', 1),
(55, '2020_01_04_072527_create_pay_slips_table', 1),
(56, '2020_01_08_063207_create_product_services_table', 1),
(57, '2020_01_08_084029_create_product_service_categories_table', 1),
(58, '2020_01_08_092717_create_product_service_units_table', 1),
(59, '2020_01_08_121541_create_customers_table', 1),
(60, '2020_01_09_104945_create_venders_table', 1),
(61, '2020_01_09_113852_create_bank_accounts_table', 1),
(62, '2020_01_09_124222_create_bank_transfers_table', 1),
(63, '2020_01_10_064723_create_transactions_table', 1),
(64, '2020_01_13_072608_create_invoice_products_table', 1),
(65, '2020_01_13_084720_create_events_table', 1),
(66, '2020_01_15_034438_create_revenues_table', 1),
(67, '2020_01_15_051228_create_bills_table', 1),
(68, '2020_01_15_060859_create_bill_products_table', 1),
(69, '2020_01_15_073237_create_payments_table', 1),
(70, '2020_01_16_041720_create_announcements_table', 1),
(71, '2020_01_16_043907_create_orders_table', 1),
(72, '2020_01_16_090747_create_leave_types_table', 1),
(73, '2020_01_16_093256_create_leaves_table', 1),
(74, '2020_01_16_110357_create_meetings_table', 1),
(75, '2020_01_18_051650_create_invoice_payments_table', 1),
(76, '2020_01_20_091035_create_bill_payments_table', 1),
(77, '2020_01_23_101613_create_meeting_employees_table', 1),
(78, '2020_01_23_123844_create_event_employees_table', 1),
(79, '2020_01_24_062752_create_announcement_employees_table', 1),
(80, '2020_01_27_052503_create_attendance_employees_table', 1),
(81, '2020_02_25_052356_create_credit_notes_table', 1),
(82, '2020_02_26_033827_create_debit_notes_table', 1),
(83, '2020_03_04_122711_create_leads_table', 1),
(84, '2020_03_04_122801_create_lead_stages_table', 1),
(85, '2020_03_05_042105_create_lead_activity_logs_table', 1),
(86, '2020_03_05_042308_create_lead_discussions_table', 1),
(87, '2020_03_05_042318_create_user_leads_table', 1),
(88, '2020_03_05_042549_create_lead_files_table', 1),
(89, '2020_03_05_042636_create_lead_emails_table', 1),
(90, '2020_03_05_042710_create_lead_calls_table', 1),
(91, '2020_03_05_044157_create_deal_emails_table', 1),
(92, '2020_03_05_044322_create_deal_calls_table', 1),
(93, '2020_03_12_095629_create_coupons_table', 1),
(94, '2020_03_12_120749_create_user_coupons_table', 1),
(95, '2020_03_17_104345_create_estimations_table', 1),
(96, '2020_03_18_104909_create_notifications_table', 1),
(97, '2020_04_02_045834_create_proposals_table', 1),
(98, '2020_04_02_055706_create_proposal_products_table', 1),
(99, '2020_04_18_035141_create_goals_table', 1),
(100, '2020_04_21_115823_create_assets_table', 1),
(101, '2020_04_24_023732_create_custom_fields_table', 1),
(102, '2020_04_24_024217_create_custom_field_values_table', 1),
(103, '2020_05_01_122144_create_ducument_uploads_table', 1),
(104, '2020_05_02_075614_create_email_templates_table', 1),
(105, '2020_05_02_075630_create_email_template_langs_table', 1),
(106, '2020_05_02_075647_create_user_email_templates_table', 1),
(107, '2020_05_04_070452_create_indicators_table', 1),
(108, '2020_05_05_023742_create_appraisals_table', 1),
(109, '2020_05_05_061241_create_goal_types_table', 1),
(110, '2020_05_05_095926_create_goal_trackings_table', 1),
(111, '2020_05_07_093520_create_company_policies_table', 1),
(112, '2020_05_07_131311_create_training_types_table', 1),
(113, '2020_05_08_023838_create_trainers_table', 1),
(114, '2020_05_08_043039_create_trainings_table', 1),
(115, '2020_05_21_065337_create_permission_tables', 1),
(116, '2020_06_02_085538_create_task_stages_table', 1),
(117, '2020_06_30_043627_create_user_to_dos_table', 1),
(118, '2020_06_30_120854_add_balance_to_customers_table', 1),
(119, '2020_06_30_121531_add_balance_to_vender_table', 1),
(120, '2020_07_01_033457_change_product_services_tax_id_column_type', 1),
(121, '2020_07_01_063255_change_tax_column_type', 1),
(122, '2020_07_03_054342_add_convert_in_proposal_table', 1),
(123, '2020_07_04_041452_create_project_email_templates_table', 1),
(124, '2020_07_06_102454_add_payment_type_in_orders_table', 1),
(125, '2020_07_06_110501_create_user_contacts_table', 1),
(126, '2020_07_07_052211_add_field_in_invoice_payments_table', 1),
(127, '2020_07_22_131715_change_amount_type_size', 1),
(128, '2020_08_04_034206_change_settings_value_type', 1),
(129, '2020_08_10_073242_create_project_invoices_table', 1),
(130, '2020_08_26_093539_create_time_trackers_table', 1),
(131, '2020_09_16_040822_change_user_type_size_in_users_table', 1),
(132, '2020_09_17_053350_change_shipping_default_val', 1),
(133, '2020_09_17_070031_add_description_field', 1),
(134, '2020_10_07_034726_create_holidays_table', 1),
(135, '2020_12_11_094137_add_mode_to_users', 1),
(136, '2020_12_11_094137_add_receipt_to_payment', 1),
(137, '2020_12_11_094137_add_tax_number_to_customers', 1),
(138, '2021_01_11_062508_create_chart_of_accounts_table', 1),
(139, '2021_01_11_070441_create_chart_of_account_types_table', 1),
(140, '2021_01_12_032834_create_journal_entries_table', 1),
(141, '2021_01_12_033815_create_journal_items_table', 1),
(142, '2021_01_20_072219_create_chart_of_account_sub_types_table', 1),
(143, '2021_01_20_113044_create_log_activities_table', 1),
(144, '2021_03_13_114832_create_job_categories_table', 1),
(145, '2021_03_13_123125_create_job_stages_table', 1),
(146, '2021_03_15_094707_create_jobs_table', 1),
(147, '2021_03_15_153745_create_job_applications_table', 1),
(148, '2021_03_16_115140_create_job_application_notes_table', 1),
(149, '2021_03_17_100224_create_projects_table', 1),
(150, '2021_03_17_163107_create_custom_questions_table', 1),
(151, '2021_03_18_060536_create_project_tasks_table', 1),
(152, '2021_03_18_070146_create_milestones_table', 1),
(153, '2021_03_18_091547_create_task_checklists_table', 1),
(154, '2021_03_18_092113_create_task_files_table', 1),
(155, '2021_03_18_092400_create_task_comments_table', 1),
(156, '2021_03_18_102517_create_activity_logs_table', 1),
(157, '2021_03_18_140630_create_interview_schedules_table', 1),
(158, '2021_03_19_053350_create_project_users_table', 1),
(159, '2021_03_22_100636_create_expenses_table', 1),
(160, '2021_03_22_122532_create_job_on_boards_table', 1),
(161, '2021_03_23_032633_create_timesheets_table', 1),
(162, '2021_06_15_071245_create_landing_page_sections_table', 1),
(163, '2021_08_03_093459_create_form_builders_table', 1),
(164, '2021_08_03_094508_create_form_fields_table', 1),
(165, '2021_08_03_094534_create_form_field_responses_table', 1),
(166, '2021_08_03_094548_create_form_responses_table', 1),
(167, '2021_08_04_072610_admin_payment_settings', 1),
(168, '2021_08_04_090539_company_payment_settings', 1),
(169, '2021_08_05_114738_create_supports_table', 1),
(170, '2021_08_05_115212_create_support_replies_table', 1),
(171, '2021_08_20_084119_create_competencies_table', 1),
(172, '2021_08_21_044211_add_hour_in_project', 1),
(173, '2021_08_21_044211_add_rating_in_competencies', 1),
(174, '2021_09_03_112043_create_track_photos_table', 1),
(175, '2021_09_10_160559_add_last_login_to_user_table', 1),
(176, '2021_09_10_165514_create_plan_requests_table', 1),
(177, '2021_10_13_102756_create_add_new_field_lead_table', 1),
(178, '2021_12_02_052828_create_budgets_table', 1),
(179, '2021_12_24_104639_create_zoom_meetings_table', 1),
(180, '2022_03_03_100148_change_price_val', 1),
(181, '2022_03_11_035602_create_stock_reports_table', 1),
(182, '2022_03_11_103119_add_type_to_allowance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\Vender', 1),
(5, 'App\\Models\\User', 8),
(5, 'App\\Models\\User', 15),
(5, 'App\\Models\\User', 24),
(6, 'App\\Models\\User', 3),
(6, 'App\\Models\\User', 7),
(6, 'App\\Models\\User', 14),
(6, 'App\\Models\\User', 19),
(7, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 13),
(7, 'App\\Models\\User', 17),
(7, 'App\\Models\\User', 22),
(11, 'App\\Models\\User', 16),
(11, 'App\\Models\\User', 23),
(12, 'App\\Models\\User', 18),
(12, 'App\\Models\\User', 20),
(12, 'App\\Models\\User', 21),
(12, 'App\\Models\\User', 25),
(13, 'App\\Models\\User', 26),
(13, 'App\\Models\\User', 27),
(13, 'App\\Models\\User', 28),
(13, 'App\\Models\\User', 44),
(14, 'App\\Models\\User', 29),
(14, 'App\\Models\\User', 30),
(14, 'App\\Models\\User', 31),
(14, 'App\\Models\\User', 32),
(14, 'App\\Models\\User', 33),
(14, 'App\\Models\\User', 34),
(14, 'App\\Models\\User', 35),
(14, 'App\\Models\\User', 36),
(14, 'App\\Models\\User', 37),
(14, 'App\\Models\\User', 38),
(14, 'App\\Models\\User', 39),
(14, 'App\\Models\\User', 40),
(14, 'App\\Models\\User', 41),
(14, 'App\\Models\\User', 42),
(15, 'App\\Models\\User', 43);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_month` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_exp_year` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manually',
  `receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `other_payments`
--

CREATE TABLE `other_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_payments`
--

INSERT INTO `other_payments` (`id`, `employee_id`, `title`, `amount`, `type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 10, 'advance wage', 5000, 'fixed', 1, '2022-10-22 16:04:12', '2022-10-22 16:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `overtimes`
--

CREATE TABLE `overtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('phplarave18@gmail.com', '$2y$10$2BGqRxMYsyh5o6jjwfEQxuO3olMuTaMZ24L.nAjNIFENuoUvlJ4l6', '2022-10-04 23:49:40');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `recurring` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_types`
--

CREATE TABLE `payslip_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payslip_types`
--

INSERT INTO `payslip_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'monthly', 1, '2022-09-21 21:36:38', '2022-09-21 21:36:38'),
(2, 'weekly', 1, '2022-09-21 22:47:54', '2022-09-21 22:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `pay_slips`
--

CREATE TABLE `pay_slips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `net_payble` int(11) NOT NULL,
  `salary_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `allowance` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saturation_deduction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_slips`
--

INSERT INTO `pay_slips` (`id`, `employee_id`, `net_payble`, `salary_month`, `status`, `basic_salary`, `allowance`, `commission`, `loan`, `saturation_deduction`, `other_payment`, `overtime`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 5000, '2022-01', 0, 5000, '[]', '[]', '[]', '[]', '[]', '[]', 1, '2022-09-21 23:04:59', '2022-09-21 23:04:59'),
(2, 1, 5000, '2022-10', 0, 5000, '[]', '[]', '[]', '[]', '[]', '[]', 1, '2022-09-21 23:05:15', '2022-09-21 23:05:15'),
(3, 1, 9500, '2022-08', 0, 5000, '[{\"id\":1,\"employee_id\":1,\"allowance_option\":1,\"title\":\"Travel\",\"amount\":2000,\"type\":\"fixed\",\"created_by\":1,\"created_at\":\"2022-09-24T11:06:04.000000Z\",\"updated_at\":\"2022-09-24T11:06:04.000000Z\"}]', '[{\"id\":1,\"employee_id\":1,\"title\":\"Sale\",\"amount\":25,\"type\":\"percentage\",\"created_by\":1,\"created_at\":\"2022-09-24T11:06:29.000000Z\",\"updated_at\":\"2022-09-24T11:06:29.000000Z\"},{\"id\":2,\"employee_id\":1,\"title\":\"Sale\",\"amount\":25,\"type\":\"percentage\",\"created_by\":1,\"created_at\":\"2022-09-24T11:06:29.000000Z\",\"updated_at\":\"2022-09-24T11:06:29.000000Z\"}]', '[]', '[]', '[]', '[]', 1, '2022-09-24 22:09:00', '2022-09-24 22:09:00'),
(4, 1, 9500, '2022-09', 0, 5000, '[{\"id\":1,\"employee_id\":1,\"allowance_option\":1,\"title\":\"Travel\",\"amount\":2000,\"type\":\"fixed\",\"created_by\":1,\"created_at\":\"2022-09-24T11:06:04.000000Z\",\"updated_at\":\"2022-09-24T11:06:04.000000Z\"}]', '[{\"id\":1,\"employee_id\":1,\"title\":\"Sale\",\"amount\":25,\"type\":\"percentage\",\"created_by\":1,\"created_at\":\"2022-09-24T11:06:29.000000Z\",\"updated_at\":\"2022-09-24T11:06:29.000000Z\"},{\"id\":2,\"employee_id\":1,\"title\":\"Sale\",\"amount\":25,\"type\":\"percentage\",\"created_by\":1,\"created_at\":\"2022-09-24T11:06:29.000000Z\",\"updated_at\":\"2022-09-24T11:06:29.000000Z\"}]', '[]', '[]', '[]', '[]', 1, '2022-09-24 22:09:26', '2022-09-24 22:09:26'),
(5, 7, 0, '2022-09', 0, 0, '[]', '[]', '[]', '[]', '[]', '[]', 1, '2022-09-24 22:09:26', '2022-09-24 22:09:26'),
(6, 18, 0, '2022-11', 1, 0, '[]', '[]', '[]', '[]', '[]', '[]', 1, '2022-10-22 15:59:30', '2022-12-10 21:39:20'),
(7, 18, 0, '2022-12', 0, 0, '[]', '[]', '[]', '[]', '[]', '[]', 1, '2022-12-10 21:39:40', '2022-12-10 21:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `performance_types`
--

CREATE TABLE `performance_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_types`
--

INSERT INTO `performance_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testperformance', 1, '2022-09-21 21:48:43', '2022-09-21 21:48:43'),
(2, 'test 2', 1, '2022-09-21 23:21:49', '2022-09-21 23:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'show hrm dashboard', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(2, 'copy invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(3, 'show project dashboard', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(4, 'show account dashboard', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(5, 'manage user', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(6, 'create user', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(7, 'edit user', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(8, 'delete user', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(9, 'create language', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(10, 'manage role', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(11, 'create role', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(12, 'edit role', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(13, 'delete role', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(14, 'manage permission', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(15, 'create permission', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(16, 'edit permission', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(17, 'delete permission', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(18, 'manage company settings', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(19, 'manage print settings', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(20, 'manage business settings', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(21, 'manage stripe settings', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(22, 'manage expense', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(23, 'create expense', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(24, 'edit expense', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(25, 'delete expense', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(26, 'manage invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(27, 'create invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(28, 'edit invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(29, 'delete invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(30, 'show invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(31, 'create payment invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(32, 'delete payment invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(33, 'send invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(34, 'delete invoice product', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(35, 'convert invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(36, 'manage constant unit', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(37, 'create constant unit', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(38, 'edit constant unit', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(39, 'delete constant unit', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(40, 'manage constant tax', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(41, 'create constant tax', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(42, 'edit constant tax', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(43, 'delete constant tax', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(44, 'manage constant category', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(45, 'create constant category', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(46, 'edit constant category', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(47, 'delete constant category', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(48, 'manage product & service', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(49, 'create product & service', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(50, 'edit product & service', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(51, 'delete product & service', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(52, 'manage customer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(53, 'create customer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(54, 'edit customer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(55, 'delete customer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(56, 'show customer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(57, 'manage vender', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(58, 'create vender', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(59, 'edit vender', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(60, 'delete vender', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(61, 'show vender', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(62, 'manage bank account', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(63, 'create bank account', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(64, 'edit bank account', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(65, 'delete bank account', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(66, 'manage bank transfer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(67, 'create bank transfer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(68, 'edit bank transfer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(69, 'delete bank transfer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(70, 'manage transaction', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(71, 'manage revenue', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(72, 'create revenue', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(73, 'edit revenue', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(74, 'delete revenue', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(75, 'manage bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(76, 'create bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(77, 'edit bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(78, 'delete bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(79, 'show bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(80, 'manage payment', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(81, 'create payment', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(82, 'edit payment', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(83, 'delete payment', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(84, 'delete bill product', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(85, 'send bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(86, 'create payment bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(87, 'delete payment bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(88, 'manage order', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(89, 'income report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(90, 'expense report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(91, 'income vs expense report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(92, 'invoice report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(93, 'bill report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(94, 'stock report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(95, 'tax report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(96, 'loss & profit report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(97, 'manage customer payment', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(98, 'manage customer transaction', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(99, 'manage customer invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(100, 'vender manage bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(101, 'manage vender bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(102, 'manage vender payment', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(103, 'manage vender transaction', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(104, 'manage credit note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(105, 'create credit note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(106, 'edit credit note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(107, 'delete credit note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(108, 'manage debit note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(109, 'create debit note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(110, 'edit debit note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(111, 'delete debit note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(112, 'duplicate invoice', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(113, 'duplicate bill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(114, 'manage proposal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(115, 'create proposal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(116, 'edit proposal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(117, 'delete proposal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(118, 'duplicate proposal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(119, 'show proposal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(120, 'send proposal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(121, 'delete proposal product', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(122, 'manage customer proposal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(123, 'manage goal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(124, 'create goal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(125, 'edit goal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(126, 'delete goal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(127, 'manage assets', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(128, 'create assets', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(129, 'edit assets', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(130, 'delete assets', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(131, 'statement report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(132, 'manage constant custom field', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(133, 'create constant custom field', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(134, 'edit constant custom field', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(135, 'delete constant custom field', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(136, 'manage chart of account', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(137, 'create chart of account', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(138, 'edit chart of account', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(139, 'delete chart of account', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(140, 'manage journal entry', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(141, 'create journal entry', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(142, 'edit journal entry', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(143, 'delete journal entry', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(144, 'show journal entry', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(145, 'balance sheet report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(146, 'ledger report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(147, 'trial balance report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(148, 'manage client', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(149, 'create client', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(150, 'edit client', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(151, 'delete client', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(152, 'manage lead', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(153, 'create lead', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(154, 'view lead', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(155, 'edit lead', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(156, 'delete lead', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(157, 'move lead', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(158, 'create lead call', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(159, 'edit lead call', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(160, 'delete lead call', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(161, 'create lead email', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(162, 'manage pipeline', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(163, 'create pipeline', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(164, 'edit pipeline', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(165, 'delete pipeline', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(166, 'manage lead stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(167, 'create lead stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(168, 'edit lead stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(169, 'delete lead stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(170, 'convert lead to deal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(171, 'manage source', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(172, 'create source', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(173, 'edit source', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(174, 'delete source', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(175, 'manage label', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(176, 'create label', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(177, 'edit label', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(178, 'delete label', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(179, 'manage deal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(180, 'create deal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(181, 'view task', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(182, 'create task', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(183, 'edit task', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(184, 'delete task', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(185, 'edit deal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(186, 'view deal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(187, 'delete deal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(188, 'move deal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(189, 'create deal call', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(190, 'edit deal call', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(191, 'delete deal call', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(192, 'create deal email', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(193, 'manage stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(194, 'create stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(195, 'edit stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(196, 'delete stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(197, 'manage employee', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(198, 'create employee', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(199, 'view employee', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(200, 'edit employee', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(201, 'delete employee', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(202, 'manage employee profile', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(203, 'show employee profile', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(204, 'manage department', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(205, 'create department', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(206, 'view department', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(207, 'edit department', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(208, 'delete department', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(209, 'manage designation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(210, 'create designation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(211, 'view designation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(212, 'edit designation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(213, 'delete designation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(214, 'manage branch', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(215, 'create branch', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(216, 'edit branch', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(217, 'delete branch', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(218, 'manage document type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(219, 'create document type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(220, 'edit document type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(221, 'delete document type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(222, 'manage document', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(223, 'create document', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(224, 'edit document', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(225, 'delete document', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(226, 'manage payslip type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(227, 'create payslip type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(228, 'edit payslip type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(229, 'delete payslip type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(230, 'create allowance', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(231, 'edit allowance', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(232, 'delete allowance', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(233, 'create commission', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(234, 'edit commission', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(235, 'delete commission', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(236, 'manage allowance option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(237, 'create allowance option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(238, 'edit allowance option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(239, 'delete allowance option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(240, 'manage loan option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(241, 'create loan option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(242, 'edit loan option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(243, 'delete loan option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(244, 'manage deduction option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(245, 'create deduction option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(246, 'edit deduction option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(247, 'delete deduction option', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(248, 'create loan', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(249, 'edit loan', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(250, 'delete loan', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(251, 'create saturation deduction', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(252, 'edit saturation deduction', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(253, 'delete saturation deduction', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(254, 'create other payment', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(255, 'edit other payment', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(256, 'delete other payment', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(257, 'create overtime', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(258, 'edit overtime', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(259, 'delete overtime', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(260, 'manage set salary', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(261, 'edit set salary', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(262, 'manage pay slip', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(263, 'create set salary', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(264, 'create pay slip', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(265, 'manage company policy', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(266, 'create company policy', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(267, 'edit company policy', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(268, 'manage appraisal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(269, 'create appraisal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(270, 'edit appraisal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(271, 'show appraisal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(272, 'delete appraisal', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(273, 'manage goal tracking', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(274, 'create goal tracking', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(275, 'edit goal tracking', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(276, 'delete goal tracking', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(277, 'manage goal type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(278, 'create goal type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(279, 'edit goal type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(280, 'delete goal type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(281, 'manage indicator', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(282, 'create indicator', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(283, 'edit indicator', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(284, 'show indicator', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(285, 'delete indicator', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(286, 'manage training', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(287, 'create training', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(288, 'edit training', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(289, 'delete training', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(290, 'show training', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(291, 'manage trainer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(292, 'create trainer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(293, 'edit trainer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(294, 'delete trainer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(295, 'manage training type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(296, 'create training type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(297, 'edit training type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(298, 'delete training type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(299, 'manage award', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(300, 'create award', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(301, 'edit award', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(302, 'delete award', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(303, 'manage award type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(304, 'create award type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(305, 'edit award type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(306, 'delete award type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(307, 'manage resignation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(308, 'create resignation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(309, 'edit resignation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(310, 'delete resignation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(311, 'manage travel', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(312, 'create travel', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(313, 'edit travel', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(314, 'delete travel', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(315, 'manage promotion', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(316, 'create promotion', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(317, 'edit promotion', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(318, 'delete promotion', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(319, 'manage complaint', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(320, 'create complaint', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(321, 'edit complaint', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(322, 'delete complaint', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(323, 'manage warning', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(324, 'create warning', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(325, 'edit warning', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(326, 'delete warning', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(327, 'manage termination', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(328, 'create termination', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(329, 'edit termination', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(330, 'delete termination', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(331, 'manage termination type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(332, 'create termination type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(333, 'edit termination type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(334, 'delete termination type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(335, 'manage job application', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(336, 'create job application', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(337, 'show job application', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(338, 'delete job application', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(339, 'move job application', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(340, 'add job application skill', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(341, 'add job application note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(342, 'delete job application note', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(343, 'manage job onBoard', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(344, 'manage job category', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(345, 'create job category', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(346, 'edit job category', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(347, 'delete job category', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(348, 'manage job', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(349, 'create job', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(350, 'edit job', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(351, 'show job', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(352, 'delete job', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(353, 'manage job stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(354, 'create job stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(355, 'edit job stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(356, 'delete job stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(357, 'Manage Competencies', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(358, 'Create Competencies', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(359, 'Edit Competencies', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(360, 'Delete Competencies', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(361, 'manage custom question', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(362, 'create custom question', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(363, 'edit custom question', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(364, 'delete custom question', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(365, 'create interview schedule', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(366, 'edit interview schedule', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(367, 'delete interview schedule', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(368, 'show interview schedule', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(369, 'create estimation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(370, 'view estimation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(371, 'edit estimation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(372, 'delete estimation', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(373, 'edit holiday', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(374, 'create holiday', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(375, 'delete holiday', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(376, 'manage holiday', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(377, 'show career', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(378, 'manage meeting', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(379, 'create meeting', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(380, 'edit meeting', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(381, 'delete meeting', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(382, 'manage event', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(383, 'create event', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(384, 'edit event', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(385, 'delete event', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(386, 'manage transfer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(387, 'create transfer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(388, 'edit transfer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(389, 'delete transfer', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(390, 'manage announcement', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(391, 'create announcement', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(392, 'edit announcement', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(393, 'delete announcement', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(394, 'manage leave', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(395, 'create leave', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(396, 'edit leave', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(397, 'delete leave', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(398, 'manage leave type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(399, 'create leave type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(400, 'edit leave type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(401, 'delete leave type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(402, 'manage attendance', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(403, 'create attendance', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(404, 'edit attendance', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(405, 'delete attendance', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(406, 'manage report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(407, 'manage project', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(408, 'create project', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(409, 'view project', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(410, 'edit project', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(411, 'delete project', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(412, 'create milestone', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(413, 'edit milestone', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(414, 'delete milestone', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(415, 'view milestone', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(416, 'view grant chart', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(417, 'manage project stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(418, 'create project stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(419, 'edit project stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(420, 'delete project stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(421, 'view timesheet', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(422, 'view expense', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(423, 'manage project task', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(424, 'create project task', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(425, 'edit project task', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(426, 'view project task', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(427, 'delete project task', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(428, 'view activity', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(429, 'view CRM activity', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(430, 'manage project task stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(431, 'edit project task stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(432, 'create project task stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(433, 'delete project task stage', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(434, 'manage timesheet', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(435, 'create timesheet', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(436, 'edit timesheet', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(437, 'delete timesheet', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(438, 'manage bug report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(439, 'create bug report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(440, 'edit bug report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(441, 'delete bug report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(442, 'move bug report', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(443, 'manage bug status', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(444, 'create bug status', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(445, 'edit bug status', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(446, 'delete bug status', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(447, 'manage client dashboard', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(448, 'manage super admin dashboard', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(449, 'manage system settings', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(450, 'manage plan', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(451, 'create plan', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(452, 'edit plan', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(453, 'manage coupon', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(454, 'create coupon', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(455, 'edit coupon', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(456, 'delete coupon', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(457, 'manage company plan', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(458, 'buy plan', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(459, 'manage form builder', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(460, 'create form builder', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(461, 'edit form builder', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(462, 'delete form builder', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(463, 'manage performance type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(464, 'create performance type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(465, 'edit performance type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(466, 'delete performance type', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(467, 'manage form field', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(468, 'create form field', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(469, 'edit form field', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(470, 'delete form field', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(471, 'view form response', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(472, 'create budget planner', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(473, 'edit budget planner', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(474, 'manage budget planner', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(475, 'delete budget planner', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(476, 'view budget planner', 'web', '2022-09-19 18:02:01', '2022-09-19 18:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pipelines`
--

CREATE TABLE `pipelines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pipelines`
--

INSERT INTO `pipelines` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Sales', 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `duration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_users` int(11) NOT NULL DEFAULT '0',
  `max_customers` int(11) NOT NULL DEFAULT '0',
  `max_venders` int(11) NOT NULL DEFAULT '0',
  `max_clients` int(11) NOT NULL DEFAULT '0',
  `crm` int(11) NOT NULL DEFAULT '0',
  `hrm` int(11) NOT NULL DEFAULT '0',
  `account` int(11) NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `duration`, `max_users`, `max_customers`, `max_venders`, `max_clients`, `crm`, `hrm`, `account`, `project`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'test', 0.00, '', 30000, 30000, 30000000, 30000000, 1, 1, 1, 300000, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plan_requests`
--

CREATE TABLE `plan_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_services`
--

CREATE TABLE `product_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `unit_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_services`
--

INSERT INTO `product_services` (`id`, `name`, `sku`, `sale_price`, `purchase_price`, `quantity`, `tax_id`, `category_id`, `unit_id`, `type`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', '120.00', '120.00', 23, '', 1, 1, 'product', 'wwe', 1, '2022-09-20 22:34:43', '2022-09-22 00:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_service_categories`
--

CREATE TABLE `product_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#fc544b',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_service_categories`
--

INSERT INTO `product_service_categories` (`id`, `name`, `type`, `color`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'test', '0', 'FFFFFF', 1, '2022-09-20 22:28:37', '2022-09-20 22:28:37'),
(2, 'test', '1', 'FFFFFF', 1, '2022-09-21 22:56:22', '2022-09-21 22:56:22'),
(3, 'fuel', '2', 'FFFFFF', 1, '2022-10-22 21:26:59', '2022-10-22 21:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_service_units`
--

CREATE TABLE `product_service_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_service_units`
--

INSERT INTO `product_service_units` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, '2022-09-20 22:33:30', '2022-09-20 22:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimated_hrs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `start_date`, `end_date`, `project_image`, `budget`, `client_id`, `description`, `status`, `estimated_hrs`, `tags`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 'testProject', '2022-11-19', '2022-11-25', 'projects/1668865355.png', 3456789, 7, 'sdfgvhbn', 'on_hold', '56', 'XCVBHN', 1, '2022-11-20 01:42:35', '2022-11-20 01:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `projectstages`
--

CREATE TABLE `projectstages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_email_templates`
--

CREATE TABLE `project_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_invoices`
--

CREATE TABLE `project_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `due_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_tasks`
--

CREATE TABLE `project_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `estimated_hrs` int(11) NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `priority_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_to` text COLLATE utf8mb4_unicode_ci,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `milestone_id` int(11) NOT NULL DEFAULT '0',
  `stage_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_favourite` int(11) NOT NULL DEFAULT '0',
  `is_complete` int(11) NOT NULL DEFAULT '0',
  `marked_at` date DEFAULT NULL,
  `progress` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_users`
--

CREATE TABLE `project_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invited_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_users`
--

INSERT INTO `project_users` (`id`, `project_id`, `user_id`, `invited_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2022-09-21 20:22:37', '2022-09-21 20:22:37'),
(2, 1, 6, 0, '2022-09-21 20:22:37', '2022-09-21 20:22:37'),
(3, 2, 1, 0, '2022-09-29 22:11:21', '2022-09-29 22:11:21'),
(4, 2, 1, 0, '2022-09-29 22:11:21', '2022-09-29 22:11:21'),
(5, 3, 1, 0, '2022-11-20 01:42:35', '2022-11-20 01:42:35'),
(6, 3, 24, 0, '2022-11-20 01:42:35', '2022-11-20 01:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `promotion_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proposal_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `discount_apply` int(11) NOT NULL DEFAULT '0',
  `converted_invoice_id` int(11) NOT NULL DEFAULT '0',
  `is_convert` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `proposal_id`, `customer_id`, `issue_date`, `send_date`, `category_id`, `status`, `discount_apply`, `converted_invoice_id`, `is_convert`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-24', '2022-10-07', 2, 4, 0, 0, 0, 1, '2022-09-24 22:16:18', '2022-12-01 00:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `proposal_products`
--

CREATE TABLE `proposal_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proposal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposal_products`
--

INSERT INTO `proposal_products` (`id`, `proposal_id`, `product_id`, `quantity`, `tax`, `discount`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '', 0.00, '120.00', '', '2022-09-24 22:16:18', '2022-09-24 22:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `resignations`
--

CREATE TABLE `resignations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revenues`
--

CREATE TABLE `revenues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `account_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', 0, '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(2, 'customer', 'web', 0, '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(3, 'vender', 'web', 0, '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(4, 'company', 'web', 0, '2022-09-19 18:02:01', '2022-09-19 18:02:01'),
(5, 'accountant', 'web', 1, '2022-09-19 18:02:11', '2022-09-19 18:02:11'),
(6, 'client', 'web', 1, '2022-09-19 18:02:17', '2022-09-19 18:02:17'),
(7, 'Admin', 'web', 1, '2022-09-20 21:33:13', '2022-09-20 21:33:13'),
(13, 'Sales Representative', 'web', 1, '2022-10-07 22:47:32', '2022-10-07 22:47:32'),
(9, 'Test`', 'web', 1, '2022-09-24 20:44:35', '2022-09-24 20:44:35'),
(11, 'Beller', 'web', 1, '2022-09-28 19:25:37', '2022-09-28 19:25:37'),
(12, 'Canvasser', 'web', 1, '2022-09-28 22:10:44', '2022-09-28 22:10:44'),
(14, 'Factory Worker', 'web', 1, '2022-11-02 20:04:16', '2022-11-02 20:04:16'),
(15, 'cutter', 'web', 1, '2022-11-18 22:30:21', '2022-11-18 22:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 4),
(1, 5),
(2, 4),
(3, 4),
(3, 7),
(3, 13),
(4, 4),
(4, 5),
(4, 7),
(5, 4),
(5, 7),
(5, 11),
(5, 14),
(6, 4),
(6, 7),
(6, 11),
(7, 4),
(7, 7),
(8, 4),
(8, 7),
(10, 4),
(10, 7),
(11, 4),
(11, 7),
(12, 4),
(12, 7),
(13, 4),
(13, 7),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(18, 7),
(19, 4),
(20, 4),
(22, 4),
(22, 5),
(22, 7),
(22, 11),
(23, 4),
(23, 5),
(23, 7),
(23, 11),
(24, 4),
(24, 5),
(24, 7),
(24, 11),
(25, 4),
(25, 5),
(25, 7),
(25, 11),
(26, 4),
(26, 5),
(26, 7),
(27, 4),
(27, 5),
(27, 7),
(28, 4),
(28, 5),
(28, 7),
(29, 4),
(29, 5),
(29, 7),
(30, 2),
(30, 4),
(30, 5),
(30, 7),
(31, 4),
(31, 5),
(31, 7),
(32, 4),
(32, 5),
(32, 7),
(33, 4),
(33, 5),
(33, 7),
(34, 4),
(34, 5),
(34, 7),
(35, 4),
(36, 4),
(36, 5),
(36, 7),
(37, 4),
(37, 5),
(37, 7),
(38, 4),
(38, 5),
(38, 7),
(39, 4),
(39, 5),
(39, 7),
(40, 4),
(40, 5),
(40, 7),
(41, 4),
(41, 5),
(41, 7),
(42, 4),
(42, 5),
(42, 7),
(43, 4),
(43, 5),
(43, 7),
(44, 4),
(44, 5),
(44, 7),
(45, 4),
(45, 5),
(45, 7),
(46, 4),
(46, 5),
(46, 7),
(47, 4),
(47, 5),
(47, 7),
(48, 4),
(48, 5),
(48, 7),
(48, 15),
(49, 4),
(49, 5),
(49, 7),
(49, 15),
(50, 4),
(50, 5),
(50, 7),
(50, 15),
(51, 4),
(51, 5),
(51, 7),
(51, 15),
(52, 4),
(52, 5),
(52, 7),
(53, 4),
(53, 5),
(53, 7),
(54, 4),
(54, 5),
(54, 7),
(55, 4),
(55, 5),
(55, 7),
(56, 2),
(56, 4),
(56, 5),
(56, 7),
(57, 4),
(57, 5),
(57, 7),
(58, 4),
(58, 5),
(58, 7),
(59, 4),
(59, 5),
(59, 7),
(60, 4),
(60, 5),
(60, 7),
(61, 3),
(61, 4),
(61, 5),
(61, 7),
(62, 4),
(62, 5),
(62, 7),
(63, 4),
(63, 5),
(63, 7),
(64, 4),
(64, 5),
(64, 7),
(65, 4),
(65, 5),
(65, 7),
(66, 4),
(66, 5),
(66, 7),
(67, 4),
(67, 5),
(67, 7),
(68, 4),
(68, 5),
(68, 7),
(69, 4),
(69, 5),
(69, 7),
(70, 4),
(70, 5),
(70, 7),
(71, 4),
(71, 5),
(71, 7),
(72, 4),
(72, 5),
(72, 7),
(73, 4),
(73, 5),
(73, 7),
(74, 4),
(74, 5),
(74, 7),
(75, 4),
(75, 5),
(75, 7),
(76, 4),
(76, 5),
(76, 7),
(77, 4),
(77, 5),
(77, 7),
(78, 4),
(78, 5),
(78, 7),
(79, 3),
(79, 4),
(79, 5),
(79, 7),
(80, 4),
(80, 5),
(80, 7),
(81, 4),
(81, 5),
(81, 7),
(82, 4),
(82, 5),
(82, 7),
(83, 4),
(83, 5),
(83, 7),
(84, 4),
(84, 5),
(84, 7),
(85, 4),
(85, 5),
(85, 7),
(86, 4),
(86, 5),
(86, 7),
(87, 4),
(87, 5),
(87, 7),
(88, 4),
(89, 4),
(89, 5),
(89, 7),
(90, 4),
(90, 5),
(90, 7),
(91, 4),
(91, 5),
(91, 7),
(92, 4),
(92, 5),
(92, 7),
(93, 4),
(93, 5),
(93, 7),
(94, 4),
(95, 4),
(95, 5),
(95, 7),
(96, 4),
(96, 5),
(96, 7),
(97, 2),
(98, 2),
(99, 2),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 4),
(104, 5),
(104, 7),
(105, 4),
(105, 5),
(105, 7),
(106, 4),
(106, 5),
(106, 7),
(107, 4),
(107, 5),
(107, 7),
(108, 4),
(108, 5),
(108, 7),
(109, 4),
(109, 5),
(109, 7),
(110, 4),
(110, 5),
(110, 7),
(111, 4),
(111, 5),
(111, 7),
(112, 4),
(112, 7),
(113, 4),
(113, 7),
(114, 4),
(114, 5),
(114, 7),
(115, 4),
(115, 5),
(115, 7),
(116, 4),
(116, 5),
(116, 7),
(117, 4),
(117, 5),
(117, 7),
(118, 4),
(118, 5),
(118, 7),
(119, 2),
(119, 4),
(119, 5),
(119, 7),
(120, 4),
(120, 5),
(120, 7),
(121, 4),
(121, 5),
(121, 7),
(122, 2),
(123, 4),
(123, 5),
(123, 7),
(124, 4),
(124, 5),
(124, 7),
(125, 4),
(125, 5),
(125, 7),
(126, 4),
(126, 5),
(126, 7),
(127, 4),
(127, 5),
(127, 7),
(128, 4),
(128, 5),
(128, 7),
(129, 4),
(129, 5),
(129, 7),
(130, 4),
(130, 5),
(130, 7),
(131, 4),
(132, 4),
(132, 5),
(132, 7),
(133, 4),
(133, 5),
(133, 7),
(134, 4),
(134, 5),
(134, 7),
(135, 4),
(135, 5),
(135, 7),
(136, 4),
(136, 5),
(136, 7),
(137, 4),
(137, 5),
(137, 7),
(138, 4),
(138, 5),
(138, 7),
(139, 4),
(139, 5),
(139, 7),
(140, 4),
(140, 5),
(140, 7),
(141, 4),
(141, 5),
(141, 7),
(142, 4),
(142, 5),
(142, 7),
(143, 4),
(143, 5),
(143, 7),
(144, 4),
(144, 5),
(144, 7),
(145, 4),
(145, 5),
(145, 7),
(146, 4),
(146, 5),
(146, 7),
(147, 4),
(147, 5),
(147, 7),
(148, 4),
(148, 7),
(149, 4),
(149, 7),
(150, 4),
(150, 7),
(151, 4),
(151, 7),
(152, 4),
(152, 7),
(152, 9),
(152, 11),
(152, 12),
(152, 13),
(153, 4),
(153, 7),
(153, 9),
(153, 11),
(153, 12),
(153, 13),
(154, 4),
(154, 7),
(154, 9),
(154, 11),
(154, 12),
(154, 13),
(155, 4),
(155, 7),
(155, 9),
(155, 11),
(155, 12),
(156, 4),
(156, 7),
(156, 9),
(156, 11),
(157, 4),
(157, 7),
(157, 9),
(157, 11),
(157, 13),
(158, 4),
(159, 4),
(160, 4),
(161, 4),
(162, 4),
(162, 6),
(162, 7),
(162, 9),
(162, 11),
(163, 4),
(163, 7),
(163, 9),
(163, 11),
(164, 4),
(164, 7),
(164, 9),
(164, 11),
(165, 4),
(165, 7),
(165, 9),
(165, 11),
(166, 4),
(166, 6),
(166, 7),
(166, 9),
(166, 11),
(166, 13),
(167, 4),
(167, 7),
(167, 9),
(167, 11),
(167, 13),
(168, 4),
(168, 7),
(168, 9),
(168, 11),
(168, 13),
(169, 4),
(169, 7),
(169, 9),
(169, 11),
(170, 4),
(171, 4),
(171, 6),
(171, 7),
(171, 9),
(171, 11),
(172, 4),
(172, 7),
(172, 9),
(172, 11),
(173, 4),
(173, 7),
(173, 9),
(173, 11),
(174, 4),
(174, 7),
(174, 9),
(174, 11),
(175, 4),
(175, 6),
(175, 7),
(175, 9),
(175, 11),
(175, 13),
(176, 4),
(176, 7),
(176, 9),
(176, 11),
(176, 13),
(177, 4),
(177, 7),
(177, 9),
(177, 11),
(177, 13),
(178, 4),
(178, 7),
(178, 9),
(178, 11),
(179, 4),
(179, 6),
(179, 7),
(179, 9),
(179, 11),
(180, 4),
(180, 7),
(180, 9),
(180, 11),
(181, 4),
(181, 6),
(181, 7),
(181, 9),
(181, 11),
(181, 13),
(182, 4),
(182, 7),
(182, 9),
(182, 11),
(182, 13),
(183, 4),
(183, 7),
(183, 9),
(183, 11),
(183, 13),
(184, 4),
(184, 7),
(184, 9),
(184, 11),
(184, 13),
(185, 4),
(185, 7),
(185, 9),
(185, 11),
(186, 4),
(186, 6),
(186, 7),
(186, 9),
(186, 11),
(187, 4),
(187, 7),
(187, 9),
(187, 11),
(188, 4),
(188, 6),
(188, 7),
(188, 9),
(188, 11),
(189, 4),
(190, 4),
(191, 4),
(192, 4),
(193, 4),
(193, 6),
(193, 7),
(193, 9),
(193, 11),
(194, 4),
(194, 7),
(194, 9),
(194, 11),
(195, 4),
(195, 7),
(195, 9),
(195, 11),
(196, 4),
(196, 7),
(196, 9),
(196, 11),
(197, 4),
(197, 5),
(197, 7),
(198, 4),
(198, 5),
(198, 7),
(199, 4),
(199, 5),
(199, 7),
(200, 4),
(200, 5),
(200, 7),
(201, 4),
(201, 5),
(201, 7),
(202, 4),
(202, 5),
(202, 7),
(203, 4),
(203, 5),
(203, 7),
(204, 4),
(204, 5),
(204, 7),
(205, 4),
(205, 5),
(205, 7),
(206, 4),
(206, 5),
(206, 7),
(207, 4),
(207, 5),
(207, 7),
(208, 4),
(208, 5),
(208, 7),
(209, 4),
(209, 5),
(209, 7),
(210, 4),
(210, 5),
(210, 7),
(211, 4),
(211, 5),
(211, 7),
(212, 4),
(212, 5),
(212, 7),
(213, 4),
(213, 5),
(213, 7),
(214, 4),
(214, 5),
(214, 7),
(215, 4),
(215, 5),
(215, 7),
(216, 4),
(216, 5),
(216, 7),
(217, 4),
(217, 5),
(217, 7),
(218, 4),
(218, 5),
(218, 7),
(219, 4),
(219, 5),
(219, 7),
(220, 4),
(220, 5),
(220, 7),
(221, 4),
(221, 5),
(221, 7),
(222, 4),
(222, 5),
(222, 7),
(223, 4),
(223, 5),
(223, 7),
(224, 4),
(224, 5),
(224, 7),
(225, 4),
(225, 5),
(225, 7),
(226, 4),
(226, 5),
(226, 7),
(227, 4),
(227, 5),
(227, 7),
(228, 4),
(228, 5),
(228, 7),
(229, 4),
(229, 5),
(229, 7),
(230, 4),
(230, 5),
(230, 7),
(231, 4),
(231, 5),
(231, 7),
(232, 4),
(232, 5),
(232, 7),
(233, 4),
(233, 5),
(233, 7),
(234, 4),
(234, 5),
(234, 7),
(235, 4),
(235, 5),
(235, 7),
(236, 4),
(236, 5),
(236, 7),
(237, 4),
(237, 5),
(237, 7),
(238, 4),
(238, 5),
(238, 7),
(239, 4),
(239, 5),
(239, 7),
(240, 4),
(240, 5),
(240, 7),
(241, 4),
(241, 5),
(241, 7),
(242, 4),
(242, 5),
(242, 7),
(243, 4),
(243, 5),
(243, 7),
(244, 4),
(244, 5),
(244, 7),
(245, 4),
(245, 5),
(245, 7),
(246, 4),
(246, 5),
(246, 7),
(247, 4),
(247, 5),
(247, 7),
(248, 4),
(248, 5),
(248, 7),
(249, 4),
(249, 5),
(249, 7),
(250, 4),
(250, 5),
(250, 7),
(251, 4),
(251, 5),
(251, 7),
(252, 4),
(252, 5),
(252, 7),
(253, 4),
(253, 5),
(253, 7),
(254, 4),
(254, 5),
(254, 7),
(255, 4),
(255, 5),
(255, 7),
(256, 4),
(256, 5),
(256, 7),
(257, 4),
(257, 5),
(257, 7),
(258, 4),
(258, 5),
(258, 7),
(259, 4),
(259, 5),
(259, 7),
(260, 4),
(260, 5),
(260, 7),
(261, 4),
(261, 5),
(261, 7),
(262, 4),
(262, 5),
(262, 7),
(263, 4),
(263, 5),
(263, 7),
(264, 4),
(264, 5),
(264, 7),
(265, 4),
(265, 5),
(265, 7),
(266, 4),
(266, 5),
(266, 7),
(267, 4),
(267, 5),
(267, 7),
(268, 4),
(268, 5),
(268, 7),
(269, 4),
(269, 5),
(269, 7),
(270, 4),
(270, 5),
(270, 7),
(271, 4),
(271, 5),
(271, 7),
(272, 4),
(272, 5),
(272, 7),
(273, 4),
(273, 5),
(273, 7),
(274, 4),
(274, 5),
(274, 7),
(275, 4),
(275, 5),
(275, 7),
(276, 4),
(276, 5),
(276, 7),
(277, 4),
(277, 5),
(277, 7),
(278, 4),
(278, 5),
(278, 7),
(279, 4),
(279, 5),
(279, 7),
(280, 4),
(280, 5),
(280, 7),
(281, 4),
(281, 5),
(281, 7),
(282, 4),
(282, 5),
(282, 7),
(283, 4),
(283, 5),
(283, 7),
(284, 4),
(284, 5),
(284, 7),
(285, 4),
(285, 5),
(285, 7),
(286, 4),
(286, 5),
(286, 7),
(287, 4),
(287, 5),
(287, 7),
(288, 4),
(288, 5),
(288, 7),
(289, 4),
(289, 5),
(289, 7),
(290, 4),
(290, 5),
(290, 7),
(291, 4),
(291, 5),
(291, 7),
(292, 4),
(292, 5),
(292, 7),
(293, 4),
(293, 5),
(293, 7),
(294, 4),
(294, 5),
(294, 7),
(295, 4),
(295, 5),
(295, 7),
(296, 4),
(296, 5),
(296, 7),
(297, 4),
(297, 5),
(297, 7),
(298, 4),
(298, 5),
(298, 7),
(299, 4),
(299, 5),
(299, 7),
(300, 4),
(300, 5),
(300, 7),
(301, 4),
(301, 5),
(301, 7),
(302, 4),
(302, 5),
(302, 7),
(303, 4),
(303, 5),
(303, 7),
(304, 4),
(304, 5),
(304, 7),
(305, 4),
(305, 5),
(305, 7),
(306, 4),
(306, 5),
(306, 7),
(307, 4),
(307, 5),
(307, 7),
(308, 4),
(308, 5),
(308, 7),
(309, 4),
(309, 5),
(309, 7),
(310, 4),
(310, 5),
(310, 7),
(311, 4),
(311, 5),
(311, 7),
(312, 4),
(312, 5),
(312, 7),
(313, 4),
(313, 5),
(313, 7),
(314, 4),
(314, 5),
(314, 7),
(315, 4),
(315, 5),
(315, 7),
(316, 4),
(316, 5),
(316, 7),
(317, 4),
(317, 5),
(317, 7),
(318, 4),
(318, 5),
(318, 7),
(319, 4),
(319, 5),
(319, 7),
(320, 4),
(320, 5),
(320, 7),
(321, 4),
(321, 5),
(321, 7),
(322, 4),
(322, 5),
(322, 7),
(323, 4),
(323, 5),
(323, 7),
(324, 4),
(324, 5),
(324, 7),
(325, 4),
(325, 5),
(325, 7),
(326, 4),
(326, 5),
(326, 7),
(327, 4),
(327, 5),
(327, 7),
(328, 4),
(328, 5),
(328, 7),
(329, 4),
(329, 5),
(329, 7),
(330, 4),
(330, 5),
(330, 7),
(331, 4),
(331, 5),
(331, 7),
(332, 4),
(332, 5),
(332, 7),
(333, 4),
(333, 5),
(333, 7),
(334, 4),
(334, 5),
(334, 7),
(335, 4),
(335, 5),
(335, 7),
(336, 4),
(336, 5),
(336, 7),
(337, 4),
(337, 5),
(337, 7),
(338, 4),
(338, 5),
(338, 7),
(339, 4),
(339, 5),
(339, 7),
(340, 4),
(341, 4),
(341, 5),
(341, 7),
(342, 4),
(342, 5),
(342, 7),
(343, 4),
(343, 5),
(343, 7),
(344, 4),
(344, 5),
(344, 7),
(345, 4),
(345, 5),
(345, 7),
(346, 4),
(346, 5),
(346, 7),
(347, 4),
(347, 5),
(347, 7),
(348, 4),
(348, 5),
(348, 7),
(349, 4),
(349, 5),
(349, 7),
(350, 4),
(350, 5),
(350, 7),
(351, 4),
(351, 5),
(351, 7),
(352, 4),
(352, 5),
(352, 7),
(353, 4),
(353, 5),
(353, 7),
(354, 4),
(354, 5),
(354, 7),
(355, 4),
(355, 5),
(355, 7),
(356, 4),
(356, 5),
(356, 7),
(357, 4),
(358, 4),
(359, 4),
(360, 4),
(361, 4),
(361, 5),
(361, 7),
(362, 4),
(362, 5),
(362, 7),
(363, 4),
(363, 5),
(363, 7),
(364, 4),
(364, 5),
(364, 7),
(365, 4),
(365, 5),
(365, 7),
(366, 4),
(366, 5),
(366, 7),
(367, 4),
(367, 5),
(367, 7),
(368, 4),
(368, 5),
(368, 7),
(369, 4),
(369, 5),
(369, 7),
(370, 4),
(370, 5),
(370, 7),
(371, 4),
(371, 5),
(371, 7),
(372, 4),
(372, 5),
(372, 7),
(373, 4),
(373, 5),
(373, 7),
(374, 4),
(374, 5),
(374, 7),
(375, 4),
(375, 5),
(375, 7),
(376, 4),
(376, 5),
(376, 7),
(377, 4),
(378, 4),
(378, 5),
(378, 7),
(379, 4),
(379, 5),
(379, 7),
(380, 4),
(380, 5),
(380, 7),
(381, 4),
(381, 5),
(381, 7),
(382, 4),
(382, 5),
(382, 7),
(383, 4),
(383, 5),
(383, 7),
(384, 4),
(384, 5),
(384, 7),
(385, 4),
(385, 5),
(385, 7),
(386, 4),
(386, 5),
(386, 7),
(387, 4),
(387, 5),
(387, 7),
(388, 4),
(388, 5),
(388, 7),
(389, 4),
(389, 5),
(389, 7),
(390, 4),
(390, 5),
(390, 7),
(391, 4),
(391, 5),
(391, 7),
(392, 4),
(392, 5),
(392, 7),
(393, 4),
(393, 5),
(393, 7),
(394, 4),
(394, 5),
(394, 7),
(395, 4),
(395, 5),
(395, 7),
(396, 4),
(396, 5),
(396, 7),
(397, 4),
(397, 5),
(397, 7),
(398, 4),
(398, 5),
(398, 7),
(399, 4),
(399, 5),
(399, 7),
(400, 4),
(400, 5),
(400, 7),
(401, 4),
(401, 5),
(401, 7),
(402, 4),
(402, 5),
(402, 7),
(403, 4),
(403, 5),
(403, 7),
(404, 4),
(404, 5),
(404, 7),
(405, 4),
(405, 5),
(405, 7),
(406, 4),
(406, 7),
(407, 4),
(407, 6),
(407, 7),
(407, 9),
(407, 11),
(407, 15),
(408, 4),
(408, 7),
(408, 9),
(408, 11),
(408, 15),
(409, 4),
(409, 6),
(409, 7),
(409, 9),
(409, 11),
(409, 15),
(410, 4),
(410, 7),
(410, 9),
(410, 11),
(410, 15),
(411, 4),
(411, 7),
(411, 9),
(411, 11),
(411, 15),
(412, 4),
(412, 7),
(412, 11),
(412, 13),
(413, 4),
(413, 7),
(413, 11),
(413, 13),
(414, 4),
(414, 7),
(414, 11),
(414, 13),
(415, 4),
(415, 7),
(415, 11),
(415, 13),
(416, 4),
(416, 6),
(416, 7),
(416, 11),
(417, 4),
(417, 7),
(417, 11),
(418, 4),
(418, 7),
(418, 11),
(419, 4),
(419, 7),
(419, 11),
(420, 4),
(420, 7),
(420, 11),
(421, 4),
(421, 6),
(421, 7),
(421, 11),
(422, 4),
(422, 7),
(422, 11),
(423, 4),
(423, 6),
(423, 7),
(423, 11),
(424, 4),
(424, 6),
(424, 7),
(424, 11),
(425, 4),
(425, 6),
(425, 7),
(425, 11),
(426, 4),
(426, 6),
(426, 7),
(426, 11),
(427, 4),
(427, 6),
(427, 7),
(427, 11),
(428, 4),
(428, 6),
(428, 7),
(428, 11),
(429, 4),
(429, 7),
(429, 11),
(429, 13),
(430, 4),
(430, 7),
(430, 11),
(431, 4),
(431, 7),
(431, 11),
(432, 4),
(432, 7),
(432, 11),
(433, 4),
(433, 7),
(433, 11),
(434, 4),
(434, 6),
(434, 7),
(434, 11),
(435, 4),
(435, 7),
(435, 11),
(436, 4),
(436, 7),
(436, 11),
(437, 4),
(437, 7),
(437, 11),
(438, 4),
(438, 6),
(438, 7),
(438, 11),
(439, 4),
(439, 6),
(439, 7),
(439, 11),
(440, 4),
(440, 6),
(440, 7),
(440, 11),
(441, 4),
(441, 6),
(441, 7),
(441, 11),
(442, 4),
(442, 6),
(442, 7),
(442, 11),
(443, 4),
(443, 7),
(443, 11),
(444, 4),
(444, 7),
(444, 11),
(445, 4),
(445, 7),
(445, 11),
(446, 4),
(446, 7),
(446, 11),
(447, 6),
(450, 4),
(457, 4),
(458, 4),
(459, 4),
(459, 7),
(459, 11),
(460, 4),
(460, 7),
(460, 11),
(461, 4),
(461, 7),
(461, 11),
(462, 4),
(462, 7),
(462, 11),
(463, 4),
(464, 4),
(465, 4),
(466, 4),
(467, 4),
(468, 4),
(469, 4),
(470, 4),
(471, 4),
(471, 7),
(471, 11),
(472, 4),
(473, 4),
(474, 4),
(475, 4),
(476, 4);

-- --------------------------------------------------------

--
-- Table structure for table `saturation_deductions`
--

CREATE TABLE `saturation_deductions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `deduction_option` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'company_logo_dark', '1_logo-dark.png', 1, NULL, NULL),
(2, 'company_logo_light', '1_logo-light.png', 1, NULL, NULL),
(3, 'company_favicon', '1_favicon.png', 1, NULL, NULL),
(4, 'title_text', 'Babar Rashid - UPVC Software', 1, NULL, NULL),
(5, 'footer_text', 'Babar Rashid - UPVC Software', 1, NULL, NULL),
(6, 'default_language', 'en', 1, NULL, NULL),
(7, 'display_landing_page', 'off', 1, NULL, NULL),
(8, 'cookie_text', 'We use cookies to ensure that we give you the best experience on our website. If you continue to use this site we will assume that you are happy with it.', 1, NULL, NULL),
(9, 'cust_theme_bg', 'on', 1, NULL, NULL),
(10, 'gdpr_cookie', 'off', 1, NULL, NULL),
(11, 'color', 'theme-1', 1, NULL, NULL),
(12, 'cust_darklayout', 'off', 1, NULL, NULL),
(13, 'company_name', 'Babar Rasheed', 1, NULL, NULL),
(14, 'company_address', 'Office 1, Ground Floor, Al Syed Plaza, Kahuta Road, Near Police Station, Sihala Islamabad', 1, NULL, NULL),
(15, 'company_city', 'Islamabad', 1, NULL, NULL),
(16, 'company_state', 'capital', 1, NULL, NULL),
(17, 'company_zipcode', '04403', 1, NULL, NULL),
(18, 'company_country', 'Pakistan', 1, NULL, NULL),
(19, 'company_telephone', '+92 331 5797987', 1, NULL, NULL),
(20, 'company_email', 'infotosafestyle@gmail.com', 1, NULL, NULL),
(21, 'company_email_from_name', 'uaimen128@gmail.com', 1, NULL, NULL),
(22, 'registration_number', '', 1, NULL, NULL),
(23, 'tax_type', 'GST', 1, NULL, NULL),
(24, 'vat_number', '', 1, NULL, NULL),
(25, 'company_start_time', '09:00', 1, NULL, NULL),
(26, 'company_end_time', '18:00', 1, NULL, NULL),
(27, 'site_currency', 'Pakistan', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(28, 'site_currency_symbol', 'PKR', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(29, 'site_currency_symbol_position', 'post', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(30, 'site_date_format', 'M j, Y', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(31, 'site_time_format', 'g:i A', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(32, 'invoice_prefix', '#INVO', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(33, 'proposal_prefix', '#PROP', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(34, 'bill_prefix', '#BILL', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(35, 'customer_prefix', '#CUST', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(36, 'vender_prefix', '#VEND', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(37, 'footer_title', '', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(38, 'decimal_number', '2', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(39, 'journal_prefix', '#JUR', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(40, 'shipping_display', 'on', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42'),
(41, 'footer_notes', '', 1, '2022-09-22 21:44:42', '2022-09-22 21:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `set_salaries`
--

CREATE TABLE `set_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(6, 'Canvassing', 1, '2022-10-14 15:11:25', '2022-10-14 15:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Size Taken', 1, 1, 0, '2022-09-19 18:02:18', '2022-10-15 15:34:45'),
(2, 'Quoted', 1, 1, 0, '2022-09-19 18:02:18', '2022-10-15 15:34:56'),
(3, 'Open', 1, 1, 0, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(4, 'Revised', 1, 1, 0, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(5, 'Declined', 1, 1, 0, '2022-09-19 18:02:18', '2022-09-19 18:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `stock_reports`
--

CREATE TABLE `stock_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_reports`
--

INSERT INTO `stock_reports` (`id`, `product_id`, `quantity`, `type`, `type_id`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'invoice', 1, '1   quantity sold in invoice #INVO00001', 1, '2022-09-21 22:57:07', '2022-09-21 22:57:07'),
(2, 1, 12, 'manually', 0, '12  quantity added by manually', 1, '2022-09-22 00:30:55', '2022-09-22 00:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_created` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `ticket_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_replies`
--

CREATE TABLE `support_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_checklists`
--

CREATE TABLE `task_checklists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_comments`
--

CREATE TABLE `task_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_files`
--

CREATE TABLE `task_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_stages`
--

CREATE TABLE `task_stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  `project_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `color` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_stages`
--

INSERT INTO `task_stages` (`id`, `name`, `complete`, `project_id`, `color`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'To Do', 0, 0, NULL, 0, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(2, 'In Progress', 0, 0, NULL, 1, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(3, 'Review', 0, 0, NULL, 2, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18'),
(4, 'Done', 0, 0, NULL, 3, 1, '2022-09-19 18:02:18', '2022-09-19 18:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terminations`
--

CREATE TABLE `terminations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `termination_types`
--

CREATE TABLE `termination_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_trackers`
--

CREATE TABLE `time_trackers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `tag_id` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_billable` int(11) NOT NULL DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `total_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_photos`
--

CREATE TABLE `track_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `track_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `img_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `expertise` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `branch`, `firstname`, `lastname`, `contact`, `email`, `address`, `expertise`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'ume', 'aimen', '03039404390', 'uaimen128@gmail.com', '423 A new phagwari commerce college saidpur scheme 2, satellite town E block rawalpindi', 'eddsdc', 1, '2022-09-21 21:46:59', '2022-09-21 21:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch` int(11) NOT NULL,
  `trainer_option` int(11) NOT NULL,
  `training_type` int(11) NOT NULL,
  `trainer` int(11) NOT NULL,
  `training_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `employee` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `performance` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `branch`, `trainer_option`, `training_type`, `trainer`, `training_cost`, `employee`, `start_date`, `end_date`, `description`, `performance`, `status`, `remarks`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 1, 0.03, 1, '2022-09-21', '2022-09-22', 'sxcddcsdes', 0, 0, NULL, 1, '2022-09-21 21:47:23', '2022-09-21 21:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'testrainig', 1, '2022-09-21 21:40:24', '2022-09-21 21:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `payment_id` int(11) NOT NULL DEFAULT '0',
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_visit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `plan_expire_date` date DEFAULT NULL,
  `requested_plan` int(11) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `default_pipeline` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '1',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `plan`, `plan_expire_date`, `requested_plan`, `type`, `avatar`, `lang`, `mode`, `created_by`, `default_pipeline`, `delete_status`, `is_active`, `remember_token`, `last_login_at`, `created_at`, `updated_at`) VALUES
(1, 'Babar Rashid', 'babar@babarrashid.com', NULL, '$2y$10$NSo.vsVWKflW0bTUoPtHgOwNiXTo2uq2pU7wNPPI8wk7t/ZLJWglW', 1, NULL, 0, 'Admin', '', 'en', 'light', 1, 1, 1, 1, NULL, '2022-12-12 17:54:11', '2022-09-19 18:02:11', '2022-12-13 00:54:11'),
(3, 'client', 'client@example.com', NULL, '$2y$10$qFett2F9Lkp3DDR76oWZ9OgS96rgH2DggTg/sByP0fDg1N9fSme4C', NULL, NULL, 0, 'client', '', 'en', 'light', 1, 1, 1, 1, NULL, '2022-10-03 15:47:06', '2022-09-19 18:02:18', '2022-10-03 21:47:06'),
(20, 'Atsam', 'Atsam@babarrashid.com', NULL, '$2y$10$cpvHphC4I2l4GXCPdH8uVeTSbzvzsAEojEMKt09x9M2.K6I5WkO/W', NULL, NULL, 0, 'Canvasser', 'WhatsApp Image 2022-11-24 at 10.47.40 AM_1669268923.jpeg', 'en', 'light', 1, NULL, 1, 1, NULL, '2022-12-13 11:29:29', '2022-09-30 15:50:51', '2022-12-13 18:29:29'),
(22, 'Awais', 'awais@archetives.com', NULL, '$2y$10$qAS0ytVO0ISGe4D3uaJXdOFv0kLDXobML4ysjnQ6iB3ex.Z.4PyRO', NULL, NULL, 0, 'Admin', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-12-13 15:33:36', '2022-10-04 21:13:17', '2022-12-13 22:33:36'),
(7, 'Muhammad Muhib', 'companjky@example.com', NULL, '$2y$10$en..h31UeElO/v2pB6zVqOy565jNWmtJEk1uNH/6.IAlTlYxvO4WG', NULL, NULL, 0, 'client', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-09-21 22:41:50', '2022-09-21 22:41:50'),
(19, 'WorkEleven', 'propocean@gmail.com', NULL, '$2y$10$eag8Cm2mhYuv7QRwhG8neuydFTgqUncUkFduaihlr3y.vj5WnwrLK', NULL, NULL, 0, 'client', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-09-29 06:46:36', '2022-09-29 06:46:36'),
(16, 'Sana', 'Sana@babarrashid.com', NULL, '$2y$10$hG7CrjhG10BpJev.kvJeS.MX05uja4C7OAJfhn1jGQrDOAo3C3nQ.', NULL, NULL, 0, 'Beller', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-12-13 12:48:31', '2022-09-28 19:26:31', '2022-12-13 19:48:31'),
(24, 'aimen', 'laravelphp18@gmail.com', NULL, '$2y$10$bswng8Nct6DMlUmZ1F7cd.4xzdbK6/Z36UolTLpr5nYoOSCmafswS', NULL, NULL, 0, 'accountant', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-10-18 16:51:47', '2022-10-05 00:08:52', '2022-10-18 22:51:47'),
(13, 'Muneeb Satti', 'admin@babarrashid.com', NULL, '$2y$10$XfzAVGB92wDn.39Pdf8URuabiizXl3F.NlmJgMRdI8pDwiTs.IqQG', NULL, NULL, 0, 'Admin', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-12-08 15:23:41', '2022-09-26 21:45:50', '2022-12-08 22:23:41'),
(43, 'cutter1', 'uaimen128@gmail.com', NULL, '$2y$10$1aT8/FlD/IX0znr3irtpFe62cG8e2Fvscp.FvE49NFm8epRSeIkxm', NULL, NULL, 0, 'cutter', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-11-19 17:21:49', '2022-11-18 22:36:15', '2022-11-20 00:21:49'),
(21, 'Hassan', 'Hassan@babarrashid.com', NULL, '$2y$10$DFPmbm0iZFNxvB0PnyYDOu4sSMRcPwFMdVc85TxERtRlNGEL9W3hq', NULL, NULL, 0, 'Canvasser', NULL, 'en', 'light', 1, 1, 1, 1, NULL, '2022-12-05 19:32:19', '2022-10-04 15:38:04', '2022-12-06 02:32:19'),
(23, 'bell', 'bell@beller.com', NULL, '$2y$10$NYD5puVAABIgX742e6iQmOlvmEjaiOh.Sqrg.xpa9KnBPXSdJ6PCW', NULL, NULL, 0, 'Beller', NULL, 'en', 'light', 1, 1, 1, 1, NULL, '2022-10-06 18:33:06', '2022-10-04 22:11:40', '2022-10-07 00:33:06'),
(25, 'CD', 'cd@123.com', NULL, '$2y$10$Hw7QrtJIEr9CiJKo5LPaBekueH7vOn0JNS8QgWUBa13O6Sg86fxgW', NULL, NULL, 0, 'Canvasser', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-10-07 16:48:34', '2022-10-07 22:48:17', '2022-10-07 22:48:34'),
(26, 'Zohaib Abbasi', 'Zohaib@babarrashid.com', NULL, '$2y$10$JqnpFXITcVkGP7QHuPn.kOC5y8lGLZE5g2dqt2SItANx.a8RQJpNq', NULL, NULL, 0, 'Sales Representative', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-12-13 16:21:04', '2022-10-08 15:25:30', '2022-12-13 23:21:04'),
(27, 'Raheem Abbasi', 'Raheem@babarrashid.com', NULL, '$2y$10$4jIkGKC7paXzSwMdH1GCIuh9b1ir7GG4EC8KT3hz01r6TEb6aBDla', NULL, NULL, 0, 'Sales Representative', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-10-08 15:34:10', '2022-10-08 15:34:10'),
(28, 'Kamran Alam', 'Kamran@babarrashid.com', NULL, '$2y$10$/n8ttQ9oWU9NgfGkOcOxfOusYyTNFMDPlyjYc3uz.Iwvo8AMLCaXe', NULL, NULL, 0, 'Sales Representative', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-10-18 09:28:50', '2022-10-17 15:56:03', '2022-10-18 15:28:50'),
(29, 'Shabir Shah', 'shabirshah@babarrashid.com', NULL, '$2y$10$pbO4ib/vacJtZL.N5UIjT.Z6RJll5wH3sUreBaOG9gnMYd3HNTRrq', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:11:46', '2022-11-02 20:13:03'),
(30, 'Umer', 'Umer@babarrashid.com', NULL, '$2y$10$B5ICGO5gx5hB0XT1FY5WJuKbMgwkwhjp5w3gvu5JT4/Dj7GWkDx2C', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:14:50', '2022-11-02 20:14:50'),
(31, 'Azhar Mehmood', 'Azharmehmood@babarrashid.com', NULL, '$2y$10$sKOI4i5DDWBfL2wVqXUUDOVXbcfpneC2PVJMKdVRC8MuAE.ZpvaKy', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:16:05', '2022-11-02 20:16:05'),
(32, 'Obaid', 'Obaid@babarrashid.com', NULL, '$2y$10$rmyBoComXgzxwU8NUMDDHeaLgvnZMXPlehhT3kWEiU3u5QxaAW8da', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:17:10', '2022-11-02 20:17:10'),
(33, 'Mauviah', 'Mauvaih@babarrashid.com', NULL, '$2y$10$FwfZbnPU3VWNRaNwYhe65uh/TuTbrGV/9TA/sGQtdOeHrmKiqK4My', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:18:09', '2022-11-02 20:18:09'),
(34, 'Noor khan', 'Noorkhan@babarrashid.com', NULL, '$2y$10$.4suK/v.fz9ZK7Hg8X8ukO.gIm.eSh85g337SEmtGsqjsU0O7I2ky', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:19:09', '2022-11-02 20:19:09'),
(35, 'Sadaqat', 'Sadaqat@babarrashid.com', NULL, '$2y$10$lpo51y6M4UVQoFsNVsX4VuGM5scJ7RwtLAM3CCCKcmmPzSuhud0ne', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:20:21', '2022-11-02 20:20:21'),
(36, 'Shakeel', 'Shakeel@babarrashid.com', NULL, '$2y$10$/F8bTu6YeP6/sCVs6SkdaeK/66LYK6ZATuQ1mAuNNpt5CT8GHTql.', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:21:14', '2022-11-02 20:21:14'),
(37, 'Iqbal Shah', 'Iqbalshah@babarrashid.com', NULL, '$2y$10$4iWbES4NaLu4c9v9ic4Oi.hU0fayzKryvzSfWOAtM1jDR65AmkG22', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:22:07', '2022-11-02 20:22:07'),
(38, 'Bilal', 'Bilal@babarrashid.com', NULL, '$2y$10$aH64sNVCViz.u2CT9Q18tOZHF.nzp3YLJmH4NDaGV5ipiLbpEBsJW', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:24:07', '2022-11-02 20:24:07'),
(39, 'H.Umer', 'HUmer@babarrashid.com', NULL, '$2y$10$/PiSUH9Djoj0B7HND7UkO.YXXJ4miTNO68WrZSEYMO86ipeoDm252', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:25:41', '2022-11-02 20:25:41'),
(40, 'Usama', 'Usama@babarrashid.com', NULL, '$2y$10$GIOWozXfV.Pg0cz52/Ax6OIE.kUqnvvFWH67HfN2WjOkzdKBukzSe', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:26:40', '2022-11-02 20:26:40'),
(41, 'Mahad Amir', 'Mahadamir@babarrashid.com', NULL, '$2y$10$RsK9J/AIfwrR4AdhyF5X1.0pJv5AIx3FcARxa.DjjyWTeXrzfWceO', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:27:39', '2022-11-02 20:27:39'),
(42, 'Qadeer', 'Qadeer@babarrashid.com', NULL, '$2y$10$s8SsFSjX7veMZXmLj5TOueCoc6OEj1W2.Ggb.9dL8TirbDjT8lNK6', NULL, NULL, 0, 'Factory Worker', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, NULL, '2022-11-02 20:28:26', '2022-11-02 20:28:26'),
(44, 'Farooq Tahir', 'farooq@babarrashid.com', NULL, '$2y$10$7B3Q0h4DjUktexlhEHT2lOLOfz9.AwIZ/r2WwkkN94j8gBkgeq1e6', NULL, NULL, 0, 'Sales Representative', NULL, 'en', 'light', 1, NULL, 1, 1, NULL, '2022-12-13 16:08:24', '2022-11-24 19:26:13', '2022-12-13 23:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_coupons`
--

CREATE TABLE `user_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_deals`
--

CREATE TABLE `user_deals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_deals`
--

INSERT INTO `user_deals` (`id`, `user_id`, `deal_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-21 20:54:02', '2022-09-21 20:54:02'),
(2, 1, 2, '2022-09-21 22:54:22', '2022-09-21 22:54:22'),
(3, 4, 2, '2022-09-21 22:54:22', '2022-09-21 22:54:22'),
(4, 1, 3, '2022-09-26 23:46:18', '2022-09-26 23:46:18'),
(5, 1, 4, '2022-09-26 23:46:19', '2022-09-26 23:46:19'),
(6, 1, 5, '2022-09-27 18:01:20', '2022-09-27 18:01:20'),
(7, 1, 6, '2022-09-29 06:42:15', '2022-09-29 06:42:15'),
(8, 13, 7, '2022-10-08 17:06:23', '2022-10-08 17:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_email_templates`
--

CREATE TABLE `user_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_leads`
--

CREATE TABLE `user_leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_leads`
--

INSERT INTO `user_leads` (`id`, `user_id`, `lead_id`, `created_at`, `updated_at`) VALUES
(78, 1, 35, '2022-10-11 23:46:07', '2022-10-11 23:46:07'),
(74, 1, 33, '2022-10-11 20:52:26', '2022-10-11 20:52:26'),
(65, 16, 28, '2022-10-11 16:46:02', '2022-10-11 16:46:02'),
(64, 21, 28, '2022-10-11 16:46:02', '2022-10-11 16:46:02'),
(88, 20, 40, '2022-10-13 15:27:08', '2022-10-13 15:27:08'),
(87, 16, 39, '2022-10-13 15:24:54', '2022-10-13 15:24:54'),
(70, 1, 31, '2022-10-11 20:43:16', '2022-10-11 20:43:16'),
(69, 16, 30, '2022-10-11 17:12:59', '2022-10-11 17:12:59'),
(86, 20, 39, '2022-10-13 15:24:54', '2022-10-13 15:24:54'),
(85, 16, 38, '2022-10-12 18:29:33', '2022-10-12 18:29:33'),
(82, 1, 37, '2022-10-12 18:00:40', '2022-10-12 18:00:40'),
(140, 16, 36, '2022-10-15 19:03:00', '2022-10-15 19:03:00'),
(80, 20, 36, '2022-10-12 15:23:43', '2022-10-12 15:23:43'),
(84, 1, 38, '2022-10-12 18:29:33', '2022-10-12 18:29:33'),
(83, 16, 37, '2022-10-12 18:00:40', '2022-10-12 18:00:40'),
(79, 22, 35, '2022-10-11 23:46:07', '2022-10-11 23:46:07'),
(68, 21, 30, '2022-10-11 17:12:59', '2022-10-11 17:12:59'),
(76, 1, 34, '2022-10-11 23:43:46', '2022-10-11 23:43:46'),
(75, 22, 33, '2022-10-11 20:52:26', '2022-10-11 20:52:26'),
(35, 1, 18, NULL, NULL),
(77, 16, 34, '2022-10-11 23:43:46', '2022-10-11 23:43:46'),
(93, 16, 42, '2022-10-13 16:21:30', '2022-10-13 16:21:30'),
(92, 21, 42, '2022-10-13 16:21:30', '2022-10-13 16:21:30'),
(67, 16, 29, '2022-10-11 16:56:13', '2022-10-11 16:56:13'),
(66, 21, 29, '2022-10-11 16:56:13', '2022-10-11 16:56:13'),
(91, 16, 41, '2022-10-13 15:28:40', '2022-10-13 15:28:40'),
(73, 22, 32, '2022-10-11 20:48:28', '2022-10-11 20:48:28'),
(90, 20, 41, '2022-10-13 15:28:40', '2022-10-13 15:28:40'),
(89, 16, 40, '2022-10-13 15:27:08', '2022-10-13 15:27:08'),
(72, 1, 32, '2022-10-11 20:48:28', '2022-10-11 20:48:28'),
(71, 22, 31, '2022-10-11 20:43:16', '2022-10-11 20:43:16'),
(94, 20, 43, '2022-10-13 16:42:42', '2022-10-13 16:42:42'),
(95, 16, 43, '2022-10-13 16:42:42', '2022-10-13 16:42:42'),
(96, 21, 44, '2022-10-13 16:56:11', '2022-10-13 16:56:11'),
(97, 16, 44, '2022-10-13 16:56:11', '2022-10-13 16:56:11'),
(98, 20, 45, '2022-10-13 16:59:39', '2022-10-13 16:59:39'),
(99, 16, 45, '2022-10-13 16:59:39', '2022-10-13 16:59:39'),
(100, 20, 46, '2022-10-13 17:03:47', '2022-10-13 17:03:47'),
(101, 16, 46, '2022-10-13 17:03:47', '2022-10-13 17:03:47'),
(102, 21, 47, '2022-10-13 17:57:24', '2022-10-13 17:57:24'),
(103, 16, 47, '2022-10-13 17:57:24', '2022-10-13 17:57:24'),
(104, 20, 48, '2022-10-13 18:05:03', '2022-10-13 18:05:03'),
(105, 16, 48, '2022-10-13 18:05:03', '2022-10-13 18:05:03'),
(106, 20, 49, '2022-10-13 18:06:12', '2022-10-13 18:06:12'),
(107, 16, 49, '2022-10-13 18:06:12', '2022-10-13 18:06:12'),
(108, 20, 50, '2022-10-13 18:07:34', '2022-10-13 18:07:34'),
(109, 16, 50, '2022-10-13 18:07:34', '2022-10-13 18:07:34'),
(110, 21, 51, '2022-10-13 18:57:04', '2022-10-13 18:57:04'),
(111, 16, 51, '2022-10-13 18:57:04', '2022-10-13 18:57:04'),
(112, 20, 52, '2022-10-14 18:08:36', '2022-10-14 18:08:36'),
(113, 16, 52, '2022-10-14 18:08:36', '2022-10-14 18:08:36'),
(114, 20, 53, '2022-10-14 18:10:19', '2022-10-14 18:10:19'),
(115, 16, 53, '2022-10-14 18:10:19', '2022-10-14 18:10:19'),
(116, 21, 54, '2022-10-15 15:08:29', '2022-10-15 15:08:29'),
(117, 16, 54, '2022-10-15 15:08:29', '2022-10-15 15:08:29'),
(118, 26, 44, '2022-10-15 15:23:29', '2022-10-15 15:23:29'),
(119, 21, 55, '2022-10-15 16:59:15', '2022-10-15 16:59:15'),
(120, 16, 55, '2022-10-15 16:59:15', '2022-10-15 16:59:15'),
(121, 21, 56, '2022-10-15 17:00:58', '2022-10-15 17:00:58'),
(122, 16, 56, '2022-10-15 17:00:58', '2022-10-15 17:00:58'),
(123, 21, 57, '2022-10-15 17:40:53', '2022-10-15 17:40:53'),
(124, 16, 57, '2022-10-15 17:40:53', '2022-10-15 17:40:53'),
(128, 21, 59, '2022-10-15 18:10:28', '2022-10-15 18:10:28'),
(127, 26, 53, '2022-10-15 18:00:47', '2022-10-15 18:00:47'),
(129, 16, 59, '2022-10-15 18:10:28', '2022-10-15 18:10:28'),
(130, 20, 60, '2022-10-15 18:11:38', '2022-10-15 18:11:38'),
(131, 16, 60, '2022-10-15 18:11:38', '2022-10-15 18:11:38'),
(132, 20, 61, '2022-10-15 18:15:32', '2022-10-15 18:15:32'),
(133, 16, 61, '2022-10-15 18:15:32', '2022-10-15 18:15:32'),
(134, 20, 62, '2022-10-15 18:28:38', '2022-10-15 18:28:38'),
(135, 16, 62, '2022-10-15 18:28:38', '2022-10-15 18:28:38'),
(136, 20, 63, '2022-10-15 18:49:20', '2022-10-15 18:49:20'),
(137, 16, 63, '2022-10-15 18:49:20', '2022-10-15 18:49:20'),
(138, 21, 64, '2022-10-15 18:56:23', '2022-10-15 18:56:23'),
(139, 16, 64, '2022-10-15 18:56:23', '2022-10-15 18:56:23'),
(141, 20, 65, '2022-10-17 17:05:48', '2022-10-17 17:05:48'),
(142, 16, 65, '2022-10-17 17:05:48', '2022-10-17 17:05:48'),
(143, 20, 66, '2022-10-17 17:31:45', '2022-10-17 17:31:45'),
(144, 16, 66, '2022-10-17 17:31:45', '2022-10-17 17:31:45'),
(145, 20, 67, '2022-10-17 18:01:25', '2022-10-17 18:01:25'),
(146, 16, 67, '2022-10-17 18:01:25', '2022-10-17 18:01:25'),
(147, 20, 68, '2022-10-17 18:47:19', '2022-10-17 18:47:19'),
(148, 16, 68, '2022-10-17 18:47:19', '2022-10-17 18:47:19'),
(149, 20, 69, '2022-10-17 19:51:15', '2022-10-17 19:51:15'),
(150, 16, 69, '2022-10-17 19:51:15', '2022-10-17 19:51:15'),
(151, 28, 55, '2022-10-18 15:22:35', '2022-10-18 15:22:35'),
(152, 28, 57, '2022-10-18 15:23:07', '2022-10-18 15:23:07'),
(232, 20, 103, '2022-10-24 17:27:19', '2022-10-24 17:27:19'),
(231, 16, 102, '2022-10-24 17:04:34', '2022-10-24 17:04:34'),
(155, 20, 71, '2022-10-18 18:15:29', '2022-10-18 18:15:29'),
(156, 16, 71, '2022-10-18 18:15:29', '2022-10-18 18:15:29'),
(157, 20, 72, '2022-10-18 19:44:56', '2022-10-18 19:44:56'),
(158, 16, 72, '2022-10-18 19:44:56', '2022-10-18 19:44:56'),
(159, 20, 73, '2022-10-18 20:32:17', '2022-10-18 20:32:17'),
(160, 16, 73, '2022-10-18 20:32:17', '2022-10-18 20:32:17'),
(166, 16, 76, '2022-10-19 18:19:14', '2022-10-19 18:19:14'),
(165, 20, 76, '2022-10-19 18:19:14', '2022-10-19 18:19:14'),
(163, 20, 75, '2022-10-18 20:42:14', '2022-10-18 20:42:14'),
(164, 16, 75, '2022-10-18 20:42:14', '2022-10-18 20:42:14'),
(167, 20, 77, '2022-10-19 19:14:53', '2022-10-19 19:14:53'),
(168, 16, 77, '2022-10-19 19:14:53', '2022-10-19 19:14:53'),
(169, 20, 78, '2022-10-19 19:17:47', '2022-10-19 19:17:47'),
(170, 16, 78, '2022-10-19 19:17:47', '2022-10-19 19:17:47'),
(171, 27, 36, '2022-10-20 15:30:07', '2022-10-20 15:30:07'),
(172, 21, 79, '2022-10-20 16:25:52', '2022-10-20 16:25:52'),
(173, 16, 79, '2022-10-20 16:25:52', '2022-10-20 16:25:52'),
(174, 21, 80, '2022-10-20 16:38:17', '2022-10-20 16:38:17'),
(175, 16, 80, '2022-10-20 16:38:17', '2022-10-20 16:38:17'),
(176, 20, 81, '2022-10-20 16:42:07', '2022-10-20 16:42:07'),
(177, 16, 81, '2022-10-20 16:42:07', '2022-10-20 16:42:07'),
(178, 21, 82, '2022-10-20 17:03:17', '2022-10-20 17:03:17'),
(179, 16, 82, '2022-10-20 17:03:17', '2022-10-20 17:03:17'),
(180, 21, 83, '2022-10-20 17:34:11', '2022-10-20 17:34:11'),
(181, 16, 83, '2022-10-20 17:34:11', '2022-10-20 17:34:11'),
(182, 21, 84, '2022-10-20 18:13:36', '2022-10-20 18:13:36'),
(183, 16, 84, '2022-10-20 18:13:36', '2022-10-20 18:13:36'),
(184, 20, 85, '2022-10-20 20:37:37', '2022-10-20 20:37:37'),
(185, 16, 85, '2022-10-20 20:37:37', '2022-10-20 20:37:37'),
(186, 20, 86, '2022-10-20 20:38:35', '2022-10-20 20:38:35'),
(187, 16, 86, '2022-10-20 20:38:35', '2022-10-20 20:38:35'),
(188, 20, 87, '2022-10-20 20:39:37', '2022-10-20 20:39:37'),
(189, 16, 87, '2022-10-20 20:39:37', '2022-10-20 20:39:37'),
(190, 20, 88, '2022-10-20 22:09:09', '2022-10-20 22:09:09'),
(191, 16, 88, '2022-10-20 22:09:09', '2022-10-20 22:09:09'),
(192, 20, 89, '2022-10-21 16:47:18', '2022-10-21 16:47:18'),
(193, 16, 89, '2022-10-21 16:47:18', '2022-10-21 16:47:18'),
(194, 21, 90, '2022-10-21 16:51:19', '2022-10-21 16:51:19'),
(195, 16, 90, '2022-10-21 16:51:19', '2022-10-21 16:51:19'),
(230, 20, 102, '2022-10-24 17:04:34', '2022-10-24 17:04:34'),
(197, 20, 91, '2022-10-21 17:37:52', '2022-10-21 17:37:52'),
(198, 16, 91, '2022-10-21 17:37:52', '2022-10-21 17:37:52'),
(199, 21, 92, '2022-10-21 17:41:06', '2022-10-21 17:41:06'),
(200, 16, 92, '2022-10-21 17:41:06', '2022-10-21 17:41:06'),
(201, 20, 93, '2022-10-21 18:10:50', '2022-10-21 18:10:50'),
(202, 16, 93, '2022-10-21 18:10:50', '2022-10-21 18:10:50'),
(203, 21, 94, '2022-10-21 18:27:42', '2022-10-21 18:27:42'),
(204, 16, 94, '2022-10-21 18:27:42', '2022-10-21 18:27:42'),
(205, 28, 47, '2022-10-22 16:14:21', '2022-10-22 16:14:21'),
(206, 27, 63, '2022-10-22 16:15:31', '2022-10-22 16:15:31'),
(207, 26, 69, '2022-10-22 16:16:21', '2022-10-22 16:16:21'),
(208, 26, 78, '2022-10-22 16:17:05', '2022-10-22 16:17:05'),
(209, 28, 79, '2022-10-22 16:17:42', '2022-10-22 16:17:42'),
(210, 28, 83, '2022-10-22 16:18:10', '2022-10-22 16:18:10'),
(211, 26, 85, '2022-10-22 16:19:00', '2022-10-22 16:19:00'),
(212, 26, 86, '2022-10-22 16:20:07', '2022-10-22 16:20:07'),
(213, 28, 54, '2022-10-22 16:20:39', '2022-10-22 16:20:39'),
(214, 28, 56, '2022-10-22 16:21:31', '2022-10-22 16:21:31'),
(215, 28, 51, '2022-10-22 16:23:52', '2022-10-22 16:23:52'),
(216, 21, 95, '2022-10-22 16:31:06', '2022-10-22 16:31:06'),
(217, 16, 95, '2022-10-22 16:31:06', '2022-10-22 16:31:06'),
(218, 20, 96, '2022-10-22 16:44:24', '2022-10-22 16:44:24'),
(219, 16, 96, '2022-10-22 16:44:24', '2022-10-22 16:44:24'),
(220, 21, 97, '2022-10-22 16:55:09', '2022-10-22 16:55:09'),
(221, 16, 97, '2022-10-22 16:55:09', '2022-10-22 16:55:09'),
(222, 21, 98, '2022-10-22 17:50:56', '2022-10-22 17:50:56'),
(223, 16, 98, '2022-10-22 17:50:56', '2022-10-22 17:50:56'),
(224, 20, 99, '2022-10-22 18:09:12', '2022-10-22 18:09:12'),
(225, 16, 99, '2022-10-22 18:09:12', '2022-10-22 18:09:12'),
(226, 20, 100, '2022-10-22 18:19:00', '2022-10-22 18:19:00'),
(227, 16, 100, '2022-10-22 18:19:00', '2022-10-22 18:19:00'),
(228, 20, 101, '2022-10-22 19:05:54', '2022-10-22 19:05:54'),
(229, 16, 101, '2022-10-22 19:05:54', '2022-10-22 19:05:54'),
(233, 16, 103, '2022-10-24 17:27:19', '2022-10-24 17:27:19'),
(234, 20, 104, '2022-10-24 17:48:24', '2022-10-24 17:48:24'),
(235, 16, 104, '2022-10-24 17:48:24', '2022-10-24 17:48:24'),
(236, 21, 105, '2022-10-24 18:27:36', '2022-10-24 18:27:36'),
(237, 16, 105, '2022-10-24 18:27:36', '2022-10-24 18:27:36'),
(238, 21, 106, '2022-10-24 18:29:49', '2022-10-24 18:29:49'),
(239, 16, 106, '2022-10-24 18:29:49', '2022-10-24 18:29:49'),
(240, 20, 107, '2022-10-24 18:58:04', '2022-10-24 18:58:04'),
(241, 16, 107, '2022-10-24 18:58:04', '2022-10-24 18:58:04'),
(242, 21, 108, '2022-10-24 19:31:05', '2022-10-24 19:31:05'),
(243, 16, 108, '2022-10-24 19:31:05', '2022-10-24 19:31:05'),
(244, 21, 109, '2022-10-24 19:32:18', '2022-10-24 19:32:18'),
(245, 16, 109, '2022-10-24 19:32:18', '2022-10-24 19:32:18'),
(246, 21, 110, '2022-10-25 16:20:17', '2022-10-25 16:20:17'),
(247, 16, 110, '2022-10-25 16:20:17', '2022-10-25 16:20:17'),
(248, 20, 111, '2022-10-25 16:38:04', '2022-10-25 16:38:04'),
(249, 16, 111, '2022-10-25 16:38:04', '2022-10-25 16:38:04'),
(250, 20, 112, '2022-10-25 16:51:40', '2022-10-25 16:51:40'),
(251, 16, 112, '2022-10-25 16:51:40', '2022-10-25 16:51:40'),
(252, 21, 113, '2022-10-25 16:59:24', '2022-10-25 16:59:24'),
(253, 16, 113, '2022-10-25 16:59:24', '2022-10-25 16:59:24'),
(254, 20, 114, '2022-10-25 17:22:21', '2022-10-25 17:22:21'),
(255, 16, 114, '2022-10-25 17:22:21', '2022-10-25 17:22:21'),
(256, 20, 115, '2022-10-25 17:46:03', '2022-10-25 17:46:03'),
(257, 16, 115, '2022-10-25 17:46:03', '2022-10-25 17:46:03'),
(258, 21, 116, '2022-10-25 17:54:50', '2022-10-25 17:54:50'),
(259, 16, 116, '2022-10-25 17:54:50', '2022-10-25 17:54:50'),
(260, 20, 117, '2022-10-25 18:01:27', '2022-10-25 18:01:27'),
(261, 16, 117, '2022-10-25 18:01:27', '2022-10-25 18:01:27'),
(262, 21, 118, '2022-10-26 17:20:47', '2022-10-26 17:20:47'),
(263, 16, 118, '2022-10-26 17:20:47', '2022-10-26 17:20:47'),
(264, 21, 119, '2022-10-26 18:11:54', '2022-10-26 18:11:54'),
(265, 16, 119, '2022-10-26 18:11:54', '2022-10-26 18:11:54'),
(266, 20, 120, '2022-10-26 18:39:39', '2022-10-26 18:39:39'),
(267, 16, 120, '2022-10-26 18:39:39', '2022-10-26 18:39:39'),
(268, 20, 121, '2022-10-26 18:40:58', '2022-10-26 18:40:58'),
(269, 16, 121, '2022-10-26 18:40:58', '2022-10-26 18:40:58'),
(270, 20, 122, '2022-10-26 18:41:54', '2022-10-26 18:41:54'),
(271, 16, 122, '2022-10-26 18:41:54', '2022-10-26 18:41:54'),
(272, 20, 123, '2022-10-26 18:42:35', '2022-10-26 18:42:35'),
(273, 16, 123, '2022-10-26 18:42:35', '2022-10-26 18:42:35'),
(274, 20, 124, '2022-10-26 18:43:34', '2022-10-26 18:43:34'),
(275, 16, 124, '2022-10-26 18:43:34', '2022-10-26 18:43:34'),
(276, 21, 125, '2022-10-27 16:25:18', '2022-10-27 16:25:18'),
(277, 16, 125, '2022-10-27 16:25:18', '2022-10-27 16:25:18'),
(278, 21, 126, '2022-10-27 17:18:21', '2022-10-27 17:18:21'),
(279, 16, 126, '2022-10-27 17:18:21', '2022-10-27 17:18:21'),
(280, 20, 127, '2022-10-27 18:30:17', '2022-10-27 18:30:17'),
(281, 16, 127, '2022-10-27 18:30:17', '2022-10-27 18:30:17'),
(282, 20, 128, '2022-10-27 18:32:53', '2022-10-27 18:32:53'),
(283, 16, 128, '2022-10-27 18:32:53', '2022-10-27 18:32:53'),
(284, 21, 129, '2022-10-28 16:43:24', '2022-10-28 16:43:24'),
(285, 16, 129, '2022-10-28 16:43:24', '2022-10-28 16:43:24'),
(286, 20, 130, '2022-10-29 16:51:24', '2022-10-29 16:51:24'),
(287, 16, 130, '2022-10-29 16:51:24', '2022-10-29 16:51:24'),
(288, 20, 131, '2022-10-29 17:11:01', '2022-10-29 17:11:01'),
(289, 16, 131, '2022-10-29 17:11:01', '2022-10-29 17:11:01'),
(290, 20, 132, '2022-10-29 17:44:09', '2022-10-29 17:44:09'),
(291, 16, 132, '2022-10-29 17:44:09', '2022-10-29 17:44:09'),
(292, 21, 133, '2022-10-31 17:01:39', '2022-10-31 17:01:39'),
(293, 16, 133, '2022-10-31 17:01:39', '2022-10-31 17:01:39'),
(294, 21, 134, '2022-10-31 17:37:07', '2022-10-31 17:37:07'),
(295, 16, 134, '2022-10-31 17:37:07', '2022-10-31 17:37:07'),
(296, 21, 135, '2022-10-31 18:27:05', '2022-10-31 18:27:05'),
(297, 16, 135, '2022-10-31 18:27:05', '2022-10-31 18:27:05'),
(298, 20, 136, '2022-10-31 20:18:02', '2022-10-31 20:18:02'),
(299, 16, 136, '2022-10-31 20:18:02', '2022-10-31 20:18:02'),
(300, 20, 137, '2022-10-31 20:18:55', '2022-10-31 20:18:55'),
(301, 16, 137, '2022-10-31 20:18:55', '2022-10-31 20:18:55'),
(302, 20, 138, '2022-10-31 20:19:56', '2022-10-31 20:19:56'),
(303, 16, 138, '2022-10-31 20:19:56', '2022-10-31 20:19:56'),
(304, 20, 139, '2022-10-31 20:21:00', '2022-10-31 20:21:00'),
(305, 16, 139, '2022-10-31 20:21:00', '2022-10-31 20:21:00'),
(306, 20, 140, '2022-11-01 17:19:24', '2022-11-01 17:19:24'),
(307, 16, 140, '2022-11-01 17:19:24', '2022-11-01 17:19:24'),
(308, 20, 141, '2022-11-01 17:51:25', '2022-11-01 17:51:25'),
(309, 16, 141, '2022-11-01 17:51:25', '2022-11-01 17:51:25'),
(310, 20, 142, '2022-11-01 19:52:02', '2022-11-01 19:52:02'),
(311, 16, 142, '2022-11-01 19:52:02', '2022-11-01 19:52:02'),
(312, 20, 143, '2022-11-02 18:49:36', '2022-11-02 18:49:36'),
(313, 16, 143, '2022-11-02 18:49:36', '2022-11-02 18:49:36'),
(314, 20, 144, '2022-11-02 18:52:28', '2022-11-02 18:52:28'),
(315, 16, 144, '2022-11-02 18:52:28', '2022-11-02 18:52:28'),
(316, 20, 145, '2022-11-02 18:58:07', '2022-11-02 18:58:07'),
(317, 16, 145, '2022-11-02 18:58:07', '2022-11-02 18:58:07'),
(318, 20, 146, '2022-11-02 20:01:46', '2022-11-02 20:01:46'),
(319, 16, 146, '2022-11-02 20:01:46', '2022-11-02 20:01:46'),
(320, 20, 147, '2022-11-03 17:04:59', '2022-11-03 17:04:59'),
(321, 16, 147, '2022-11-03 17:04:59', '2022-11-03 17:04:59'),
(322, 20, 148, '2022-11-03 17:33:15', '2022-11-03 17:33:15'),
(323, 16, 148, '2022-11-03 17:33:15', '2022-11-03 17:33:15'),
(324, 20, 149, '2022-11-03 17:57:49', '2022-11-03 17:57:49'),
(325, 16, 149, '2022-11-03 17:57:49', '2022-11-03 17:57:49'),
(326, 20, 150, '2022-11-04 16:57:23', '2022-11-04 16:57:23'),
(327, 16, 150, '2022-11-04 16:57:23', '2022-11-04 16:57:23'),
(328, 20, 151, '2022-11-05 18:40:51', '2022-11-05 18:40:51'),
(329, 16, 151, '2022-11-05 18:40:51', '2022-11-05 18:40:51'),
(330, 20, 152, '2022-11-05 19:55:26', '2022-11-05 19:55:26'),
(331, 16, 152, '2022-11-05 19:55:26', '2022-11-05 19:55:26'),
(332, 20, 153, '2022-11-05 19:58:16', '2022-11-05 19:58:16'),
(333, 16, 153, '2022-11-05 19:58:16', '2022-11-05 19:58:16'),
(334, 26, 136, '2022-11-07 21:39:15', '2022-11-07 21:39:15'),
(335, 26, 137, '2022-11-07 21:39:56', '2022-11-07 21:39:56'),
(336, 26, 98, '2022-11-07 21:45:16', '2022-11-07 21:45:16'),
(337, 27, 108, '2022-11-07 21:45:57', '2022-11-07 21:45:57'),
(338, 26, 127, '2022-11-07 21:58:45', '2022-11-07 21:58:45'),
(339, 26, 143, '2022-11-07 21:59:28', '2022-11-07 21:59:28'),
(340, 26, 152, '2022-11-07 21:59:58', '2022-11-07 21:59:58'),
(341, 27, 104, '2022-11-07 22:03:56', '2022-11-07 22:03:56'),
(342, 27, 111, '2022-11-07 22:04:50', '2022-11-07 22:04:50'),
(343, 20, 154, '2022-11-07 22:15:54', '2022-11-07 22:15:54'),
(344, 16, 154, '2022-11-07 22:15:54', '2022-11-07 22:15:54'),
(345, 20, 155, '2022-11-07 22:17:29', '2022-11-07 22:17:29'),
(346, 16, 155, '2022-11-07 22:17:29', '2022-11-07 22:17:29'),
(347, 20, 156, '2022-11-07 22:21:12', '2022-11-07 22:21:12'),
(348, 16, 156, '2022-11-07 22:21:12', '2022-11-07 22:21:12'),
(349, 26, 147, '2022-11-08 17:26:26', '2022-11-08 17:26:26'),
(350, 26, 156, '2022-11-08 17:26:57', '2022-11-08 17:26:57'),
(351, 21, 157, '2022-11-08 17:55:17', '2022-11-08 17:55:17'),
(352, 16, 157, '2022-11-08 17:55:17', '2022-11-08 17:55:17'),
(353, 26, 118, '2022-11-08 22:05:11', '2022-11-08 22:05:11'),
(354, 20, 158, '2022-11-09 18:09:35', '2022-11-09 18:09:35'),
(355, 16, 158, '2022-11-09 18:09:35', '2022-11-09 18:09:35'),
(356, 21, 159, '2022-11-09 18:11:58', '2022-11-09 18:11:58'),
(357, 16, 159, '2022-11-09 18:11:58', '2022-11-09 18:11:58'),
(358, 20, 160, '2022-11-09 19:16:23', '2022-11-09 19:16:23'),
(359, 16, 160, '2022-11-09 19:16:23', '2022-11-09 19:16:23'),
(360, 20, 161, '2022-11-09 19:18:07', '2022-11-09 19:18:07'),
(361, 16, 161, '2022-11-09 19:18:07', '2022-11-09 19:18:07'),
(362, 21, 162, '2022-11-09 19:53:19', '2022-11-09 19:53:19'),
(363, 16, 162, '2022-11-09 19:53:19', '2022-11-09 19:53:19'),
(364, 21, 163, '2022-11-10 18:13:59', '2022-11-10 18:13:59'),
(365, 16, 163, '2022-11-10 18:13:59', '2022-11-10 18:13:59'),
(366, 20, 164, '2022-11-10 18:43:59', '2022-11-10 18:43:59'),
(367, 16, 164, '2022-11-10 18:43:59', '2022-11-10 18:43:59'),
(368, 21, 165, '2022-11-10 18:44:13', '2022-11-10 18:44:13'),
(369, 16, 165, '2022-11-10 18:44:13', '2022-11-10 18:44:13'),
(370, 20, 166, '2022-11-10 18:45:47', '2022-11-10 18:45:47'),
(371, 16, 166, '2022-11-10 18:45:47', '2022-11-10 18:45:47'),
(372, 20, 167, '2022-11-10 18:51:28', '2022-11-10 18:51:28'),
(373, 16, 167, '2022-11-10 18:51:28', '2022-11-10 18:51:28'),
(374, 21, 168, '2022-11-10 19:28:19', '2022-11-10 19:28:19'),
(375, 16, 168, '2022-11-10 19:28:19', '2022-11-10 19:28:19'),
(376, 20, 169, '2022-11-10 19:30:02', '2022-11-10 19:30:02'),
(377, 16, 169, '2022-11-10 19:30:02', '2022-11-10 19:30:02'),
(378, 20, 170, '2022-11-10 19:32:11', '2022-11-10 19:32:11'),
(379, 16, 170, '2022-11-10 19:32:11', '2022-11-10 19:32:11'),
(380, 20, 171, '2022-11-10 19:38:20', '2022-11-10 19:38:20'),
(381, 16, 171, '2022-11-10 19:38:20', '2022-11-10 19:38:20'),
(382, 21, 172, '2022-11-11 18:05:46', '2022-11-11 18:05:46'),
(383, 16, 172, '2022-11-11 18:05:46', '2022-11-11 18:05:46'),
(384, 21, 173, '2022-11-11 18:29:33', '2022-11-11 18:29:33'),
(385, 16, 173, '2022-11-11 18:29:33', '2022-11-11 18:29:33'),
(386, 26, 164, '2022-11-12 17:32:47', '2022-11-12 17:32:47'),
(387, 27, 167, '2022-11-12 17:35:54', '2022-11-12 17:35:54'),
(388, 20, 174, '2022-11-12 18:18:21', '2022-11-12 18:18:21'),
(389, 16, 174, '2022-11-12 18:18:21', '2022-11-12 18:18:21'),
(390, 20, 175, '2022-11-12 18:25:26', '2022-11-12 18:25:26'),
(391, 16, 175, '2022-11-12 18:25:26', '2022-11-12 18:25:26'),
(392, 20, 176, '2022-11-12 18:39:28', '2022-11-12 18:39:28'),
(393, 16, 176, '2022-11-12 18:39:28', '2022-11-12 18:39:28'),
(394, 20, 177, '2022-11-12 19:26:30', '2022-11-12 19:26:30'),
(395, 16, 177, '2022-11-12 19:26:30', '2022-11-12 19:26:30'),
(396, 20, 178, '2022-11-12 19:27:22', '2022-11-12 19:27:22'),
(397, 16, 178, '2022-11-12 19:27:22', '2022-11-12 19:27:22'),
(398, 20, 179, '2022-11-12 20:40:24', '2022-11-12 20:40:24'),
(399, 16, 179, '2022-11-12 20:40:24', '2022-11-12 20:40:24'),
(400, 27, 162, '2022-11-17 19:14:33', '2022-11-17 19:14:33'),
(401, 21, 180, '2022-11-17 19:17:09', '2022-11-17 19:17:09'),
(402, 16, 180, '2022-11-17 19:17:09', '2022-11-17 19:17:09'),
(403, 27, 176, '2022-11-17 19:26:32', '2022-11-17 19:26:32'),
(404, 27, 178, '2022-11-17 19:27:04', '2022-11-17 19:27:04'),
(405, 21, 181, '2022-11-17 19:42:01', '2022-11-17 19:42:01'),
(406, 16, 181, '2022-11-17 19:42:01', '2022-11-17 19:42:01'),
(407, 21, 182, '2022-11-17 20:04:34', '2022-11-17 20:04:34'),
(408, 16, 182, '2022-11-17 20:04:34', '2022-11-17 20:04:34'),
(409, 26, 180, '2022-11-18 17:41:53', '2022-11-18 17:41:53'),
(410, 26, 181, '2022-11-18 17:42:19', '2022-11-18 17:42:19'),
(411, 26, 182, '2022-11-18 17:42:51', '2022-11-18 17:42:51'),
(412, 21, 183, '2022-11-18 17:53:39', '2022-11-18 17:53:39'),
(413, 16, 183, '2022-11-18 17:53:39', '2022-11-18 17:53:39'),
(414, 21, 184, '2022-11-18 18:49:30', '2022-11-18 18:49:30'),
(415, 16, 184, '2022-11-18 18:49:30', '2022-11-18 18:49:30'),
(416, 21, 185, '2022-11-19 17:59:06', '2022-11-19 17:59:06'),
(417, 16, 185, '2022-11-19 17:59:06', '2022-11-19 17:59:06'),
(418, 21, 186, '2022-11-19 18:24:55', '2022-11-19 18:24:55'),
(419, 16, 186, '2022-11-19 18:24:55', '2022-11-19 18:24:55'),
(420, 21, 187, '2022-11-19 19:04:23', '2022-11-19 19:04:23'),
(421, 16, 187, '2022-11-19 19:04:23', '2022-11-19 19:04:23'),
(422, 27, 89, '2022-11-21 18:52:01', '2022-11-21 18:52:01'),
(423, 21, 188, '2022-11-21 18:56:47', '2022-11-21 18:56:47'),
(424, 16, 188, '2022-11-21 18:56:47', '2022-11-21 18:56:47'),
(425, 21, 189, '2022-11-21 19:22:17', '2022-11-21 19:22:17'),
(426, 16, 189, '2022-11-21 19:22:17', '2022-11-21 19:22:17'),
(427, 27, 114, '2022-11-21 19:33:47', '2022-11-21 19:33:47'),
(428, 21, 190, '2022-11-21 20:14:09', '2022-11-21 20:14:09'),
(429, 16, 190, '2022-11-21 20:14:09', '2022-11-21 20:14:09'),
(430, 21, 191, '2022-11-22 17:47:54', '2022-11-22 17:47:54'),
(431, 16, 191, '2022-11-22 17:47:54', '2022-11-22 17:47:54'),
(432, 20, 192, '2022-11-22 19:28:09', '2022-11-22 19:28:09'),
(433, 16, 192, '2022-11-22 19:28:09', '2022-11-22 19:28:09'),
(434, 20, 193, '2022-11-22 19:29:05', '2022-11-22 19:29:05'),
(435, 16, 193, '2022-11-22 19:29:05', '2022-11-22 19:29:05'),
(436, 20, 194, '2022-11-23 20:02:50', '2022-11-23 20:02:50'),
(437, 16, 194, '2022-11-23 20:02:50', '2022-11-23 20:02:50'),
(438, 20, 195, '2022-11-23 20:04:04', '2022-11-23 20:04:04'),
(439, 16, 195, '2022-11-23 20:04:04', '2022-11-23 20:04:04'),
(440, 20, 196, '2022-11-23 20:05:09', '2022-11-23 20:05:09'),
(441, 16, 196, '2022-11-23 20:05:09', '2022-11-23 20:05:09'),
(442, 20, 197, '2022-11-23 20:06:04', '2022-11-23 20:06:04'),
(443, 16, 197, '2022-11-23 20:06:04', '2022-11-23 20:06:04'),
(444, 21, 198, '2022-11-23 21:28:43', '2022-11-23 21:28:43'),
(445, 16, 198, '2022-11-23 21:28:43', '2022-11-23 21:28:43'),
(446, 21, 199, '2022-11-24 18:55:39', '2022-11-24 18:55:39'),
(447, 16, 199, '2022-11-24 18:55:39', '2022-11-24 18:55:39'),
(448, 21, 200, '2022-11-24 18:59:08', '2022-11-24 18:59:08'),
(449, 16, 200, '2022-11-24 18:59:08', '2022-11-24 18:59:08'),
(450, 21, 201, '2022-11-24 19:01:35', '2022-11-24 19:01:35'),
(451, 16, 201, '2022-11-24 19:01:35', '2022-11-24 19:01:35'),
(452, 21, 202, '2022-11-24 19:02:56', '2022-11-24 19:02:56'),
(453, 16, 202, '2022-11-24 19:02:56', '2022-11-24 19:02:56'),
(454, 21, 203, '2022-11-24 19:04:46', '2022-11-24 19:04:46'),
(455, 16, 203, '2022-11-24 19:04:46', '2022-11-24 19:04:46'),
(456, 20, 204, '2022-11-24 19:23:25', '2022-11-24 19:23:25'),
(457, 16, 204, '2022-11-24 19:23:25', '2022-11-24 19:23:25'),
(458, 20, 205, '2022-11-24 19:27:59', '2022-11-24 19:27:59'),
(459, 16, 205, '2022-11-24 19:27:59', '2022-11-24 19:27:59'),
(460, 44, 199, '2022-11-24 19:54:42', '2022-11-24 19:54:42'),
(461, 21, 206, '2022-11-24 21:36:37', '2022-11-24 21:36:37'),
(462, 16, 206, '2022-11-24 21:36:37', '2022-11-24 21:36:37'),
(463, 26, 197, '2022-11-24 22:18:01', '2022-11-24 22:18:01'),
(464, 21, 207, '2022-11-25 17:24:48', '2022-11-25 17:24:48'),
(465, 16, 207, '2022-11-25 17:24:48', '2022-11-25 17:24:48'),
(466, 21, 208, '2022-11-25 18:02:35', '2022-11-25 18:02:35'),
(467, 16, 208, '2022-11-25 18:02:35', '2022-11-25 18:02:35'),
(468, 20, 209, '2022-11-25 18:17:56', '2022-11-25 18:17:56'),
(469, 16, 209, '2022-11-25 18:17:56', '2022-11-25 18:17:56'),
(470, 21, 210, '2022-11-25 18:20:16', '2022-11-25 18:20:16'),
(471, 16, 210, '2022-11-25 18:20:16', '2022-11-25 18:20:16'),
(472, 21, 211, '2022-11-25 18:50:51', '2022-11-25 18:50:51'),
(473, 16, 211, '2022-11-25 18:50:51', '2022-11-25 18:50:51'),
(474, 21, 212, '2022-11-25 19:07:33', '2022-11-25 19:07:33'),
(475, 16, 212, '2022-11-25 19:07:33', '2022-11-25 19:07:33'),
(476, 21, 213, '2022-11-25 20:41:25', '2022-11-25 20:41:25'),
(477, 16, 213, '2022-11-25 20:41:25', '2022-11-25 20:41:25'),
(478, 20, 214, '2022-11-26 18:33:54', '2022-11-26 18:33:54'),
(479, 16, 214, '2022-11-26 18:33:54', '2022-11-26 18:33:54'),
(480, 20, 215, '2022-11-26 19:11:02', '2022-11-26 19:11:02'),
(481, 16, 215, '2022-11-26 19:11:02', '2022-11-26 19:11:02'),
(482, 20, 216, '2022-11-26 19:11:48', '2022-11-26 19:11:48'),
(483, 16, 216, '2022-11-26 19:11:48', '2022-11-26 19:11:48'),
(484, 20, 217, '2022-11-26 19:19:32', '2022-11-26 19:19:32'),
(485, 16, 217, '2022-11-26 19:19:32', '2022-11-26 19:19:32'),
(486, 20, 218, '2022-11-26 19:21:22', '2022-11-26 19:21:22'),
(487, 16, 218, '2022-11-26 19:21:22', '2022-11-26 19:21:22'),
(488, 26, 186, '2022-11-26 21:34:10', '2022-11-26 21:34:10'),
(489, 44, 203, '2022-11-26 21:34:45', '2022-11-26 21:34:45'),
(490, 44, 207, '2022-11-26 21:35:14', '2022-11-26 21:35:14'),
(491, 44, 212, '2022-11-26 21:35:49', '2022-11-26 21:35:49'),
(492, 20, 219, '2022-11-28 18:16:19', '2022-11-28 18:16:19'),
(493, 16, 219, '2022-11-28 18:16:19', '2022-11-28 18:16:19'),
(494, 20, 220, '2022-11-28 19:30:17', '2022-11-28 19:30:17'),
(495, 16, 220, '2022-11-28 19:30:17', '2022-11-28 19:30:17'),
(496, 20, 221, '2022-11-28 19:41:09', '2022-11-28 19:41:09'),
(497, 16, 221, '2022-11-28 19:41:09', '2022-11-28 19:41:09'),
(498, 21, 222, '2022-11-28 21:39:44', '2022-11-28 21:39:44'),
(499, 16, 222, '2022-11-28 21:39:44', '2022-11-28 21:39:44'),
(500, 21, 223, '2022-11-28 21:42:46', '2022-11-28 21:42:46'),
(501, 16, 223, '2022-11-28 21:42:46', '2022-11-28 21:42:46'),
(502, 21, 224, '2022-11-28 21:45:50', '2022-11-28 21:45:50'),
(503, 16, 224, '2022-11-28 21:45:50', '2022-11-28 21:45:50'),
(504, 21, 225, '2022-11-28 21:48:04', '2022-11-28 21:48:04'),
(505, 16, 225, '2022-11-28 21:48:04', '2022-11-28 21:48:04'),
(506, 21, 226, '2022-11-28 21:51:12', '2022-11-28 21:51:12'),
(507, 16, 226, '2022-11-28 21:51:12', '2022-11-28 21:51:12'),
(508, 21, 227, '2022-11-28 22:00:30', '2022-11-28 22:00:30'),
(509, 16, 227, '2022-11-28 22:00:30', '2022-11-28 22:00:30'),
(510, 21, 228, '2022-11-28 22:05:06', '2022-11-28 22:05:06'),
(511, 16, 228, '2022-11-28 22:05:06', '2022-11-28 22:05:06'),
(512, 20, 229, '2022-11-29 18:34:00', '2022-11-29 18:34:00'),
(513, 16, 229, '2022-11-29 18:34:00', '2022-11-29 18:34:00'),
(514, 20, 230, '2022-11-29 18:47:53', '2022-11-29 18:47:53'),
(515, 16, 230, '2022-11-29 18:47:53', '2022-11-29 18:47:53'),
(516, 20, 231, '2022-11-29 19:35:58', '2022-11-29 19:35:58'),
(517, 16, 231, '2022-11-29 19:35:58', '2022-11-29 19:35:58'),
(518, 20, 232, '2022-11-29 19:37:08', '2022-11-29 19:37:08'),
(519, 16, 232, '2022-11-29 19:37:08', '2022-11-29 19:37:08'),
(520, 21, 233, '2022-11-29 21:17:00', '2022-11-29 21:17:00'),
(521, 16, 233, '2022-11-29 21:17:00', '2022-11-29 21:17:00'),
(522, 21, 234, '2022-11-29 21:18:25', '2022-11-29 21:18:25'),
(523, 16, 234, '2022-11-29 21:18:25', '2022-11-29 21:18:25'),
(524, 21, 235, '2022-11-29 21:20:39', '2022-11-29 21:20:39'),
(525, 16, 235, '2022-11-29 21:20:39', '2022-11-29 21:20:39'),
(526, 21, 236, '2022-11-29 21:22:13', '2022-11-29 21:22:13'),
(527, 16, 236, '2022-11-29 21:22:13', '2022-11-29 21:22:13'),
(528, 21, 237, '2022-11-29 21:23:27', '2022-11-29 21:23:27'),
(529, 16, 237, '2022-11-29 21:23:27', '2022-11-29 21:23:27'),
(530, 21, 238, '2022-11-30 18:24:01', '2022-11-30 18:24:01'),
(531, 16, 238, '2022-11-30 18:24:01', '2022-11-30 18:24:01'),
(532, 21, 239, '2022-11-30 18:25:52', '2022-11-30 18:25:52'),
(533, 16, 239, '2022-11-30 18:25:52', '2022-11-30 18:25:52'),
(534, 21, 240, '2022-11-30 18:27:19', '2022-11-30 18:27:19'),
(535, 16, 240, '2022-11-30 18:27:19', '2022-11-30 18:27:19'),
(536, 27, 226, '2022-11-30 20:10:56', '2022-11-30 20:10:56'),
(537, 38, 227, '2022-11-30 20:12:06', '2022-11-30 20:12:06'),
(538, 20, 241, '2022-11-30 20:53:00', '2022-11-30 20:53:00'),
(539, 16, 241, '2022-11-30 20:53:00', '2022-11-30 20:53:00'),
(540, 20, 242, '2022-11-30 20:54:18', '2022-11-30 20:54:18'),
(541, 16, 242, '2022-11-30 20:54:18', '2022-11-30 20:54:18'),
(542, 20, 243, '2022-11-30 23:20:33', '2022-11-30 23:20:33'),
(543, 16, 243, '2022-11-30 23:20:33', '2022-11-30 23:20:33'),
(544, 20, 244, '2022-11-30 23:21:29', '2022-11-30 23:21:29'),
(545, 16, 244, '2022-11-30 23:21:29', '2022-11-30 23:21:29'),
(546, 20, 245, '2022-11-30 23:22:23', '2022-11-30 23:22:23'),
(547, 16, 245, '2022-11-30 23:22:23', '2022-11-30 23:22:23'),
(548, 20, 246, '2022-12-01 19:53:08', '2022-12-01 19:53:08'),
(549, 16, 246, '2022-12-01 19:53:08', '2022-12-01 19:53:08'),
(550, 20, 247, '2022-12-02 17:07:00', '2022-12-02 17:07:00'),
(551, 16, 247, '2022-12-02 17:07:00', '2022-12-02 17:07:00'),
(552, 20, 248, '2022-12-02 17:27:26', '2022-12-02 17:27:26'),
(553, 16, 248, '2022-12-02 17:27:26', '2022-12-02 17:27:26'),
(554, 20, 249, '2022-12-02 18:09:31', '2022-12-02 18:09:31'),
(555, 16, 249, '2022-12-02 18:09:31', '2022-12-02 18:09:31'),
(556, 44, 236, '2022-12-02 18:17:41', '2022-12-02 18:17:41'),
(557, 44, 228, '2022-12-02 18:18:16', '2022-12-02 18:18:16'),
(558, 44, 210, '2022-12-02 18:18:50', '2022-12-02 18:18:50'),
(559, 44, 208, '2022-12-02 18:19:45', '2022-12-02 18:19:45'),
(560, 13, 250, '2022-12-02 18:23:32', '2022-12-02 18:23:32'),
(561, 16, 250, '2022-12-02 18:23:32', '2022-12-02 18:23:32'),
(562, 44, 250, '2022-12-02 18:24:01', '2022-12-02 18:24:01'),
(563, 27, 244, '2022-12-02 18:27:13', '2022-12-02 18:27:13'),
(564, 26, 221, '2022-12-02 18:29:21', '2022-12-02 18:29:21'),
(565, 26, 220, '2022-12-02 18:30:43', '2022-12-02 18:30:43'),
(566, 27, 229, '2022-12-02 18:31:20', '2022-12-02 18:31:20'),
(567, 27, 230, '2022-12-02 18:32:06', '2022-12-02 18:32:06'),
(568, 20, 251, '2022-12-02 18:47:02', '2022-12-02 18:47:02'),
(569, 16, 251, '2022-12-02 18:47:02', '2022-12-02 18:47:02'),
(570, 20, 252, '2022-12-02 19:50:34', '2022-12-02 19:50:34'),
(571, 16, 252, '2022-12-02 19:50:34', '2022-12-02 19:50:34'),
(572, 44, 251, '2022-12-03 18:10:59', '2022-12-03 18:10:59'),
(573, 26, 214, '2022-12-03 18:11:41', '2022-12-03 18:11:41'),
(574, 44, 252, '2022-12-03 18:17:28', '2022-12-03 18:17:28'),
(575, 22, 257, '2022-12-04 01:19:25', '2022-12-04 01:19:25'),
(576, 24, 257, '2022-12-04 01:19:25', '2022-12-04 01:19:25'),
(577, 20, 258, '2022-12-05 18:33:19', '2022-12-05 18:33:19'),
(578, 16, 258, '2022-12-05 18:33:19', '2022-12-05 18:33:19'),
(579, 20, 259, '2022-12-05 19:23:49', '2022-12-05 19:23:49'),
(580, 16, 259, '2022-12-05 19:23:49', '2022-12-05 19:23:49'),
(581, 20, 260, '2022-12-05 19:25:16', '2022-12-05 19:25:16'),
(582, 16, 260, '2022-12-05 19:25:16', '2022-12-05 19:25:16'),
(583, 20, 261, '2022-12-05 19:51:21', '2022-12-05 19:51:21'),
(584, 16, 261, '2022-12-05 19:51:21', '2022-12-05 19:51:21'),
(585, 20, 262, '2022-12-06 18:19:41', '2022-12-06 18:19:41'),
(586, 16, 262, '2022-12-06 18:19:41', '2022-12-06 18:19:41'),
(587, 20, 263, '2022-12-06 19:03:37', '2022-12-06 19:03:37'),
(588, 16, 263, '2022-12-06 19:03:37', '2022-12-06 19:03:37'),
(589, 20, 264, '2022-12-06 22:53:49', '2022-12-06 22:53:49'),
(590, 16, 264, '2022-12-06 22:53:49', '2022-12-06 22:53:49'),
(591, 20, 265, '2022-12-06 22:54:48', '2022-12-06 22:54:48'),
(592, 16, 265, '2022-12-06 22:54:48', '2022-12-06 22:54:48'),
(593, 44, 261, '2022-12-07 17:08:15', '2022-12-07 17:08:15'),
(594, 20, 266, '2022-12-07 18:24:51', '2022-12-07 18:24:51'),
(595, 16, 266, '2022-12-07 18:24:51', '2022-12-07 18:24:51'),
(596, 20, 267, '2022-12-07 18:52:00', '2022-12-07 18:52:00'),
(597, 16, 267, '2022-12-07 18:52:00', '2022-12-07 18:52:00'),
(598, 20, 268, '2022-12-07 19:06:39', '2022-12-07 19:06:39'),
(599, 16, 268, '2022-12-07 19:06:39', '2022-12-07 19:06:39'),
(602, 20, 270, '2022-12-09 17:37:26', '2022-12-09 17:37:26'),
(601, 16, 269, '2022-12-07 19:32:38', '2022-12-07 19:32:38'),
(603, 16, 270, '2022-12-09 17:37:26', '2022-12-09 17:37:26'),
(604, 20, 271, '2022-12-09 17:38:15', '2022-12-09 17:38:15'),
(605, 16, 271, '2022-12-09 17:38:15', '2022-12-09 17:38:15'),
(606, 20, 272, '2022-12-09 17:41:06', '2022-12-09 17:41:06'),
(607, 16, 272, '2022-12-09 17:41:06', '2022-12-09 17:41:06'),
(608, 20, 273, '2022-12-09 17:41:45', '2022-12-09 17:41:45'),
(609, 16, 273, '2022-12-09 17:41:45', '2022-12-09 17:41:45'),
(610, 20, 274, '2022-12-09 17:43:03', '2022-12-09 17:43:03'),
(611, 16, 274, '2022-12-09 17:43:03', '2022-12-09 17:43:03'),
(612, 20, 275, '2022-12-09 17:43:52', '2022-12-09 17:43:52'),
(613, 16, 275, '2022-12-09 17:43:52', '2022-12-09 17:43:52'),
(614, 20, 276, '2022-12-09 17:49:10', '2022-12-09 17:49:10'),
(615, 16, 276, '2022-12-09 17:49:10', '2022-12-09 17:49:10'),
(616, 20, 277, '2022-12-09 17:49:51', '2022-12-09 17:49:51'),
(617, 16, 277, '2022-12-09 17:49:51', '2022-12-09 17:49:51'),
(618, 20, 278, '2022-12-09 19:41:11', '2022-12-09 19:41:11'),
(619, 16, 278, '2022-12-09 19:41:11', '2022-12-09 19:41:11'),
(620, 20, 279, '2022-12-09 19:42:27', '2022-12-09 19:42:27'),
(621, 16, 279, '2022-12-09 19:42:27', '2022-12-09 19:42:27'),
(622, 44, 274, '2022-12-10 16:50:03', '2022-12-10 16:50:03'),
(623, 20, 280, '2022-12-10 16:59:22', '2022-12-10 16:59:22'),
(624, 16, 280, '2022-12-10 16:59:22', '2022-12-10 16:59:22'),
(625, 20, 281, '2022-12-10 17:19:18', '2022-12-10 17:19:18'),
(626, 16, 281, '2022-12-10 17:19:18', '2022-12-10 17:19:18'),
(627, 27, 219, '2022-12-10 17:37:08', '2022-12-10 17:37:08'),
(628, 44, 247, '2022-12-10 17:42:10', '2022-12-10 17:42:10'),
(629, 44, 248, '2022-12-10 17:45:38', '2022-12-10 17:45:38'),
(630, 44, 271, '2022-12-10 17:46:54', '2022-12-10 17:46:54'),
(631, 44, 273, '2022-12-10 17:48:13', '2022-12-10 17:48:13'),
(632, 44, 277, '2022-12-10 17:54:58', '2022-12-10 17:54:58'),
(633, 20, 282, '2022-12-10 18:08:29', '2022-12-10 18:08:29'),
(634, 16, 282, '2022-12-10 18:08:29', '2022-12-10 18:08:29'),
(635, 20, 283, '2022-12-10 18:10:23', '2022-12-10 18:10:23'),
(636, 16, 283, '2022-12-10 18:10:23', '2022-12-10 18:10:23'),
(637, 20, 269, '2022-12-10 18:17:35', '2022-12-10 18:17:35'),
(638, 20, 284, '2022-12-10 19:01:51', '2022-12-10 19:01:51'),
(639, 16, 284, '2022-12-10 19:01:51', '2022-12-10 19:01:51'),
(640, 20, 285, '2022-12-10 19:23:23', '2022-12-10 19:23:23'),
(641, 16, 285, '2022-12-10 19:23:23', '2022-12-10 19:23:23'),
(642, 20, 286, '2022-12-12 17:47:56', '2022-12-12 17:47:56'),
(643, 16, 286, '2022-12-12 17:47:56', '2022-12-12 17:47:56'),
(644, 20, 287, '2022-12-12 18:31:32', '2022-12-12 18:31:32'),
(645, 16, 287, '2022-12-12 18:31:32', '2022-12-12 18:31:32'),
(646, 20, 288, '2022-12-12 20:27:01', '2022-12-12 20:27:01'),
(647, 16, 288, '2022-12-12 20:27:01', '2022-12-12 20:27:01'),
(648, 20, 289, '2022-12-12 20:27:44', '2022-12-12 20:27:44'),
(649, 16, 289, '2022-12-12 20:27:44', '2022-12-12 20:27:44'),
(650, 20, 290, '2022-12-12 20:28:26', '2022-12-12 20:28:26'),
(651, 16, 290, '2022-12-12 20:28:26', '2022-12-12 20:28:26'),
(652, 20, 291, '2022-12-13 18:31:33', '2022-12-13 18:31:33'),
(653, 16, 291, '2022-12-13 18:31:33', '2022-12-13 18:31:33'),
(654, 20, 292, '2022-12-13 18:35:08', '2022-12-13 18:35:08'),
(655, 16, 292, '2022-12-13 18:35:08', '2022-12-13 18:35:08'),
(656, 20, 293, '2022-12-13 19:10:38', '2022-12-13 19:10:38'),
(657, 16, 293, '2022-12-13 19:10:38', '2022-12-13 19:10:38'),
(658, 44, 288, '2022-12-13 23:01:17', '2022-12-13 23:01:17'),
(659, 44, 281, '2022-12-13 23:04:54', '2022-12-13 23:04:54'),
(660, 44, 259, '2022-12-13 23:06:44', '2022-12-13 23:06:44'),
(661, 44, 263, '2022-12-13 23:07:24', '2022-12-13 23:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_to_dos`
--

CREATE TABLE `user_to_dos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_windows`
--

CREATE TABLE `user_windows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `formula_type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` int(11) NOT NULL,
  `fixheight` float(8,2) DEFAULT NULL,
  `fixwidth` float(10,2) DEFAULT NULL,
  `outerheight` float(10,2) DEFAULT NULL,
  `outerwidth` float(10,2) DEFAULT NULL,
  `innerheight` float(10,2) DEFAULT NULL,
  `innerwidth` float(10,2) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assignto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `netwidth` int(11) DEFAULT NULL,
  `netheight` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_windows`
--

INSERT INTO `user_windows` (`id`, `user_id`, `formula_type`, `image_id`, `fixheight`, `fixwidth`, `outerheight`, `outerwidth`, `innerheight`, `innerwidth`, `size`, `projects`, `assignto`, `status`, `netwidth`, `netheight`, `created_by`, `created_at`, `updated_at`) VALUES
(7, 1, '[\"Outer frame 80MM 88MM 98MM\"]', 12, NULL, NULL, 615.60, 615.60, NULL, NULL, '', '', '43', 'on_hold', NULL, NULL, 1, '2022-11-17 22:38:28', '2022-11-20 00:00:37'),
(8, 1, '[\"Outer frame 80MM 88MM 98MM\"]', 12, NULL, NULL, 1530.00, 1225.20, NULL, NULL, '', '', '', '', NULL, NULL, 1, '2022-11-17 22:53:16', '2022-11-17 22:53:16'),
(12, 1, '[\"Outer frame 80MM 88MM 98MM\"]', 12, NULL, NULL, 920.40, 920.40, NULL, NULL, '', '3', '', '', NULL, NULL, 1, '2022-11-20 01:43:34', '2022-11-20 01:43:34'),
(13, 1, '[\"Outer frame 80MM 88MM 98MM\",\"sliding sash 55\"]', 13, NULL, NULL, 920.40, 920.40, 836.40, 459.20, '', '3', '', '', NULL, NULL, 1, '2022-11-20 01:43:46', '2022-11-20 01:43:46'),
(14, 1, '[\"Outer frame 80MM 88MM 98MM\"]', 12, NULL, NULL, 24390.00, 22256.40, NULL, NULL, '', '3', '', '', NULL, NULL, 1, '2022-11-22 22:32:09', '2022-11-22 22:32:09'),
(15, 1, '[\"Outer frame 80MM 88MM 98MM\"]', 12, NULL, NULL, 1834.80, 1834.80, NULL, NULL, '', '3', '', '', NULL, NULL, 1, '2022-11-22 22:37:56', '2022-11-22 22:37:56'),
(16, 1, '[\"Outer frame 80MM 88MM 98MM\"]', 12, NULL, NULL, 1834.80, 1834.80, NULL, NULL, '', '3', '', '', NULL, NULL, 1, '2022-11-22 23:10:22', '2022-11-22 23:10:22'),
(17, 1, '[\"Outer frame 80MM 88MM 98MM\",\"sliding sash 55\"]', 13, NULL, NULL, 1834.80, 1834.80, 1750.80, 916.40, '', '3', '', '', NULL, NULL, 1, '2022-11-22 23:12:16', '2022-11-22 23:12:16'),
(18, 1, '[\"Outer frame 80MM 88MM 98MM\",\"Sliding Sash Fix 55\"]', 16, 3579.60, 1866.80, 3663.60, 3663.60, 3579.60, 934.40, '', '3', '', '', NULL, NULL, 1, '2022-11-22 23:20:46', '2022-11-22 23:20:46'),
(19, 1, '[\"Outer frame 80MM 88MM 98MM\",\"sliding sash 66\"]', 14, NULL, NULL, 1225.20, 920.40, 1139.20, 462.20, '', '3', '', '', NULL, NULL, 1, '2022-11-25 21:26:49', '2022-11-25 21:26:49'),
(20, 1, '[\"Outer frame 80MM 88MM 98MM\",\"sliding sash 73\"]', 15, NULL, NULL, 920.40, 920.40, 834.40, 462.20, '', '3', '', '', NULL, NULL, 1, '2022-11-25 21:43:11', '2022-11-25 21:43:11'),
(21, 1, '[\"Outer frame 80MM 88MM 98MM\",\"sliding sash 55\"]', 13, NULL, NULL, 920.40, 920.40, 836.40, 459.20, '', '3', '', '', 899, 836, 1, '2022-11-25 23:49:49', '2022-11-25 23:49:49'),
(22, 1, '[\"Outer frame 80MM 88MM 98MM\",\"sliding sash 55\"]', 13, NULL, NULL, 615.60, 615.60, 531.60, 306.80, '', '3', '', '', 595, 532, 1, '2022-11-26 00:19:50', '2022-11-26 00:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `venders`
--

CREATE TABLE `venders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vender_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venders`
--

INSERT INTO `venders` (`id`, `vender_id`, `name`, `email`, `tax_number`, `password`, `contact`, `avatar`, `created_by`, `is_active`, `email_verified_at`, `billing_name`, `billing_country`, `billing_state`, `billing_city`, `billing_phone`, `billing_zip`, `billing_address`, `shipping_name`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_phone`, `shipping_zip`, `shipping_address`, `lang`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Muhammad Muhib', 'comhjhjpany@example.com', '12121', '$2y$10$09Y/zxXkTMc4J9KuKaGnNe7z06MN8EqJvD6Wpei/Ya8o1/gB0QDyq', '89898989', '', 1, 1, NULL, 'Muhammad Muhib', 'Pakistan', 'Wahcantt', 'wahcatt', '3110857792', '47040', 'pof Wahcantt\r\npof Wahcantt', 'Muhammad Muhib', 'Pakistan', 'Wahcantt', 'wahcatt', '3110857792', '47040', 'pof Wahcantt\r\npof Wahcantt', 'en', 0.00, NULL, '2022-09-21 22:46:32', '2022-11-15 20:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warning_to` int(11) NOT NULL,
  `warning_by` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warning_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_meetings`
--

CREATE TABLE `zoom_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` int(11) NOT NULL DEFAULT '0',
  `start_url` text COLLATE utf8mb4_unicode_ci,
  `join_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'waiting',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_payment_settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `allowances`
--
ALTER TABLE `allowances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allowance_options`
--
ALTER TABLE `allowance_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_payments`
--
ALTER TABLE `bill_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_products`
--
ALTER TABLE `bill_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_comments`
--
ALTER TABLE `bug_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_files`
--
ALTER TABLE `bug_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bug_statuses`
--
ALTER TABLE `bug_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_deals`
--
ALTER TABLE `client_deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_deals_client_id_foreign` (`client_id`),
  ADD KEY `client_deals_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_payment_settings`
--
ALTER TABLE `company_payment_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_payment_settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `company_policies`
--
ALTER TABLE `company_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `competencies`
--
ALTER TABLE `competencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_types`
--
ALTER TABLE `contract_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_notes`
--
ALTER TABLE `credit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custom_field_values_record_id_field_id_unique` (`record_id`,`field_id`),
  ADD KEY `custom_field_values_field_id_foreign` (`field_id`);

--
-- Indexes for table `custom_questions`
--
ALTER TABLE `custom_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_calls`
--
ALTER TABLE `deal_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_calls_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_discussions_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_emails`
--
ALTER TABLE `deal_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_emails_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_files`
--
ALTER TABLE `deal_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_files_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_tasks_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `debit_notes`
--
ALTER TABLE `debit_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_options`
--
ALTER TABLE `deduction_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_langs`
--
ALTER TABLE `email_template_langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimations`
--
ALTER TABLE `estimations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_employees`
--
ALTER TABLE `event_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formulas`
--
ALTER TABLE `formulas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_builders`
--
ALTER TABLE `form_builders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_builders_code_unique` (`code`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field_responses`
--
ALTER TABLE `form_field_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_responses`
--
ALTER TABLE `form_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_formulas`
--
ALTER TABLE `image_formulas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_formulas_image_id_foreign` (`image_id`),
  ADD KEY `image_formulas_formula_id_foreign` (`formula_id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_stages`
--
ALTER TABLE `job_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_entries`
--
ALTER TABLE `journal_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_items`
--
ALTER TABLE `journal_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_sections`
--
ALTER TABLE `landing_page_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_activity_logs`
--
ALTER TABLE `lead_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_calls`
--
ALTER TABLE `lead_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_calls_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_discussions_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_emails`
--
ALTER TABLE `lead_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_emails_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_files`
--
ALTER TABLE `lead_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_files_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `lead_stages`
--
ALTER TABLE `lead_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_options`
--
ALTER TABLE `loan_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_id_unique` (`order_id`);

--
-- Indexes for table `other_payments`
--
ALTER TABLE `other_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtimes`
--
ALTER TABLE `overtimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_types`
--
ALTER TABLE `payslip_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_slips`
--
ALTER TABLE `pay_slips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_types`
--
ALTER TABLE `performance_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pipelines`
--
ALTER TABLE `pipelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`);

--
-- Indexes for table `plan_requests`
--
ALTER TABLE `plan_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_services`
--
ALTER TABLE `product_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service_categories`
--
ALTER TABLE `product_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service_units`
--
ALTER TABLE `product_service_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectstages`
--
ALTER TABLE `projectstages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_email_templates`
--
ALTER TABLE `project_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_invoices`
--
ALTER TABLE `project_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_tasks`
--
ALTER TABLE `project_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_users`
--
ALTER TABLE `project_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_products`
--
ALTER TABLE `proposal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resignations`
--
ALTER TABLE `resignations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revenues`
--
ALTER TABLE `revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`);

--
-- Indexes for table `set_salaries`
--
ALTER TABLE `set_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_reports`
--
ALTER TABLE `stock_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_replies`
--
ALTER TABLE `support_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_checklists`
--
ALTER TABLE `task_checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_comments`
--
ALTER TABLE `task_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_files`
--
ALTER TABLE `task_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_stages`
--
ALTER TABLE `task_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terminations`
--
ALTER TABLE `terminations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termination_types`
--
ALTER TABLE `termination_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_trackers`
--
ALTER TABLE `time_trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_photos`
--
ALTER TABLE `track_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_coupons`
--
ALTER TABLE `user_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_deals`
--
ALTER TABLE `user_deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_deals_user_id_foreign` (`user_id`),
  ADD KEY `user_deals_deal_id_foreign` (`deal_id`);

--
-- Indexes for table `user_email_templates`
--
ALTER TABLE `user_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_leads`
--
ALTER TABLE `user_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_leads_user_id_foreign` (`user_id`),
  ADD KEY `user_leads_lead_id_foreign` (`lead_id`);

--
-- Indexes for table `user_to_dos`
--
ALTER TABLE `user_to_dos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_windows`
--
ALTER TABLE `user_windows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venders`
--
ALTER TABLE `venders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `venders_email_unique` (`email`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_payment_settings`
--
ALTER TABLE `admin_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allowances`
--
ALTER TABLE `allowances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `allowance_options`
--
ALTER TABLE `allowance_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcement_employees`
--
ALTER TABLE `announcement_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance_employees`
--
ALTER TABLE `attendance_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_transfers`
--
ALTER TABLE `bank_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_payments`
--
ALTER TABLE `bill_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill_products`
--
ALTER TABLE `bill_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_comments`
--
ALTER TABLE `bug_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_files`
--
ALTER TABLE `bug_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_statuses`
--
ALTER TABLE `bug_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `chart_of_account_sub_types`
--
ALTER TABLE `chart_of_account_sub_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chart_of_account_types`
--
ALTER TABLE `chart_of_account_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ch_messages`
--
ALTER TABLE `ch_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_deals`
--
ALTER TABLE `client_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_payment_settings`
--
ALTER TABLE `company_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_policies`
--
ALTER TABLE `company_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `competencies`
--
ALTER TABLE `competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contract_types`
--
ALTER TABLE `contract_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_notes`
--
ALTER TABLE `credit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_questions`
--
ALTER TABLE `custom_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deal_calls`
--
ALTER TABLE `deal_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_discussions`
--
ALTER TABLE `deal_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_emails`
--
ALTER TABLE `deal_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_files`
--
ALTER TABLE `deal_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `debit_notes`
--
ALTER TABLE `debit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deduction_options`
--
ALTER TABLE `deduction_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ducument_uploads`
--
ALTER TABLE `ducument_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template_langs`
--
ALTER TABLE `email_template_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimations`
--
ALTER TABLE `estimations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_employees`
--
ALTER TABLE `event_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formulas`
--
ALTER TABLE `formulas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `form_builders`
--
ALTER TABLE `form_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form_field_responses`
--
ALTER TABLE `form_field_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_responses`
--
ALTER TABLE `form_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `genrate_payslip_options`
--
ALTER TABLE `genrate_payslip_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `image_formulas`
--
ALTER TABLE `image_formulas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interview_schedules`
--
ALTER TABLE `interview_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_application_notes`
--
ALTER TABLE `job_application_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_on_boards`
--
ALTER TABLE `job_on_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_stages`
--
ALTER TABLE `job_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `journal_entries`
--
ALTER TABLE `journal_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `journal_items`
--
ALTER TABLE `journal_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `landing_page_sections`
--
ALTER TABLE `landing_page_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `lead_activity_logs`
--
ALTER TABLE `lead_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `lead_calls`
--
ALTER TABLE `lead_calls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lead_discussions`
--
ALTER TABLE `lead_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lead_emails`
--
ALTER TABLE `lead_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_files`
--
ALTER TABLE `lead_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lead_stages`
--
ALTER TABLE `lead_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_options`
--
ALTER TABLE `loan_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meeting_employees`
--
ALTER TABLE `meeting_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_payments`
--
ALTER TABLE `other_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `overtimes`
--
ALTER TABLE `overtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payslip_types`
--
ALTER TABLE `payslip_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_slips`
--
ALTER TABLE `pay_slips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `performance_types`
--
ALTER TABLE `performance_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pipelines`
--
ALTER TABLE `pipelines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plan_requests`
--
ALTER TABLE `plan_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_services`
--
ALTER TABLE `product_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_service_categories`
--
ALTER TABLE `product_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_service_units`
--
ALTER TABLE `product_service_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectstages`
--
ALTER TABLE `projectstages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_email_templates`
--
ALTER TABLE `project_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_invoices`
--
ALTER TABLE `project_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_tasks`
--
ALTER TABLE `project_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_users`
--
ALTER TABLE `project_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proposal_products`
--
ALTER TABLE `proposal_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resignations`
--
ALTER TABLE `resignations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revenues`
--
ALTER TABLE `revenues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `saturation_deductions`
--
ALTER TABLE `saturation_deductions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `set_salaries`
--
ALTER TABLE `set_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_reports`
--
ALTER TABLE `stock_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_replies`
--
ALTER TABLE `support_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_checklists`
--
ALTER TABLE `task_checklists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_comments`
--
ALTER TABLE `task_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_files`
--
ALTER TABLE `task_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_stages`
--
ALTER TABLE `task_stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terminations`
--
ALTER TABLE `terminations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `termination_types`
--
ALTER TABLE `termination_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_trackers`
--
ALTER TABLE `time_trackers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_photos`
--
ALTER TABLE `track_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_coupons`
--
ALTER TABLE `user_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_deals`
--
ALTER TABLE `user_deals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_email_templates`
--
ALTER TABLE `user_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_leads`
--
ALTER TABLE `user_leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662;

--
-- AUTO_INCREMENT for table `user_to_dos`
--
ALTER TABLE `user_to_dos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_windows`
--
ALTER TABLE `user_windows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `venders`
--
ALTER TABLE `venders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
