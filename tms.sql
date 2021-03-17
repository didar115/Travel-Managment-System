-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 02:02 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '2020-11-10 11:18:49'),
(2, 'didar', '12345', '2020-12-24 14:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(11, 4, 'anuj@gmail.com', '2019-07-31', '2019-08-02', 'This is sample text for testing,', '2019-07-20 20:15:35', 0, NULL, NULL),
(12, 1, 'dider.alam115@gmail.com', '2020-12-25', '2020-12-26', 'yes i agree', '2020-12-24 14:22:27', 0, NULL, NULL),
(13, 2, 'dider.alam115@gmail.com', '2020-12-29', '2020-12-31', 'yes i agree', '2020-12-28 08:13:39', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'samiur', 'dider.alam115@gmail.com', '01795797300', 'cost', 'You are to expensive', '2020-12-24 14:48:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(8, 'dider.alam115@gmail.com', 'Cancellation', 'i want to cancel my booking', '2020-12-24 14:44:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '\r\n<h2>Terms and Conditions</h2>\r\n<p>The following booking conditions form the basis of your contract with Adventure Alternative Ltd (\"we\", \"us\" and \"our\"). Please read them carefully as they set out our respective rights and obligations. By asking us to confirm your booking, we are entitled to assume that you have had the opportunity to read and have read these booking conditions and agree to them.</p>\r\n<p>These booking conditions only apply to the trip arrangements which you book with us in the UK and which we agree to make, provide or perform (as applicable) as part of our contract with you. All references in these booking conditions to \"trip\", \"booking\", \"contract\" or \"arrangements\" mean such trip arrangements unless otherwise stated. References to \"departure\" mean the start date of these arrangements.</p>\r\n<p><strong>Moving Mountains fundraising commitment</strong></p>\r\n<p>Please note that if your arrangements relate to a fundraising trip on behalf of the <strong>Moving Mountains charity</strong> then it is a condition of your participation that you meet the fundraising target set by Moving Mountains. If you have failed to meet the fundraising target &nbsp;by four weeks before departure you will be liable to pay any shortfall between the amount you have raised and the target set. If you are unable or unwilling to pay any shortfall then we will be entitled to treat your booking as cancelled by you. In such circumstances the cancellation charges set out in paragraph 7 will apply. If we do not cancel straight away because you have promised to make payment or raise additional sums, the charges set out in clause 7 will apply on the date we then reasonably treat your booking as cancelled.</p>\r\n<p><strong>Booking your trip and payment details</strong></p>\r\n<p><strong>1. To&nbsp;make a booking</strong>&nbsp;please follow the procedure shown on our website or ask for an offline application form. The relevant application form needs to be completed by each person travelling. Where you are under 18 at the time of booking, the application form also needs to be signed by your parent or guardian or initialled online during the booking process. The completed booking form must then be sent to us together with the payments referred to in paragraph 2 below.</p>\r\n<p>Where we have already confirmed the availability of your chosen arrangements and you book within any applicable time limit for doing so, your booking will be treated as firm and a contract between us will come into existence as soon as we receive your completed application form and your deposit. We will then send you a receipt for all payments made and our invoice. Where we have not confirmed availability, your booking will be treated as firm and a contract between us will come into existence when we despatch our invoice to you. Where you book through our website without prior confirmation of availability, any electronic acknowledgement of your booking is not a confirmation of it. Please check your invoice carefully as soon as you receive it. Contact us immediately if any information which appears on the invoice or any other document appears to be incorrect or incomplete.</p>\r\n<p><strong>2. A&nbsp;minimum deposit</strong>&nbsp;of 1000tk. sterling per person must accompany the booking. We also offer and encourage an instalment plan with 50% of the trip payment made by a minimum of 3 months prior to departure. In any case the full balance must be received by us by six weeks prior to departure. Bookings made within six weeks require immediate full payment.</p>\r\n<p>If, for any reason, the balance (including any surcharge where applicable) is not received by the due date, we reserve the right to treat the booking as cancelled by you. If we do not cancel straight away because you have promised to make payment, you must pay the cancellation charges shown in paragraph 7 depending on the date we reasonably treat your booking as cancelled.</p>\r\n<p><strong>3. The&nbsp;price quoted</strong>&nbsp;for any trip covers the cost of the planning, the organisation and carrying out of the trip, including group equipment, supplies, accommodation, administration and staff, except for the following, for which the you must be responsible: vaccination fees, travel insurance, cost of travel to and from the start / return point of your trip including your international flights, cost of passport and visas, personal equipment and personal expenses while on the trip and any other expenses specifically excluded on the trip description and/or invoice.</p>\r\n<p>We reserve the right to make changes to and correct errors in quoted prices at any time before your trip is confirmed. We will advise you of any error of which we are aware and of the then applicable price at the time of booking.</p>\r\n<p>Once the price of your chosen trip has been confirmed at the time of booking, then subject to the correction of errors, we will only increase or decrease the price in the event of any change in our transportation costs or in dues, taxes or fees or in the exchange rates which have been used to calculate the cost of your trip.</p>\r\n<p><strong>A surcharge or refund</strong> (as applicable) will be payable, subject to the conditions set out in this clause. Even in the above cases, only if the amount of any increase in our costs exceeds 2% of the total cost of your trip will we levy a surcharge. If any surcharge is greater than 10% of the cost of your trip, you will be entitled to cancel your booking and receive a full refund of all monies you have paid to us or alternatively purchase another trip from us as referred to in paragraph 12.</p>\r\n<p>Where applicable, you have 14 days from the issue date printed on the surcharge invoice to tell us if you want to choose option (2) or (3) as set out in paragraph 12 below. If you do not tell us that you wish to choose either of these options within this period of time, we are entitled to assume that you do not wish to do so and will pay the surcharge. Any surcharge must be paid with the balance of the cost of the trip or within 14 days of the issue date printed on the surcharge invoice, whichever is the later. A refund will only be payable if the decrease in our costs exceeds 2% of the total cost of your trip as set out above. Where a refund is due, we will pay you the full amount of the decrease in our costs. We promise not to levy a surcharge within 30 days of departure and no refund will be payable during this period either.</p>\r\n<p><strong>4. Travel insurance:</strong>&nbsp;It is essential that you have adequate and appropriate cover for your trip including any adventurous activities such as trekking at altitude. Note that the majority of our trips do not require the use of climbing ropes and are all supervised. It is important to have adequate insurance which will cover cancellation costs from the date of booking as well as medical expenses (including evacuation and repatriation). If you travel against FCO advice, the validity of your insurance policy may be affected. Please read your policy details carefully and take them with you on your trip. It is your responsibility to ensure that the insurance cover you purchase is suitable and adequate for your particular needs.</p>\r\n<p>5.&nbsp;<strong>Health</strong>: Except as disclosed in your medical questionnaire, you are taken to confirm at the time of booking that you are in good health, physically capable of undertaking all aspects of the trip, and unaware of any reason why you may be unsuited to taking part or may be likely to suffer illness or injury during the trip, taking into account its challenges and purposes. If you are unable to give for this confirmation for any reason or have any medical condition or disability which may affect your trip, you must contact us before you submit your application form so that we can assist you in considering the suitability of the trip for you.</p>\r\n<p>If any information given in the application form or medical questionnaire is shown to be materially incorrect or incomplete, we reserve the right to cancel your booking or terminate your participation in the trip, depending on when we become aware of the true position. In this situation, cancellation charges as set out in paragraph 7 will apply and we will not be responsible for any costs or expenses incurred as a result.</p>\r\n<p><strong>6. Special requests</strong>: Please advise us of any special requests prior to making your booking. Where possible, we will endeavour to meet or arrange for our suppliers to meet any such request. Confirmation that a special request has been noted or passed on to the supplier or the inclusion of the special request on your invoice or any other documentation is not confirmation that the request will be met. Unless and until specifically confirmed, all special requests are subject to availability. For your own protection, you should obtain confirmation in writing that a special request will be complied (where it is possible to give this) where it is important to you.</p>\r\n<p>&nbsp;</p>\r\n\r\n'),
(2, 'privacy', '<div itemprop=\"articleBody\">\r\n		<h2>How we look after&nbsp;information about you</h2>\r\n<p><span id=\"docs-internal-guid-4a70b43a-1b26-eda3-5913-c0ac52a32cb5\">Privacy Policy updated 01 May 2020</span></p>\r\n<p><span id=\"docs-internal-guid-4a70b43a-1b26-eda3-5913-c0ac52a32cb5\">We understand that your privacy is very important to you and that you care about how your personal data is used. We respect and value your privacy and will only collect and use personal data in ways that are detailed here, and in a way that is consistent with our obligations and your rights under the General Data Protection Regulation (GDPR) and the Privacy and Electronic Communications Regulations. </span><br> <span style=\"font-weight: bold;\"></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: bold;\"><img src=\"https://cdn-cf.tucantravel.com/images/Icons/Tuc_icon11.png\" alt=\"\" style=\"display: inline; margin-left: auto; margin-right: 20px;\" border=\"0\"> <br><br><span style=\"font-weight: bold;\">What personal information do we collect?</span></span></p>\r\n<p dir=\"ltr\">In the course of providing our services, we collect or receive your personal information in a few different ways. Often you choose what information to provide, but sometimes we require certain information from you to use so that we can provide you those services.</p>\r\n<p dir=\"ltr\">We only collect personally identifiable data (such as names, addresses, email addresses and telephone numbers) when our visitors have voluntarily submitted it. Visitors may volunteer personal information in the following circumstances: to subscribe to newsletters, enter competitions, make general enquiries and book online. We do not collect personal information unless it has been submitted to us.</p>\r\n<p><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #e46c0a; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\"></span>If you visit our website, we may also collect information that is not personal information to improve the experience for all our customers. This information may include the pages you visit, your IP address, browser type and the date and time of your visit. We cannot identify you individually from this information. See our Cookie Policy</a> for further details.</p>\r\n<p><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #293896; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\"></span></p>\r\n<p><span id=\"docs-internal-guid-4a70b43a-1b27-16ea-db7e-92ca51567bf3\"></span></p>\r\n<p>&nbsp;</p>\r\n<div><img src=\"https://cdn-cf.tucantravel.com/images/Icons/Tuc_icon4.png\" alt=\"\" style=\"display: inline; margin-left: auto; margin-right: 10px;\" border=\"0\"></div>\r\n<p>&nbsp;</p>\r\n<p><span class=\"Apple-style-span\" style=\"font-weight: bold;\">How do we use your information?</span></p>\r\n<p dir=\"ltr\">We only use personally identifiable data for the purpose or service that it has been submitted. Your personally identifiable information is not publicly accessible and is only accessed by Tucan Travel when there is reason to do so (i.e. responding to your enquiry or handing your booking). With your permission we may also use your personal data for marketing purposes, which may include contacting you by email, telephone or post with information, news and offers on our products and services. You will not be sent any unlawful marketing or spam. We will always work to fully protect your rights and comply with our obligations under the General Data Protection Regulation (GDPR) and the Privacy and Electronic Communications (EC Directive) Regulations 2003 and you will always have the opportunity to opt-out or manage your preferences. To unsubscribe from an e-newsletter, or update your preferences, you can follow the prompts that are published at the end of each newsletter or you can reply to the newsletter asking to be unsubscribed.</p>\r\n<p dir=\"ltr\">When you make a service enquiry and provide your email address to Tucan Travel, your contact details may be retained. These details are captured securely. You have the right to direct us to cease further contact or to destroy the personal information we have collected about you.</p>\r\n<p dir=\"ltr\">In order to process bookings Tucan Travel is required to collect certain personal details from you. We have a lawful basis to retain personal information when bookings are made. These details will usually include the names and addresses of party members along with passport details, credit / debit card or other payment details and special requirements such as those relating to any disability or medical condition that may affect the holiday arrangements. We take full responsibility for ensuring that proper security measures are in place to protect your information. Personal booking information is captured securely and will not be stored for longer than necessary. We may therefore delete your personal information after a reasonable and responsible period of time.</p>\r\n<p>Personal and insurance information will be collected from all clients at the onset of your Component. Once you have travelled with Tucan Travel, you will be asked to complete a client questionnaire where we will collect further details about you and the tour you travelled on. You may also be asked to review your tour on trusted review websites or we may share these reviews with trusted review websites on your behalf.</p>\r\n<p><strong><span id=\"docs-internal-guid-4a70b43a-1b28-0ecf-61df-e46ed4337b0c\">Do you share my personal data?</span></strong></p>\r\n<p dir=\"ltr\">We may disclose your personal information to the following third parties some of which are based outside the European Union for the purposes of our operation, these may include, without limitation:</p>\r\n<p dir=\"ltr\">· &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mailing houses</p>\r\n<p dir=\"ltr\">· &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Payment processors</p>\r\n<p dir=\"ltr\">· &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Airlines</p>\r\n<p dir=\"ltr\">· &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Overseas tour companies or travel service providers</p>\r\n<p dir=\"ltr\">· &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IT Systems administrators</p>\r\n<p dir=\"ltr\">· &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Electronic network administrators</p>\r\n<p>We must pass some information on to the relevant suppliers of your travel arrangements (airlines, hotels, transport companies etc.). Where we disclose your personal information to overseas third parties, we require that they maintain appropriate standards of confidentiality and implement the correct security measures. Such suppliers may be outside continental Europe if your holiday is to take place or involve suppliers outside these countries. The information may also be provided to security or credit checking companies, public authorities such as customs / immigration if required by them, or as required by law.</p>\r\n<p dir=\"ltr\"><strong>How can I access my personal data?</strong></p>\r\n<p><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #293896; background-color: transparent; font-weight: bold; vertical-align: baseline; white-space: pre-wrap;\"></span>If you want to know what personal data we have about you, you can ask us for details of that personal data and for a copy of it (should any such personal data be held). We will need to verify your identity before disclosing personal information. Please allow up to 14 business days. There is no charge to make a request for your personal data.</p>\r\n<p dir=\"ltr\">In rare cases, particularly if your request is more complex, more time may be required up to a maximum of three months from the date we received your request. You will be kept fully informed of our progress.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cdn-cf.tucantravel.com/images/Icons/Tuc_icon2.png\" alt=\"\" style=\"display: inline; margin-left: auto; margin-right: 20px;\" border=\"0\"></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"Apple-style-span\" style=\"font-weight: bold;\">Social Media</span></p>\r\n<p dir=\"ltr\">If you make use of any Tucan Travel social media features, either on our website, an App or otherwise through a social media provider, we may access information about you via that social media provider in accordance with their policies. When using a social media feature and if you have chosen to include it in your social media account, we may access information such as your name, profile picture, gender, birthday, email address, town or district and any other information you have chosen to make available. Depending on the privacy settings of you and your friends, we may access information that you provide to a social media provider regarding your respective locations (“Location Data”) to provide you with relevant content. Please note that your Location Data may also be shared with your friends on a social media provider in accordance with your privacy settings for that social media provider. We may also access information from social media providers about your use of an App that we run on their website.</p>\r\n<p><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #293896; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\"></span></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cdn-cf.tucantravel.com/images/Icons/Tuc_icon6.png\" alt=\"\" style=\"display: inline; margin-left: auto; margin-right: 20px;\" border=\"0\"></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"Apple-style-span\" style=\"font-weight: bold;\">Photographs, Video &amp; Testimonials</span></p>\r\n<p dir=\"ltr\">Any image or video taken by any person during your holiday that contains your image or likeness may be used by Tucan Travel for promotional and marketing purposes without charge in all media including but not limited to booklets, advertising campaigns, website and social media channels. Feedback supplied to Tucan Travel may also be used in print and online for marketing and advertising purposes. This includes but not limited to, third party review sites and questionnaires supplied to us post-tour. Additionally any photographs, video and text sent to Tucan Travel must be the client’s own and by sending it, the client agrees that Tucan Travel can use it for advertising and marketing purposes.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cdn-cf.tucantravel.com/images/Icons/Tuc_icon3.png\" alt=\"\" style=\"display: inline; margin-left: auto; margin-right: 20px;\" border=\"0\"></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"Apple-style-span\" style=\"font-weight: bold;\">Links to Other Sites</span></p>\r\n<p dir=\"ltr\">Our website contains links to several third party websites. Tucan Travel cannot take any responsibility for the contents of these external websites nor their respective privacy policies. You should always review the privacy statements on the new websites that you visit.</p>\r\n<p><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #293896; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\"></span></p>\r\n<p><span id=\"docs-internal-guid-4a70b43a-1b57-ae27-1aca-0843339fc45d\"></span></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cdn-cf.tucantravel.com/images/Icons/Tuc_icon8.png\" alt=\"\" style=\"display: inline; margin-left: auto; margin-right: 20px;\" border=\"0\"></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"Apple-style-span\" style=\"font-weight: bold;\">Legal Disclaimer</span></p>\r\n<p dir=\"ltr\">Tucan Travel reserves the right to use or disclose any information as needed to satisfy any law, regulation or legal request, to protect the integrity of the site, to fulfil your requests, or to cooperate in any legal investigation.</p>\r\n<p dir=\"ltr\">In some limited circumstances we may be legally required to share certain personal data, which might include yours, if we are involved with legal proceedings or complying with legal obligations (e.g. a court order, the instructions of a government authority).</p>\r\n<p><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #293896; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\"></span></p>\r\n<p>&nbsp;</p>\r\n<p><span id=\"docs-internal-guid-4a70b43a-1b58-073d-0ccf-2e322cb6d0e5\"></span></p>\r\n<p><img src=\"https://cdn-cf.tucantravel.com/images/Icons/Tuc_icon7.png\" alt=\"\" style=\"display: inline; margin-left: auto; margin-right: 20px;\" border=\"0\"></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"Apple-style-span\" style=\"font-weight: bold;\">Privacy Legislation </span></p>\r\n<p>Tucan Travel supports the General Data Protection Regulation (GDPR) and the Privacy and Electronic Communications Regulations. For further information, we advise you consult the ICO Website</a>.</p>\r\n<p><span style=\"font-size: 12pt; font-family: \'Times New Roman\'; color: #293896; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;\"></span></p>\r\n<p><span id=\"docs-internal-guid-4a70b43a-1b58-3c1d-703e-6c6bc1fc3322\"></span></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cdn-cf.tucantravel.com/images/Icons/Tuc_icon15.png\" alt=\"\" style=\"display: inline; margin-left: auto; margin-right: 20px;\" border=\"0\"></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"Apple-style-span\" style=\"font-weight: bold;\">Questions?</span></p>\r\n<p>If you have any questions or would like to know more about our privacy policy, please e-mail us.</p> 	</div>'),
(3, 'aboutUs', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">BD-Traveller is a registered leading tourism developer and tour planner in Bangladesh. BD-Traveller is the proud member of Bangladesh Tourism Foundation (BTF). For the organized support, diverse destination and flexible pricing have made BD-Traveller a trustworthy place for the passionate traveler. At the same time, we offer the cheap package with the best support for the special days including holidays and the time of tourist season.\r\n\r\nNot to mention, BD-Traveller covers traveling all over the world considering your mind and taste. Every day, BD-Traveller Team is trying to add new areas in the travel sector. Every time a people goes on a tour he wants to enjoy the time to remove the monotony and enriching the new knowledge. In this case, we are secured and trying to arrange the things for increasing your entertaining parts.</span>'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address:Uttara,Dhaka,Bangladesh</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Sundarbans Trip', 'General', 'Khulna', 10000, 'Experience 3 Day inside the Largest Mangrove\r\nWildlife Expedition by the Forest\r\nSilent Boat Ride Inside the Forest\r\nExperience Guide & Security\r\nLuxurious Ship & Cabin Facilities\r\nExplore Creeks & Canals on a Silent Boat Ride\r\nWatch Wildlife from the Wat', 'Sundarban, is the only mangrove habitat in the world for Royal Bengal Tigers. Considering the great value of Sundarbans it has become now part of the world heritage area. Therefore, the forest is equally important to nature-loving tourists. In addition, it’s being important to the naturalists, ecologists, biologists and for scientific researchers as well. King Cobra, World’s longest venomous snake is also found in the jungles of Sundarbans. Shikra birds, spotted deer, and Lesser Adjutants are few of the animals living in this enchanting forest. You can find more on Sundarbans tour. Nothing can be more thrilling than watching a Monitor Lizards swimming across one of the channels, deer grazing at the end of the woods and colorful birds chirping happily in the trees while you take a relaxing boat ride.\r\n\r\nThe best time to visit the Sundarban is from mid-November to mid-February. During this time, in the morning for a few hours there might be fog, but gorgeous fog and the migratory birds. Then the days are sunny and warm. And at night, sometimes the sky would be so clear that you would just lie down and try to find yourself among the stars. You’ll get to explore these spots in Sundarban:\r\n\r\n> Karamjol Wildlife Conservation Site\r\n> Harbariya Eco-Tourism Site\r\n> Jamtola Point\r\n> Jamtola Sea Beach\r\n> Kochikhali Wilde Life Point\r\n> Kotka Sea Beach & Wildlife Point\r\n> Tiger Point', 'banner.jpg', '2020-11-10 14:23:44', '2020-12-24 13:01:18'),
(2, 'Sajek Valley Tour', 'Familly & Couple', 'Sajek Valley (Rangamati), Sajek, Bangladesh', 7000, '3 Nights & 2 Days\r\nStay at Nil Pahari Eco Resort / Gospel Eco Resort\r\nAlutila Cave Expedition\r\nVisit Horticulture Park (Hanging Bridge)\r\nHiking to Konglok Para/Village\r\nEnjoy Chander Gari ride on hilly roads', 'Sajek valley is 2000 feet above sea level. Sajek valley is known as the Queen of Hills & Roof of Rangamati. The name of Sajek Valley came from the Sajek River that originates from Karnafuli river. Sajek river is working as a border between Bangladesh and India. Sajek valley resorts are made on the side of the hill to provide the unique experience of tribal lifestyle.\r\n\r\nSajek valley is famous for its natural beauty. The valley is surrounded by mountains, dense forest, grasslands hilly tracks. Many small rivers flow through the mountains among which Kachalong and Machalong are notable. On the way to Sajek valley, one has to cross the Mayni range and Mayni river.\r\n\r\nThe road to Sajek has high picks and falls. The native people of Sajek valley are ethnic minorities. Among them Chakma, Marma, Tripura, Pankua, Lushai, and Sagma are mentionable. Women seem to be more involved in economic activities here. Tea stalls, food joints, and roadside marketplaces are dominated by women. People, in general, are gentle, welcoming, and friendly. Picking fruits and vegetables early in the morning is a major trade here. They are not fluent in Bengali but the young population speaks English confidently.', 'sajek.jpg', '2020-11-10 15:24:26', '2020-12-24 13:01:58'),
(3, 'Promodini Boat life', 'Familly & Couple', 'Kaptai Lake, Rangamati, Bangladesh\r\n\r\n', 5000, 'Daylong cruise at Kaptai Lake\r\nVisit Shuvolong jharna\r\nEnjoy the scenic Kaptailake beauty\r\nSpeed Boat tour', 'Promodini Boat Life introduces you to a luxurious private house boating experience on breathtaking Kaptai Lake for the first time in Rangamati. Our luxurious houseboat has an air-conditioning facility, a very high standard toilet and shower room, 3 double beds, and a spacious lounge. We are offering some of the most luxurious and premium packages for a group of 4 – 6 people and one of the most delightful and exclusive honeymoon packages for couples.\r\n\r\n', 'boat.jpg', '2020-11-10 16:00:58', '2020-12-24 13:02:25'),
(4, 'Ahsan Manzil Museum', 'Family ', 'Kumartoli, Dhaka, Bangladesh', 2000, 'Day tour,Transportation,Food,Photography.', 'Ahsan Manzil used to be the official residential palace and seat of the Nawab of Dhaka. The building is situated at Kumartoli along the banks of the Buriganga River in Dhaka, Bangladesh. Construction was started in 1859 and was completed in 1872. It was constructed in the Indo-Saracenic Revival architecture. ', 'ahsan.jpg', '2020-11-09 22:39:37', '2020-12-24 13:02:56'),
(5, 'St. Martin Island – Coral Blue Island', 'General', 'St. Martin\'s Island, Bangladesh', 4999, '3 Nights & 2 Days\r\nStay at Eco Resort at St. Martin Island\r\nJourney to St Martin on ship\r\nSpecial local fish dishes\r\nExplore Mystical Chera Dwip', 'Saint Martin is one of the few coral islands in the world. Saint martin island in Bangladesh is called the blue heaven. Find the best hotels in st. martin & complete tour packages. Surrounding blue water, the island is way more gorgeous than you can imagine.\r\n\r\nSaint Martin tour is a small coral island in the heart of the Bay of Bengal. The island is made out of coral. This is the place where nature will definitely show you the definition of beauty. Enjoy an amazing ship journey on the blue Bay of Bengal. We designed the tour to make you feel every part of the beauty.\r\n\r\nThe first settlement started 250 years ago by Arabian sailors who named the island ‘Zajira’. During the British occupation the island was named St. Martin Island. During the First Anglo-Burmese War between the British and Burmese empires in 1824–1826, rival claims to the island were a major factor. The local names of the island are “Narical Gingira”, also spelled “Narikel Jinjira/Jinjera”, which means ‘Coconut Island’ in Bengali, and “Daruchini Dwip”. It is the only coral island in Bangladesh.', 'saint.jpg', '2020-11-09 22:42:10', '2020-12-24 13:03:22'),
(6, 'Tanguar Haoar – Lifestyle Experience on a Boat', 'General', 'Sunamgonj, Bangladesh', 4000, '3 Nights & 2 Days\r\n Visit Niladri, Hizon Forest, Jadu Kata river, Barek Tila\r\n Experience fishermen lifestyle\r\n Enjoy fresh fishes from the lake', 'Tanguar haor tour can be an extraordinary experience. The haor is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar haor including 46 villages within the haor is about 100km2 of which 2,802.36 ha2 is a wetland. It is the source of livelihood for more than 40,000 people. The Government of Bangladesh declared Tanguar haor as an Ecologically Critical Area in 1999 considering its critical condition as a result of over-exploitation of its natural resources. In 2000, the hoar basin was declared a Ramsar site – the wetland of international importance. With this declaration, the Government is committed to preserving its natural resources and has taken several steps for the protection of this wetland.\r\n\r\nYou can roam around tanguar haor by boat. Tanguar haor boats are specially designed by night stay and our boats are design with the best resources available. Also, our boats have a high commode bathroom facility.\r\n\r\nTanguar haor plays an important role in fish production as it functions as a ‘mother fishery’ for the country. Every winter the haor is home to about 200 types of migratory birds. The haor is an important source of fish. There are more than 140 species of freshwater fish in the haor.', 'tanguar.jpg', '2020-11-10 08:01:08', '2020-12-24 13:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(11, 'XYZ', '11111111', 'abc@g.com', '*00A51F3F48415C7D4E8908980D443C29C69B60C9', '2020-11-10 07:54:32', '2020-12-24 13:27:32'),
(13, 'didar', '01795797300', 'dider.alam115@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2020-12-24 13:30:40', '2020-12-24 14:54:11');

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
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
