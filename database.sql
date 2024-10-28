-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2023 at 06:22 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u175782148_r`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner_title` varchar(500) NOT NULL,
  `material` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child_menu`
--

CREATE TABLE `child_menu` (
  `id` int(11) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `child_menu`
--

INSERT INTO `child_menu` (`id`, `p_id`, `child`, `url`, `status`) VALUES
(1, '3', 'Manage Banner', 'manage_banner.php', 1),
(2, '4', 'Privacy Policy', 'privacy.php', 1),
(3, '4', 'Risk Disclosure Agreement', 'riskagreement.php', 1),
(4, '5', 'Manage Product', 'manage_product.php', 1),
(5, '2', 'Manage User', 'manage_adminuser.php', 1),
(6, '2', 'Manage Role', 'manage_role.php', 1),
(7, '2', 'Manage Task', 'manage_task.php', 1),
(8, '6', 'Manage User', 'manage_user.php', 1),
(9, '7', 'Withdrawal Request', 'manage_withdraw.php', 1),
(10, '7', 'Withdrawal Accept', 'manage_withdrawAccept.php', 1),
(11, '7', 'Withdrawal Reject', 'manage_withdrawReject.php', 1),
(12, '8', 'Manage Winner Result', 'set_result_game.php', 1),
(13, '9', 'History For Parity', 'manage_parityhistory.php', 1),
(14, '9', 'History For Sapre', 'manage_saprehistory.php', 1),
(15, '9', 'History For Bcone', 'manage_bconehistory.php', 1),
(16, '9', 'History For Emerd', 'manage_emerdhistory.php', 1),
(17, '10', 'Manage Trade History', 'manage_tradehistory.php', 1),
(18, '11', 'Reward System', 'reward_system.php', 1),
(19, '12', 'Manage Amount', 'manage_amount.php', 1),
(20, '13', 'Manage Recharge', 'manage_recharge.php', 1),
(21, '12', 'Manage Admin Bank', 'manage_admin_upi.php', 1),
(22, '8', 'Manage Winer settings', 'manage_gamewinnersetting.php', 1),
(23, '14', 'Today Profit', 'manage_parityhistory.php', 0),
(24, '15', 'All Queries', 'all_queries.php', 1),
(25, '15', 'Game Mode', 'manage_gamewinnersetting.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `complaint_for` varchar(222) NOT NULL,
  `complaint_subject` longtext NOT NULL,
  `complaint_text` longtext NOT NULL,
  `complaint_reply` longtext NOT NULL,
  `complaint_reply_time` mediumtext NOT NULL,
  `complaint_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `complaint_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `user_id`, `complaint_id`, `complaint_for`, `complaint_subject`, `complaint_text`, `complaint_reply`, `complaint_reply_time`, `complaint_time`, `complaint_status`) VALUES
(0, 1, 9829959, 'Change Password', '8668530466', '7ugjb', 'wfegrfdg', '14-10-23 03:13:40', '2023-10-14 09:43:40', 'Resolved');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL DEFAULT 1,
  `riskagreement` text NOT NULL,
  `privacy` text NOT NULL,
  `rule` text NOT NULL,
  `refund` text NOT NULL,
  `terms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `riskagreement`, `privacy`, `rule`, `refund`, `terms`) VALUES
(1, '<div>\r\n<h3>Chapter 1.Booking/Collection Description</h3>\r\n\r\n<p>Prepayment Booking/Recycling Customer should read and understand the business content carefully before making prepayment bookings (prepayment lock price, payment settlement and shipment) /recovery or repurchase (prepayment lock price, shipping payment) before making prepayment bookings to ROYALWIN</p>\r\n\r\n<p>1. Before making an appointment/restoring the prepayment business, the customer should complete the real name authentication in the mall and ensure that the name, ID number, bank account number, delivery address and other information filled in are true, accurate and valid; Otherwise, the user will be liable for the consequences of false information.</p>\r\n\r\n<p>2. Customers can order gold and silver products in advance at the shopping centre. Orders can be cancelled by 01:30 a.m. on the same Saturday. When the customer pays the end payment, the mall receives the final payment and arranges the delivery.</p>\r\n\r\n<p>If the customer does not pay the final pick-up by 01:30 a.m. on Saturday, the customer is deemed to have made the last offer before the inventory and the booking is cancelled.</p>\r\n\r\n<p>3. Customers can make an appointment to recycle gold and silver products purchased at the gold point. Pre-purchase recovery requires a credit margin and confirmation of actual possession of gold and silver products purchased from the mall. Customers can cancel their reservation at any time before 01:30 on Saturday and the credit mark will be refunded after deducting the increase or decrease in the value of the goods within the corresponding time.</p>\r\n\r\n<p>If the customer fails to deliver the goods to a shopping mall or shopping center at the designated collection point by Saturday within the same week, or if the goods delivered do not meet the recycling standard test, the customer will be deemed to have cancelled the reservation recovery and will bear the logistics and testing costs.</p>\r\n\r\n<p>4. Counting time: Daily 01:30-05:30 for the mall warehouse inventory time. During the inventory period, the mall stops accepting advance payments for reservations/receipts.</p>\r\n\r\n<p>5. For further details, please refer to the Business Guidelines in the front page of the mall, Understanding ROYALWIN.</p>\r\n&nbsp;\r\n\r\n<h3>Chapter 2 Reveals the business model of ROYALWIN</h3>\r\n&nbsp;\r\n\r\n<p>Booking/repurchase orders, the business model for clearing balance shipments, uncertainties such as potential benefits and potential risks to the value of its merchandise due to real-time fluctuations in the gold and silver market, and the extent to which booking/repo risk stake is understood for customer booking/repo risk, Risk control ability and understanding of related products have high requirements. Customer selects pre-payment booking/repurchase, fully informed on behalf of the customer and understand the risks of prepayments/repurchase business and agree to and accept ROYALWIN current and future relevant booking/repurchase business processes and management systems (collectively, the Process Systems) to develop, modify and publish. This Risk Disclosure (Disclosure) is intended to fully disclose to the Client the risk of the prepayment booking/repurchase business and is intended only to provide reference for the client to assess and determine its own risk tolerance. The risk disclosures described in this disclosure are for example only. All risk factors associated with ROYALWIN Advance Booking/Repurchase are not detailed. Customers should also carefully understand and understand other possible risk factors before starting or participating in ROYALWIN pre-payment booking/repurchase business. If the customer is not aware of or is not aware of this disclosure, they should consult ROYALWIN Customer Service or the relevant regional service provider in a timely manner. If the Customer ultimately clicks on Risk Disclosure, it is deemed that the Customer fully agrees and accepts the full contents of this disclosure.</p>\r\n&nbsp;\r\n\r\n<p>Warm tips</p>\r\n1.Minors under the age of 18 are not permitted to participate in The ROYALWIN Advance Booking/Recycling.\r\n\r\n<p>2.ROYALWIN Advance Booking/Repo is only available to customers who meet all of the following criteria:<br />\r\n:: Natural persons with full civil capacity, legal persons of enterprises or other economic organizations registered in accordance with the law.</p>\r\n\r\n<p>:: To fully understand all risks associated with royalwin Advance Booking/Repurchase business and have a certain risk tolerance.</p>\r\n\r\n<p>:: Have a certain understanding of gold and silver and its products:</p>\r\n\r\n<p>A. Policy-related risk disclosure, such as changes in national laws, regulations and policies, contingency measures, implementation of appropriate regulatory measures, ROYALWIN regulatory system and changes in management methods and regulations, etc., all risks that may affect customer bookings/repurchases, etc., the customer must bear the losses incurred.</p>\r\n\r\n<p>B. Price fluctuations, gold, silver and other precious metals and their accessories are affected by a variety of factors, such as the international economic situation, foreign exchange, related market trends, supply and demand, and political situation and energy prices. The pricing mechanism for gold, silver and other precious metals products is very complex, making it difficult for customers to fully grasp in practice, so decisions such as advance booking/buyback are possible Mistakes, if the risk cannot be effectively controlled, may suffer losses and the customer must bear all the losses incurred as a result.</p>\r\n\r\n<p>C.&nbsp;ROYALWIN&nbsp;has enabled the provision of services through electronic communication technology and Internet technology. Communication services and hardware and software services are provided by different vendors and may be at risk in terms of quality and stability. Interruptions or delays due to communication or network failures may affect customer prepayment bookings/repurchases. In addition, the customers computer system may be attacked by viruses and/or cyber-hackers, resulting in the customers advance payment booking/repurchase not being properly and/or timely.</p>\r\n\r\n<p>There is also a risk that the above uncertainties may affect the customer&#39;s advance payment booking/repurchase.<br />\r\nA. The price quoted by the ROYALWIN Prepayment Booking/Repo System is based on the systems real-time trading price and may differ slightly from the commodity prices in other markets.<br />\r\nROYALWIN cannot guarantee that the above prepayment booking//repurchase price is fully consistent with other markets.<br />\r\nB. At ROYALWIN;, once the customers pre-payment booking/repurchase application submitted through the online terminal is completed, it cannot be withdrawn and the customer must accept the risks associated with such a subscription.<br />\r\nC. ROYALWIN prohibits regional service providers and their staff from providing any profit guarantee to customers, from engaging in prepaid bookings/repurchases on behalf of customers, or from sharing profits or risks with customers. Customer should be aware that any profit guarantee or commitment that royalwin advance booking/repurchase does not have a loss, profit share or risk-sharing is impossible, unfounded, and incorrect.<br />\r\nD. The customers pre-paid booking / repurchase application must be based on the customers own decision. ROYALWIN and regional service providers and employees do not provide booking / buyback to the client, nor does it constitute any commitment if the client makes a booking / buyback decision accordingly.<br />\r\nE. In advance booking / buyback process, there may be occasional apparent errors in the offer.<br />\r\n&nbsp;RISK-AGREEMENT<br />\r\nTyphoons, floods, fires, wars, disturbances, rule revisions, changes or adjustments in government regulatory policies and regulatory requirements, and electricity, To ensure that you fully understand the relevant provisions and risks of booking / repurchase business, customers should be based on their own booking experience, booking / repurchase / purchase of commodities, read all the contents of the advance booking / repurchase notice carefully, and fully understand and agree to all the contents, I am willing to take all risks to start or participate in ROYALWIN. In case of above mentioned condition I shall be him-self liable to any financial as well as monitory loss. By accepting this I shall be no more eligible to claims any statutory legal benefits given to Indian citizen by Law of India.</p>\r\n\r\n<p>Note: I have carefully read all contents of this app including Privacy Statement, Risk Disclosure Agreement and Risk Agreement and I am agreed to continue with my own risk.</p>\r\n&nbsp;\r\n\r\n<h3>Cancellation and refundable Policy</h3>\r\n\r\n<p>In case of any discrepancy we can cancel any of the orders placed by you. A few reasons for cancellation from our end usually include limitation of the product in the inventory, error in pricing, error in product information etc. We also have the right to check out for extra information for the purpose of accepting orders in a few cases. We make sure to notify you if in case your order is cancelled partially or completely or if in case any extra data is required for the purpose of accepting your order.</p>\r\n\r\n<p>Once you place the order, such order can be cancelled from your end before the shipping is undertaken to the destination. Once the request of cancellation for ready for shipping product is received by us, we make sure to refund the amount through the same mode of payment within 5 working days. Cancellation of the order of Gold coin(exchanged by integrals) shall not be accepted as under Company&#39;s policies.</p>\r\n\r\n<p>We don&#39;t accept Cancellation requests for Smart Buy orders or customized jewellery orders. In specific situations when the customer wants the money back or wants to exchange it with other products, making charges of the product and stone charges, if there is any stone on the product shall be deducted from the payment and balance will be refunded back to customer account within 5 working days.</p>\r\n\r\n<p>If in case the amount is deducted from your account and the transaction has failed, the same will be refunded back to your account within 72 hours.</p>\r\n</div>\r\n', '<div>\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\n\n<h1>Interpretation and Definitions</h1>\n\n<h2>Interpretation</h2>\n\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions.</p>\n\n<p>The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\n\n<h2>Definitions</h2>\n\n<p>For the purposes of this Privacy Policy:</p>\n\n<ul>\n	<li>\n	<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\n	</li>\n	<li>\n	<p><strong>Company</strong> (referred to as either &quot;the Company&quot;, &quot;We&quot;, &quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to NewBossji.</p>\n	</li>\n	<li><strong>Affiliate</strong> means an entity that controls, is controlled by or is under common control with a party, where &quot;control&quot; means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</li>\n	<li><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</li>\n	<li><strong>Website</strong> refers to NewBossji, accessible from https://newbossji.club/</li>\n	<li><strong>Service</strong> refers to the Website.</li>\n	<li><strong>Country</strong> refers to: &nbsp;India</li>\n	<li>\n	<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\n	</li>\n	<li><strong>Third-party Social Media Service</strong> refers to any website or any social network website through which a User can log in or create an account to use the Service.</li>\n	<li>\n	<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\n	</li>\n	<li><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</li>\n	<li><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</li>\n	<li><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</li>\n</ul>\n\n<h1>Collecting and Using Your Personal Data</h1>\n\n<h2>Types of Data Collected</h2>\n\n<h3>Personal Data</h3>\n\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\n\n<ul>\n	<li>Email address</li>\n	<li>First name and last name</li>\n	<li>Phone number</li>\n	<li>Address, State, Province, ZIP/Postal code, City</li>\n	<li>Usage Data</li>\n</ul>\n\n<h3>Usage Data</h3>\n\n<p>Usage Data is collected automatically when using the Service.</p>\n\n<p>Usage Data may include information such as Your Device&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\n\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\n\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\n\n<h3>Tracking Technologies and Cookies</h3>\n\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service.</p>\n\n<p>You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service.</p>\n\n<p>Cookies can be &quot;Persistent&quot; or &quot;Session&quot; Cookies. Persistent Cookies remain on your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close your web browser.</p>\n\n<p>We use both session and persistent Cookies for the purposes set out below:</p>\n\n<ul>\n	<li>\n	<p><strong>Necessary / Essential Cookies</strong></p>\n\n	<p>Type: Session Cookies</p>\n\n	<p>Administered by: Us</p>\n\n	<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\n	</li>\n	<li>\n	<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\n\n	<p>Type: Persistent Cookies</p>\n\n	<p>Administered by: Us</p>\n\n	<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\n	</li>\n	<li>\n	<p><strong>Functionality Cookies</strong></p>\n\n	<p>Type: Persistent Cookies</p>\n\n	<p>Administered by: Us</p>\n\n	<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\n	</li>\n</ul>\n\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy.</p>\n\n<h2>Use of Your Personal Data</h2>\n\n<p>The Company may use Personal Data for the following purposes:</p>\n\n<ul>\n	<li><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</li>\n	<li><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</li>\n	<li><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</li>\n	<li><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application&#39;s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</li>\n	<li><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</li>\n	<li><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</li>\n</ul>\n\n<p>We may share your personal information in the following situations:</p>\n\n<ul>\n	<li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\n	<li><strong>For Business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of our business to another company.</li>\n	<li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\n	<li><strong>With Business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\n	<li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside. If You interact with other users or register through a Third-Party Social Media Service, Your contacts on the Third-Party Social Media Service may see You name, profile, pictures and description of Your activity. Similarly, other users will be able to view descriptions of Your activity, communicate with You and view Your profile.</li>\n</ul>\n\n<h2>Retention of Your Personal Data</h2>\n\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\n\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\n\n<h2>Transfer of Your Personal Data</h2>\n\n<p>Your information, including Personal Data, is processed at the Company&#39;s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to ï¿½ and maintained on ï¿½ computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\n\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\n\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\n\n<h2>Disclosure of Your Personal Data</h2>\n\n<h3>Business Transactions</h3>\n\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\n\n<h3>Law enforcement</h3>\n\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\n\n<h3>Other legal requirements</h3>\n\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\n\n<ul>\n	<li>Comply with a legal obligation</li>\n	<li>Protect and defend the rights or property of the Company</li>\n	<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\n	<li>Protect the personal safety of Users of the Service or the public</li>\n	<li>Protect against legal liability</li>\n</ul>\n\n<h2>Security of Your Personal Data</h2>\n\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\n\n<h1>Children&#39;s Privacy</h1>\n\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\n\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent&#39;s consent before We collect and use that information.</p>\n\n<h1>Links to Other Websites</h1>\n\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party&#39;s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\n\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\n\n<h1>Changes to this Privacy Policy</h1>\n\n<p>We may update our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\n\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the &quot;Last updated&quot; date at the top of this Privacy Policy.</p>\n\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\n\n<h1>Contact Us</h1>\n\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\n\n<ul>\n	<li>By visiting this page on our website :&nbsp;https://newbossji.club/myaccount.php &gt; Contact us</li>\n</ul>\n</div>\n', '<p style=\"font-size:12px\">3 minutes 1 issue, 2 minutes and 30 seconds to order, 30 seconds to show the lottery result. It opens all day. The total number of trade is 480 issues</p>\r\n\r\n<p style=\"font-size:10px\">If you spend 100 to trade, after deducting 5 service fee, your contract amount is 95:</p>\r\n\r\n<p style=\"font-size:10px\">1. JOIN GREEN: if the result shows 1,3,7,9, you will get (95*2) 190</p>\r\n\r\n<p style=\"font-size:10px\">If the result shows 5, you will get (95*1.5) 142.5</p>\r\n\r\n<p style=\"font-size:10px\">2. JOIN RED: if the result shows 2,4,6,8, you will get (95*2) 190; If the result shows 0, you will get (95*1.5) 142.5</p>\r\n\r\n<p style=\"font-size:10px\">3. JOIN VIOLET: if the result shows 0 or 5, you will get (95*4.5) 427.5</p>\r\n\r\n<p style=\"font-size:10px\">4. SELECT NUMBER: if the result is the same as the number you selected, you will get (95*9) 855</p>', '<div class=\"content\" style=\"padding: 12px;\">    <h3 class=\"text-xs-center\" style=\"margin-bottom: 12px;\">Chapter 1.Booking/Collection Description</h3>    <p>       <span>          Prepayment Booking/Recycling Customer should read and understand the business content carefully before making prepayment bookings (prepayment lock price, payment settlement and shipment) /recovery or repurchase (prepayment lock price, shipping payment) before making prepayment bookings to           <text class=\"dfTxt\">myspo11</text>          :       </span>    </p>    <p><span>1. Before making an appointment/restoring the prepayment business, the customer should complete the real name authentication in the mall and ensure that the name, ID number, bank account number, delivery address and other information filled in are true, accurate and valid; Otherwise, the user will be liable for the consequences of false information.</span></p>    <p><span>2. Customers can order gold and silver products in advance at the shopping centre. Orders can be cancelled by 01:30 a.m. on the same Saturday. When the customer pays the end payment, the mall receives the final payment and arranges the delivery.</span></p>    <p><span>If the customer does not pay the final pick-up by 01:30 a.m. on Saturday, the customer is deemed to have made the last offer before the inventory and the booking is cancelled.</span></p>    <p><span>3. Customers can make an appointment to recycle gold and silver products purchased at the gold point. Pre-purchase recovery requires a credit margin and confirmation of actual possession of gold and silver products purchased from the mall. Customers can cancel their reservation at any time before 01:30 on Saturday and the credit mark will be refunded after deducting the increase or decrease in the value of the goods within the corresponding time.</span></p>    <p><span>If the customer fails to deliver the goods to a shopping mall or shopping center at the designated collection point by Saturday within the same week, or if the goods delivered do not meet the recycling standard test, the customer will be deemed to have cancelled the reservation recovery and will bear the logistics and testing costs.</span></p>    <p><span>4. Counting time: Daily 01:30-05:30 for the mall warehouse inventory time. During the inventory period, the mall stops accepting advance payments for reservations/receipts.</span></p>    <p>       <span>          5. For further details, please refer to the Business Guidelines in the front page of the mall, Understanding           <text class=\"dfTxt\">myspo11</text>          .       </span>    </p>    <br>    <h3 class=\"text-xs-center\">       Chapter 2 Reveals the business model of        <text class=\"dfTxt\">myspo11</text>    </h3>    <br>    <p>       <span>          Booking/repurchase orders, the business model for clearing balance shipments, uncertainties such as potential benefits and potential risks to the value of its merchandise due to real-time fluctuations in the gold and silver market, and the extent to which booking/repo risk stake is understood for customer booking/repo risk, Risk control ability and understanding of related products have high requirements. Customer selects pre-payment booking/repurchase, fully informed on behalf of the customer and understand the risks of prepayments/repurchase business and agree to and accept           <text class=\"dfTxt\">myspo11</text>          current and future relevant booking/repurchase business processes and management systems (collectively, the Process Systems) to develop, modify and publish. This Risk Disclosure (Disclosure) is intended to fully disclose to the Client the risk of the prepayment booking/repurchase business and is intended only to provide reference for the client to assess and determine its own risk tolerance. The risk disclosures described in this disclosure are for example only. All risk factors associated with           <text class=\"dfTxt\">myspo11</text>          Advance Booking/Repurchase are not detailed. Customers should also carefully understand and understand other possible risk factors before starting or participating in           <text class=\"dfTxt\">myspo11</text>          pre-payment booking/repurchase business. If the customer is not aware of or is not aware of this disclosure, they should consult           <text class=\"dfTxt\">myspo11</text>          Customer Service or the relevant regional service provider in a timely manner. If the Customer ultimately clicks on Risk Disclosure, it is deemed that the Customer fully agrees and accepts the full contents of this disclosure.       </span>    </p>    <br>    <p>Warm tips</p>    <span>       1.Minors under the age of 18 are not permitted to participate in The        <text class=\"dfTxt\">myspo11</text>       Advance Booking/Recycling.    </span>    <p>       <span>          2.          <text class=\"dfTxt\">myspo11</text>          Advance Booking/Repo is only available to customers who meet all of the following criteria:          <br>? Natural persons with full civil capacity, legal persons of enterprises or other economic organizations registered in accordance with the law.       </span>    </p>    <p>       <span>          ? To fully understand all risks associated with           <text class=\"dfTxt\">myspo11</text>          Advance Booking/Repurchase business and have a certain risk tolerance.       </span>    </p>    <p><span>? Have a certain understanding of gold and silver and its products:</span></p>    <p>       <span>          A. Policy-related risk disclosure, such as changes in national laws, regulations and policies, contingency measures, implementation of appropriate regulatory measures,           <text class=\"dfTxt\">myspo11</text>          regulatory system and changes in management methods and regulations, etc., all risks that may affect customer bookings/repurchases, etc., the customer must bear the losses incurred.       </span>    </p>    <p><span>B. Price fluctuations, gold, silver and other precious metals and their accessories are affected by a variety of factors, such as the international economic situation, foreign exchange, related market trends, supply and demand, and political situation and energy prices. The pricing mechanism for gold, silver and other precious metals products is very complex, making it difficult for customers to fully grasp in practice, so decisions such as advance booking/buyback are possible Mistakes, if the risk cannot be effectively controlled, may suffer losses and the customer must bear all the losses incurred as a result.</span></p>    <p>       <span>          ?           <text class=\"dfTxt\">myspo11</text>          has enabled the provision of services through electronic communication technology and Internet technology. Communication services and hardware and software services are provided by different vendors and may be at risk in terms of quality and stability. Interruptions or delays due to communication or network failures may affect customer prepayment bookings/repurchases. In addition, the customers computer system may be attacked by viruses and/or cyber-hackers, resulting in the customers advance payment booking/repurchase not being properly and/or timely.       </span>    </p>    <p>       <span>          There is also a risk that the above uncertainties may affect the customer’s advance payment booking/repurchase.          <br>A. The price quoted by the           <text class=\"dfTxt\">myspo11</text>          Prepayment Booking/Repo System is based on the systems real-time trading price and may differ slightly from the commodity prices in other markets.          <br>          <text class=\"dfTxt\">myspo11</text>          cannot guarantee that the above prepayment booking//repurchase price is fully consistent with other markets.          <br>B. At           <text class=\"dfTxt\">myspo11</text>          ;, once the customers pre-payment booking/repurchase application submitted through the online terminal is completed, it cannot be withdrawn and the customer must accept the risks associated with such a subscription.          <br>C.           <text class=\"dfTxt\">myspo11</text>          prohibits regional service providers and their staff from providing any profit guarantee to customers, from engaging in prepaid bookings/repurchases on behalf of customers, or from sharing profits or risks with customers. Customer should be aware that any profit guarantee or commitment that           <text class=\"dfTxt\">myspo11</text>          advance booking/repurchase does not have a loss, profit share or risk-sharing is impossible, unfounded, and incorrect.          <br>D. The customers pre-paid booking / repurchase application must be based on the customers own decision.           <text class=\"dfTxt\">myspo11</text>          and regional service providers and employees do not provide booking / buyback to the client, nor does it constitute any commitment if the client makes a booking / buyback decision accordingly.          <br>E. In advance booking / buyback process, there may be occasional apparent errors in the offer.          <br>? RISK-AGREEMENT          <br>Typhoons, floods, fires, wars, disturbances, rule revisions, changes or adjustments in government regulatory policies and regulatory requirements, and electricity, To ensure that you fully understand the relevant provisions and risks of booking / repurchase business, customers should be based on their own booking experience, booking / repurchase / purchase of commodities, read all the contents of the advance booking / repurchase notice carefully, and fully understand and agree to all the contents, I am willing to take all risks to start or participate in           <text class=\"dfTxt\">myspo11</text>          . In case of above mentioned condition I shall be him-self liable to any financial as well as monitory loss. By accepting this I shall be no more eligible to claims any statutory legal benefits given to Indian citizen by Law of India.          <br><br>       </span>    </p>    <p><span>Note: I have carefully read all contents of this app including Privacy Statement, Risk Disclosure Agreement and Risk Agreement and I am agreed to continue with my own risk.</span></p>    <br>    <h3 class=\"text-xs-center\" style=\"margin-bottom: 12px;\">Cancellation and refundable Policy</h3>    <p><span>In case of any discrepancy we can cancel any of the orders placed by you. A few reasons for cancellation from our end usually include limitation of the product in the inventory, error in pricing, error in product information etc. We also have the right to check out for extra information for the purpose of accepting orders in a few cases. We make sure to notify you if in case your order is cancelled partially or completely or if in case any extra data is required for the purpose of accepting your order.</span></p>    <p><span>Once you place the order, such order can be cancelled from your end before the shipping is undertaken to the destination. Once the request of cancellation for ready for shipping product is received by us, we make sure to refund the amount through the same mode of payment within 5 working days. Cancellation of the order of Gold coin(exchanged by integrals) shall not be accepted as under Company’s policies.</span></p>    <p><span>We don’t accept Cancellation requests for Smart Buy orders or customized jewellery orders. In specific situations when the customer wants the money back or wants to exchange it with other products, making charges of the product and stone charges, if there is any stone on the product shall be deducted from the payment and balance will be refunded back to customer account within 5 working days.</span></p>    <p><span>If in case the amount is deducted from your account and the transaction has failed, the same will be refunded back to your account within 72 hours.</span></p> </div>', '<p style=\"font-size:16px; padding-left:5%; padding-right:5%; \">\r\n<b>Please read all rules and terms before using ROYALWIN:- </b>\r\n<br>\r\n<br>\r\n1. The Withdrawable Balance includes all the amount you have wagered and won. You can only withdraw a maximum amount equal to your Withdrawable Balance. You cannot withdraw your deposit balance without wagering that.\r\n<br>\r\n<br>\r\n2. Most of withdrawals are credited to your bank account in 5-10 minutes, but sometimes it takes up to 48 hours due to technical/banking issue.\r\n<br>\r\n<br>\r\n3. We deduct 4% fee on every withdrawals, but sometimes there are HAPPY HOURS in which no fee is charged on withdrawal. Please check Offer and Event page for upcoming HAPPY HOURS event.\r\n<br>\r\n<br>\r\n4. Our working time is from 9AM to 11PM, In this meantime all deposits, withdrawals, reward destribution and other processwill be completed. \r\n<br>\r\n<br>\r\n5. Your registration on the Website/Mobile App is restricted to a single user account, which will be used by you to avail yourself of the Services provided on the Website/Mobile App. You are prohibited from creating or using multiple user IDs for playing on the Website/Mobile App or using our Services.\r\n<br>\r\n<br>\r\n6. If in case the any amount is deducted from your account and the transaction has failed, the same will be refunded back to your account within 72 hours.\r\n<br>\r\n<br>\r\n7. Minors under the age of 18 are not permitted to participate in The ROYALWIN Advance Booking/Recycling.\r\n<br>\r\n<br>\r\n8. all rewards and bonuses are disributed on 9am-10am next morning from recahrge.\r\n<br>\r\n<br>\r\n<b>9. Your Password, Your Responsibility</b> After you have registered on our Website/Mobile App, it is your sole responsibility to make sure that you do not disclose your passwords to anybody, be it your friends, family members, third party, or anybody whosoever. Please create a strong password of minimum 8 characters including capital letters, digits and special characters so that nobody can crack that.\r\n<br>\r\n<br>   \r\n   We shall not in any way be responsible if your user account is logged in to or accessed by anybody else by using your password. The restrictions defined for creating a strong password will be applicable only for passwords created on Royalwin\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `red envlop`
--

CREATE TABLE `red envlop` (
  `red envelop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `created_date`, `status`) VALUES
(1, 'SuperAdmin', '2014-12-23 20:04:37', 1),
(2, 'Support', '2017-01-26 17:23:05', 1),
(13, 'serverRoot', '2021-10-09 12:49:15', 1),
(15, 'Reward distributter', '2022-04-19 13:00:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `services` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `services`, `url`, `status`) VALUES
(1, 'Dashboard', 'desktop.php', '1'),
(2, 'Manage AdminUser', '#', '1'),
(3, 'Manage Banner', '#', '0'),
(4, 'Content Management', '#', '0'),
(5, 'Manage Product', '#', '0'),
(6, 'User Management', '#', '1'),
(7, 'Withdrawal Management ', '#', '1'),
(8, 'Wining Management', '#', '1'),
(9, 'Game History', '#', '0'),
(10, 'Trade History', '#', '1'),
(11, 'Reward Management', '#', '1'),
(12, 'Amount Setup', '#', '1'),
(13, 'Recharge Management', '#', '1'),
(14, 'History For Parity', '#', '0'),
(15, 'Go to New Dashboard', '#', '0');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'telegram', NULL),
(2, 'system_name', 'color prediction'),
(3, 'fast_sms_api_key', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `fblink` text NOT NULL,
  `twlink` text NOT NULL,
  `ln` text NOT NULL,
  `insta` varchar(500) NOT NULL,
  `fbcount` varchar(100) NOT NULL,
  `twcount` varchar(100) NOT NULL,
  `youtubecount` varchar(100) NOT NULL,
  `instacount` varchar(100) NOT NULL,
  `status` smallint(6) NOT NULL,
  `updt_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `address`, `email`, `mobile`, `fblink`, `twlink`, `ln`, `insta`, `fbcount`, `twcount`, `youtubecount`, `instacount`, `status`, `updt_time`) VALUES
(1, 'Stock Building, 125 Main Street 1st Lane, San Francisco, USA', 'info@gmail.com', '+91 9090909090', '#', '#', '#', '#', '985', '529', '888', '100', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `role_id`, `task`, `status`, `created_date`) VALUES
(1, '1', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', 1, '2021-09-25 10:51:32'),
(9, '13', '1,2,3,4,5,6,7,8,9,10,11,12,13', 1, '2021-10-09 12:49:50'),
(10, '2', '6,7,10,11,13', 1, '2021-12-10 08:59:38'),
(11, '15', '6,7,8,10,11,13,14', 1, '2022-04-19 13:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `admin_name`, `password`, `role`, `expiry_date`, `status`, `date`) VALUES
(4, 'raj', 'raj', 'e22573706cfe9748cc0e45a526c2bfef', '1', 'no', 1, '2022-03-31 06:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankdetail`
--

CREATE TABLE `tbl_bankdetail` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bankdetail`
--

INSERT INTO `tbl_bankdetail` (`id`, `userid`, `name`, `ifsc`, `bankname`, `account`, `mobile`, `email`, `type`, `status`) VALUES
(1, 210, 'Cnl', 'Yyf', 'T7iufg', '55668', '886', 'Fc ', 'bank', 1),
(2, 2, 'ABCD', 'none', '8355965199@upi', 'none', '8355965199', 'demo@admin.com', 'upi', 1),
(3, 225, 'rajhans patil', 'none', 'smghcj@upi', 'none', '8668530466', 'rajhanspatil67@gmail.com', 'upi', 1),
(4, 228, 'Sakshi manr', 'none', 'sakshimane641@okicici', 'none', '8010653168', 'sakshimane641@gmail.com', 'upi', 1),
(5, 1, 'Rajhans ', 'none', '3heieidu', 'none', '565656', 'Dhdu', 'upi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_betting`
--

CREATE TABLE `tbl_betting` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `tab` varchar(50) NOT NULL,
  `acceptrule` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_betting`
--

INSERT INTO `tbl_betting` (`id`, `userid`, `periodid`, `type`, `value`, `amount`, `tab`, `acceptrule`, `createdate`) VALUES
(1, 225, '20231014067', 'button', '7', 10, 'parity', 'on', '2023-10-14 06:46:11'),
(2, 225, '20231014068', 'button', '7', 10, 'parity', 'on', '2023-10-14 06:49:18'),
(3, 225, '20231014069', 'button', '1', 40, 'parity', 'on', '2023-10-14 06:50:25'),
(4, 1, '20231014073', 'button', '2', 10, 'parity', 'on', '2023-10-14 06:58:07'),
(5, 1, '20231014073', 'button', '6', 10, 'parity', 'on', '2023-10-14 06:58:26'),
(6, 1, '20231014074', 'button', '1', 10, 'parity', 'on', '2023-10-14 07:00:06'),
(7, 227, '20231014091', 'button', 'Red', 10, 'parity', 'on', '2023-10-14 07:34:33'),
(8, 227, '20231014091', 'button', 'Red', 10, 'parity', 'on', '2023-10-14 07:35:16'),
(9, 227, '20231014092', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 07:36:25'),
(10, 227, '20231014092', 'button', 'Red', 20, 'parity', 'on', '2023-10-14 07:36:40'),
(11, 227, '20231014092', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 07:36:45'),
(12, 227, '20231014092', 'button', '5', 10, 'parity', 'on', '2023-10-14 07:36:50'),
(13, 227, '20231014092', 'button', '0', 10, 'parity', 'on', '2023-10-14 07:36:54'),
(14, 227, '20231014092', 'button', '7', 10, 'parity', 'on', '2023-10-14 07:37:00'),
(15, 227, '20231014092', 'button', '4', 10, 'parity', 'on', '2023-10-14 07:37:03'),
(16, 227, '20231014093', 'button', 'Red', 20, 'parity', 'on', '2023-10-14 07:38:21'),
(17, 227, '20231014093', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 07:38:47'),
(18, 1, '20231014094', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 07:40:08'),
(19, 227, '20231014094', 'button', 'Green', 20, 'parity', 'on', '2023-10-14 07:40:14'),
(20, 1, '20231014094', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 07:40:16'),
(21, 1, '20231014094', 'button', '7', 10, 'parity', 'on', '2023-10-14 07:40:30'),
(22, 1, '20231014094', 'button', '9', 10, 'parity', 'on', '2023-10-14 07:40:40'),
(23, 1, '20231014096', 'button', '1', 10, 'parity', 'on', '2023-10-14 07:44:27'),
(24, 1, '20231014096', 'button', '4', 10, 'parity', 'on', '2023-10-14 07:44:38'),
(25, 1, '20231014096', 'button', '8', 10, 'parity', 'on', '2023-10-14 07:44:41'),
(26, 1, '20231014096', 'button', '6', 10, 'parity', 'on', '2023-10-14 07:44:48'),
(27, 1, '20231014096', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 07:44:55'),
(28, 1, '20231014096', 'button', 'Red', 10, 'parity', 'on', '2023-10-14 07:45:02'),
(29, 1, '20231014096', 'button', 'Violet', 10, 'parity', 'on', '2023-10-14 07:45:05'),
(30, 1, '20231014101', 'button', '0', 10, 'parity', 'on', '2023-10-14 07:54:53'),
(31, 1, '20231014101', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 07:54:56'),
(32, 1, '20231014101', 'button', '5', 10, 'parity', 'on', '2023-10-14 07:54:59'),
(33, 1, '20231014101', 'button', '1', 10, 'parity', 'on', '2023-10-14 07:55:04'),
(34, 1, '20231014101', 'button', '6', 10, 'parity', 'on', '2023-10-14 07:55:11'),
(35, 228, '20231014107', 'button', '6', 10, 'parity', 'on', '2023-10-14 08:06:08'),
(36, 228, '20231014107', 'button', '5', 10, 'parity', 'on', '2023-10-14 08:06:13'),
(37, 228, '20231014107', 'button', '4', 10, 'parity', 'on', '2023-10-14 08:06:17'),
(38, 229, '20231014116', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 08:24:47'),
(39, 229, '20231014116', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 08:24:48'),
(40, 229, '20231014116', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 08:24:48'),
(41, 229, '20231014117', 'button', 'Red', 10, 'parity', 'on', '2023-10-14 08:27:01'),
(42, 229, '20231014119', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 08:30:42'),
(43, 229, '20231014121', 'button', 'Red', 10, 'parity', 'on', '2023-10-14 08:34:07'),
(44, 228, '20231014123', 'button', '4', 10, 'parity', 'on', '2023-10-14 08:38:57'),
(45, 228, '20231014123', 'button', '1', 10, 'parity', 'on', '2023-10-14 08:39:03'),
(46, 228, '20231014123', 'button', '0', 10, 'parity', 'on', '2023-10-14 08:39:10'),
(47, 228, '20231014123', 'button', '6', 10, 'parity', 'on', '2023-10-14 08:39:21'),
(48, 228, '20231014125', 'button', '8', 10, 'parity', 'on', '2023-10-14 08:42:19'),
(49, 229, '20231014125', 'button', '8', 20, 'parity', 'on', '2023-10-14 08:43:20'),
(50, 1, '20231014150', 'button', '8', 400, 'parity', 'on', '2023-10-14 09:33:25'),
(51, 1, '20231014173', 'button', '1', 10, 'parity', 'on', '2023-10-14 10:18:16'),
(52, 1, '20231014173', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 10:18:24'),
(53, 1, '20231014174', 'button', 'Red', 10, 'parity', 'on', '2023-10-14 10:21:05'),
(54, 1, '20231014234', 'button', '1', 10, 'parity', 'on', '2023-10-14 12:20:36'),
(55, 1, '20231014234', 'button', '7', 10, 'parity', 'on', '2023-10-14 12:20:39'),
(56, 1, '20231014234', 'button', '3', 10, 'parity', 'on', '2023-10-14 12:20:48'),
(57, 1, '20231014234', 'button', '9', 10, 'parity', 'on', '2023-10-14 12:20:51'),
(58, 1, '20231014251', 'button', '2', 10, 'parity', 'on', '2023-10-14 12:54:25'),
(59, 1, '20231014251', 'button', '1', 10, 'parity', 'on', '2023-10-14 12:54:27'),
(60, 1, '20231014253', 'button', '9', 10, 'parity', 'on', '2023-10-14 12:58:11'),
(61, 1, '20231014253', 'button', '2', 10, 'parity', 'on', '2023-10-14 12:58:14'),
(62, 1, '20231014300', 'button', '7', 10, 'parity', 'on', '2023-10-14 14:32:14'),
(63, 1, '20231014300', 'button', '1', 10, 'parity', 'on', '2023-10-14 14:32:19'),
(64, 1, '20231014300', 'button', '9', 10, 'parity', 'on', '2023-10-14 14:32:24'),
(65, 1, '20231014300', 'button', '3', 10, 'parity', 'on', '2023-10-14 14:32:31'),
(66, 1, '20231014313', 'button', '7', 10, 'parity', 'on', '2023-10-14 14:58:08'),
(67, 1, '20231014313', 'button', '1', 10, 'parity', 'on', '2023-10-14 14:58:11'),
(68, 1, '20231014313', 'button', '3', 10, 'parity', 'on', '2023-10-14 14:58:15'),
(69, 1, '20231014313', 'button', '9', 10, 'parity', 'on', '2023-10-14 14:58:18'),
(70, 1, '20231014313', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 14:58:31'),
(71, 1, '20231014313', 'button', 'Red', 10, 'parity', 'on', '2023-10-14 14:58:41'),
(72, 1, '20231014313', 'button', 'Violet', 10, 'parity', 'on', '2023-10-14 14:58:44'),
(73, 230, '20231014351', 'button', '9', 10, 'parity', 'on', '2023-10-14 16:14:16'),
(74, 1, '20231014353', 'button', 'Red', 100, 'parity', 'on', '2023-10-14 16:18:24'),
(75, 1, '20231014353', 'button', 'Green', 300, 'parity', 'on', '2023-10-14 16:18:32'),
(76, 1, '20231014364', 'button', 'Green', 100, 'parity', 'on', '2023-10-14 16:40:27'),
(77, 1, '20231014367', 'button', 'Red', 100, 'parity', 'on', '2023-10-14 16:46:26'),
(78, 1, '20231014368', 'button', 'Red', 100, 'parity', 'on', '2023-10-14 16:49:07'),
(79, 1, '20231014369', 'button', 'Green', 100, 'parity', 'on', '2023-10-14 16:51:03'),
(80, 1, '20231014370', 'button', 'Green', 100, 'parity', 'on', '2023-10-14 16:52:27'),
(81, 1, '20231014374', 'button', 'Green', 100, 'parity', 'on', '2023-10-14 17:01:21'),
(82, 1, '20231014384', 'button', 'Green', 10, 'parity', 'on', '2023-10-14 17:20:07'),
(83, 1, '20231014384', 'button', 'Green', 100, 'parity', 'on', '2023-10-14 17:20:11'),
(84, 1, '20231014410', 'button', 'Red', 10, 'parity', 'on', '2023-10-14 18:12:52'),
(85, 1, '20231014414', 'button', 'Red', 10, 'parity', 'on', '2023-10-14 18:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonus`
--

CREATE TABLE `tbl_bonus` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `level1` varchar(300) NOT NULL,
  `level2` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bonus`
--

INSERT INTO `tbl_bonus` (`id`, `userid`, `amount`, `level1`, `level2`) VALUES
(1, 1, '17.4', '15', '2.4'),
(2, 2, '0', '0', '0'),
(225, 225, '5', '4', '3'),
(226, 226, '5', '4', '3'),
(227, 227, '5', '4', '3'),
(229, 229, '5', '4', '3'),
(228, 228, '9', '8', '3'),
(230, 230, '5', '4', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonussummery`
--

CREATE TABLE `tbl_bonussummery` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `level1id` varchar(255) NOT NULL,
  `level2id` varchar(255) NOT NULL,
  `level1amount` varchar(255) NOT NULL,
  `level2amount` varchar(255) NOT NULL,
  `tradeamount` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bonussummery`
--

INSERT INTO `tbl_bonussummery` (`id`, `userid`, `periodid`, `level1id`, `level2id`, `level1amount`, `level2amount`, `tradeamount`, `createdate`) VALUES
(1, 225, '20231014067', '1', '', '0.5', '0.3', '10', '2023-10-14 12:16:11'),
(2, 225, '20231014068', '1', '', '0.5', '0.3', '10', '2023-10-14 12:19:18'),
(3, 225, '20231014069', '1', '', '2', '1.2', '40', '2023-10-14 12:20:25'),
(4, 1, '20231014073', '', '', '0.5', '0.3', '10', '2023-10-14 12:28:07'),
(5, 1, '20231014073', '', '', '0.5', '0.3', '10', '2023-10-14 12:28:26'),
(6, 1, '20231014074', '', '', '0.5', '0.3', '10', '2023-10-14 12:30:06'),
(7, 227, '20231014091', '1', '', '0.5', '0.3', '10', '2023-10-14 13:04:33'),
(8, 227, '20231014091', '1', '', '0.5', '0.3', '10', '2023-10-14 13:05:16'),
(9, 227, '20231014092', '1', '', '0.5', '0.3', '10', '2023-10-14 13:06:25'),
(10, 227, '20231014092', '1', '', '1', '0.6', '20', '2023-10-14 13:06:40'),
(11, 227, '20231014092', '1', '', '0.5', '0.3', '10', '2023-10-14 13:06:45'),
(12, 227, '20231014092', '1', '', '0.5', '0.3', '10', '2023-10-14 13:06:50'),
(13, 227, '20231014092', '1', '', '0.5', '0.3', '10', '2023-10-14 13:06:54'),
(14, 227, '20231014092', '1', '', '0.5', '0.3', '10', '2023-10-14 13:07:00'),
(15, 227, '20231014092', '1', '', '0.5', '0.3', '10', '2023-10-14 13:07:03'),
(16, 227, '20231014093', '1', '', '1', '0.6', '20', '2023-10-14 13:08:21'),
(17, 227, '20231014093', '1', '', '0.5', '0.3', '10', '2023-10-14 13:08:47'),
(18, 1, '20231014094', '', '', '0.5', '0.3', '10', '2023-10-14 13:10:08'),
(19, 227, '20231014094', '1', '', '1', '0.6', '20', '2023-10-14 13:10:14'),
(20, 1, '20231014094', '', '', '0.5', '0.3', '10', '2023-10-14 13:10:16'),
(21, 1, '20231014094', '', '', '0.5', '0.3', '10', '2023-10-14 13:10:30'),
(22, 1, '20231014094', '', '', '0.5', '0.3', '10', '2023-10-14 13:10:40'),
(23, 1, '20231014096', '', '', '0.5', '0.3', '10', '2023-10-14 13:14:27'),
(24, 1, '20231014096', '', '', '0.5', '0.3', '10', '2023-10-14 13:14:38'),
(25, 1, '20231014096', '', '', '0.5', '0.3', '10', '2023-10-14 13:14:41'),
(26, 1, '20231014096', '', '', '0.5', '0.3', '10', '2023-10-14 13:14:48'),
(27, 1, '20231014096', '', '', '0.5', '0.3', '10', '2023-10-14 13:14:55'),
(28, 1, '20231014096', '', '', '0.5', '0.3', '10', '2023-10-14 13:15:02'),
(29, 1, '20231014096', '', '', '0.5', '0.3', '10', '2023-10-14 13:15:05'),
(30, 1, '20231014101', '', '', '0.5', '0.3', '10', '2023-10-14 13:24:53'),
(31, 1, '20231014101', '', '', '0.5', '0.3', '10', '2023-10-14 13:24:56'),
(32, 1, '20231014101', '', '', '0.5', '0.3', '10', '2023-10-14 13:24:59'),
(33, 1, '20231014101', '', '', '0.5', '0.3', '10', '2023-10-14 13:25:04'),
(34, 1, '20231014101', '', '', '0.5', '0.3', '10', '2023-10-14 13:25:11'),
(35, 228, '20231014107', '1', '', '0.5', '0.3', '10', '2023-10-14 13:36:08'),
(36, 228, '20231014107', '1', '', '0.5', '0.3', '10', '2023-10-14 13:36:13'),
(37, 228, '20231014107', '1', '', '0.5', '0.3', '10', '2023-10-14 13:36:17'),
(38, 229, '20231014116', '228', '1', '0.5', '0.3', '10', '2023-10-14 13:54:47'),
(39, 229, '20231014116', '228', '1', '0.5', '0.3', '10', '2023-10-14 13:54:48'),
(40, 229, '20231014116', '228', '1', '0.5', '0.3', '10', '2023-10-14 13:54:48'),
(41, 229, '20231014117', '228', '1', '0.5', '0.3', '10', '2023-10-14 13:57:01'),
(42, 229, '20231014119', '228', '1', '0.5', '0.3', '10', '2023-10-14 14:00:42'),
(43, 229, '20231014121', '228', '1', '0.5', '0.3', '10', '2023-10-14 14:04:07'),
(44, 228, '20231014123', '1', '', '0.5', '0.3', '10', '2023-10-14 14:08:57'),
(45, 228, '20231014123', '1', '', '0.5', '0.3', '10', '2023-10-14 14:09:03'),
(46, 228, '20231014123', '1', '', '0.5', '0.3', '10', '2023-10-14 14:09:10'),
(47, 228, '20231014123', '1', '', '0.5', '0.3', '10', '2023-10-14 14:09:21'),
(48, 228, '20231014125', '1', '', '0.5', '0.3', '10', '2023-10-14 14:12:19'),
(49, 229, '20231014125', '228', '1', '1', '0.6', '20', '2023-10-14 14:13:20'),
(50, 1, '20231014150', '', '', '20', '12', '400', '2023-10-14 15:03:25'),
(51, 1, '20231014173', '', '', '0.5', '0.3', '10', '2023-10-14 15:48:16'),
(52, 1, '20231014173', '', '', '0.5', '0.3', '10', '2023-10-14 15:48:24'),
(53, 1, '20231014174', '', '', '0.5', '0.3', '10', '2023-10-14 15:51:05'),
(54, 1, '20231014234', '', '', '0.5', '0.3', '10', '2023-10-14 17:50:36'),
(55, 1, '20231014234', '', '', '0.5', '0.3', '10', '2023-10-14 17:50:39'),
(56, 1, '20231014234', '', '', '0.5', '0.3', '10', '2023-10-14 17:50:48'),
(57, 1, '20231014234', '', '', '0.5', '0.3', '10', '2023-10-14 17:50:51'),
(58, 1, '20231014251', '', '', '0.5', '0.3', '10', '2023-10-14 18:24:25'),
(59, 1, '20231014251', '', '', '0.5', '0.3', '10', '2023-10-14 18:24:27'),
(60, 1, '20231014253', '', '', '0.5', '0.3', '10', '2023-10-14 18:28:11'),
(61, 1, '20231014253', '', '', '0.5', '0.3', '10', '2023-10-14 18:28:14'),
(62, 1, '20231014300', '', '', '0.5', '0.3', '10', '2023-10-14 20:02:14'),
(63, 1, '20231014300', '', '', '0.5', '0.3', '10', '2023-10-14 20:02:19'),
(64, 1, '20231014300', '', '', '0.5', '0.3', '10', '2023-10-14 20:02:24'),
(65, 1, '20231014300', '', '', '0.5', '0.3', '10', '2023-10-14 20:02:31'),
(66, 1, '20231014313', '', '', '0.5', '0.3', '10', '2023-10-14 20:28:08'),
(67, 1, '20231014313', '', '', '0.5', '0.3', '10', '2023-10-14 20:28:11'),
(68, 1, '20231014313', '', '', '0.5', '0.3', '10', '2023-10-14 20:28:15'),
(69, 1, '20231014313', '', '', '0.5', '0.3', '10', '2023-10-14 20:28:18'),
(70, 1, '20231014313', '', '', '0.5', '0.3', '10', '2023-10-14 20:28:31'),
(71, 1, '20231014313', '', '', '0.5', '0.3', '10', '2023-10-14 20:28:41'),
(72, 1, '20231014313', '', '', '0.5', '0.3', '10', '2023-10-14 20:28:44'),
(73, 230, '20231014351', '1', '', '0.5', '0.3', '10', '2023-10-14 21:44:16'),
(74, 1, '20231014353', '', '', '5', '3', '100', '2023-10-14 21:48:24'),
(75, 1, '20231014353', '', '', '15', '9', '300', '2023-10-14 21:48:32'),
(76, 1, '20231014364', '', '', '5', '3', '100', '2023-10-14 22:10:27'),
(77, 1, '20231014367', '', '', '5', '3', '100', '2023-10-14 22:16:26'),
(78, 1, '20231014368', '', '', '5', '3', '100', '2023-10-14 22:19:07'),
(79, 1, '20231014369', '', '', '5', '3', '100', '2023-10-14 22:21:03'),
(80, 1, '20231014370', '', '', '5', '3', '100', '2023-10-14 22:22:27'),
(81, 1, '20231014374', '', '', '5', '3', '100', '2023-10-14 22:31:21'),
(82, 1, '20231014384', '', '', '0.5', '0.3', '10', '2023-10-14 22:50:07'),
(83, 1, '20231014384', '', '', '5', '3', '100', '2023-10-14 22:50:11'),
(84, 1, '20231014410', '', '', '0.5', '0.3', '10', '2023-10-14 23:42:52'),
(85, 1, '20231014414', '', '', '0.5', '0.3', '10', '2023-10-14 23:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonuswithdrawal`
--

CREATE TABLE `tbl_bonuswithdrawal` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_envelop`
--

CREATE TABLE `tbl_envelop` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `amount` float NOT NULL,
  `status` smallint(6) NOT NULL,
  `rechargestatus` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gameid`
--

CREATE TABLE `tbl_gameid` (
  `id` int(11) NOT NULL,
  `gameid` varchar(500) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_gameid`
--

INSERT INTO `tbl_gameid` (`id`, `gameid`, `createdate`) VALUES
(6, '20231014001', '2023-10-14 04:17:33'),
(7, '20231014002', '2023-10-14 04:34:01'),
(8, '20231014003', '2023-10-14 04:36:01'),
(9, '20231014004', '2023-10-14 04:38:01'),
(10, '20231014005', '2023-10-14 04:40:01'),
(11, '20231014006', '2023-10-14 04:42:02'),
(12, '20231014007', '2023-10-14 04:44:02'),
(13, '20231014008', '2023-10-14 04:46:01'),
(14, '20231014009', '2023-10-14 04:48:01'),
(15, '20231014010', '2023-10-14 04:50:01'),
(16, '20231014011', '2023-10-14 04:52:01'),
(17, '20231014012', '2023-10-14 04:54:01'),
(18, '20231014013', '2023-10-14 04:56:01'),
(19, '20231014014', '2023-10-14 04:58:02'),
(20, '20231014015', '2023-10-14 05:00:02'),
(21, '20231014016', '2023-10-14 05:02:01'),
(22, '20231014017', '2023-10-14 05:04:01'),
(23, '20231014018', '2023-10-14 05:06:01'),
(24, '20231014019', '2023-10-14 05:08:01'),
(25, '20231014020', '2023-10-14 05:10:02'),
(26, '20231014021', '2023-10-14 05:12:01'),
(27, '20231014022', '2023-10-14 05:14:01'),
(28, '20231014023', '2023-10-14 05:16:02'),
(29, '20231014024', '2023-10-14 05:18:01'),
(30, '20231014025', '2023-10-14 05:20:01'),
(31, '20231014026', '2023-10-14 05:22:01'),
(32, '20231014027', '2023-10-14 05:24:01'),
(33, '20231014028', '2023-10-14 05:26:02'),
(34, '20231014029', '2023-10-14 05:28:01'),
(35, '20231014030', '2023-10-14 05:30:01'),
(36, '20231014031', '2023-10-14 05:32:01'),
(37, '20231014032', '2023-10-14 05:34:01'),
(38, '20231014033', '2023-10-14 05:36:01'),
(39, '20231014034', '2023-10-14 05:38:01'),
(40, '20231014035', '2023-10-14 05:40:02'),
(41, '20231014036', '2023-10-14 05:42:02'),
(42, '20231014037', '2023-10-14 05:44:02'),
(43, '20231014038', '2023-10-14 05:46:01'),
(44, '20231014039', '2023-10-14 05:48:01'),
(45, '20231014040', '2023-10-14 05:50:02'),
(46, '20231014041', '2023-10-14 05:52:02'),
(47, '20231014042', '2023-10-14 05:54:02'),
(48, '20231014043', '2023-10-14 05:56:01'),
(49, '20231014044', '2023-10-14 05:58:01'),
(50, '20231014045', '2023-10-14 06:00:01'),
(51, '20231014046', '2023-10-14 06:02:01'),
(52, '20231014047', '2023-10-14 06:04:02'),
(53, '20231014048', '2023-10-14 06:06:01'),
(54, '20231014049', '2023-10-14 06:08:02'),
(55, '20231014050', '2023-10-14 06:10:01'),
(56, '20231014051', '2023-10-14 06:12:01'),
(57, '20231014052', '2023-10-14 06:14:01'),
(58, '20231014053', '2023-10-14 06:16:02'),
(59, '20231014054', '2023-10-14 06:18:02'),
(60, '20231014055', '2023-10-14 06:20:02'),
(61, '20231014056', '2023-10-14 06:22:02'),
(62, '20231014057', '2023-10-14 06:24:02'),
(63, '20231014058', '2023-10-14 06:26:01'),
(64, '20231014059', '2023-10-14 06:28:02'),
(65, '20231014060', '2023-10-14 06:32:01'),
(66, '20231014061', '2023-10-14 06:34:01'),
(67, '20231014062', '2023-10-14 06:36:01'),
(68, '20231014063', '2023-10-14 06:38:01'),
(69, '20231014064', '2023-10-14 06:40:01'),
(70, '20231014065', '2023-10-14 06:42:01'),
(71, '20231014066', '2023-10-14 06:44:02'),
(72, '20231014067', '2023-10-14 06:46:01'),
(73, '20231014068', '2023-10-14 06:48:01'),
(74, '20231014069', '2023-10-14 06:50:01'),
(75, '20231014070', '2023-10-14 06:52:02'),
(76, '20231014071', '2023-10-14 06:54:01'),
(77, '20231014072', '2023-10-14 06:56:01'),
(78, '20231014073', '2023-10-14 06:58:01'),
(79, '20231014074', '2023-10-14 07:00:02'),
(80, '20231014075', '2023-10-14 07:02:01'),
(81, '20231014076', '2023-10-14 07:04:02'),
(82, '20231014077', '2023-10-14 07:06:01'),
(83, '20231014078', '2023-10-14 07:08:02'),
(84, '20231014079', '2023-10-14 07:10:02'),
(85, '20231014080', '2023-10-14 07:12:01'),
(86, '20231014081', '2023-10-14 07:14:02'),
(87, '20231014082', '2023-10-14 07:16:01'),
(88, '20231014083', '2023-10-14 07:18:01'),
(89, '20231014084', '2023-10-14 07:20:02'),
(90, '20231014085', '2023-10-14 07:22:01'),
(91, '20231014086', '2023-10-14 07:24:01'),
(92, '20231014087', '2023-10-14 07:26:02'),
(93, '20231014088', '2023-10-14 07:28:01'),
(94, '20231014089', '2023-10-14 07:30:02'),
(95, '20231014090', '2023-10-14 07:32:01'),
(96, '20231014091', '2023-10-14 07:34:01'),
(97, '20231014092', '2023-10-14 07:36:02'),
(98, '20231014093', '2023-10-14 07:38:01'),
(99, '20231014094', '2023-10-14 07:40:02'),
(100, '20231014095', '2023-10-14 07:42:01'),
(101, '20231014096', '2023-10-14 07:44:01'),
(102, '20231014097', '2023-10-14 07:46:01'),
(103, '20231014098', '2023-10-14 07:48:01'),
(104, '20231014099', '2023-10-14 07:50:02'),
(105, '20231014100', '2023-10-14 07:52:01'),
(106, '20231014101', '2023-10-14 07:54:01'),
(107, '20231014102', '2023-10-14 07:56:01'),
(108, '20231014103', '2023-10-14 07:58:01'),
(109, '20231014104', '2023-10-14 08:00:02'),
(110, '20231014105', '2023-10-14 08:02:01'),
(111, '20231014106', '2023-10-14 08:04:01'),
(112, '20231014107', '2023-10-14 08:06:01'),
(113, '20231014108', '2023-10-14 08:08:01'),
(114, '20231014109', '2023-10-14 08:10:01'),
(115, '20231014110', '2023-10-14 08:12:02'),
(116, '20231014111', '2023-10-14 08:14:01'),
(117, '20231014112', '2023-10-14 08:16:01'),
(118, '20231014113', '2023-10-14 08:18:02'),
(119, '20231014114', '2023-10-14 08:20:01'),
(120, '20231014115', '2023-10-14 08:22:01'),
(121, '20231014116', '2023-10-14 08:24:01'),
(122, '20231014117', '2023-10-14 08:26:01'),
(123, '20231014118', '2023-10-14 08:28:02'),
(124, '20231014119', '2023-10-14 08:30:02'),
(125, '20231014120', '2023-10-14 08:32:01'),
(126, '20231014121', '2023-10-14 08:34:01'),
(127, '20231014122', '2023-10-14 08:36:01'),
(128, '20231014123', '2023-10-14 08:38:02'),
(129, '20231014124', '2023-10-14 08:40:02'),
(130, '20231014125', '2023-10-14 08:42:01'),
(131, '20231014126', '2023-10-14 08:44:01'),
(132, '20231014127', '2023-10-14 08:46:02'),
(133, '20231014128', '2023-10-14 08:48:01'),
(134, '20231014129', '2023-10-14 08:50:01'),
(135, '20231014130', '2023-10-14 08:52:01'),
(136, '20231014131', '2023-10-14 08:54:02'),
(137, '20231014132', '2023-10-14 08:56:02'),
(138, '20231014133', '2023-10-14 08:58:01'),
(139, '20231014134', '2023-10-14 09:00:01'),
(140, '20231014135', '2023-10-14 09:02:01'),
(141, '20231014136', '2023-10-14 09:04:01'),
(142, '20231014137', '2023-10-14 09:06:01'),
(143, '20231014138', '2023-10-14 09:08:02'),
(144, '20231014139', '2023-10-14 09:10:02'),
(145, '20231014140', '2023-10-14 09:12:01'),
(146, '20231014141', '2023-10-14 09:14:01'),
(147, '20231014142', '2023-10-14 09:16:02'),
(148, '20231014143', '2023-10-14 09:18:02'),
(149, '20231014144', '2023-10-14 09:20:01'),
(150, '20231014145', '2023-10-14 09:22:01'),
(151, '20231014146', '2023-10-14 09:24:02'),
(152, '20231014147', '2023-10-14 09:26:02'),
(153, '20231014148', '2023-10-14 09:28:01'),
(154, '20231014149', '2023-10-14 09:30:02'),
(155, '20231014150', '2023-10-14 09:32:01'),
(156, '20231014151', '2023-10-14 09:34:02'),
(157, '20231014152', '2023-10-14 09:36:02'),
(158, '20231014153', '2023-10-14 09:38:02'),
(159, '20231014154', '2023-10-14 09:40:02'),
(160, '20231014155', '2023-10-14 09:42:02'),
(161, '20231014156', '2023-10-14 09:44:01'),
(162, '20231014157', '2023-10-14 09:46:01'),
(163, '20231014158', '2023-10-14 09:48:01'),
(164, '20231014159', '2023-10-14 09:50:01'),
(165, '20231014160', '2023-10-14 09:52:01'),
(166, '20231014161', '2023-10-14 09:54:02'),
(167, '20231014162', '2023-10-14 09:56:01'),
(168, '20231014163', '2023-10-14 09:58:01'),
(169, '20231014164', '2023-10-14 10:00:02'),
(170, '20231014165', '2023-10-14 10:02:01'),
(171, '20231014166', '2023-10-14 10:04:01'),
(172, '20231014167', '2023-10-14 10:06:01'),
(173, '20231014168', '2023-10-14 10:08:02'),
(174, '20231014169', '2023-10-14 10:10:02'),
(175, '20231014170', '2023-10-14 10:12:01'),
(176, '20231014171', '2023-10-14 10:14:02'),
(177, '20231014172', '2023-10-14 10:16:02'),
(178, '20231014173', '2023-10-14 10:18:01'),
(179, '20231014174', '2023-10-14 10:20:02'),
(180, '20231014175', '2023-10-14 10:22:01'),
(181, '20231014176', '2023-10-14 10:24:01'),
(182, '20231014177', '2023-10-14 10:26:02'),
(183, '20231014178', '2023-10-14 10:28:01'),
(184, '20231014179', '2023-10-14 10:30:02'),
(185, '20231014180', '2023-10-14 10:32:01'),
(186, '20231014181', '2023-10-14 10:34:02'),
(187, '20231014182', '2023-10-14 10:36:02'),
(188, '20231014183', '2023-10-14 10:38:01'),
(189, '20231014184', '2023-10-14 10:40:01'),
(190, '20231014185', '2023-10-14 10:42:02'),
(191, '20231014186', '2023-10-14 10:44:02'),
(192, '20231014187', '2023-10-14 10:46:01'),
(193, '20231014188', '2023-10-14 10:48:01'),
(194, '20231014189', '2023-10-14 10:50:02'),
(195, '20231014190', '2023-10-14 10:52:01'),
(196, '20231014191', '2023-10-14 10:54:02'),
(197, '20231014192', '2023-10-14 10:56:02'),
(198, '20231014193', '2023-10-14 10:58:02'),
(199, '20231014194', '2023-10-14 11:00:02'),
(200, '20231014195', '2023-10-14 11:02:01'),
(201, '20231014196', '2023-10-14 11:04:02'),
(202, '20231014197', '2023-10-14 11:06:01'),
(203, '20231014198', '2023-10-14 11:08:02'),
(204, '20231014199', '2023-10-14 11:10:01'),
(205, '20231014200', '2023-10-14 11:12:02'),
(206, '20231014201', '2023-10-14 11:14:01'),
(207, '20231014202', '2023-10-14 11:16:01'),
(208, '20231014203', '2023-10-14 11:18:01'),
(209, '20231014204', '2023-10-14 11:20:02'),
(210, '20231014205', '2023-10-14 11:22:02'),
(211, '20231014206', '2023-10-14 11:24:01'),
(212, '20231014207', '2023-10-14 11:26:01'),
(213, '20231014208', '2023-10-14 11:28:01'),
(214, '20231014209', '2023-10-14 11:30:01'),
(215, '20231014210', '2023-10-14 11:32:02'),
(216, '20231014211', '2023-10-14 11:34:02'),
(217, '20231014212', '2023-10-14 11:36:01'),
(218, '20231014213', '2023-10-14 11:38:01'),
(219, '20231014214', '2023-10-14 11:40:01'),
(220, '20231014215', '2023-10-14 11:42:02'),
(221, '20231014216', '2023-10-14 11:44:01'),
(222, '20231014217', '2023-10-14 11:46:01'),
(223, '20231014218', '2023-10-14 11:48:02'),
(224, '20231014219', '2023-10-14 11:50:02'),
(225, '20231014220', '2023-10-14 11:52:02'),
(226, '20231014221', '2023-10-14 11:54:02'),
(227, '20231014222', '2023-10-14 11:56:01'),
(228, '20231014223', '2023-10-14 11:58:01'),
(229, '20231014224', '2023-10-14 12:00:02'),
(230, '20231014225', '2023-10-14 12:02:01'),
(231, '20231014226', '2023-10-14 12:04:01'),
(232, '20231014227', '2023-10-14 12:06:01'),
(233, '20231014228', '2023-10-14 12:08:02'),
(234, '20231014229', '2023-10-14 12:10:01'),
(235, '20231014230', '2023-10-14 12:12:01'),
(236, '20231014231', '2023-10-14 12:14:01'),
(237, '20231014232', '2023-10-14 12:16:02'),
(238, '20231014233', '2023-10-14 12:18:02'),
(239, '20231014234', '2023-10-14 12:20:02'),
(240, '20231014235', '2023-10-14 12:22:01'),
(241, '20231014236', '2023-10-14 12:24:01'),
(242, '20231014237', '2023-10-14 12:26:01'),
(243, '20231014238', '2023-10-14 12:28:01'),
(244, '20231014239', '2023-10-14 12:30:01'),
(245, '20231014240', '2023-10-14 12:32:01'),
(246, '20231014241', '2023-10-14 12:34:02'),
(247, '20231014242', '2023-10-14 12:36:02'),
(248, '20231014243', '2023-10-14 12:38:01'),
(249, '20231014244', '2023-10-14 12:40:02'),
(250, '20231014245', '2023-10-14 12:42:02'),
(251, '20231014246', '2023-10-14 12:44:01'),
(252, '20231014247', '2023-10-14 12:46:01'),
(253, '20231014248', '2023-10-14 12:48:02'),
(254, '20231014249', '2023-10-14 12:50:02'),
(255, '20231014250', '2023-10-14 12:52:02'),
(256, '20231014251', '2023-10-14 12:54:01'),
(257, '20231014252', '2023-10-14 12:56:01'),
(258, '20231014253', '2023-10-14 12:58:01'),
(259, '20231014254', '2023-10-14 13:00:01'),
(260, '20231014255', '2023-10-14 13:02:01'),
(261, '20231014256', '2023-10-14 13:04:02'),
(262, '20231014257', '2023-10-14 13:06:01'),
(263, '20231014258', '2023-10-14 13:08:02'),
(264, '20231014259', '2023-10-14 13:10:02'),
(265, '20231014260', '2023-10-14 13:12:01'),
(266, '20231014261', '2023-10-14 13:14:02'),
(267, '20231014262', '2023-10-14 13:16:02'),
(268, '20231014263', '2023-10-14 13:18:01'),
(269, '20231014264', '2023-10-14 13:20:02'),
(270, '20231014265', '2023-10-14 13:22:01'),
(271, '20231014266', '2023-10-14 13:24:02'),
(272, '20231014267', '2023-10-14 13:26:02'),
(273, '20231014268', '2023-10-14 13:28:02'),
(274, '20231014269', '2023-10-14 13:30:02'),
(275, '20231014270', '2023-10-14 13:32:02'),
(276, '20231014271', '2023-10-14 13:34:02'),
(277, '20231014272', '2023-10-14 13:36:01'),
(278, '20231014273', '2023-10-14 13:38:02'),
(279, '20231014274', '2023-10-14 13:40:02'),
(280, '20231014275', '2023-10-14 13:42:02'),
(281, '20231014276', '2023-10-14 13:44:02'),
(282, '20231014277', '2023-10-14 13:46:01'),
(283, '20231014278', '2023-10-14 13:48:02'),
(284, '20231014279', '2023-10-14 13:50:01'),
(285, '20231014280', '2023-10-14 13:52:02'),
(286, '20231014281', '2023-10-14 13:54:02'),
(287, '20231014282', '2023-10-14 13:56:02'),
(288, '20231014283', '2023-10-14 13:58:01'),
(289, '20231014284', '2023-10-14 14:00:01'),
(290, '20231014285', '2023-10-14 14:02:01'),
(291, '20231014286', '2023-10-14 14:04:01'),
(292, '20231014287', '2023-10-14 14:06:02'),
(293, '20231014288', '2023-10-14 14:08:02'),
(294, '20231014289', '2023-10-14 14:10:02'),
(295, '20231014290', '2023-10-14 14:12:01'),
(296, '20231014291', '2023-10-14 14:14:01'),
(297, '20231014292', '2023-10-14 14:16:01'),
(298, '20231014293', '2023-10-14 14:18:01'),
(299, '20231014294', '2023-10-14 14:20:02'),
(300, '20231014295', '2023-10-14 14:22:02'),
(301, '20231014296', '2023-10-14 14:24:02'),
(302, '20231014297', '2023-10-14 14:26:01'),
(303, '20231014298', '2023-10-14 14:28:01'),
(304, '20231014299', '2023-10-14 14:30:02'),
(305, '20231014300', '2023-10-14 14:32:02'),
(306, '20231014301', '2023-10-14 14:34:02'),
(307, '20231014302', '2023-10-14 14:36:01'),
(308, '20231014303', '2023-10-14 14:38:02'),
(309, '20231014304', '2023-10-14 14:40:01'),
(310, '20231014305', '2023-10-14 14:42:02'),
(311, '20231014306', '2023-10-14 14:44:01'),
(312, '20231014307', '2023-10-14 14:46:01'),
(313, '20231014308', '2023-10-14 14:48:01'),
(314, '20231014309', '2023-10-14 14:50:02'),
(315, '20231014310', '2023-10-14 14:52:01'),
(316, '20231014311', '2023-10-14 14:54:01'),
(317, '20231014312', '2023-10-14 14:56:01'),
(318, '20231014313', '2023-10-14 14:58:02'),
(319, '20231014314', '2023-10-14 15:00:02'),
(320, '20231014315', '2023-10-14 15:02:01'),
(321, '20231014316', '2023-10-14 15:04:01'),
(322, '20231014317', '2023-10-14 15:06:01'),
(323, '20231014318', '2023-10-14 15:08:01'),
(324, '20231014319', '2023-10-14 15:10:02'),
(325, '20231014320', '2023-10-14 15:12:01'),
(326, '20231014321', '2023-10-14 15:14:02'),
(327, '20231014322', '2023-10-14 15:16:02'),
(328, '20231014323', '2023-10-14 15:18:02'),
(329, '20231014324', '2023-10-14 15:20:01'),
(330, '20231014325', '2023-10-14 15:22:02'),
(331, '20231014326', '2023-10-14 15:24:01'),
(332, '20231014327', '2023-10-14 15:26:02'),
(333, '20231014328', '2023-10-14 15:28:01'),
(334, '20231014329', '2023-10-14 15:30:02'),
(335, '20231014330', '2023-10-14 15:32:01'),
(336, '20231014331', '2023-10-14 15:34:02'),
(337, '20231014332', '2023-10-14 15:36:02'),
(338, '20231014333', '2023-10-14 15:38:01'),
(339, '20231014334', '2023-10-14 15:40:02'),
(340, '20231014335', '2023-10-14 15:42:01'),
(341, '20231014336', '2023-10-14 15:44:01'),
(342, '20231014337', '2023-10-14 15:46:02'),
(343, '20231014338', '2023-10-14 15:48:01'),
(344, '20231014339', '2023-10-14 15:50:02'),
(345, '20231014340', '2023-10-14 15:52:02'),
(346, '20231014341', '2023-10-14 15:54:01'),
(347, '20231014342', '2023-10-14 15:56:01'),
(348, '20231014343', '2023-10-14 15:58:01'),
(349, '20231014344', '2023-10-14 16:00:01'),
(350, '20231014345', '2023-10-14 16:02:01'),
(351, '20231014346', '2023-10-14 16:04:02'),
(352, '20231014347', '2023-10-14 16:06:02'),
(353, '20231014348', '2023-10-14 16:08:01'),
(354, '20231014349', '2023-10-14 16:10:02'),
(355, '20231014350', '2023-10-14 16:12:01'),
(356, '20231014351', '2023-10-14 16:14:01'),
(357, '20231014352', '2023-10-14 16:16:01'),
(358, '20231014353', '2023-10-14 16:18:01'),
(359, '20231014354', '2023-10-14 16:20:02'),
(360, '20231014355', '2023-10-14 16:22:02'),
(361, '20231014356', '2023-10-14 16:24:01'),
(362, '20231014357', '2023-10-14 16:26:02'),
(363, '20231014358', '2023-10-14 16:28:02'),
(364, '20231014359', '2023-10-14 16:30:02'),
(365, '20231014360', '2023-10-14 16:32:01'),
(366, '20231014361', '2023-10-14 16:34:01'),
(367, '20231014362', '2023-10-14 16:36:01'),
(368, '20231014363', '2023-10-14 16:38:01'),
(369, '20231014364', '2023-10-14 16:40:01'),
(370, '20231014365', '2023-10-14 16:42:01'),
(371, '20231014366', '2023-10-14 16:44:01'),
(372, '20231014367', '2023-10-14 16:46:01'),
(373, '20231014368', '2023-10-14 16:48:02'),
(374, '20231014369', '2023-10-14 16:50:01'),
(375, '20231014370', '2023-10-14 16:52:01'),
(376, '20231014371', '2023-10-14 16:54:01'),
(377, '20231014372', '2023-10-14 16:56:02'),
(378, '20231014373', '2023-10-14 16:58:02'),
(379, '20231014374', '2023-10-14 17:00:02'),
(380, '20231014375', '2023-10-14 17:02:01'),
(381, '20231014376', '2023-10-14 17:04:02'),
(382, '20231014377', '2023-10-14 17:06:02'),
(383, '20231014378', '2023-10-14 17:08:01'),
(384, '20231014379', '2023-10-14 17:10:02'),
(385, '20231014380', '2023-10-14 17:12:02'),
(386, '20231014381', '2023-10-14 17:14:01'),
(387, '20231014382', '2023-10-14 17:16:01'),
(388, '20231014383', '2023-10-14 17:18:02'),
(389, '20231014384', '2023-10-14 17:20:01'),
(390, '20231014385', '2023-10-14 17:22:01'),
(391, '20231014386', '2023-10-14 17:24:01'),
(392, '20231014387', '2023-10-14 17:26:01'),
(393, '20231014388', '2023-10-14 17:28:01'),
(394, '20231014389', '2023-10-14 17:30:02'),
(395, '20231014390', '2023-10-14 17:32:01'),
(396, '20231014391', '2023-10-14 17:34:01'),
(397, '20231014392', '2023-10-14 17:36:01'),
(398, '20231014393', '2023-10-14 17:38:01'),
(399, '20231014394', '2023-10-14 17:40:02'),
(400, '20231014395', '2023-10-14 17:42:01'),
(401, '20231014396', '2023-10-14 17:44:02'),
(402, '20231014397', '2023-10-14 17:46:02'),
(403, '20231014398', '2023-10-14 17:48:02'),
(404, '20231014399', '2023-10-14 17:50:01'),
(405, '20231014400', '2023-10-14 17:52:01'),
(406, '20231014401', '2023-10-14 17:54:01'),
(407, '20231014402', '2023-10-14 17:56:01'),
(408, '20231014403', '2023-10-14 17:58:01'),
(409, '20231014404', '2023-10-14 18:00:02'),
(410, '20231014405', '2023-10-14 18:02:01'),
(411, '20231014406', '2023-10-14 18:04:01'),
(412, '20231014407', '2023-10-14 18:06:02'),
(413, '20231014408', '2023-10-14 18:08:01'),
(414, '20231014409', '2023-10-14 18:10:02'),
(415, '20231014410', '2023-10-14 18:12:01'),
(416, '20231014411', '2023-10-14 18:14:01'),
(417, '20231014412', '2023-10-14 18:16:01'),
(418, '20231014413', '2023-10-14 18:18:02'),
(419, '20231014414', '2023-10-14 18:20:02'),
(420, '20231014415', '2023-10-14 18:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gamesettings`
--

CREATE TABLE `tbl_gamesettings` (
  `id` int(11) NOT NULL,
  `settingtype` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_gamesettings`
--

INSERT INTO `tbl_gamesettings` (`id`, `settingtype`, `createdate`) VALUES
(1, 'low', '2023-10-14 21:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intrest`
--

CREATE TABLE `tbl_intrest` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intrest_amt`
--

CREATE TABLE `tbl_intrest_amt` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `points` varchar(200) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_intrest_amt`
--

INSERT INTO `tbl_intrest_amt` (`id`, `userid`, `amount`, `points`, `createdate`) VALUES
(1, 1, '0', '', '2023-08-31 08:48:27'),
(2, 2, '0', '', '2023-08-31 08:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manualresult`
--

CREATE TABLE `tbl_manualresult` (
  `id` int(11) NOT NULL,
  `color` varchar(300) NOT NULL,
  `value` varchar(300) NOT NULL,
  `number` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manualresult`
--

INSERT INTO `tbl_manualresult` (`id`, `color`, `value`, `number`, `status`, `createdate`) VALUES
(1, '<span style=\"color:#f00;\">Red</span> + <span style=\"color:#C71585;\">Violet</span>', 'red+violet', 0, 0, '2021-02-01 00:00:00'),
(2, '<span style=\"color:#090;\">Green</span>', 'green', 1, 0, '2021-02-01 00:00:00'),
(3, '<span style=\"color:#f00;\">Red</span>', 'red', 2, 0, '2021-02-01 00:00:00'),
(4, '<span style=\"color:#090;\">Green</span>', 'green', 3, 0, '2021-02-01 00:00:00'),
(5, '<span style=\"color:#f00;\">Red</span>', 'red', 4, 0, '2021-02-01 00:00:00'),
(6, '<span style=\"color:#090;\">Green</span> + <span style=\"color:#C71585;\">Violet</span>', 'green+violet', 5, 0, '2021-02-01 00:00:00'),
(7, '<span style=\"color:#f00;\">Red</span>', 'red', 6, 0, '2021-02-01 00:00:00'),
(8, '<span style=\"color:#090;\">Green</span>', 'green', 7, 0, '2021-02-01 00:00:00'),
(9, '<span style=\"color:#f00;\">Red</span>', 'red', 8, 0, '2021-02-01 00:00:00'),
(10, '<span style=\"color:#090;\">Green</span>', 'green', 9, 0, '2021-02-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manualresultswitch`
--

CREATE TABLE `tbl_manualresultswitch` (
  `id` int(11) NOT NULL,
  `switch` varchar(50) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manualresultswitch`
--

INSERT INTO `tbl_manualresultswitch` (`id`, `switch`, `tab`, `createdate`) VALUES
(1, 'no', 'parity', '2023-10-14 21:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `transactionid` varchar(300) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `userid`, `transactionid`, `amount`, `status`, `createdate`) VALUES
(1, 2, 'withdraw', '1000', 1, '2023-10-14 04:41:14'),
(2, 225, '20231014067', '10', 1, '2023-10-14 06:46:11'),
(3, 225, '20231014068', '10', 1, '2023-10-14 06:49:18'),
(4, 225, '20231014069', '40', 1, '2023-10-14 06:50:25'),
(5, 225, '20231014069', '342', 1, '2023-10-14 12:22:02'),
(6, 1, '20231014073', '10', 1, '2023-10-14 06:58:07'),
(7, 1, '20231014073', '10', 1, '2023-10-14 06:58:26'),
(8, 1, '20231014074', '10', 1, '2023-10-14 07:00:06'),
(9, 225, 'withdraw', '506', 1, '2023-10-14 07:15:33'),
(10, 227, '20231014091', '10', 1, '2023-10-14 07:34:33'),
(11, 227, '20231014091', '10', 1, '2023-10-14 07:35:16'),
(12, 227, '20231014092', '10', 1, '2023-10-14 07:36:25'),
(13, 227, '20231014092', '20', 1, '2023-10-14 07:36:40'),
(14, 227, '20231014092', '10', 1, '2023-10-14 07:36:45'),
(15, 227, '20231014092', '10', 1, '2023-10-14 07:36:50'),
(16, 227, '20231014092', '10', 1, '2023-10-14 07:36:54'),
(17, 227, '20231014092', '10', 1, '2023-10-14 07:37:00'),
(18, 227, '20231014092', '10', 1, '2023-10-14 07:37:03'),
(19, 227, '20231014092', '19', 1, '2023-10-14 13:08:01'),
(20, 227, '20231014092', '19', 1, '2023-10-14 13:08:01'),
(21, 227, '20231014093', '20', 1, '2023-10-14 07:38:21'),
(22, 227, '20231014093', '10', 1, '2023-10-14 07:38:47'),
(23, 227, '20231014093', '14.25', 1, '2023-10-14 13:10:02'),
(24, 1, '20231014094', '10', 1, '2023-10-14 07:40:08'),
(25, 227, '20231014094', '20', 1, '2023-10-14 07:40:14'),
(26, 1, '20231014094', '10', 1, '2023-10-14 07:40:16'),
(27, 1, '20231014094', '10', 1, '2023-10-14 07:40:30'),
(28, 1, '20231014094', '10', 1, '2023-10-14 07:40:40'),
(29, 1, '20231014096', '10', 1, '2023-10-14 07:44:27'),
(30, 1, '20231014096', '10', 1, '2023-10-14 07:44:38'),
(31, 1, '20231014096', '10', 1, '2023-10-14 07:44:41'),
(32, 1, '20231014096', '10', 1, '2023-10-14 07:44:48'),
(33, 1, '20231014096', '10', 1, '2023-10-14 07:44:55'),
(34, 1, '20231014096', '10', 1, '2023-10-14 07:45:02'),
(35, 1, '20231014096', '10', 1, '2023-10-14 07:45:05'),
(36, 1, '20231014096', '19', 1, '2023-10-14 13:16:01'),
(37, 1, '20231014101', '10', 1, '2023-10-14 07:54:53'),
(38, 1, '20231014101', '10', 1, '2023-10-14 07:54:56'),
(39, 1, '20231014101', '10', 1, '2023-10-14 07:54:59'),
(40, 1, '20231014101', '10', 1, '2023-10-14 07:55:04'),
(41, 1, '20231014101', '10', 1, '2023-10-14 07:55:11'),
(42, 228, '20231014107', '10', 1, '2023-10-14 08:06:08'),
(43, 228, '20231014107', '10', 1, '2023-10-14 08:06:13'),
(44, 228, '20231014107', '10', 1, '2023-10-14 08:06:17'),
(45, 228, '20231014107', '85.5', 1, '2023-10-14 13:38:01'),
(46, 228, 'withdraw', '500', 1, '2023-10-14 08:16:05'),
(47, 229, '20231014116', '10', 1, '2023-10-14 08:24:47'),
(48, 229, '20231014116', '10', 1, '2023-10-14 08:24:48'),
(49, 229, '20231014116', '10', 1, '2023-10-14 08:24:48'),
(50, 229, '20231014117', '10', 1, '2023-10-14 08:27:01'),
(51, 229, '20231014119', '10', 1, '2023-10-14 08:30:42'),
(52, 1, 'reward', '10', 1, '2023-10-14 08:33:36'),
(53, 229, '20231014121', '10', 1, '2023-10-14 08:34:07'),
(54, 228, '20231014123', '10', 1, '2023-10-14 08:38:57'),
(55, 228, '20231014123', '10', 1, '2023-10-14 08:39:03'),
(56, 228, '20231014123', '10', 1, '2023-10-14 08:39:10'),
(57, 228, '20231014123', '10', 1, '2023-10-14 08:39:21'),
(58, 228, '20231014125', '10', 1, '2023-10-14 08:42:19'),
(59, 229, '20231014125', '20', 1, '2023-10-14 08:43:20'),
(60, 228, '20231014125', '85.5', 1, '2023-10-14 14:14:01'),
(61, 229, '20231014125', '171', 1, '2023-10-14 14:14:01'),
(62, 1, '20231014150', '400', 1, '2023-10-14 09:33:25'),
(63, 1, '20231014150', '3420', 1, '2023-10-14 15:04:02'),
(64, 1, '20231014173', '10', 1, '2023-10-14 10:18:16'),
(65, 1, '20231014173', '10', 1, '2023-10-14 10:18:24'),
(66, 1, '20231014173', '85.5', 1, '2023-10-14 15:50:02'),
(67, 1, '20231014173', '19', 1, '2023-10-14 15:50:02'),
(68, 1, '20231014174', '10', 1, '2023-10-14 10:21:05'),
(69, 1, 'withdraw', '500', 1, '2023-10-14 10:26:51'),
(70, 1, 'withdraw', '500', 1, '2023-10-14 10:27:06'),
(71, 1, '20231014234', '10', 1, '2023-10-14 12:20:36'),
(72, 1, '20231014234', '10', 1, '2023-10-14 12:20:39'),
(73, 1, '20231014234', '10', 1, '2023-10-14 12:20:48'),
(74, 1, '20231014234', '10', 1, '2023-10-14 12:20:51'),
(75, 1, '20231014251', '10', 1, '2023-10-14 12:54:25'),
(76, 1, '20231014251', '10', 1, '2023-10-14 12:54:27'),
(77, 1, '20231014253', '10', 1, '2023-10-14 12:58:11'),
(78, 1, '20231014253', '10', 1, '2023-10-14 12:58:14'),
(79, 1, '20231014253', '85.5', 1, '2023-10-14 18:30:01'),
(80, 1, '20231014300', '10', 1, '2023-10-14 14:32:14'),
(81, 1, '20231014300', '10', 1, '2023-10-14 14:32:19'),
(82, 1, '20231014300', '10', 1, '2023-10-14 14:32:24'),
(83, 1, '20231014300', '10', 1, '2023-10-14 14:32:31'),
(84, 1, '20231014313', '10', 1, '2023-10-14 14:58:08'),
(85, 1, '20231014313', '10', 1, '2023-10-14 14:58:11'),
(86, 1, '20231014313', '10', 1, '2023-10-14 14:58:15'),
(87, 1, '20231014313', '10', 1, '2023-10-14 14:58:18'),
(88, 1, '20231014313', '10', 1, '2023-10-14 14:58:31'),
(89, 1, '20231014313', '10', 1, '2023-10-14 14:58:41'),
(90, 1, '20231014313', '10', 1, '2023-10-14 14:58:44'),
(91, 1, '20231014313', '19', 1, '2023-10-14 20:30:02'),
(92, 230, '20231014351', '10', 1, '2023-10-14 16:14:16'),
(93, 230, '20231014351', '85.5', 1, '2023-10-14 21:46:01'),
(94, 1, '20231014353', '100', 1, '2023-10-14 16:18:24'),
(95, 1, '20231014353', '300', 1, '2023-10-14 16:18:32'),
(96, 1, '20231014353', '190', 1, '2023-10-14 21:50:02'),
(97, 1, '20231014364', '100', 1, '2023-10-14 16:40:27'),
(98, 1, '20231014367', '100', 1, '2023-10-14 16:46:26'),
(99, 1, '20231014368', '100', 1, '2023-10-14 16:49:07'),
(100, 1, '20231014369', '100', 1, '2023-10-14 16:51:03'),
(101, 1, '20231014370', '100', 1, '2023-10-14 16:52:27'),
(102, 1, '20231014374', '100', 1, '2023-10-14 17:01:21'),
(103, 1, '20231014384', '10', 1, '2023-10-14 17:20:07'),
(104, 1, '20231014384', '100', 1, '2023-10-14 17:20:11'),
(105, 1, '20231014410', '10', 1, '2023-10-14 18:12:52'),
(106, 1, '20231014414', '10', 1, '2023-10-14 18:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paymentsetting`
--

CREATE TABLE `tbl_paymentsetting` (
  `id` int(11) NOT NULL,
  `commission_rate` int(11) NOT NULL COMMENT 'Rate in %',
  `rechargeamount` varchar(500) NOT NULL,
  `withdrawalamount` varchar(500) NOT NULL,
  `bonusamount` varchar(500) NOT NULL,
  `rechargebonus` varchar(500) NOT NULL COMMENT 'in%age',
  `level1` varchar(300) NOT NULL COMMENT 'In%age',
  `level2` varchar(300) NOT NULL COMMENT 'In%age',
  `withdrawal_status` varchar(222) NOT NULL,
  `upi_id` varchar(226) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_paymentsetting`
--

INSERT INTO `tbl_paymentsetting` (`id`, `commission_rate`, `rechargeamount`, `withdrawalamount`, `bonusamount`, `rechargebonus`, `level1`, `level2`, `withdrawal_status`, `upi_id`) VALUES
(1, 10, '200', '500', '0', '10%', '5%', '3%', 'off', '7517597629@fam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `images` varchar(300) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productfeature`
--

CREATE TABLE `tbl_productfeature` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `feature` varchar(500) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_randomdata`
--

CREATE TABLE `tbl_randomdata` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `result` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `timer` int(11) NOT NULL,
  `dayofweek` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_randomdata`
--

INSERT INTO `tbl_randomdata` (`id`, `price`, `result`, `color`, `timer`, `dayofweek`) VALUES
(1, 31069, 9, 'GREEN', 1, 'Day 1'),
(2, 31041, 1, 'GREEN', 2, 'Day 1'),
(3, 31026, 6, 'RED', 3, 'Day 1'),
(4, 30937, 7, 'GREEN', 4, 'Day 1'),
(5, 31024, 4, 'RED', 5, 'Day 1'),
(6, 30952, 2, 'RED', 6, 'Day 1'),
(7, 30863, 3, 'GREEN', 7, 'Day 1'),
(8, 30808, 8, 'RED', 8, 'Day 1'),
(9, 30795, 5, 'GREEN & VIOLET', 9, 'Day 1'),
(10, 30710, 0, 'RED & VIOLET', 10, 'Day 1'),
(11, 30706, 6, 'RED', 11, 'Day 1'),
(12, 30702, 2, 'RED', 12, 'Day 1'),
(13, 30769, 9, 'GREEN', 13, 'Day 1'),
(14, 30809, 9, 'GREEN', 14, 'Day 1'),
(15, 30782, 2, 'RED', 15, 'Day 1'),
(16, 30879, 9, 'GREEN', 16, 'Day 1'),
(17, 30810, 0, 'RED & VIOLET', 17, 'Day 1'),
(18, 30891, 1, 'GREEN', 18, 'Day 1'),
(19, 30973, 3, 'GREEN', 19, 'Day 1'),
(20, 30871, 1, 'GREEN', 20, 'Day 1'),
(21, 30846, 6, 'RED', 21, 'Day 1'),
(22, 30885, 5, 'GREEN & VIOLET', 22, 'Day 1'),
(23, 30951, 1, 'GREEN', 23, 'Day 1'),
(24, 31000, 0, 'RED & VIOLET', 24, 'Day 1'),
(25, 31011, 1, 'GREEN', 25, 'Day 1'),
(26, 30922, 2, 'RED', 26, 'Day 1'),
(27, 30967, 7, 'GREEN', 27, 'Day 1'),
(28, 30881, 1, 'GREEN', 28, 'Day 1'),
(29, 30857, 7, 'GREEN', 29, 'Day 1'),
(30, 30786, 6, 'RED', 30, 'Day 1'),
(31, 30761, 1, 'GREEN', 31, 'Day 1'),
(32, 30724, 4, 'RED', 32, 'Day 1'),
(33, 30778, 8, 'RED', 33, 'Day 1'),
(34, 30863, 3, 'GREEN', 34, 'Day 1'),
(35, 30940, 0, 'RED & VIOLET', 35, 'Day 1'),
(36, 30844, 4, 'RED', 36, 'Day 1'),
(37, 30803, 3, 'GREEN', 37, 'Day 1'),
(38, 30852, 2, 'RED', 38, 'Day 1'),
(39, 30945, 5, 'GREEN & VIOLET', 39, 'Day 1'),
(40, 30882, 2, 'RED', 40, 'Day 1'),
(41, 30853, 3, 'GREEN', 41, 'Day 1'),
(42, 30931, 1, 'GREEN', 42, 'Day 1'),
(43, 30901, 1, 'GREEN', 43, 'Day 1'),
(44, 30821, 1, 'GREEN', 44, 'Day 1'),
(45, 30784, 4, 'RED', 45, 'Day 1'),
(46, 30754, 4, 'RED', 46, 'Day 1'),
(47, 30816, 6, 'RED', 47, 'Day 1'),
(48, 30912, 2, 'RED', 48, 'Day 1'),
(49, 30836, 6, 'RED', 49, 'Day 1'),
(50, 30807, 7, 'GREEN', 50, 'Day 1'),
(51, 30800, 0, 'RED & VIOLET', 51, 'Day 1'),
(52, 30811, 1, 'GREEN', 52, 'Day 1'),
(53, 30859, 9, 'GREEN', 53, 'Day 1'),
(54, 30840, 0, 'RED & VIOLET', 54, 'Day 1'),
(55, 30934, 4, 'RED', 55, 'Day 1'),
(56, 30853, 3, 'GREEN', 56, 'Day 1'),
(57, 30802, 2, 'RED', 57, 'Day 1'),
(58, 30812, 2, 'RED', 58, 'Day 1'),
(59, 30845, 5, 'GREEN & VIOLET', 59, 'Day 1'),
(60, 30873, 3, 'GREEN', 60, 'Day 1'),
(61, 30799, 9, 'GREEN', 61, 'Day 1'),
(62, 30803, 3, 'GREEN', 62, 'Day 1'),
(63, 30858, 8, 'RED', 63, 'Day 1'),
(64, 30903, 3, 'GREEN', 64, 'Day 1'),
(65, 30872, 2, 'RED', 65, 'Day 1'),
(66, 30774, 4, 'RED', 66, 'Day 1'),
(67, 30856, 6, 'RED', 67, 'Day 1'),
(68, 30823, 3, 'GREEN', 68, 'Day 1'),
(69, 30826, 6, 'RED', 69, 'Day 1'),
(70, 30789, 9, 'GREEN', 70, 'Day 1'),
(71, 30748, 8, 'RED', 71, 'Day 1'),
(72, 30834, 4, 'RED', 72, 'Day 1'),
(73, 30785, 5, 'GREEN & VIOLET', 73, 'Day 1'),
(74, 30830, 0, 'RED & VIOLET', 74, 'Day 1'),
(75, 30792, 2, 'RED', 75, 'Day 1'),
(76, 30792, 2, 'RED', 76, 'Day 1'),
(77, 30874, 4, 'RED', 77, 'Day 1'),
(78, 30817, 7, 'GREEN', 78, 'Day 1'),
(79, 30776, 6, 'RED', 79, 'Day 1'),
(80, 30873, 3, 'GREEN', 80, 'Day 1'),
(81, 30905, 5, 'GREEN & VIOLET', 81, 'Day 1'),
(82, 31001, 1, 'GREEN', 82, 'Day 1'),
(83, 31032, 2, 'RED', 83, 'Day 1'),
(84, 31071, 1, 'GREEN', 84, 'Day 1'),
(85, 31067, 7, 'GREEN', 85, 'Day 1'),
(86, 31072, 2, 'RED', 86, 'Day 1'),
(87, 31157, 7, 'GREEN', 87, 'Day 1'),
(88, 31197, 7, 'GREEN', 88, 'Day 1'),
(89, 31200, 0, 'RED & VIOLET', 89, 'Day 1'),
(90, 31113, 3, 'GREEN', 90, 'Day 1'),
(91, 31112, 2, 'RED', 91, 'Day 1'),
(92, 31198, 8, 'RED', 92, 'Day 1'),
(93, 31130, 0, 'RED & VIOLET', 93, 'Day 1'),
(94, 31109, 9, 'GREEN', 94, 'Day 1'),
(95, 31142, 2, 'RED', 95, 'Day 1'),
(96, 31223, 3, 'GREEN', 96, 'Day 1'),
(97, 31270, 0, 'RED & VIOLET', 97, 'Day 1'),
(98, 31297, 7, 'GREEN', 98, 'Day 1'),
(99, 31208, 8, 'RED', 99, 'Day 1'),
(100, 31152, 2, 'RED', 100, 'Day 1'),
(101, 31232, 2, 'RED', 101, 'Day 1'),
(102, 31299, 9, 'GREEN', 102, 'Day 1'),
(103, 31388, 8, 'RED', 103, 'Day 1'),
(104, 31337, 7, 'GREEN', 104, 'Day 1'),
(105, 31360, 0, 'RED & VIOLET', 105, 'Day 1'),
(106, 31417, 7, 'GREEN', 106, 'Day 1'),
(107, 31394, 4, 'RED', 107, 'Day 1'),
(108, 31486, 6, 'RED', 108, 'Day 1'),
(109, 31450, 0, 'RED & VIOLET', 109, 'Day 1'),
(110, 31482, 2, 'RED', 110, 'Day 1'),
(111, 31512, 2, 'RED', 111, 'Day 1'),
(112, 31483, 3, 'GREEN', 112, 'Day 1'),
(113, 31532, 2, 'RED', 113, 'Day 1'),
(114, 31549, 9, 'GREEN', 114, 'Day 1'),
(115, 31458, 8, 'RED', 115, 'Day 1'),
(116, 31528, 8, 'RED', 116, 'Day 1'),
(117, 31612, 2, 'RED', 117, 'Day 1'),
(118, 31553, 3, 'GREEN', 118, 'Day 1'),
(119, 31553, 3, 'GREEN', 119, 'Day 1'),
(120, 31514, 4, 'RED', 120, 'Day 1'),
(121, 31551, 1, 'GREEN', 121, 'Day 1'),
(122, 31568, 8, 'RED', 122, 'Day 1'),
(123, 31577, 7, 'GREEN', 123, 'Day 1'),
(124, 31486, 6, 'RED', 124, 'Day 1'),
(125, 31498, 8, 'RED', 125, 'Day 1'),
(126, 31457, 7, 'GREEN', 126, 'Day 1'),
(127, 31394, 4, 'RED', 127, 'Day 1'),
(128, 31416, 6, 'RED', 128, 'Day 1'),
(129, 31426, 6, 'RED', 129, 'Day 1'),
(130, 31480, 0, 'RED & VIOLET', 130, 'Day 1'),
(131, 31424, 4, 'RED', 131, 'Day 1'),
(132, 31414, 4, 'RED', 132, 'Day 1'),
(133, 31398, 8, 'RED', 133, 'Day 1'),
(134, 31417, 7, 'GREEN', 134, 'Day 1'),
(135, 31443, 3, 'GREEN', 135, 'Day 1'),
(136, 31483, 3, 'GREEN', 136, 'Day 1'),
(137, 31551, 1, 'GREEN', 137, 'Day 1'),
(138, 31466, 6, 'RED', 138, 'Day 1'),
(139, 31371, 1, 'GREEN', 139, 'Day 1'),
(140, 31447, 7, 'GREEN', 140, 'Day 1'),
(141, 31449, 9, 'GREEN', 141, 'Day 1'),
(142, 31499, 9, 'GREEN', 142, 'Day 1'),
(143, 31574, 4, 'RED', 143, 'Day 1'),
(144, 31610, 0, 'RED & VIOLET', 144, 'Day 1'),
(145, 31616, 6, 'RED', 145, 'Day 1'),
(146, 31689, 9, 'GREEN', 146, 'Day 1'),
(147, 31630, 0, 'RED & VIOLET', 147, 'Day 1'),
(148, 31636, 6, 'RED', 148, 'Day 1'),
(149, 31630, 0, 'RED & VIOLET', 149, 'Day 1'),
(150, 31657, 7, 'GREEN', 150, 'Day 1'),
(151, 31745, 5, 'GREEN & VIOLET', 151, 'Day 1'),
(152, 31821, 1, 'GREEN', 152, 'Day 1'),
(153, 31763, 3, 'GREEN', 153, 'Day 1'),
(154, 31680, 0, 'RED & VIOLET', 154, 'Day 1'),
(155, 31668, 8, 'RED', 155, 'Day 1'),
(156, 31638, 8, 'RED', 156, 'Day 1'),
(157, 31641, 1, 'GREEN', 157, 'Day 1'),
(158, 31709, 9, 'GREEN', 158, 'Day 1'),
(159, 31701, 1, 'GREEN', 159, 'Day 1'),
(160, 31646, 6, 'RED', 160, 'Day 1'),
(161, 31647, 7, 'GREEN', 161, 'Day 1'),
(162, 31713, 3, 'GREEN', 162, 'Day 1'),
(163, 31770, 0, 'RED & VIOLET', 163, 'Day 1'),
(164, 31866, 6, 'RED', 164, 'Day 1'),
(165, 31812, 2, 'RED', 165, 'Day 1'),
(166, 31863, 3, 'GREEN', 166, 'Day 1'),
(167, 31802, 2, 'RED', 167, 'Day 1'),
(168, 31893, 3, 'GREEN', 168, 'Day 1'),
(169, 31970, 0, 'RED & VIOLET', 169, 'Day 1'),
(170, 31921, 1, 'GREEN', 170, 'Day 1'),
(171, 31983, 3, 'GREEN', 171, 'Day 1'),
(172, 31887, 7, 'GREEN', 172, 'Day 1'),
(173, 31841, 1, 'GREEN', 173, 'Day 1'),
(174, 31910, 0, 'RED & VIOLET', 174, 'Day 1'),
(175, 31817, 7, 'GREEN', 175, 'Day 1'),
(176, 31734, 4, 'RED', 176, 'Day 1'),
(177, 31749, 9, 'GREEN', 177, 'Day 1'),
(178, 31812, 2, 'RED', 178, 'Day 1'),
(179, 31827, 7, 'GREEN', 179, 'Day 1'),
(180, 31857, 7, 'GREEN', 180, 'Day 1'),
(181, 31769, 9, 'GREEN', 181, 'Day 1'),
(182, 31863, 3, 'GREEN', 182, 'Day 1'),
(183, 31794, 4, 'RED', 183, 'Day 1'),
(184, 31695, 5, 'GREEN & VIOLET', 184, 'Day 1'),
(185, 31766, 6, 'RED', 185, 'Day 1'),
(186, 31741, 1, 'GREEN', 186, 'Day 1'),
(187, 31676, 6, 'RED', 187, 'Day 1'),
(188, 31745, 5, 'GREEN & VIOLET', 188, 'Day 1'),
(189, 31838, 8, 'RED', 189, 'Day 1'),
(190, 31879, 9, 'GREEN', 190, 'Day 1'),
(191, 31935, 5, 'GREEN & VIOLET', 191, 'Day 1'),
(192, 31982, 2, 'RED', 192, 'Day 1'),
(193, 32034, 4, 'RED', 193, 'Day 1'),
(194, 31957, 7, 'GREEN', 194, 'Day 1'),
(195, 32053, 3, 'GREEN', 195, 'Day 1'),
(196, 32056, 6, 'RED', 196, 'Day 1'),
(197, 32087, 7, 'GREEN', 197, 'Day 1'),
(198, 31995, 5, 'GREEN & VIOLET', 198, 'Day 1'),
(199, 32008, 8, 'RED', 199, 'Day 1'),
(200, 31917, 7, 'GREEN', 200, 'Day 1'),
(201, 31835, 5, 'GREEN & VIOLET', 201, 'Day 1'),
(202, 31759, 9, 'GREEN', 202, 'Day 1'),
(203, 31817, 7, 'GREEN', 203, 'Day 1'),
(204, 31883, 3, 'GREEN', 204, 'Day 1'),
(205, 31972, 2, 'RED', 205, 'Day 1'),
(206, 31900, 0, 'RED & VIOLET', 206, 'Day 1'),
(207, 31891, 1, 'GREEN', 207, 'Day 1'),
(208, 31941, 1, 'GREEN', 208, 'Day 1'),
(209, 31927, 7, 'GREEN', 209, 'Day 1'),
(210, 31931, 1, 'GREEN', 210, 'Day 1'),
(211, 31969, 9, 'GREEN', 211, 'Day 1'),
(212, 31979, 9, 'GREEN', 212, 'Day 1'),
(213, 31919, 9, 'GREEN', 213, 'Day 1'),
(214, 31962, 2, 'RED', 214, 'Day 1'),
(215, 31897, 7, 'GREEN', 215, 'Day 1'),
(216, 31873, 3, 'GREEN', 216, 'Day 1'),
(217, 31863, 3, 'GREEN', 217, 'Day 1'),
(218, 31889, 9, 'GREEN', 218, 'Day 1'),
(219, 31800, 0, 'RED & VIOLET', 219, 'Day 1'),
(220, 31832, 2, 'RED', 220, 'Day 1'),
(221, 31793, 3, 'GREEN', 221, 'Day 1'),
(222, 31704, 4, 'RED', 222, 'Day 1'),
(223, 31623, 3, 'GREEN', 223, 'Day 1'),
(224, 31579, 9, 'GREEN', 224, 'Day 1'),
(225, 31546, 6, 'RED', 225, 'Day 1'),
(226, 31550, 0, 'RED & VIOLET', 226, 'Day 1'),
(227, 31586, 6, 'RED', 227, 'Day 1'),
(228, 31539, 9, 'GREEN', 228, 'Day 1'),
(229, 31550, 0, 'RED & VIOLET', 229, 'Day 1'),
(230, 31564, 4, 'RED', 230, 'Day 1'),
(231, 31476, 6, 'RED', 231, 'Day 1'),
(232, 31528, 8, 'RED', 232, 'Day 1'),
(233, 31556, 6, 'RED', 233, 'Day 1'),
(234, 31609, 9, 'GREEN', 234, 'Day 1'),
(235, 31644, 4, 'RED', 235, 'Day 1'),
(236, 31574, 4, 'RED', 236, 'Day 1'),
(237, 31566, 6, 'RED', 237, 'Day 1'),
(238, 31614, 4, 'RED', 238, 'Day 1'),
(239, 31578, 8, 'RED', 239, 'Day 1'),
(240, 31668, 8, 'RED', 240, 'Day 1'),
(241, 31736, 6, 'RED', 241, 'Day 1'),
(242, 31642, 2, 'RED', 242, 'Day 1'),
(243, 31634, 4, 'RED', 243, 'Day 1'),
(244, 31572, 2, 'RED', 244, 'Day 1'),
(245, 31586, 6, 'RED', 245, 'Day 1'),
(246, 31672, 2, 'RED', 246, 'Day 1'),
(247, 31676, 6, 'RED', 247, 'Day 1'),
(248, 31699, 9, 'GREEN', 248, 'Day 1'),
(249, 31604, 4, 'RED', 249, 'Day 1'),
(250, 31555, 5, 'GREEN & VIOLET', 250, 'Day 1'),
(251, 31487, 7, 'GREEN', 251, 'Day 1'),
(252, 31439, 9, 'GREEN', 252, 'Day 1'),
(253, 31423, 3, 'GREEN', 253, 'Day 1'),
(254, 31353, 3, 'GREEN', 254, 'Day 1'),
(255, 31261, 1, 'GREEN', 255, 'Day 1'),
(256, 31233, 3, 'GREEN', 256, 'Day 1'),
(257, 31225, 5, 'GREEN & VIOLET', 257, 'Day 1'),
(258, 31251, 1, 'GREEN', 258, 'Day 1'),
(259, 31204, 4, 'RED', 259, 'Day 1'),
(260, 31193, 3, 'GREEN', 260, 'Day 1'),
(261, 31216, 6, 'RED', 261, 'Day 1'),
(262, 31182, 2, 'RED', 262, 'Day 1'),
(263, 31237, 7, 'GREEN', 263, 'Day 1'),
(264, 31169, 9, 'GREEN', 264, 'Day 1'),
(265, 31188, 8, 'RED', 265, 'Day 1'),
(266, 31105, 5, 'GREEN & VIOLET', 266, 'Day 1'),
(267, 31091, 1, 'GREEN', 267, 'Day 1'),
(268, 31181, 1, 'GREEN', 268, 'Day 1'),
(269, 31090, 0, 'RED & VIOLET', 269, 'Day 1'),
(270, 31026, 6, 'RED', 270, 'Day 1'),
(271, 30940, 0, 'RED & VIOLET', 271, 'Day 1'),
(272, 31006, 6, 'RED', 272, 'Day 1'),
(273, 31026, 6, 'RED', 273, 'Day 1'),
(274, 31017, 7, 'GREEN', 274, 'Day 1'),
(275, 31004, 4, 'RED', 275, 'Day 1'),
(276, 30919, 9, 'GREEN', 276, 'Day 1'),
(277, 31013, 3, 'GREEN', 277, 'Day 1'),
(278, 30967, 7, 'GREEN', 278, 'Day 1'),
(279, 31067, 7, 'GREEN', 279, 'Day 1'),
(280, 31123, 3, 'GREEN', 280, 'Day 1'),
(281, 31145, 5, 'GREEN & VIOLET', 281, 'Day 1'),
(282, 31060, 0, 'RED & VIOLET', 282, 'Day 1'),
(283, 31113, 3, 'GREEN', 283, 'Day 1'),
(284, 31181, 1, 'GREEN', 284, 'Day 1'),
(285, 31217, 7, 'GREEN', 285, 'Day 1'),
(286, 31314, 4, 'RED', 286, 'Day 1'),
(287, 31350, 0, 'RED & VIOLET', 287, 'Day 1'),
(288, 31377, 7, 'GREEN', 288, 'Day 1'),
(289, 31409, 9, 'GREEN', 289, 'Day 1'),
(290, 31504, 4, 'RED', 290, 'Day 1'),
(291, 31467, 7, 'GREEN', 291, 'Day 1'),
(292, 31514, 4, 'RED', 292, 'Day 1'),
(293, 31445, 5, 'GREEN & VIOLET', 293, 'Day 1'),
(294, 31506, 6, 'RED', 294, 'Day 1'),
(295, 31415, 5, 'GREEN & VIOLET', 295, 'Day 1'),
(296, 31410, 0, 'RED & VIOLET', 296, 'Day 1'),
(297, 31445, 5, 'GREEN & VIOLET', 297, 'Day 1'),
(298, 31489, 9, 'GREEN', 298, 'Day 1'),
(299, 31575, 5, 'GREEN & VIOLET', 299, 'Day 1'),
(300, 31677, 7, 'GREEN', 300, 'Day 1'),
(301, 31724, 4, 'RED', 301, 'Day 1'),
(302, 31685, 5, 'GREEN & VIOLET', 302, 'Day 1'),
(303, 31610, 0, 'RED & VIOLET', 303, 'Day 1'),
(304, 31679, 9, 'GREEN', 304, 'Day 1'),
(305, 31609, 9, 'GREEN', 305, 'Day 1'),
(306, 31640, 0, 'RED & VIOLET', 306, 'Day 1'),
(307, 31611, 1, 'GREEN', 307, 'Day 1'),
(308, 31618, 8, 'RED', 308, 'Day 1'),
(309, 31684, 4, 'RED', 309, 'Day 1'),
(310, 31614, 4, 'RED', 310, 'Day 1'),
(311, 31587, 7, 'GREEN', 311, 'Day 1'),
(312, 31561, 1, 'GREEN', 312, 'Day 1'),
(313, 31574, 4, 'RED', 313, 'Day 1'),
(314, 31614, 4, 'RED', 314, 'Day 1'),
(315, 31637, 7, 'GREEN', 315, 'Day 1'),
(316, 31716, 6, 'RED', 316, 'Day 1'),
(317, 31662, 2, 'RED', 317, 'Day 1'),
(318, 31723, 3, 'GREEN', 318, 'Day 1'),
(319, 31754, 4, 'RED', 319, 'Day 1'),
(320, 31707, 7, 'GREEN', 320, 'Day 1'),
(321, 31615, 5, 'GREEN & VIOLET', 321, 'Day 1'),
(322, 31571, 1, 'GREEN', 322, 'Day 1'),
(323, 31638, 8, 'RED', 323, 'Day 1'),
(324, 31629, 9, 'GREEN', 324, 'Day 1'),
(325, 31608, 8, 'RED', 325, 'Day 1'),
(326, 31530, 0, 'RED & VIOLET', 326, 'Day 1'),
(327, 31481, 1, 'GREEN', 327, 'Day 1'),
(328, 31395, 5, 'GREEN & VIOLET', 328, 'Day 1'),
(329, 31477, 7, 'GREEN', 329, 'Day 1'),
(330, 31470, 0, 'RED & VIOLET', 330, 'Day 1'),
(331, 31427, 7, 'GREEN', 331, 'Day 1'),
(332, 31478, 8, 'RED', 332, 'Day 1'),
(333, 31440, 0, 'RED & VIOLET', 333, 'Day 1'),
(334, 31438, 8, 'RED', 334, 'Day 1'),
(335, 31400, 0, 'RED & VIOLET', 335, 'Day 1'),
(336, 31322, 2, 'RED', 336, 'Day 1'),
(337, 31386, 6, 'RED', 337, 'Day 1'),
(338, 31337, 7, 'GREEN', 338, 'Day 1'),
(339, 31284, 4, 'RED', 339, 'Day 1'),
(340, 31277, 7, 'GREEN', 340, 'Day 1'),
(341, 31206, 6, 'RED', 341, 'Day 1'),
(342, 31156, 6, 'RED', 342, 'Day 1'),
(343, 31204, 4, 'RED', 343, 'Day 1'),
(344, 31214, 4, 'RED', 344, 'Day 1'),
(345, 31283, 3, 'GREEN', 345, 'Day 1'),
(346, 31376, 6, 'RED', 346, 'Day 1'),
(347, 31473, 3, 'GREEN', 347, 'Day 1'),
(348, 31431, 1, 'GREEN', 348, 'Day 1'),
(349, 31398, 8, 'RED', 349, 'Day 1'),
(350, 31360, 0, 'RED & VIOLET', 350, 'Day 1'),
(351, 31312, 2, 'RED', 351, 'Day 1'),
(352, 31419, 9, 'GREEN', 352, 'Day 1'),
(353, 31467, 7, 'GREEN', 353, 'Day 1'),
(354, 31414, 4, 'RED', 354, 'Day 1'),
(355, 31350, 0, 'RED & VIOLET', 355, 'Day 1'),
(356, 31290, 0, 'RED & VIOLET', 356, 'Day 1'),
(357, 31362, 2, 'RED', 357, 'Day 1'),
(358, 31368, 8, 'RED', 358, 'Day 1'),
(359, 31398, 8, 'RED', 359, 'Day 1'),
(360, 31477, 7, 'GREEN', 360, 'Day 1'),
(361, 31429, 9, 'GREEN', 361, 'Day 1'),
(362, 31367, 7, 'GREEN', 362, 'Day 1'),
(363, 31379, 9, 'GREEN', 363, 'Day 1'),
(364, 31324, 4, 'RED', 364, 'Day 1'),
(365, 31346, 6, 'RED', 365, 'Day 1'),
(366, 31281, 1, 'GREEN', 366, 'Day 1'),
(367, 31344, 4, 'RED', 367, 'Day 1'),
(368, 31431, 1, 'GREEN', 368, 'Day 1'),
(369, 31467, 7, 'GREEN', 369, 'Day 1'),
(370, 31540, 0, 'RED & VIOLET', 370, 'Day 1'),
(371, 31567, 7, 'GREEN', 371, 'Day 1'),
(372, 31554, 4, 'RED', 372, 'Day 1'),
(373, 31600, 0, 'RED & VIOLET', 373, 'Day 1'),
(374, 31589, 9, 'GREEN', 374, 'Day 1'),
(375, 31644, 4, 'RED', 375, 'Day 1'),
(376, 31708, 8, 'RED', 376, 'Day 1'),
(377, 31682, 2, 'RED', 377, 'Day 1'),
(378, 31671, 1, 'GREEN', 378, 'Day 1'),
(379, 31575, 5, 'GREEN & VIOLET', 379, 'Day 1'),
(380, 31625, 5, 'GREEN & VIOLET', 380, 'Day 1'),
(381, 31536, 6, 'RED', 381, 'Day 1'),
(382, 31567, 7, 'GREEN', 382, 'Day 1'),
(383, 31541, 1, 'GREEN', 383, 'Day 1'),
(384, 31543, 3, 'GREEN', 384, 'Day 1'),
(385, 31498, 8, 'RED', 385, 'Day 1'),
(386, 31424, 4, 'RED', 386, 'Day 1'),
(387, 31331, 1, 'GREEN', 387, 'Day 1'),
(388, 31284, 4, 'RED', 388, 'Day 1'),
(389, 31183, 3, 'GREEN', 389, 'Day 1'),
(390, 31270, 0, 'RED & VIOLET', 390, 'Day 1'),
(391, 31185, 5, 'GREEN & VIOLET', 391, 'Day 1'),
(392, 31227, 7, 'GREEN', 392, 'Day 1'),
(393, 31171, 1, 'GREEN', 393, 'Day 1'),
(394, 31115, 5, 'GREEN & VIOLET', 394, 'Day 1'),
(395, 31177, 7, 'GREEN', 395, 'Day 1'),
(396, 31277, 7, 'GREEN', 396, 'Day 1'),
(397, 31185, 5, 'GREEN & VIOLET', 397, 'Day 1'),
(398, 31189, 9, 'GREEN', 398, 'Day 1'),
(399, 31137, 7, 'GREEN', 399, 'Day 1'),
(400, 31086, 6, 'RED', 400, 'Day 1'),
(401, 31176, 6, 'RED', 401, 'Day 1'),
(402, 31129, 9, 'GREEN', 402, 'Day 1'),
(403, 31136, 6, 'RED', 403, 'Day 1'),
(404, 31167, 7, 'GREEN', 404, 'Day 1'),
(405, 31156, 6, 'RED', 405, 'Day 1'),
(406, 31222, 2, 'RED', 406, 'Day 1'),
(407, 31262, 2, 'RED', 407, 'Day 1'),
(408, 31326, 6, 'RED', 408, 'Day 1'),
(409, 31388, 8, 'RED', 409, 'Day 1'),
(410, 31489, 9, 'GREEN', 410, 'Day 1'),
(411, 31576, 6, 'RED', 411, 'Day 1'),
(412, 31583, 3, 'GREEN', 412, 'Day 1'),
(413, 31633, 3, 'GREEN', 413, 'Day 1'),
(414, 31721, 1, 'GREEN', 414, 'Day 1'),
(415, 31757, 7, 'GREEN', 415, 'Day 1'),
(416, 31731, 1, 'GREEN', 416, 'Day 1'),
(417, 31721, 1, 'GREEN', 417, 'Day 1'),
(418, 31633, 3, 'GREEN', 418, 'Day 1'),
(419, 31640, 0, 'RED & VIOLET', 419, 'Day 1'),
(420, 31582, 2, 'RED', 420, 'Day 1'),
(421, 31508, 8, 'RED', 421, 'Day 1'),
(422, 31557, 7, 'GREEN', 422, 'Day 1'),
(423, 31514, 4, 'RED', 423, 'Day 1'),
(424, 31435, 5, 'GREEN & VIOLET', 424, 'Day 1'),
(425, 31345, 5, 'GREEN & VIOLET', 425, 'Day 1'),
(426, 31347, 7, 'GREEN', 426, 'Day 1'),
(427, 31316, 6, 'RED', 427, 'Day 1'),
(428, 31287, 7, 'GREEN', 428, 'Day 1'),
(429, 31194, 4, 'RED', 429, 'Day 1'),
(430, 31193, 3, 'GREEN', 430, 'Day 1'),
(431, 31178, 8, 'RED', 431, 'Day 1'),
(432, 31112, 2, 'RED', 432, 'Day 1'),
(433, 31129, 9, 'GREEN', 433, 'Day 1'),
(434, 31163, 3, 'GREEN', 434, 'Day 1'),
(435, 31220, 0, 'RED & VIOLET', 435, 'Day 1'),
(436, 31223, 3, 'GREEN', 436, 'Day 1'),
(437, 31208, 8, 'RED', 437, 'Day 1'),
(438, 31211, 1, 'GREEN', 438, 'Day 1'),
(439, 31160, 0, 'RED & VIOLET', 439, 'Day 1'),
(440, 31235, 5, 'GREEN & VIOLET', 440, 'Day 1'),
(441, 31173, 3, 'GREEN', 441, 'Day 1'),
(442, 31239, 9, 'GREEN', 442, 'Day 1'),
(443, 31146, 6, 'RED', 443, 'Day 1'),
(444, 31117, 7, 'GREEN', 444, 'Day 1'),
(445, 31116, 6, 'RED', 445, 'Day 1'),
(446, 31133, 3, 'GREEN', 446, 'Day 1'),
(447, 31131, 1, 'GREEN', 447, 'Day 1'),
(448, 31169, 9, 'GREEN', 448, 'Day 1'),
(449, 31129, 9, 'GREEN', 449, 'Day 1'),
(450, 31053, 3, 'GREEN', 450, 'Day 1'),
(451, 31122, 2, 'RED', 451, 'Day 1'),
(452, 31198, 8, 'RED', 452, 'Day 1'),
(453, 31175, 5, 'GREEN & VIOLET', 453, 'Day 1'),
(454, 31236, 6, 'RED', 454, 'Day 1'),
(455, 31301, 1, 'GREEN', 455, 'Day 1'),
(456, 31293, 3, 'GREEN', 456, 'Day 1'),
(457, 31269, 9, 'GREEN', 457, 'Day 1'),
(458, 31185, 5, 'GREEN & VIOLET', 458, 'Day 1'),
(459, 31121, 1, 'GREEN', 459, 'Day 1'),
(460, 31108, 8, 'RED', 460, 'Day 1'),
(461, 31127, 7, 'GREEN', 461, 'Day 1'),
(462, 31119, 9, 'GREEN', 462, 'Day 1'),
(463, 31071, 1, 'GREEN', 463, 'Day 1'),
(464, 31131, 1, 'GREEN', 464, 'Day 1'),
(465, 31223, 3, 'GREEN', 465, 'Day 1'),
(466, 31280, 0, 'RED & VIOLET', 466, 'Day 1'),
(467, 31229, 9, 'GREEN', 467, 'Day 1'),
(468, 31261, 1, 'GREEN', 468, 'Day 1'),
(469, 31203, 3, 'GREEN', 469, 'Day 1'),
(470, 31185, 5, 'GREEN & VIOLET', 470, 'Day 1'),
(471, 31164, 4, 'RED', 471, 'Day 1'),
(472, 31254, 4, 'RED', 472, 'Day 1'),
(473, 31274, 4, 'RED', 473, 'Day 1'),
(474, 31211, 1, 'GREEN', 474, 'Day 1'),
(475, 31144, 4, 'RED', 475, 'Day 1'),
(476, 31123, 3, 'GREEN', 476, 'Day 1'),
(477, 31079, 9, 'GREEN', 477, 'Day 1'),
(478, 31162, 2, 'RED', 478, 'Day 1'),
(479, 31219, 9, 'GREEN', 479, 'Day 1'),
(480, 29691, 1, 'GREEN', 480, 'Day 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rchwallet`
--

CREATE TABLE `tbl_rchwallet` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orderid` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `type` varchar(50) NOT NULL,
  `actiontype` varchar(50) NOT NULL,
  `uid` varchar(225) NOT NULL,
  `time` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_rchwallet`
--

INSERT INTO `tbl_rchwallet` (`id`, `userid`, `orderid`, `amount`, `type`, `actiontype`, `uid`, `time`, `createdate`) VALUES
(8, 1, '2310141136143922112', 100, 'credit', 'recharge', '457687890909', '14-10-2023 11:36:28 am', '2023-10-14 06:06:28'),
(9, 225, '231014123841297607', 500, 'credit', 'recharge-reject', '866656790890', '14-10-2023 12:39:15 pm', '2023-10-14 07:09:15'),
(10, 225, '2310141246583093370', 200, 'credit', 'recharge-reject', '567666666666', '14-10-2023 12:47:05 pm', '2023-10-14 07:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recharge`
--

CREATE TABLE `tbl_recharge` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orderid` text DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdate` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `txn` varchar(200) NOT NULL,
  `paymentMethod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_refund`
--

CREATE TABLE `tbl_refund` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_refund`
--

INSERT INTO `tbl_refund` (`id`, `userid`, `amount`, `createdate`) VALUES
(1, 1, 10, '2023-10-14 08:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `id` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `price` float NOT NULL,
  `randomprice` float NOT NULL,
  `result` int(11) NOT NULL,
  `randomresult` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `randomcolor` varchar(100) NOT NULL,
  `resulttype` varchar(50) NOT NULL,
  `tabtype` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`id`, `periodid`, `price`, `randomprice`, `result`, `randomresult`, `color`, `randomcolor`, `resulttype`, `tabtype`, `createdate`) VALUES
(1, '', 0, 31483, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 09:47:33'),
(2, '20231014001', 0, 31261, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 10:04:01'),
(3, '20231014002', 0, 31476, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 10:06:01'),
(4, '20231014003', 0, 31481, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 10:08:01'),
(5, '20231014004', 0, 31447, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 10:10:01'),
(6, '20231014005', 0, 31060, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 10:12:02'),
(7, '20231014006', 0, 31214, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 10:14:02'),
(8, '20231014007', 0, 31371, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 10:16:01'),
(9, '20231014008', 0, 31438, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 10:18:01'),
(10, '20231014009', 0, 31582, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 10:20:01'),
(11, '20231014010', 0, 31480, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 10:22:01'),
(12, '20231014011', 0, 30903, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 10:24:01'),
(13, '20231014012', 0, 31376, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 10:26:01'),
(14, '20231014013', 0, 31574, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 10:28:02'),
(15, '20231014014', 0, 30871, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 10:30:02'),
(16, '20231014015', 0, 31142, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 10:32:01'),
(17, '20231014016', 0, 31553, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 10:34:01'),
(18, '20231014017', 0, 30871, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 10:36:01'),
(19, '20231014018', 0, 30934, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 10:38:01'),
(20, '20231014019', 0, 31483, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 10:40:01'),
(21, '20231014020', 0, 31269, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 10:42:01'),
(22, '20231014021', 0, 31528, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 10:44:01'),
(23, '20231014022', 0, 31388, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 10:46:02'),
(24, '20231014023', 0, 31193, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 10:48:01'),
(25, '20231014024', 0, 30845, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 10:50:01'),
(26, '20231014025', 0, 31171, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 10:52:01'),
(27, '20231014026', 0, 31699, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 10:54:01'),
(28, '20231014027', 0, 31277, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 10:56:02'),
(29, '20231014028', 0, 30885, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 10:58:01'),
(30, '20231014029', 0, 31672, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 11:00:01'),
(31, '20231014030', 0, 31386, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 11:02:01'),
(32, '20231014031', 0, 31685, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 11:04:01'),
(33, '20231014032', 0, 30951, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 11:06:01'),
(34, '20231014033', 0, 31152, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 11:08:01'),
(35, '20231014034', 0, 31657, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 11:10:02'),
(36, '20231014035', 0, 31386, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 11:12:02'),
(37, '20231014036', 0, 31504, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 11:14:02'),
(38, '20231014037', 0, 30856, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 11:16:01'),
(39, '20231014038', 0, 31863, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 11:18:01'),
(40, '20231014039', 0, 31360, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 11:20:02'),
(41, '20231014040', 0, 30840, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 11:22:02'),
(42, '20231014041', 0, 31235, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 11:24:02'),
(43, '20231014042', 0, 30872, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 11:26:01'),
(44, '20231014043', 0, 32034, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 11:28:01'),
(45, '20231014044', 0, 31237, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 11:30:01'),
(46, '20231014045', 0, 31223, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 11:32:01'),
(47, '20231014046', 0, 31079, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 11:34:02'),
(48, '20231014047', 0, 31350, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 11:36:01'),
(49, '20231014048', 0, 30706, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 11:38:02'),
(50, '20231014049', 0, 31235, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 11:40:01'),
(51, '20231014050', 0, 31476, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 11:42:01'),
(52, '20231014051', 0, 31530, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 11:44:01'),
(53, '20231014052', 0, 31011, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 11:46:02'),
(54, '20231014053', 0, 31489, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 11:48:02'),
(55, '20231014054', 0, 31676, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 11:50:02'),
(56, '20231014055', 0, 30872, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 11:52:02'),
(57, '20231014056', 0, 31900, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 11:54:02'),
(58, '20231014057', 0, 30800, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 11:56:01'),
(59, '20231014058', 0, 31812, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 11:58:02'),
(60, '20231014059', 0, 31614, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 12:02:01'),
(61, '20231014060', 0, 31113, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 12:04:01'),
(62, '20231014061', 0, 30874, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 12:06:01'),
(63, '20231014062', 0, 31576, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 12:08:01'),
(64, '20231014063', 0, 31962, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 12:10:01'),
(65, '20231014064', 0, 31817, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 12:12:01'),
(66, '20231014065', 0, 31112, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 12:14:02'),
(67, '20231014066', 0, 31812, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 12:16:01'),
(68, '20231014067', 10, 30785, 0, 5, 'red+violet', 'GREEN & VIOLET', 'real', 'parity', '2023-10-14 12:18:01'),
(69, '20231014068', 10, 31682, 0, 2, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 12:20:01'),
(70, '20231014069', -302, 31004, 1, 4, 'green', 'RED', 'real', 'parity', '2023-10-14 12:22:02'),
(71, '20231014070', 0, 31344, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 12:24:01'),
(72, '20231014071', 0, 31193, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 12:26:01'),
(73, '20231014072', 0, 31121, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 12:28:01'),
(74, '20231014073', 0, 31528, 0, 8, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 12:30:02'),
(75, '20231014074', 0, 31873, 0, 3, 'red+violet', 'GREEN', 'real', 'parity', '2023-10-14 12:32:01'),
(76, '20231014075', 0, 31550, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 12:34:02'),
(77, '20231014076', 0, 31800, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 12:36:01'),
(78, '20231014077', 0, 30844, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 12:38:02'),
(79, '20231014078', 0, 30816, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 12:40:02'),
(80, '20231014079', 0, 31239, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 12:42:01'),
(81, '20231014080', 0, 31668, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 12:44:01'),
(82, '20231014081', 0, 30931, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 12:46:01'),
(83, '20231014082', 0, 31640, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 12:48:01'),
(84, '20231014083', 0, 31676, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 12:50:02'),
(85, '20231014084', 0, 31644, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 12:52:01'),
(86, '20231014085', 0, 31630, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 12:54:01'),
(87, '20231014086', 0, 31297, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 12:56:02'),
(88, '20231014087', 0, 31368, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 12:58:01'),
(89, '20231014088', 0, 31032, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 13:00:02'),
(90, '20231014089', 0, 31995, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 13:02:01'),
(91, '20231014090', 0, 31556, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 13:04:01'),
(92, '20231014091', 0, 30795, 1, 5, 'green', 'GREEN & VIOLET', 'real', 'parity', '2023-10-14 13:06:02'),
(93, '20231014092', 38, 31185, 1, 5, 'green', 'GREEN & VIOLET', 'real', 'parity', '2023-10-14 13:08:01'),
(94, '20231014093', 14.25, 31164, 5, 4, 'green+violet', 'RED', 'real', 'parity', '2023-10-14 13:10:02'),
(95, '20231014094', 0, 31644, 0, 4, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 13:12:01'),
(96, '20231014095', 0, 31227, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 13:14:01'),
(97, '20231014096', 19, 31900, 2, 0, 'red', 'RED & VIOLET', 'real', 'parity', '2023-10-14 13:16:01'),
(98, '20231014097', 0, 31889, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 13:18:01'),
(99, '20231014098', 0, 31415, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 13:20:02'),
(100, '20231014099', 0, 31629, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 13:22:01'),
(101, '20231014100', 0, 31487, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 13:24:01'),
(102, '20231014101', 0, 31227, 2, 7, 'red', 'GREEN', 'real', 'parity', '2023-10-14 13:26:01'),
(103, '20231014102', 0, 31567, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 13:28:01'),
(104, '20231014103', 0, 30802, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 13:30:02'),
(105, '20231014104', 0, 31164, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 13:32:01'),
(106, '20231014105', 0, 31232, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 13:34:01'),
(107, '20231014106', 0, 31067, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 13:36:01'),
(108, '20231014107', 85.5, 31657, 4, 7, 'red', 'GREEN', 'real', 'parity', '2023-10-14 13:38:01'),
(109, '20231014108', 0, 31198, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 13:40:01'),
(110, '20231014109', 0, 31169, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 13:42:02'),
(111, '20231014110', 0, 31211, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 13:44:01'),
(112, '20231014111', 0, 31514, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 13:46:01'),
(113, '20231014112', 0, 31935, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 13:48:02'),
(114, '20231014113', 0, 31543, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 13:50:01'),
(115, '20231014114', 0, 31144, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 13:52:01'),
(116, '20231014115', 0, 31589, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 13:54:01'),
(117, '20231014116', 0, 31668, 0, 8, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 13:56:01'),
(118, '20231014117', 0, 31701, 1, 1, 'green', 'GREEN', 'real', 'parity', '2023-10-14 13:58:02'),
(119, '20231014118', 0, 31400, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 14:00:01'),
(120, '20231014119', 0, 30782, 0, 2, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 14:02:01'),
(121, '20231014120', 0, 31312, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 14:04:01'),
(122, '20231014121', 0, 31482, 1, 2, 'green', 'RED', 'real', 'parity', '2023-10-14 14:06:01'),
(123, '20231014122', 0, 30809, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 14:08:02'),
(124, '20231014123', 0, 31470, 2, 0, 'red', 'RED & VIOLET', 'real', 'parity', '2023-10-14 14:10:02'),
(125, '20231014124', 0, 32053, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 14:12:01'),
(126, '20231014125', 256.5, 31269, 8, 9, 'red', 'GREEN', 'real', 'parity', '2023-10-14 14:14:01'),
(127, '20231014126', 0, 31200, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 14:16:02'),
(128, '20231014127', 0, 31668, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 14:18:01'),
(129, '20231014128', 0, 31072, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 14:20:01'),
(130, '20231014129', 0, 30903, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 14:22:01'),
(131, '20231014130', 0, 31578, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 14:24:02'),
(132, '20231014131', 0, 31220, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 14:26:02'),
(133, '20231014132', 0, 31121, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 14:28:01'),
(134, '20231014133', 0, 30856, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 14:30:01'),
(135, '20231014134', 0, 31551, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 14:32:01'),
(136, '20231014135', 0, 31239, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 14:34:01'),
(137, '20231014136', 0, 31350, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 14:36:01'),
(138, '20231014137', 0, 31857, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 14:38:02'),
(139, '20231014138', 0, 31350, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 14:40:02'),
(140, '20231014139', 0, 31821, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 14:42:01'),
(141, '20231014140', 0, 31769, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 14:44:01'),
(142, '20231014141', 0, 30940, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 14:46:02'),
(143, '20231014142', 0, 30836, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 14:48:02'),
(144, '20231014143', 0, 30808, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 14:50:01'),
(145, '20231014144', 0, 31026, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 14:52:01'),
(146, '20231014145', 0, 31297, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 14:54:02'),
(147, '20231014146', 0, 31189, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 14:56:02'),
(148, '20231014147', 0, 31293, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 14:58:01'),
(149, '20231014148', 0, 31546, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 15:00:02'),
(150, '20231014149', 0, 30816, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 15:02:01'),
(151, '20231014150', 3420, 31704, 8, 4, 'red', 'RED', 'real', 'parity', '2023-10-14 15:04:02'),
(152, '20231014151', 0, 31041, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 15:06:02'),
(153, '20231014152', 0, 31410, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 15:08:02'),
(154, '20231014153', 0, 31604, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 15:10:02'),
(155, '20231014154', 0, 31749, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 15:12:02'),
(156, '20231014155', 0, 31347, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 15:14:01'),
(157, '20231014156', 0, 31625, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 15:16:01'),
(158, '20231014157', 0, 31528, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 15:18:01'),
(159, '20231014158', 0, 31480, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 15:20:01'),
(160, '20231014159', 0, 31821, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 15:22:01'),
(161, '20231014160', 0, 31119, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 15:24:02'),
(162, '20231014161', 0, 31353, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 15:26:01'),
(163, '20231014162', 0, 30905, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 15:28:01'),
(164, '20231014163', 0, 30846, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 15:30:02'),
(165, '20231014164', 0, 31431, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 15:32:01'),
(166, '20231014165', 0, 31676, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 15:34:01'),
(167, '20231014166', 0, 31900, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 15:36:01'),
(168, '20231014167', 0, 31116, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 15:38:02'),
(169, '20231014168', 0, 31800, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 15:40:02'),
(170, '20231014169', 0, 31863, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 15:42:01'),
(171, '20231014170', 0, 30784, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 15:44:02'),
(172, '20231014171', 0, 31208, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 15:46:02'),
(173, '20231014172', 0, 31146, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 15:48:01'),
(174, '20231014173', 104.5, 31483, 1, 3, 'green', 'GREEN', 'real', 'parity', '2023-10-14 15:50:02'),
(175, '20231014174', 0, 31236, 1, 6, 'green', 'RED', 'real', 'parity', '2023-10-14 15:52:01'),
(176, '20231014175', 0, 31130, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 15:54:01'),
(177, '20231014176', 0, 31579, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 15:56:02'),
(178, '20231014177', 0, 31614, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 15:58:01'),
(179, '20231014178', 0, 31577, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 16:00:02'),
(180, '20231014179', 0, 31699, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 16:02:01'),
(181, '20231014180', 0, 31400, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 16:04:02'),
(182, '20231014181', 0, 31644, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 16:06:02'),
(183, '20231014182', 0, 30871, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 16:08:01'),
(184, '20231014183', 0, 31284, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 16:10:01'),
(185, '20231014184', 0, 31647, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 16:12:02'),
(186, '20231014185', 0, 31587, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 16:14:02'),
(187, '20231014186', 0, 30903, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 16:16:01'),
(188, '20231014187', 0, 31897, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 16:18:01'),
(189, '20231014188', 0, 31611, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 16:20:02'),
(190, '20231014189', 0, 31636, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 16:22:01'),
(191, '20231014190', 0, 31589, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 16:24:02'),
(192, '20231014191', 0, 31188, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 16:26:02'),
(193, '20231014192', 0, 30795, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 16:28:02'),
(194, '20231014193', 0, 29691, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 16:30:02'),
(195, '20231014194', 0, 31024, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 16:32:01'),
(196, '20231014195', 0, 31445, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 16:34:02'),
(197, '20231014196', 0, 31415, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 16:36:01'),
(198, '20231014197', 0, 31863, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 16:38:02'),
(199, '20231014198', 0, 31410, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 16:40:01'),
(200, '20231014199', 0, 31857, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 16:42:02'),
(201, '20231014200', 0, 31261, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 16:44:01'),
(202, '20231014201', 0, 31235, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 16:46:01'),
(203, '20231014202', 0, 31800, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 16:48:01'),
(204, '20231014203', 0, 31220, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 16:50:02'),
(205, '20231014204', 0, 31312, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 16:52:02'),
(206, '20231014205', 0, 31972, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 16:54:01'),
(207, '20231014206', 0, 31185, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 16:56:01'),
(208, '20231014207', 0, 31416, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 16:58:01'),
(209, '20231014208', 0, 31197, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 17:00:01'),
(210, '20231014209', 0, 31312, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 17:02:02'),
(211, '20231014210', 0, 30937, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 17:04:02'),
(212, '20231014211', 0, 31644, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 17:06:01'),
(213, '20231014212', 0, 31032, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 17:08:01'),
(214, '20231014213', 0, 31386, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 17:10:01'),
(215, '20231014214', 0, 31178, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 17:12:02'),
(216, '20231014215', 0, 31297, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 17:14:01'),
(217, '20231014216', 0, 31229, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 17:16:01'),
(218, '20231014217', 0, 31376, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 17:18:02'),
(219, '20231014218', 0, 31793, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 17:20:02'),
(220, '20231014219', 0, 31487, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 17:22:02'),
(221, '20231014220', 0, 31136, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 17:24:02'),
(222, '20231014221', 0, 31682, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 17:26:01'),
(223, '20231014222', 0, 31175, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 17:28:01'),
(224, '20231014223', 0, 31551, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 17:30:02'),
(225, '20231014224', 0, 30823, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 17:32:01'),
(226, '20231014225', 0, 30754, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 17:34:01'),
(227, '20231014226', 0, 31568, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 17:36:01'),
(228, '20231014227', 0, 31910, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 17:38:02'),
(229, '20231014228', 0, 31041, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 17:40:01'),
(230, '20231014229', 0, 30776, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 17:42:01'),
(231, '20231014230', 0, 31388, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 17:44:01'),
(232, '20231014231', 0, 31274, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 17:46:02'),
(233, '20231014232', 0, 31879, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 17:48:02'),
(234, '20231014233', 0, 31676, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 17:50:02'),
(235, '20231014234', 0, 30706, 0, 6, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 17:52:01'),
(236, '20231014235', 0, 30881, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 17:54:01'),
(237, '20231014236', 0, 31312, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 17:56:01'),
(238, '20231014237', 0, 31386, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 17:58:01'),
(239, '20231014238', 0, 30706, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 18:00:01'),
(240, '20231014239', 0, 31893, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 18:02:01'),
(241, '20231014240', 0, 30774, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 18:04:02'),
(242, '20231014241', 0, 30786, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 18:06:02'),
(243, '20231014242', 0, 31217, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 18:08:01'),
(244, '20231014243', 0, 31301, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 18:10:02'),
(245, '20231014244', 0, 30823, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 18:12:02'),
(246, '20231014245', 0, 31445, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 18:14:01'),
(247, '20231014246', 0, 31574, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 18:16:01'),
(248, '20231014247', 0, 31198, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 18:18:02'),
(249, '20231014248', 0, 31498, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 18:20:02'),
(250, '20231014249', 0, 31284, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 18:22:02'),
(251, '20231014250', 0, 31297, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 18:24:01'),
(252, '20231014251', 0, 31162, 0, 2, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 18:26:01'),
(253, '20231014252', 0, 31891, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 18:28:01'),
(254, '20231014253', 85.5, 31575, 2, 5, 'red', 'GREEN & VIOLET', 'real', 'parity', '2023-10-14 18:30:01'),
(255, '20231014254', 0, 30782, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 18:32:01'),
(256, '20231014255', 0, 31769, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 18:34:02'),
(257, '20231014256', 0, 30952, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 18:36:01'),
(258, '20231014257', 0, 31183, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 18:38:02'),
(259, '20231014258', 0, 31467, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 18:40:02'),
(260, '20231014259', 0, 31235, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 18:42:01'),
(261, '20231014260', 0, 31198, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 18:44:02'),
(262, '20231014261', 0, 30857, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 18:46:02'),
(263, '20231014262', 0, 31160, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 18:48:01'),
(264, '20231014263', 0, 31827, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 18:50:02'),
(265, '20231014264', 0, 31233, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 18:52:01'),
(266, '20231014265', 0, 31530, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 18:54:02'),
(267, '20231014266', 0, 31608, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 18:56:02'),
(268, '20231014267', 0, 31181, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 18:58:02'),
(269, '20231014268', 0, 31299, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 19:00:02'),
(270, '20231014269', 0, 31193, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 19:02:02'),
(271, '20231014270', 0, 30873, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 19:04:02'),
(272, '20231014271', 0, 31173, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 19:06:01'),
(273, '20231014272', 0, 31553, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 19:08:02'),
(274, '20231014273', 0, 31424, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 19:10:02'),
(275, '20231014274', 0, 31615, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 19:12:02'),
(276, '20231014275', 0, 31232, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 19:14:02'),
(277, '20231014276', 0, 31060, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 19:16:01'),
(278, '20231014277', 0, 30879, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 19:18:02'),
(279, '20231014278', 0, 31222, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 19:20:01'),
(280, '20231014279', 0, 31423, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 19:22:02'),
(281, '20231014280', 0, 31395, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 19:24:02'),
(282, '20231014281', 0, 31701, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 19:26:02'),
(283, '20231014282', 0, 30846, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 19:28:01'),
(284, '20231014283', 0, 31105, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 19:30:01'),
(285, '20231014284', 0, 31350, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 19:32:01'),
(286, '20231014285', 0, 31232, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 19:34:01'),
(287, '20231014286', 0, 31072, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 19:36:02'),
(288, '20231014287', 0, 31983, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 19:38:02'),
(289, '20231014288', 0, 31130, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 19:40:02'),
(290, '20231014289', 0, 31312, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 19:42:01'),
(291, '20231014290', 0, 31857, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 19:44:01'),
(292, '20231014291', 0, 31532, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 19:46:01'),
(293, '20231014292', 0, 31360, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 19:48:01'),
(294, '20231014293', 0, 31546, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 19:50:02'),
(295, '20231014294', 0, 31863, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 19:52:02'),
(296, '20231014295', 0, 31879, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 19:54:02'),
(297, '20231014296', 0, 31287, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 19:56:01'),
(298, '20231014297', 0, 31498, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 19:58:01'),
(299, '20231014298', 0, 30808, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 20:00:02'),
(300, '20231014299', 0, 31582, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 20:02:02'),
(301, '20231014300', 0, 31119, 0, 9, 'red+violet', 'GREEN', 'real', 'parity', '2023-10-14 20:04:02'),
(302, '20231014301', 0, 31577, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 20:06:01'),
(303, '20231014302', 0, 31131, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 20:08:02'),
(304, '20231014303', 0, 30879, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 20:10:01'),
(305, '20231014304', 0, 30808, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 20:12:02'),
(306, '20231014305', 0, 31917, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 20:14:01'),
(307, '20231014306', 0, 31618, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 20:16:01'),
(308, '20231014307', 0, 31893, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 20:18:01'),
(309, '20231014308', 0, 30905, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 20:20:02'),
(310, '20231014309', 0, 30834, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 20:22:01'),
(311, '20231014310', 0, 31536, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 20:24:01'),
(312, '20231014311', 0, 31214, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 20:26:01'),
(313, '20231014312', 0, 30784, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 20:28:02'),
(314, '20231014313', 19, 31600, 2, 0, 'red', 'RED & VIOLET', 'real', 'parity', '2023-10-14 20:30:02'),
(315, '20231014314', 0, 31917, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 20:32:01'),
(316, '20231014315', 0, 31685, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 20:34:01'),
(317, '20231014316', 0, 31734, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 20:36:01'),
(318, '20231014317', 0, 31835, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 20:38:01'),
(319, '20231014318', 0, 31293, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 20:40:02'),
(320, '20231014319', 0, 30812, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 20:42:01'),
(321, '20231014320', 0, 30940, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 20:44:02'),
(322, '20231014321', 0, 31647, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 20:46:02'),
(323, '20231014322', 0, 31633, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 20:48:02'),
(324, '20231014323', 0, 31508, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 20:50:01'),
(325, '20231014324', 0, 30881, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 20:52:01'),
(326, '20231014325', 0, 31572, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 20:54:01'),
(327, '20231014326', 0, 31145, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 20:56:02'),
(328, '20231014327', 0, 31614, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 20:58:01'),
(329, '20231014328', 0, 31514, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 21:00:02'),
(330, '20231014329', 0, 31181, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 21:02:01'),
(331, '20231014330', 0, 31112, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 21:04:02'),
(332, '20231014331', 0, 30800, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 21:06:02'),
(333, '20231014332', 0, 31604, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 21:08:01'),
(334, '20231014333', 0, 31137, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 21:10:02'),
(335, '20231014334', 0, 31647, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 21:12:01'),
(336, '20231014335', 0, 31344, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 21:14:01'),
(337, '20231014336', 0, 31589, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 21:16:02'),
(338, '20231014337', 0, 31086, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 21:18:01'),
(339, '20231014338', 0, 31835, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 21:20:02'),
(340, '20231014339', 0, 31163, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 21:22:02'),
(341, '20231014340', 0, 31131, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 21:24:01'),
(342, '20231014341', 0, 31072, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 21:26:01'),
(343, '20231014342', 0, 31478, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 21:28:01'),
(344, '20231014343', 0, 31578, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 21:30:01'),
(345, '20231014344', 0, 31450, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 21:32:01'),
(346, '20231014345', 0, 31227, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 21:34:02'),
(347, '20231014346', 0, 31136, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 21:36:02'),
(348, '20231014347', 0, 31642, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 21:38:01'),
(349, '20231014348', 0, 31489, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 21:40:02'),
(350, '20231014349', 0, 31679, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 21:42:01'),
(351, '20231014350', 0, 31689, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 21:44:01'),
(352, '20231014351', -75.5, 30863, 9, 3, 'green', 'GREEN', 'real', 'parity', '2023-10-14 21:46:01'),
(353, '20231014352', 0, 31763, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 21:48:01'),
(354, '20231014353', 210, 31175, 2, 5, 'red', 'GREEN & VIOLET', 'real', 'parity', '2023-10-14 21:50:02'),
(355, '20231014354', 0, 31261, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 21:52:02'),
(356, '20231014355', 0, 31749, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 21:54:01'),
(357, '20231014356', 0, 31194, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 21:56:02'),
(358, '20231014357', 0, 31400, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 21:58:02'),
(359, '20231014358', 0, 31640, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 22:00:02'),
(360, '20231014359', 0, 31322, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 22:02:01'),
(361, '20231014360', 0, 31549, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 22:04:01'),
(362, '20231014361', 0, 31445, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 22:06:01'),
(363, '20231014362', 0, 31112, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 22:08:01'),
(364, '20231014363', 0, 31630, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 22:10:01'),
(365, '20231014364', 100, 31416, 0, 6, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 22:12:01'),
(366, '20231014365', 0, 31270, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 22:14:01'),
(367, '20231014366', 0, 30937, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 22:16:01'),
(368, '20231014367', 100, 31316, 1, 6, 'green', 'RED', 'real', 'parity', '2023-10-14 22:18:02'),
(369, '20231014368', 100, 31129, 1, 9, 'green', 'GREEN', 'real', 'parity', '2023-10-14 22:20:01'),
(370, '20231014369', 100, 31236, 0, 6, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 22:22:01'),
(371, '20231014370', 100, 31086, 0, 6, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 22:24:01'),
(372, '20231014371', 0, 31222, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 22:26:02'),
(373, '20231014372', 0, 31280, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 22:28:02'),
(374, '20231014373', 0, 31528, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 22:30:02'),
(375, '20231014374', 100, 31156, 0, 6, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 22:32:01'),
(376, '20231014375', 0, 31716, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 22:34:02'),
(377, '20231014376', 0, 31223, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 22:36:02'),
(378, '20231014377', 0, 31749, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 22:38:01'),
(379, '20231014378', 0, 31568, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 22:40:02'),
(380, '20231014379', 0, 31589, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 22:42:02'),
(381, '20231014380', 0, 31640, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 22:44:01'),
(382, '20231014381', 0, 31121, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 22:46:01'),
(383, '20231014382', 0, 30882, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 22:48:02'),
(384, '20231014383', 0, 31423, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 22:50:01'),
(385, '20231014384', 110, 31486, 0, 6, 'red+violet', 'RED', 'real', 'parity', '2023-10-14 22:52:01'),
(386, '20231014385', 0, 31630, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 22:54:01'),
(387, '20231014386', 0, 31156, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 22:56:01'),
(388, '20231014387', 0, 31280, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 22:58:01'),
(389, '20231014388', 0, 31026, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 23:00:02'),
(390, '20231014389', 0, 31443, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 23:02:01'),
(391, '20231014390', 0, 31578, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 23:04:01'),
(392, '20231014391', 0, 31647, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 23:06:01'),
(393, '20231014392', 0, 31887, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 23:08:01'),
(394, '20231014393', 0, 31395, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 23:10:02'),
(395, '20231014394', 0, 30919, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 23:12:01'),
(396, '20231014395', 0, 31550, 0, 0, '', 'red++violet', 'random', 'parity', '2023-10-14 23:14:02'),
(397, '20231014396', 0, 30903, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 23:16:02'),
(398, '20231014397', 0, 31566, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 23:18:02'),
(399, '20231014398', 0, 31572, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 23:20:01'),
(400, '20231014399', 0, 30785, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 23:22:01'),
(401, '20231014400', 0, 31891, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 23:24:01'),
(402, '20231014401', 0, 31438, 0, 8, '', 'red', 'random', 'parity', '2023-10-14 23:26:01'),
(403, '20231014402', 0, 31644, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 23:28:01'),
(404, '20231014403', 0, 31299, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 23:30:02'),
(405, '20231014404', 0, 31812, 0, 2, '', 'red', 'random', 'parity', '2023-10-14 23:32:01'),
(406, '20231014405', 0, 31386, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 23:34:01'),
(407, '20231014406', 0, 31873, 0, 3, '', 'green', 'random', 'parity', '2023-10-14 23:36:02'),
(408, '20231014407', 0, 31575, 0, 5, '', 'green++violet', 'random', 'parity', '2023-10-14 23:38:01'),
(409, '20231014408', 0, 31637, 0, 7, '', 'green', 'random', 'parity', '2023-10-14 23:40:02'),
(410, '20231014409', 0, 31734, 0, 4, '', 'red', 'random', 'parity', '2023-10-14 23:42:01'),
(411, '20231014410', 10, 30784, 1, 4, 'green', 'RED', 'real', 'parity', '2023-10-14 23:44:01'),
(412, '20231014411', 0, 31011, 0, 1, '', 'green', 'random', 'parity', '2023-10-14 23:46:01'),
(413, '20231014412', 0, 31109, 0, 9, '', 'green', 'random', 'parity', '2023-10-14 23:48:02'),
(414, '20231014413', 0, 31376, 0, 6, '', 'red', 'random', 'parity', '2023-10-14 23:50:02'),
(415, '20231014414', 10, 31646, 1, 6, 'green', 'RED', 'real', 'parity', '2023-10-14 23:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reward`
--

CREATE TABLE `tbl_reward` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tempwinner`
--

CREATE TABLE `tbl_tempwinner` (
  `id` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `number` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `total` float NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_test`
--

CREATE TABLE `tbl_test` (
  `id` int(11) NOT NULL,
  `test` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `mobile` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `code` varchar(255) NOT NULL,
  `owncode` varchar(255) NOT NULL,
  `privacy` varchar(50) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `mobile`, `email`, `password`, `code`, `owncode`, `privacy`, `status`, `createdate`) VALUES
(1, '8668530466', 'demo@gmail.com', 'aef148f39fd86bb75a6f77a956bdaf48', '111116', '123456', 'on', 1, '2022-07-03 15:20:01'),
(2, '8355965199', 'demo@gmail.com', '25d55ad283aa400af464c76d713c07ad', '123456', '654321', 'on', 1, '2022-07-03 15:22:14'),
(225, '7517597629', 'rajhanspatil7607@gmail.com', '716b01cacfc45a257ec1953019a7bf27', '123456', '22584288', 'on', 1, '2023-10-14 06:38:24'),
(226, '8764646456', 'rajhanspatil7607@gmail.com', '716b01cacfc45a257ec1953019a7bf27', '123456', '22685115', 'on', 1, '2023-10-14 06:51:52'),
(227, '9657650360', 'yashrajtodkari007@gmail.com', '4eb004a5964f5950b4497c154c94fe25', '123456', '22765339', 'on', 1, '2023-10-14 07:28:35'),
(228, '8010653168', 'sakshimane641@gmail.com', 'b31e31dac8811d89bb1cbfc384414aaf', '123456', '22858881', 'on', 1, '2023-10-14 08:04:04'),
(229, '8793237122', 'samadhanhowal1122@gmail.com', '83e1d0257a8f6de39b3982884623c93c', '22858881', '22965991', 'on', 1, '2023-10-14 08:18:14'),
(230, '9028625902', 'rerere@gmail.com', '436dbcce6eb2d4b4873cf81a845a6f0c', '123456', '23048614', 'on', 1, '2023-10-14 16:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userresult`
--

CREATE TABLE `tbl_userresult` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `openprice` float NOT NULL,
  `tab` varchar(50) NOT NULL,
  `paidamount` float NOT NULL,
  `fee` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_userresult`
--

INSERT INTO `tbl_userresult` (`id`, `userid`, `periodid`, `type`, `value`, `amount`, `openprice`, `tab`, `paidamount`, `fee`, `status`, `createdate`) VALUES
(1, 225, '20231014067', 'button', '7', 10, 30785, 'parity', 9.5, 0.5, 'fail', '2023-10-14 12:18:01'),
(2, 225, '20231014068', 'button', '7', 10, 31682, 'parity', 9.5, 0.5, 'fail', '2023-10-14 12:20:01'),
(3, 225, '20231014069', 'button', '1', 40, 31004, 'parity', 342, 2, 'success', '2023-10-14 12:22:02'),
(4, 1, '20231014073', 'button', '2', 10, 31528, 'parity', 9.5, 0.5, 'fail', '2023-10-14 12:30:02'),
(5, 1, '20231014073', 'button', '6', 10, 31528, 'parity', 9.5, 0.5, 'fail', '2023-10-14 12:30:02'),
(6, 1, '20231014074', 'button', '1', 10, 31873, 'parity', 9.5, 0.5, 'fail', '2023-10-14 12:32:01'),
(7, 227, '20231014091', 'button', 'Red', 10, 30795, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:06:02'),
(8, 227, '20231014091', 'button', 'Red', 10, 30795, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:06:02'),
(9, 227, '20231014092', 'button', 'Green', 10, 31185, 'parity', 19, 0.5, 'success', '2023-10-14 13:08:01'),
(10, 227, '20231014092', 'button', 'Red', 20, 31185, 'parity', 19, 1, 'fail', '2023-10-14 13:08:01'),
(11, 227, '20231014092', 'button', 'Green', 10, 31185, 'parity', 19, 0.5, 'success', '2023-10-14 13:08:01'),
(12, 227, '20231014092', 'button', '5', 10, 31185, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:08:01'),
(13, 227, '20231014092', 'button', '0', 10, 31185, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:08:01'),
(14, 227, '20231014092', 'button', '7', 10, 31185, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:08:01'),
(15, 227, '20231014092', 'button', '4', 10, 31185, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:08:01'),
(16, 227, '20231014093', 'button', 'Red', 20, 31164, 'parity', 19, 1, 'fail', '2023-10-14 13:10:02'),
(17, 227, '20231014093', 'button', 'Green', 10, 31164, 'parity', 14.25, 0.5, 'success', '2023-10-14 13:10:02'),
(18, 1, '20231014094', 'button', 'Green', 10, 31644, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:12:01'),
(19, 227, '20231014094', 'button', 'Green', 20, 31644, 'parity', 19, 1, 'fail', '2023-10-14 13:12:01'),
(20, 1, '20231014094', 'button', 'Green', 10, 31644, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:12:01'),
(21, 1, '20231014094', 'button', '7', 10, 31644, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:12:01'),
(22, 1, '20231014094', 'button', '9', 10, 31644, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:12:01'),
(23, 1, '20231014096', 'button', '1', 10, 31900, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:16:01'),
(24, 1, '20231014096', 'button', '4', 10, 31900, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:16:01'),
(25, 1, '20231014096', 'button', '8', 10, 31900, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:16:01'),
(26, 1, '20231014096', 'button', '6', 10, 31900, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:16:01'),
(27, 1, '20231014096', 'button', 'Green', 10, 31900, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:16:01'),
(28, 1, '20231014096', 'button', 'Red', 10, 31900, 'parity', 19, 0.5, 'success', '2023-10-14 13:16:01'),
(29, 1, '20231014096', 'button', 'Violet', 10, 31900, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:16:01'),
(30, 1, '20231014101', 'button', '0', 10, 31227, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:26:01'),
(31, 1, '20231014101', 'button', 'Green', 10, 31227, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:26:01'),
(32, 1, '20231014101', 'button', '5', 10, 31227, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:26:01'),
(33, 1, '20231014101', 'button', '1', 10, 31227, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:26:01'),
(34, 1, '20231014101', 'button', '6', 10, 31227, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:26:01'),
(35, 228, '20231014107', 'button', '6', 10, 31657, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:38:01'),
(36, 228, '20231014107', 'button', '5', 10, 31657, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:38:01'),
(37, 228, '20231014107', 'button', '4', 10, 31657, 'parity', 85.5, 0.5, 'success', '2023-10-14 13:38:01'),
(38, 229, '20231014116', 'button', 'Green', 10, 31668, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:56:01'),
(39, 229, '20231014116', 'button', 'Green', 10, 31668, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:56:01'),
(40, 229, '20231014116', 'button', 'Green', 10, 31668, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:56:01'),
(41, 229, '20231014117', 'button', 'Red', 10, 31701, 'parity', 9.5, 0.5, 'fail', '2023-10-14 13:58:02'),
(42, 229, '20231014119', 'button', 'Green', 10, 30782, 'parity', 9.5, 0.5, 'fail', '2023-10-14 14:02:01'),
(43, 229, '20231014121', 'button', 'Red', 10, 31482, 'parity', 9.5, 0.5, 'fail', '2023-10-14 14:06:01'),
(44, 228, '20231014123', 'button', '4', 10, 31470, 'parity', 9.5, 0.5, 'fail', '2023-10-14 14:10:02'),
(45, 228, '20231014123', 'button', '1', 10, 31470, 'parity', 9.5, 0.5, 'fail', '2023-10-14 14:10:02'),
(46, 228, '20231014123', 'button', '0', 10, 31470, 'parity', 9.5, 0.5, 'fail', '2023-10-14 14:10:02'),
(47, 228, '20231014123', 'button', '6', 10, 31470, 'parity', 9.5, 0.5, 'fail', '2023-10-14 14:10:02'),
(48, 228, '20231014125', 'button', '8', 10, 31269, 'parity', 85.5, 0.5, 'success', '2023-10-14 14:14:01'),
(49, 229, '20231014125', 'button', '8', 20, 31269, 'parity', 171, 1, 'success', '2023-10-14 14:14:01'),
(50, 1, '20231014150', 'button', '8', 400, 31704, 'parity', 3420, 20, 'success', '2023-10-14 15:04:02'),
(51, 1, '20231014173', 'button', '1', 10, 31483, 'parity', 85.5, 0.5, 'success', '2023-10-14 15:50:02'),
(52, 1, '20231014173', 'button', 'Green', 10, 31483, 'parity', 19, 0.5, 'success', '2023-10-14 15:50:02'),
(53, 1, '20231014174', 'button', 'Red', 10, 31236, 'parity', 9.5, 0.5, 'fail', '2023-10-14 15:52:01'),
(54, 1, '20231014234', 'button', '1', 10, 30706, 'parity', 9.5, 0.5, 'fail', '2023-10-14 17:52:01'),
(55, 1, '20231014234', 'button', '7', 10, 30706, 'parity', 9.5, 0.5, 'fail', '2023-10-14 17:52:01'),
(56, 1, '20231014234', 'button', '3', 10, 30706, 'parity', 9.5, 0.5, 'fail', '2023-10-14 17:52:01'),
(57, 1, '20231014234', 'button', '9', 10, 30706, 'parity', 9.5, 0.5, 'fail', '2023-10-14 17:52:01'),
(58, 1, '20231014251', 'button', '2', 10, 31162, 'parity', 9.5, 0.5, 'fail', '2023-10-14 18:26:01'),
(59, 1, '20231014251', 'button', '1', 10, 31162, 'parity', 9.5, 0.5, 'fail', '2023-10-14 18:26:01'),
(60, 1, '20231014253', 'button', '9', 10, 31575, 'parity', 9.5, 0.5, 'fail', '2023-10-14 18:30:01'),
(61, 1, '20231014253', 'button', '2', 10, 31575, 'parity', 85.5, 0.5, 'success', '2023-10-14 18:30:01'),
(62, 1, '20231014300', 'button', '7', 10, 31119, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:04:02'),
(63, 1, '20231014300', 'button', '1', 10, 31119, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:04:02'),
(64, 1, '20231014300', 'button', '9', 10, 31119, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:04:02'),
(65, 1, '20231014300', 'button', '3', 10, 31119, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:04:02'),
(66, 1, '20231014313', 'button', '7', 10, 31600, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:30:02'),
(67, 1, '20231014313', 'button', '1', 10, 31600, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:30:02'),
(68, 1, '20231014313', 'button', '3', 10, 31600, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:30:02'),
(69, 1, '20231014313', 'button', '9', 10, 31600, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:30:02'),
(70, 1, '20231014313', 'button', 'Green', 10, 31600, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:30:02'),
(71, 1, '20231014313', 'button', 'Red', 10, 31600, 'parity', 19, 0.5, 'success', '2023-10-14 20:30:02'),
(72, 1, '20231014313', 'button', 'Violet', 10, 31600, 'parity', 9.5, 0.5, 'fail', '2023-10-14 20:30:02'),
(73, 230, '20231014351', 'button', '9', 10, 30863, 'parity', 85.5, 0.5, 'success', '2023-10-14 21:46:01'),
(74, 1, '20231014353', 'button', 'Red', 100, 31175, 'parity', 190, 5, 'success', '2023-10-14 21:50:02'),
(75, 1, '20231014353', 'button', 'Green', 300, 31175, 'parity', 285, 15, 'fail', '2023-10-14 21:50:02'),
(76, 1, '20231014364', 'button', 'Green', 100, 31416, 'parity', 95, 5, 'fail', '2023-10-14 22:12:01'),
(77, 1, '20231014367', 'button', 'Red', 100, 31316, 'parity', 95, 5, 'fail', '2023-10-14 22:18:02'),
(78, 1, '20231014368', 'button', 'Red', 100, 31129, 'parity', 95, 5, 'fail', '2023-10-14 22:20:01'),
(79, 1, '20231014369', 'button', 'Green', 100, 31236, 'parity', 95, 5, 'fail', '2023-10-14 22:22:01'),
(80, 1, '20231014370', 'button', 'Green', 100, 31086, 'parity', 95, 5, 'fail', '2023-10-14 22:24:01'),
(81, 1, '20231014374', 'button', 'Green', 100, 31156, 'parity', 95, 5, 'fail', '2023-10-14 22:32:01'),
(82, 1, '20231014384', 'button', 'Green', 10, 31486, 'parity', 9.5, 0.5, 'fail', '2023-10-14 22:52:01'),
(83, 1, '20231014384', 'button', 'Green', 100, 31486, 'parity', 95, 5, 'fail', '2023-10-14 22:52:01'),
(84, 1, '20231014410', 'button', 'Red', 10, 30784, 'parity', 9.5, 0.5, 'fail', '2023-10-14 23:44:01'),
(85, 1, '20231014414', 'button', 'Red', 10, 31646, 'parity', 9.5, 0.5, 'fail', '2023-10-14 23:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE `tbl_wallet` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `envelopestatus` smallint(6) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_wallet`
--

INSERT INTO `tbl_wallet` (`id`, `userid`, `amount`, `envelopestatus`, `createdate`) VALUES
(1, 1, '149', 0, '2022-07-03 15:22:14'),
(2, 2, '100', 1, '2023-03-14 10:46:13'),
(225, 225, '100', 0, '2023-10-14 06:38:24'),
(226, 226, '100', 0, '2023-10-14 06:51:52'),
(227, 227, '2000', 0, '2023-10-14 07:28:35'),
(228, 228, '2035.5', 0, '2023-10-14 08:04:04'),
(229, 229, '191', 0, '2023-10-14 08:18:14'),
(230, 230, '175.5', 0, '2023-10-14 16:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walletsummery`
--

CREATE TABLE `tbl_walletsummery` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `type` varchar(50) NOT NULL,
  `actiontype` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_walletsummery`
--

INSERT INTO `tbl_walletsummery` (`id`, `userid`, `orderid`, `amount`, `type`, `actiontype`, `createdate`) VALUES
(1, 2, 1, 1000, 'debit', 'withdraw~1', '2023-10-14 04:41:14'),
(2, 225, 2, 10, 'debit', 'join', '2023-10-14 06:46:11'),
(3, 225, 3, 10, 'debit', 'join', '2023-10-14 06:49:18'),
(4, 225, 4, 40, 'debit', 'join', '2023-10-14 06:50:25'),
(5, 225, 5, 342, 'credit', 'win', '2023-10-14 12:22:02'),
(6, 1, 6, 10, 'debit', 'join', '2023-10-14 06:58:07'),
(7, 1, 7, 10, 'debit', 'join', '2023-10-14 06:58:26'),
(8, 1, 8, 10, 'debit', 'join', '2023-10-14 07:00:06'),
(9, 225, 9, 506, 'debit', 'withdraw~2', '2023-10-14 07:15:33'),
(10, 227, 10, 10, 'debit', 'join', '2023-10-14 07:34:33'),
(11, 227, 11, 10, 'debit', 'join', '2023-10-14 07:35:16'),
(12, 227, 12, 10, 'debit', 'join', '2023-10-14 07:36:25'),
(13, 227, 13, 20, 'debit', 'join', '2023-10-14 07:36:40'),
(14, 227, 14, 10, 'debit', 'join', '2023-10-14 07:36:45'),
(15, 227, 15, 10, 'debit', 'join', '2023-10-14 07:36:50'),
(16, 227, 16, 10, 'debit', 'join', '2023-10-14 07:36:54'),
(17, 227, 17, 10, 'debit', 'join', '2023-10-14 07:37:00'),
(18, 227, 18, 10, 'debit', 'join', '2023-10-14 07:37:03'),
(19, 227, 19, 19, 'credit', 'win', '2023-10-14 13:08:01'),
(20, 227, 20, 19, 'credit', 'win', '2023-10-14 13:08:01'),
(21, 227, 21, 20, 'debit', 'join', '2023-10-14 07:38:21'),
(22, 227, 22, 10, 'debit', 'join', '2023-10-14 07:38:47'),
(23, 227, 23, 14.25, 'credit', 'win', '2023-10-14 13:10:02'),
(24, 1, 24, 10, 'debit', 'join', '2023-10-14 07:40:08'),
(25, 227, 25, 20, 'debit', 'join', '2023-10-14 07:40:14'),
(26, 1, 26, 10, 'debit', 'join', '2023-10-14 07:40:16'),
(27, 1, 27, 10, 'debit', 'join', '2023-10-14 07:40:30'),
(28, 1, 28, 10, 'debit', 'join', '2023-10-14 07:40:40'),
(29, 1, 29, 10, 'debit', 'join', '2023-10-14 07:44:27'),
(30, 1, 30, 10, 'debit', 'join', '2023-10-14 07:44:38'),
(31, 1, 31, 10, 'debit', 'join', '2023-10-14 07:44:41'),
(32, 1, 32, 10, 'debit', 'join', '2023-10-14 07:44:48'),
(33, 1, 33, 10, 'debit', 'join', '2023-10-14 07:44:55'),
(34, 1, 34, 10, 'debit', 'join', '2023-10-14 07:45:02'),
(35, 1, 35, 10, 'debit', 'join', '2023-10-14 07:45:05'),
(36, 1, 36, 19, 'credit', 'win', '2023-10-14 13:16:01'),
(37, 1, 37, 10, 'debit', 'join', '2023-10-14 07:54:53'),
(38, 1, 38, 10, 'debit', 'join', '2023-10-14 07:54:56'),
(39, 1, 39, 10, 'debit', 'join', '2023-10-14 07:54:59'),
(40, 1, 40, 10, 'debit', 'join', '2023-10-14 07:55:04'),
(41, 1, 41, 10, 'debit', 'join', '2023-10-14 07:55:11'),
(42, 228, 42, 10, 'debit', 'join', '2023-10-14 08:06:08'),
(43, 228, 43, 10, 'debit', 'join', '2023-10-14 08:06:13'),
(44, 228, 44, 10, 'debit', 'join', '2023-10-14 08:06:17'),
(45, 228, 45, 85.5, 'credit', 'win', '2023-10-14 13:38:01'),
(46, 228, 46, 500, 'debit', 'withdraw~3', '2023-10-14 08:16:05'),
(47, 229, 47, 10, 'debit', 'join', '2023-10-14 08:24:47'),
(48, 229, 48, 10, 'debit', 'join', '2023-10-14 08:24:48'),
(49, 229, 49, 10, 'debit', 'join', '2023-10-14 08:24:48'),
(50, 229, 50, 10, 'debit', 'join', '2023-10-14 08:27:01'),
(51, 229, 51, 10, 'debit', 'join', '2023-10-14 08:30:42'),
(52, 1, 52, 10, 'credit', 'Bet Refund', '2023-10-14 14:03:36'),
(53, 229, 53, 10, 'debit', 'join', '2023-10-14 08:34:07'),
(54, 228, 54, 10, 'debit', 'join', '2023-10-14 08:38:57'),
(55, 228, 55, 10, 'debit', 'join', '2023-10-14 08:39:03'),
(56, 228, 56, 10, 'debit', 'join', '2023-10-14 08:39:10'),
(57, 228, 57, 10, 'debit', 'join', '2023-10-14 08:39:21'),
(58, 228, 58, 10, 'debit', 'join', '2023-10-14 08:42:19'),
(59, 229, 59, 20, 'debit', 'join', '2023-10-14 08:43:20'),
(60, 228, 60, 85.5, 'credit', 'win', '2023-10-14 14:14:01'),
(61, 229, 61, 171, 'credit', 'win', '2023-10-14 14:14:01'),
(62, 1, 62, 400, 'debit', 'join', '2023-10-14 09:33:25'),
(63, 1, 63, 3420, 'credit', 'win', '2023-10-14 15:04:02'),
(64, 1, 64, 10, 'debit', 'join', '2023-10-14 10:18:16'),
(65, 1, 65, 10, 'debit', 'join', '2023-10-14 10:18:24'),
(66, 1, 66, 85.5, 'credit', 'win', '2023-10-14 15:50:02'),
(67, 1, 67, 19, 'credit', 'win', '2023-10-14 15:50:02'),
(68, 1, 68, 10, 'debit', 'join', '2023-10-14 10:21:05'),
(69, 1, 69, 500, 'debit', 'withdraw~4', '2023-10-14 10:26:51'),
(70, 1, 70, 500, 'debit', 'withdraw~5', '2023-10-14 10:27:06'),
(71, 1, 71, 10, 'debit', 'join', '2023-10-14 12:20:36'),
(72, 1, 72, 10, 'debit', 'join', '2023-10-14 12:20:39'),
(73, 1, 73, 10, 'debit', 'join', '2023-10-14 12:20:48'),
(74, 1, 74, 10, 'debit', 'join', '2023-10-14 12:20:51'),
(75, 1, 75, 10, 'debit', 'join', '2023-10-14 12:54:25'),
(76, 1, 76, 10, 'debit', 'join', '2023-10-14 12:54:27'),
(77, 1, 77, 10, 'debit', 'join', '2023-10-14 12:58:11'),
(78, 1, 78, 10, 'debit', 'join', '2023-10-14 12:58:14'),
(79, 1, 79, 85.5, 'credit', 'win', '2023-10-14 18:30:01'),
(80, 1, 80, 10, 'debit', 'join', '2023-10-14 14:32:14'),
(81, 1, 81, 10, 'debit', 'join', '2023-10-14 14:32:19'),
(82, 1, 82, 10, 'debit', 'join', '2023-10-14 14:32:24'),
(83, 1, 83, 10, 'debit', 'join', '2023-10-14 14:32:31'),
(84, 1, 84, 10, 'debit', 'join', '2023-10-14 14:58:08'),
(85, 1, 85, 10, 'debit', 'join', '2023-10-14 14:58:11'),
(86, 1, 86, 10, 'debit', 'join', '2023-10-14 14:58:15'),
(87, 1, 87, 10, 'debit', 'join', '2023-10-14 14:58:18'),
(88, 1, 88, 10, 'debit', 'join', '2023-10-14 14:58:31'),
(89, 1, 89, 10, 'debit', 'join', '2023-10-14 14:58:41'),
(90, 1, 90, 10, 'debit', 'join', '2023-10-14 14:58:44'),
(91, 1, 91, 19, 'credit', 'win', '2023-10-14 20:30:02'),
(92, 230, 92, 10, 'debit', 'join', '2023-10-14 16:14:16'),
(93, 230, 93, 85.5, 'credit', 'win', '2023-10-14 21:46:01'),
(94, 1, 94, 100, 'debit', 'join', '2023-10-14 16:18:24'),
(95, 1, 95, 300, 'debit', 'join', '2023-10-14 16:18:32'),
(96, 1, 96, 190, 'credit', 'win', '2023-10-14 21:50:02'),
(97, 1, 97, 100, 'debit', 'join', '2023-10-14 16:40:27'),
(98, 1, 98, 100, 'debit', 'join', '2023-10-14 16:46:26'),
(99, 1, 99, 100, 'debit', 'join', '2023-10-14 16:49:07'),
(100, 1, 100, 100, 'debit', 'join', '2023-10-14 16:51:03'),
(101, 1, 101, 100, 'debit', 'join', '2023-10-14 16:52:27'),
(102, 1, 102, 100, 'debit', 'join', '2023-10-14 17:01:21'),
(103, 1, 103, 10, 'debit', 'join', '2023-10-14 17:20:07'),
(104, 1, 104, 100, 'debit', 'join', '2023-10-14 17:20:11'),
(105, 1, 105, 10, 'debit', 'join', '2023-10-14 18:12:52'),
(106, 1, 106, 10, 'debit', 'join', '2023-10-14 18:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawal`
--

CREATE TABLE `tbl_withdrawal` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `payout` varchar(50) NOT NULL,
  `payid` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_withdrawal`
--

INSERT INTO `tbl_withdrawal` (`id`, `userid`, `amount`, `payout`, `payid`, `status`, `createdate`) VALUES
(1, 2, 1000, 'bank', 2, 2, '2023-10-14 10:11:45'),
(2, 225, 506, 'bank', 3, 2, '2023-10-14 12:45:54'),
(3, 228, 500, 'bank', 4, 2, '2023-10-14 13:47:17'),
(4, 1, 500, 'bank', 5, 2, '2023-10-14 15:57:28'),
(5, 1, 500, 'bank', 5, 2, '2023-10-14 15:57:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_menu`
--
ALTER TABLE `child_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `red envlop`
--
ALTER TABLE `red envlop`
  ADD PRIMARY KEY (`red envelop`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bankdetail`
--
ALTER TABLE `tbl_bankdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_betting`
--
ALTER TABLE `tbl_betting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonussummery`
--
ALTER TABLE `tbl_bonussummery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonuswithdrawal`
--
ALTER TABLE `tbl_bonuswithdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_envelop`
--
ALTER TABLE `tbl_envelop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gameid`
--
ALTER TABLE `tbl_gameid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gamesettings`
--
ALTER TABLE `tbl_gamesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_intrest`
--
ALTER TABLE `tbl_intrest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_intrest_amt`
--
ALTER TABLE `tbl_intrest_amt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manualresult`
--
ALTER TABLE `tbl_manualresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manualresultswitch`
--
ALTER TABLE `tbl_manualresultswitch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paymentsetting`
--
ALTER TABLE `tbl_paymentsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_productfeature`
--
ALTER TABLE `tbl_productfeature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_randomdata`
--
ALTER TABLE `tbl_randomdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rchwallet`
--
ALTER TABLE `tbl_rchwallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_recharge`
--
ALTER TABLE `tbl_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_refund`
--
ALTER TABLE `tbl_refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tempwinner`
--
ALTER TABLE `tbl_tempwinner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_test`
--
ALTER TABLE `tbl_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userresult`
--
ALTER TABLE `tbl_userresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_walletsummery`
--
ALTER TABLE `tbl_walletsummery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrawal`
--
ALTER TABLE `tbl_withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `child_menu`
--
ALTER TABLE `child_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `red envlop`
--
ALTER TABLE `red envlop`
  MODIFY `red envelop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_bankdetail`
--
ALTER TABLE `tbl_bankdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_betting`
--
ALTER TABLE `tbl_betting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `tbl_bonussummery`
--
ALTER TABLE `tbl_bonussummery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_bonuswithdrawal`
--
ALTER TABLE `tbl_bonuswithdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_envelop`
--
ALTER TABLE `tbl_envelop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_gameid`
--
ALTER TABLE `tbl_gameid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `tbl_gamesettings`
--
ALTER TABLE `tbl_gamesettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_intrest`
--
ALTER TABLE `tbl_intrest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_intrest_amt`
--
ALTER TABLE `tbl_intrest_amt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_manualresult`
--
ALTER TABLE `tbl_manualresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_manualresultswitch`
--
ALTER TABLE `tbl_manualresultswitch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_paymentsetting`
--
ALTER TABLE `tbl_paymentsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_productfeature`
--
ALTER TABLE `tbl_productfeature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_randomdata`
--
ALTER TABLE `tbl_randomdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `tbl_rchwallet`
--
ALTER TABLE `tbl_rchwallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_recharge`
--
ALTER TABLE `tbl_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_refund`
--
ALTER TABLE `tbl_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tempwinner`
--
ALTER TABLE `tbl_tempwinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_test`
--
ALTER TABLE `tbl_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `tbl_userresult`
--
ALTER TABLE `tbl_userresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `tbl_walletsummery`
--
ALTER TABLE `tbl_walletsummery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tbl_withdrawal`
--
ALTER TABLE `tbl_withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
