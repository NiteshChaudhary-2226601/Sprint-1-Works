-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 07:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2023-03-30 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(4, 'Nitesh@gmail.com', 2, '04/26/2023', '04/30/2023', 'I want to book this car.', 1, '2023-04-26 04:18:06'),
(5, 'Nitesh@gmail.com', 2, '5/5/2023', '5/7/2023', 'I want to book this car.', 1, '2023-05-05 07:03:53'),
(6, 'Nitesh@gmail.com', 1, '5/7/2023', '5/10/2023', 'I want this Car.', 0, '2023-05-07 18:11:05'),
(7, 'Nitesh@gmail.com', 1, '5/9/2023', '5/10/2023', 'I want to book this car.', 0, '2023-05-09 04:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2023-04-10 16:24:34', NULL),
(2, 'BMW', '2023-04-10 16:24:50', NULL),
(3, 'Audi', '2023-04-10 16:25:03', NULL),
(4, 'Nissan', '2023-04-10 16:25:13', NULL),
(5, 'Toyota', '2023-04-10 16:25:24', NULL),
(7, 'Tesla', '2023-04-10 06:22:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Kathmandu', 'admin@gmail.com', '9804576928');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Roshan', 'Roshan@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2023-05-05 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Introduction</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Welcome to our car rental system web app! By using our web app, you agree to the following terms and conditions.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Acceptance of Terms</span><br></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">By using our web app, you agree to be bound by these terms and conditions. If you do not agree to these terms, you may not use our web app.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Use of the Web App</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Our web app is intended for personal use only. You may not use our web app for commercial purposes or to engage in any illegal or unauthorized activities. You may not modify, distribute, transmit, display, perform, reproduce, publish, license, create derivative works from, transfer, or sell any information, software, products, or services obtained from our web app.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Registration</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">To use our web app, you must be at least 18 years old and provide accurate, complete, and up-to-date information during the registration process. You are responsible for maintaining the confidentiality of your account information and password, and for all activities that occur under your account.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Payment and Fees</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">You agree to pay all fees associated with using our web app, including rental fees, insurance fees, and any other fees or charges that may apply. We accept various payment methods, including credit cards and debit cards. If you fail to pay any fees or charges, we reserve the right to suspend or terminate your account.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Insurance</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">We offer various insurance options for our rental cars. If you choose to decline insurance, you will be responsible for any damages or losses that occur during your rental period.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Cancellation and Refunds</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">You may cancel your reservation at any time, but cancellation fees may apply. Refunds are subject to our refund policy, which may vary depending on the rental car, rental period, and other factors.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Liability</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">We are not liable for any damages or losses that occur during your rental period, except to the extent caused by our negligence or willful misconduct. We are not liable for any indirect, incidental, or consequential damages, including lost profits or revenue, arising from your use of our web app.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Intellectual Property</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">All content on our web app, including text, graphics, logos, and images, is owned by us or our licensors and is protected by copyright, trademark, and other intellectual property laws. You may not use our content without our permission.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Termination</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">We reserve the right to suspend or terminate your account at any time, for any reason, without notice. If we terminate your account, you may not create another account without our permission.</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Governing Law and Jurisdiction</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">These terms and conditions are governed by the laws of [insert state/country], and any disputes arising from these terms and conditions will be resolved in [insert city/county], [insert state/country].</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">Changes to the Terms and Conditions</span></p><p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: large; font-weight: 700;\">We reserve the right to modify these terms and conditions at any time, without notice. By continuing to use our web app after any modifications to these terms and conditions, you agree to be bound by the modified terms.</span></p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '																																								<div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">Privacy Policy</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">We take your privacy seriously at carrentalsystem.com and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, and disclose information about our users.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: large;\">Information We Collect</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">We may collect the following information when you use our website:</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Personal information such as your name, email address, phone number, and billing information.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Usage information such as your IP address, browser type, device type, and operating system.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Cookies and similar technologies to track your preferences and improve your experience on our website.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">How We Use Your Information</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">We may use your information for the following purposes:</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">To process your orders and provide you with our services.</span><br></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">To communicate with you about your orders, account, and promotions.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">To personalize your experience on our website and recommend products and services that may interest you.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">To analyze and improve our website, products, and services.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">How We Share Your Information</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">We may share your information with the following third parties:</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Service providers who assist us in providing our services, such as payment processors and shipping carriers.</span><br></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Analytics and advertising partners who help us analyze and promote our website and products.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Law enforcement and government agencies as required by law.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Your Choices</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">You may opt-out of receiving promotional emails from us by following the instructions in those emails. You may also disable cookies in your browser settings, but this may limit your access to certain features on our website.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">Security</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">We take reasonable measures to protect your information from unauthorized access, disclosure, and alteration. However, no website or online service can guarantee complete security.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">Children\'s Privacy</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">Our website is not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13. If you are a parent or guardian and believe your child has provided us with personal information, please contact us immediately.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">Changes to this Policy</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">We may update this Privacy Policy from time to time. The revised policy will be posted on our website with the updated effective date. We encourage you to review this policy periodically.</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">Contact Us</span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium;\">If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at vehiclerentalsystem@gmail.com.</span></div>\r\n										\r\n										\r\n										\r\n										'),
(3, 'About Us ', 'aboutus', '																														<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\">Welcome to Vehicle Rental System, your one-stop destination for car renting service. We are a team of passionate individuals who are dedicated to providing the best experience to our customers.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\">Our journey started in 2010, with a vision to create a platform that simplifies the process of providing car rental services. Since then, we have come a long way and have served countless customers who have put their trust in us.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\">At our web application, we believe in providing high-quality services and products that cater to the needs of our customers. We work tirelessly to ensure that our customers have a seamless experience while using our platform, and we strive to exceed their expectations at every step.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\">Our team comprises of experts in the field who have years of experience and are committed to delivering the best. We take pride in our work and believe in providing value to our customers, which has helped us build a loyal customer base over the years.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\">We are constantly evolving and adapting to the changing needs of the market to ensure that our customers get the best experience possible. We welcome feedback and suggestions from our customers, which helps us improve and serve them better.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\">Thank you for choosing online car rental. We look forward to serving you and making your experience a memorable one.</span></div>\r\n										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																														<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: bold; font-size: medium;\">How old do I need to be to rent a car?</span></div><div style=\"text-align: justify;\">The minimum age requirement to rent a car varies depending on the rental car company and the location where you are renting. In most cases, the minimum age requirement is 21 years old, but some rental companies may require drivers to be at least 25 years old. Some companies may also charge a surcharge for drivers under a certain age.<br></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-size: medium; font-weight: bold;\">What documents do I need to rent a car?</span><br></div><div><div style=\"text-align: justify;\">Generally, you will need a valid driver\'s license and a major credit card in your name. Some rental car companies may also require additional identification such as a passport or proof of insurance.</div></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">Do I need insurance to rent a car?</span><br></div><div><div style=\"text-align: justify;\">Most rental car companies offer insurance coverage as an option, but it is not required. Your personal auto insurance or credit card may also provide coverage for rental cars. It\'s important to check with your insurance provider or credit card company to understand what is covered and what is not.</div></div><div style=\"text-align: justify;\"><br></div><div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">Can I cancel my car rental reservation?</span></div><div style=\"text-align: justify;\">Yes, most car rental companies allow customers to cancel their reservation without penalty as long as it is done within a certain timeframe. The cancellation policy varies by company, so it\'s important to review the terms and conditions before making your reservation.</div></div><div style=\"text-align: justify;\"><br></div><div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">How much will it cost to rent a car?</span></div><div style=\"text-align: justify;\">The cost of renting a car varies depending on the rental car company, the type of car, and the location where you are renting. It\'s important to compare prices from multiple rental car companies to find the best deal.</div></div><div style=\"text-align: justify;\"><br></div><div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">Can I rent a car for a one-way trip?</span></div><div style=\"text-align: justify;\">Yes, most rental car companies offer one-way rentals, but there may be an additional fee for this service. It\'s important to check with the rental car company before making your reservation.</div></div><div style=\"text-align: justify;\"><br></div><div><div style=\"text-align: justify;\"><span style=\"font-weight: bold; font-size: medium;\">What should I do if I have an accident while driving a rental car?</span></div><div style=\"text-align: justify;\">If you have an accident while driving a rental car, you should immediately contact the rental car company and the local authorities. It\'s also important to take photos of the accident scene and exchange insurance information with any other parties involved.</div></div>\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'Nitesh@gmail.com', '2023-03-30 07:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'Nitesh@gmail.com', 'Best Web Application ever used. Easy to use and more faster and flexible. Extremely satisfied.', '2023-05-07 03:38:16', 1),
(4, 'Roshan@gmail.com', 'One of the best Web application ever used. It\'s user friendly and interactive as well for new users.', '2023-05-08 17:14:33', 1),
(5, 'Roshan@gmail.com', 'One of the best Web application ever used. It\'s user friendly and interactive as well for new users.', '2023-05-08 17:15:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Nitesh Chaudhary', 'Nitesh@gmail.com', '989fe852a5f2b6906d5df9322a8d5f2d', '9804636261', '01/01/2000', 'Gyaneshwor', 'Kathmandu', 'Nepal', '2023-03-30 03:57:35', '2023-05-09 04:56:34'),
(6, 'Roshan Lama', 'Roshan@gmail.com', '4a6a47288cbe9e516dcea97ed52876eb', '9854679523', '02/02/2000', 'Bouddha', 'Kathmandu', 'Nepal', '2023-05-08 17:11:25', '2023-05-08 19:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'iX', 2, 'Cutting-edge performance, technology, and luxury – with the comfort of a midsized SUV. Meet the BMW iX: the Luxury standard.', 25000, 'Petrol', 2023, 7, 'BMW Car.jpeg', 'Car3.jpeg', 'Car2.jpeg', 'Car4.jpeg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-05-05 11:46:23', '2023-05-07 04:03:00'),
(2, 'X7', 2, 'BMW X7 Sport Utility Vehicle®\r\n\r\nLuxurious finishes, elevated comfort, and modern technology: the 2024 BMW X7 is here and ready to exceed all expectations', 30000, 'CNG', 2024, 4, 'recent-car-3.jpg', 'trending-car-img-2.jpg', 'trending-car-img-1.jpg', 'support_faq_bg.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2023-05-07 10:44:33'),
(3, 'Altima', 4, 'Bolder, smarter, more confident\r\n\r\nFrom an aggressive new look to advanced connectivity and standard Nissan Safety Shield® 360, the 2023 Nissan Altima midsize sedan is ready to help you level up your drive in thrilling new ways. \r\n[*]\r\n  ', 15000, 'Petrol', 2023, 5, 'featured-img-3.jpg', 'Car3.jpeg', 'recent-car-4.jpg', 'listing_img3.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-05-01 16:18:20', '2023-05-07 10:46:24'),
(4, 'Swift', 1, 'Swift speaks performance, style and dynamism from every angle. Its new dual-tone sporty design is sharp and purposeful, and accentuated by the Sporty Cross Mesh Grille with Bold Chrome Accent, precision cut two-tone alloy wheels and LED projector headlamps. Limitless Thrills have never looked this good!', 1599, 'CNG', 2020, 5, 'featured-img-3.jpg', 'featured-img-1.jpg', 'Car4.jpeg', 'Car2.jpeg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 16:18:43', '2023-05-07 10:31:49'),
(5, 'Highlander', 5, 'Drive with purpose.\r\nArrive in style.\r\nWith advanced capabilities and a confident drive, Highlander puts you and your crew in position to upgrade your adventures.', 17999, 'Petrol', 2022, 7, 'recent-car-1.jpg', 'recent-car-2.jpg', 'recent-car-3.jpg', 'testimonial-bg.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2023-05-07 10:36:40'),
(6, 'Model S', 7, 'Model S Plaid has the quickest acceleration of any vehicle in production. Updated battery architecture for all Model S trims enables back-to-back track runs without performance degradation. Chat with a Tesla Advisor to learn more about Model S or schedule a demo drive today.', 95999, 'CNG', 2022, 7, 'featured-img-1.jpg', 'featured-img-2.jpg', 'trending-car-img-1.jpg', 'trending-car-img-2.jpg', 'trending-car-img-3.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-05-07 10:41:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
