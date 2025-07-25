-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 08:24 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hidden_layer`
--

CREATE TABLE `hidden_layer` (
  `id` int(11) NOT NULL,
  `word1` varchar(100) NOT NULL,
  `word2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hidden_layer`
--

INSERT INTO `hidden_layer` (`id`, `word1`, `word2`) VALUES
(1, 'create ', 'start'),
(2, 'open ', 'start'),
(4, 'begin', 'start'),
(5, 'move', 'transfer'),
(6, 'change', 'transfer convert'),
(7, 'continue ', 'maintain'),
(8, 'period', 'long time'),
(9, 'time', 'much long'),
(10, 'least ', 'minimum'),
(11, 'multiple', 'more than one'),
(12, 'age', 'old'),
(13, 'connect', 'link'),
(14, 'merge', 'link'),
(15, 'join', 'link'),
(16, 'highest', 'maximum'),
(17, 'remove ', 'cancel'),
(18, 'get', 'avail'),
(19, 'take', 'avail'),
(20, 'give', 'offer'),
(21, 'stop', 'block'),
(22, 'undelivere', 'not recieve'),
(23, 'raise', 'increase'),
(24, 'delete  ', 'cancel'),
(25, 'how long', 'period'),
(26, 'select', 'choose');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `msg`, `datetime`) VALUES
(1, 'hello\n', '2018-03-24 12:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `msgt`
--

CREATE TABLE `msgt` (
  `id` int(11) NOT NULL,
  `msgI` text NOT NULL,
  `msgO` text NOT NULL,
  `weight` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msgt`
--

INSERT INTO `msgt` (`id`, `msgI`, `msgO`, `weight`) VALUES
(1, 'hi', 'Hello, how can I help you today?', 0),
(2, 'hello', 'Hi, how can i help you?', 0),
(3, 'hei', 'Hello, how can I help you?', 0),
(4, 'are you do', 'Couldnt be better! How can I help you?\r\n\r\n', 0),
(5, 'start an account', 'Please be more specific.<br/>\r\nDifferent types of accounts are:<br/>\r\n1.	Current account<br/>\r\n2.	Savings account<br/>\r\n3.	NRO/NRE account<br/>\r\n4.	Demat account<br/>\r\n5.	Corporate salary account<br/>\r\n', 0),
(6, ' start current account', 'Sure. Here is the info you are looking for. <br/>Please <a href="../web/account.php">click here </a>to apply for an Current account.\n\n', 0),
(7, 'start save account', 'Sure. Here is the info you are looking for. <br/>Please <a href="../web/account.php">click here </a>to apply for an Savings account.\n', 0),
(8, 'start NRO / NRE account', 'Sure. Here is the info you are looking for. <br/>Please <a href="../web/account.php">click here </a>to apply for NRO/NRE account.\n', 0),
(9, 'start demat account', 'Sure. Here is the info you are looking for. <br/>Please <a href="../web/account.php">click here </a>to apply for Demat account.\n\n', 0),
(10, ' start corporate salari account', 'Sure. Here is the info you are looking for. <br/>Please <a href="../web/account.php">click here </a>to apply for Corporate salary account.\r\n', 0),
(11, 'start pension account', 'You can open pension account 6 months prior to your date of retirement.\n', 0),
(12, 'transfer account from one branch to another\r\n', 'Yes,  Accounts can be transferred from one branch to another. However, there are certain restrictions. \r\nPlease visit your nearest branch for details.\r\n', 0),
(13, 'convert exist save account into pension account', 'Yes. You just have to submit an undertaking and submit the required documents.\n', 0),
(14, 'minimum Balance need maintain  account', 'No minimum balance need to be maintained as these are Zero balance accounts.', 0),
(15, 'use save account after long time', 'The account becomes dormant if there are no customer initiated transactions (excludes system generated transactions like credit interest, debit interest), in the account for a continuous period of two years.<br/>\nIf the account status is ''Dormant'', transactions through Direct Banking Channels like ATM, NetBanking, PhoneBanking are not be allowed by the Bank.\n\n', 0),
(16, 'change / update the address for my account\n\n', 'We request you to follow the below steps to update /change your address.\n<br/>\n1.	You can Personally Visit your nearest Branch or<br/>\n2.	You can send your request through courier, Post or Bearer to the nearest branch :<br/>\n1) Click here to download the form or Fill the application form available at the Branch<br/>\n2) The application form needs to be duly filled and signed by the account holder.<br/>\n3) Please attach a copy of Address proof to the address change request. List of Valid Address proof documents.<br/>\n4) If you are visiting the Branch, please carry your original documentation for verification.<br/><br/> If you are sending the request through post, then please attach a copy of self-attested address proof.\nNote / Important:<br/>\n1.	Your mailing address will be updated within 7 working days after receipt of complete documentation.<br/>\n2.	Joint account holders need to fill separate request for address change<br/>\n3.	You may view the updated address by logging on to NetBanking under "My Contact Details".<br/>\n\n', 0),
(17, ' dont no use my save account for a veri long time\n\n', 'The account becomes dormant if there are no customer initiated transactions (excludes system generated transactions like credit interest, debit interest), in the account for a continuous period of two years.<br/>\r\nIf the account status is ''Dormant'', transactions through Direct Banking Channels like ATM, NetBanking, PhoneBanking are not be allowed by the Bank.\r\n', 0),
(18, ' documents required to open a new account', 'In order to open a new  Account, simply walk into the nearest United Bank and speak to a customer service executive. Remember to carry the following documents (original for verification and self-attested copies for submission):\r\n1.	Identity Proof\r\n2.	Address Proof\r\n3.	Latest passport size photographs\r\n', 0),
(19, 'Change / Add my mobile number', '\nWe request you to follow the procedure mentioned below to change your Mobile Number\n<br/><br/>\nStep 1) Fill the application form available at the Branch (duly signed by all the holders). <br/>\nStep 2) If you are unable to visit an United Bank Branch, you can send the form by post or courier.<br/>\nNote / Important: <br/>\n1.	Instruction received through Net Banking, or scan copy, fax or email will not be processed for security and authentication purpose.<br/>\n2.	Updates for InstaAlerts and / or Mobile Banking (if registered) need to be done separately.<br/>\nInstaAlerts Updates:<br>\nPlease submit your requirement at your nearest branch, through a written letter duly signed by all account holders. In case you are unable to visit a branch, you can send the letter by post or courier.\nMobile Banking Updates/InstaQuery Updates: <br/>\nPlease cancel InstaQuery on your old number and then re-register for InstaQuery on your new number by following the process mentioned below:<br/>\n1.	Log in to Net Banking with your Customer Identification Number and NetBanking Password (IPIN). <br/>\n2.	Click on InstaQuery Registration in the top right hand corner<br/>\n3.	Select De-register for InstaQuery from the left hand side menu<br/>\n4.	From the list shown, select the mobile number that needs to be de-registered<br/>\n5.	Click on Continue<br/>\n6.	Select Confirm<br/>\nYour InstaQuery de-registration request will be processed online<br/>\nSubsequently, you need to re-register for InstaQuery on the new number as below: <br/>\n1.	Log in to NetBanking with your Customer Identification Number and NetBanking Password (IPIN). <br/>\n2.	Click on InstaQuery Registration on the top right hand corner<br/>\n3.	Select Subscribe for InstaQuery from the left hand side menu<br/>\n4.	Choose your Account Number from the list of all accounts linked to your Customer Identification number. (All the account level transactions will be effective for the Primary Account selected by you at the time of registration. The primary account can be changed at a later stage using the Change Primary Account facility in InstaQuery.) <br/>\n5.	Provide your 10 digit mobile number along with the country code. Note that all Reliance CDMA customers need to provide a 10 digit mobile number only, without the country code. <br/>\n6.	Click on the Check box which states I accept Terms and Conditions. <br/>\n7.	Click on Confirm. <br/>\nYour request will be processed online.\n', 0),
(20, '  more than one  account', 'You cant have more than one current account with United bank.\r\n', 0),
(21, 'children  bank account', 'Yes, children''s current accounts are typically available to youngsters from the age of 11. From the age of 16 they''ll have access to more sophisticated accounts.\r\n', 0),
(22, ' appli for a joint account', 'Happy to be of service! You can have a joint applicant for your account by filling <a href="../web/account.php">this form</a>. You can send the form and the required documents in sealed packets/envelopes to our P.O Box service using the local postal service. Please DO NOT use a courier service to send documents to our P.O.Box.\n', 0),
(23, ' work hour  and working day time', 'Timings For Week days [Monday to Friday] is 9.30 AM to 4 PM <br/> Sunday and all public holidays are closed.\n	 ', 0),
(24, ' activate mobile bank', 'Happy to answer your questions! If you have already registered for NetBanking, you simply need to download the MobileBanking App from the App Store or Play Store and set it up using your account details.<br/> You can choose to sign in using your NetBanking login ID and IPIN or set up a 4-digit Quick Access PIN. If you do not wish to download the app, you can also access NetBanking via your mobile browser. The login process will be the same as NetBanking on your computer.\r\n\r\n', 0),
(25, 'link aadhaar card account', 'Sure. We request you to follow the below steps to update your Aadhaar number. <br/>Update through NetBanking: Login to NetBanking, Select Requests and click on View / Update Aadhaar number Select the Account where you would like to link your Aadhaar number and input your Aadhaar number. You need to re-enter the same and click on Update You will be displayed all details entered by you and need to click on Confirm to submit the record. Your Aadhaar number will be updated with us post validation in 3-4 working days.\r\n', 0),
(31, 'benefit link aadhaar account', 'Sure. By linking your Aadhaar number to your account, you will get the following benefits:<br/>\r\n1.Receipt of Direct Benefit Transfer (DBT) of LPG Subsidy directly into your account. <br/>\r\n2.Receipt of direct credit of other Government subsidies like welfare funds, pensions, scholarships, <br/>\r\n MNREGA wages etc. into your account. <br/>\r\n3.Easy and convenient Aadhaar enabled payment systems (AEPS) like: <br/>\r\n1.BIM - Aadhaar Pay. <br/>\r\n\r\n2.Aadhaar Based payment on biometric Micro ATM''s at BC''s. <br/>\r\n3.UPI payments through Aadhaar.\r\n', 0),
(32, 'necessari to link bank account with aadhaar\n\n', 'As per gazette notification of Ministry of Finance, dated 1st June 2017, Individuals are required to provide Aadhaar number for linking all their bank accounts before 31st Dec 2017.\r\nFor residents not having Aadhaar it is suggested that they get themselves Enroled to get an Aadhaar.', 0),
(33, 'Why am I be asked / should to link all my bank accounts with aadhaar\n\n', 'For your own security, it is necessary to verify identity of all bank account holders and link them with Aadhaar to weed out the accounts being operated by fraudsters, money-launderers, criminals etc. When every bank account is verified and linked with Aadhaar and then If anyone fraudulently withdraws money from your account, through Aadhaar such fraudster can easily be located and punished.\n\nTherefore, by linking your bank accounts with Aadhaar, your accounts becomes more secure and not the other way around.\n', 0),
(34, 'Why am I be asked to should verify and link my mobile numbers with Aadhaar\n\n', 'For your own security and security of our country, it is necessary to verify identity of all mobile subscribers and link them with Aadhaar to weed out mobile numbers being operated by fraudsters, money-launderers, criminals etc. It has been found that most criminals and terrorists get SIM cards issued in the name of fictitious and even real people without their knowledge and use them for committing frauds and crime. When every mobile number is verified and linked with Aadhaar, then fraudsters, criminals, and terrorists using mobiles can be easily identified and punished in accordance with law\n', 0),
(35, ' aadhaar different from any other identiti issued by the government\n', 'Aadhaar is essentially a paperless online anytime-anywhere identity assigned to a resident to cover his/her entire lifetime. The verification of his identity is done online with the help of authentication devices which connect to UIDAI Central Identity Repository and return only a yes or no response to the basic query-Is the person who he/she claims to be? based on the data available with UIDAI.\nThe Aadhaar authentication service is fully functional and in use in several service delivery schemes across the country. The Aadhaar Card or the e-Aadhaar (electronic copy of Aadhaar) are essentially given to residents to know their own Aadhaar, but are only the first step towards the actual use of the online id as explained in the preceding para.\n', 0),
(36, ' aadhaar enable account', 'AADHAAR ENABLED ACCOUNT can be offered by a Bank which is empanelled with NPCI . A customer has to submit a mandate to the Bank to link his/her Aadhaar number to his/her bank account for the availing the benefits of the various government schemes.\r\n\r\n', 0),
(37, ' Schemes covered under aadhaar enable account\n', 'Some of the schemes which are covered under the Aadhaar Based Payment Services.\r\nDirect credit of subsidies from government that include LPG, Kerosene, Sugar etc\r\n', 0),
(38, ' link my account to aadhaar Number', 'You will get a seamless credit of Govt. benefits and other credits like pension / salaries when you link your account to the Aadhaar Number.\r\n', 0),
(40, 'appli', 'Thank you for your patience! <br/>\nHere are some quick links.<br/>\nApply for a <a href="../web/credit_card.php" target="_blank">Credit Card</a><br/>\nApply for a <a href="../web/debit_card.php"target="_blank">Debit Card</a><br/>\nApply for <a href="../web/account.php"target="_blank">Accounts & Deposits</a><br/>\nApply for<a href="../web/loan.php"target="_blank">Loan</a><br/>\n\n', 0),
(41, 'Appli for credit card\r\n\r\n', 'Sure. <a href="../web/credit_card.php" target="_blank">Click here</a> to apply credit card.\n', 0),
(42, 'Appli for debit card\r\n', 'Sure. <a href="../web/debit_card.php" target="_blank">Click here</a> to apply for debit card.\n', 0),
(43, 'Appli for account ', 'Sure. <a href="../web/account.php"target="_blank">Click here</a> to apply for accounts & deposits.\n', 0),
(44, 'Appli for save account ', 'Sure. <a href="../web/savingsaccount.php"target="_blank">Click here</a> to apply for savings accounts.\n', 0),
(45, 'Appli for salari account ', 'Sure. <a href="../web/salaryaccount.php"target="_blank">Click here</a> to apply for salary accounts.\n', 0),
(46, 'Appli for Demat account\r\n', 'Sure. <a href="../web/demataccount.php"target="_blank">Click here</a> to apply for demat accounts.\n', 0),
(47, 'Appli for Current account\r\n', 'Sure. <a href="../web/currentaccount.php"target="_blank">Click here</a> to apply for current accounts.\n', 0),
(48, 'Appli for NRO/NRE account\r\n\r\n', 'Sure. <a href="../web/nronreaccount.php"target="_blank">Click here</a> to apply for NRO/NRE accounts.\n\n', 0),
(49, 'Appli for loan\r\n', 'Sure.<a href="../web/loan.php"target="_blank">Click here</a> to apply for loan.\n', 0),
(50, 'Appli for car loan\r\n', 'Sure.<a href="../web/carloan.php"target="_blank">Click here</a> to apply for car loan.\n', 0),
(51, 'Appli for personal loan\r\n', 'Sure.<a href="../web/personalloan.php"target="_blank">Click here</a> to apply for personal loan.\n', 0),
(52, 'Appli for home loan\r\n', 'Sure.<a href="../web/homeloan.php"target="_blank">Click here</a> to apply for home loan.\n', 0),
(53, 'Appli for gold  loan\r\n', 'Sure.<a href="../web/goldloan.php"target="_blank">Click here</a> to apply for gold loan.\n', 0),
(54, 'Appli for agriculture loan\r\n', 'Sure.<a href="../web/agriloan.php"target="_blank">Click here</a> to apply for agriculture loan.\n', 0),
(55, 'Appli for business loan\r\n\r\n\r\n', 'Sure.<a href="../web/businessloan.php"target="_blank">Click here</a> to apply for business loan.\n', 0),
(56, 'pre-EMI interest', 'Pending final disbursement, you pay interest on the portion of the loan disbursed. This interest is called\npre-EMI interest. Pre-EMI interest is payable every month from the date of each disbursement up to\nthe date of commencement of EMI.\n*Conditions apply.\n', 0),
(57, 'properti documents safe with bank', 'Bank offers in-house scrutiny of property documents for your complete peace of mind. So be assured \nthat your property documents are in safe hands.\n\n', 0),
(58, 'appli Loan Against Properti LAP\n\n', 'You can apply for a loan in the following ways:<br/>\n\n1.	Fill in the online application form and our representative will get in touch with you<br/>\n2.	Call one of our PhoneBanking numbers provided on the website<br/>\n\n3.	Visit your nearest branch<br/>\n\n4.	Our existing liability customers may also get in touch with their Relationship Managers/ Personal\n        Bankers to know more and apply for LAP\n<br/>\n', 0),
(59, 'maximum loan  against my Properti\r\n\r\n', 'You can get a Loan Against Property up to a maximum of 60%* of the market value of your property.\r\n* conditions apply\r\n', 0),
(60, 'Change address  loan account', 'In order to change your address in our records, you may visit the nearest Retail Loan Service Center \nand submit the following documents:<br/>\n\n1.	Request form for Address Change.<br/>\n\n2.	Self Attested copy of your revised address proof along with the original address proof for validation.<br/>\n\n3.	In case a bearer submits the request on your behalf, a bearer authorisation along with\n KYC documents(self attested copy and original for validation) of the bearer, i.e. Identity and Signature\n Proof like PAN Card, Aadhar Card, Driving License or Passport Copy will also need to be provided.\n\n', 0),
(61, 'amount / much loan amount taken avail at a time', 'Loan value starts from Rs.50000 onwards depending on the amount of Gold brought. Loans less than Rs 50000/- \r\n', 0),
(62, 'useful for me benefit Current / Saving Account Business loan?', 'You get preferred Processing Fee, priority processing and simpler documentation if you have a Current/Saving \n Account with the bank. This is taken into account at the time of disbursal of the loan. You can pay through \nStanding Instructions to debit your Bank Account with the EMI amount.\n', 0),
(63, 'long / much time take get  Business Loan', 'Once you submit your application form and supporting documents, we shall give disbursal within 5* working \r\n\r\ndays provided everything is in order. All loan approvals are at the sole discretion of the bank.\r\n\r\n', 0),
(64, '  repai  loan earlier for Business Loan', 'Yes, you can choose to repay your loan anytime after 6 months of taking the loan and after\r\nyou have paid 06 EMIs along with applicable foreclosure charges. Please note Loan can be foreclosed by\r\nissuing a Demand draft / cheque at the branch; kindly note that cash beyond Rs. 49000/- will not\r\nbe accepted for loan repayment against full closure/matured loan closure payment. Any payment above\r\nRs. 49000/- should be made vide Account payee Cheque / Pay order /Demand draft.\r\n', 0),
(65, 'repai Business Loan', 'You pay the loan in equal monthly instalments (EMIs). The loan will be paid through post-dated cheques.\r\nYou can also pay through Electronic Clearing System (ECS ) or a standing instruction to debit \r\nyour Bank account with the EMI amount.\r\n\r\n', 0),
(66, 'time long will take  Personal loan process', 'Once you submit your application form and the required documents as per Bank''s criteria, you can expect our approval and disbursal in 4 hours*, provided everything is in order. All loan approvals are at the sole\ndiscretion of the bank.\nalso available for rural markets.\n \n', 0),
(67, 'personal loan eligibliti\r\n\r\n', 'Happy to answer your questions! \nEligibility criteria for a Personal Loan are:<br/>\n\n1.Salaried doctors, CAs, employees of private limited companies, employees \nfrom public sector undertakings, including central, state and local bodies<br/>\n\n2.Individuals between 21 and 60 years of age<br/>\n\n3.Individuals who have had a job for at least 2 years, with a minimum of 1 year with the current employer.<br/>\n\n4.Those who earn a minimum of Rs.15,000 net income per month.\n<br/>\n', 0),
(68, 'document needed appli for Personal Loan', 'Happy to answer your questions! \nThe following documents are required for a Personal Loan:<br/>\n\n1.Proof of identity: Copy of passport / voter ID card / driving license<br/>\n\n2.Proof of address: Copy of ration card / telephone or electricity bill / rental agreement / passport<br/>\n\n3.Last 3 months bank statement OR 6 months bank passbook<br/>\n\n4.Salary slip / current dated salary certificate with the latest Form 16.\n<br/>\n\nDocuments to take with you to the bank: If you are going to the bank for a loan, \nplease carry the following documents with you:\n<br/>\n\n1.Agreement Number<br/>\n\n2.Self-attested Identification Proof containing your signature\n to avail of any information / deliverable along with a written request and \nproduce the documents at the Customer Service Desk.<br/>\n\n3.If you want to change your address / contact details, \nyou need to submit an address change request along with \na Self-attested copy of your revised address proof\n<br/>\n', 0),
(69, 'time long will it take to get personal loan', 'Sure,I can help you with that.\r\nOnce you submit your application form and the required documents as per Bank''s criteria, you can expect our \r\napproval \r\nand disbursal of your personal loan\r\n within 4 working hours, provided everything is in order.\r\n All loan approvals are at the sole discretion of the bank..\r\n\r\n', 0),
(70, 'amount much borrow under Personal Loan', 'Thank you for your patience! You can take a personal loan ranging from Rs.50,000 to Rs.40 lakh, depending on \r\nyour income and repayment capacity. You can club your spouse''s income if you want to get a bigger loan.\r\n', 0),
(71, 'time long can take repay my personal loan', 'Glad to assist. We offer flexible repayment options on your personal loan ranging from 12 to 60 months,\r\ndepending on the customer''s profile..\r\n', 0),
(72, 'cancel personal loan', 'I can surely help you with that info. Please visit the nearest branch and contact the\r\n local team to cancel the loan.\r\n\r\n', 0),
(73, 'time long does take to process Gold Loan\r\n\r\n', 'A gold loan is disbursed within One Hour. This is, however, subject to the verification of the gold\r\nand other documents that you submit. Approvals are at the sole discretion of the bank.\r\n', 0),
(74, 'much avail under the gold loan', 'Happy to answer your questions! Loan value starts from INR 50000 onwards depending on the amount of gold brought. Loans of lesser than INR 50000/- are also available for rural markets..\r\n', 0),
(75, ' should  gold loan be repai', 'Happy to help . The best thing about Loan against Gold is that only servicing of the interest is required. You will have to make monthly payments as calculated..\r\n', 0),
(76, 'documents needed for gold loan', 'Happy to answer your questions! The following documents are required along with your Gold Loan application: Passport (not expired) Driving License (not expired) Voter''s ID Card Aadhaar Card issued by UIDAI PAN (Permanent Account Number) Card (along with any of the above documents) Kindly Note: The loan is granted for agricultural/business/personal purposes. The loan amount cannot be used for the purchase of gold coins, jewels, land or other speculative purposes. Credit provided is at the absolute discretion of United Bank.\r\n', 0),
(77, 'benefits of gold loan ', 'I can help you with that! Enjoy triple benefits when you take a loan against gold from HDFC Bank: Faster loan - Our gold loan sanction and disbursal is one of the quickest with easy documentation. Competitive pricing ? Our rates and charges for loan against gold are very attractive. Transparency ? All charges are communicated up front in writing along with the gold loan quotation\r\n', 0),
(78, 'home loan eligibiliti\r\n', 'Bank assess the customer''s repayment capacity based on income, age, qualifications, number of dependants,\r\nspouse''s income, assets, liabilities, stability and continuity of occupation, and savings history\r\n', 0),
(79, ' choose my type of home loan', 'Sure. Yes, you can structure your HDFC Ltd. Home Loan as Partly Fixed or Partly Floating as per your needs..\r\n', 0),
(80, 'What are the home loan interest rates', 'Glad to assist. Our home loan rates start from 8.35% per annum. We have attractive interest rates based on your requirement.\r\n', 0),
(81, 'Document required for home loan', 'Glad to assist. Documents required for a Home Loan are:\r\n1.	Signed application form with photograph\r\n2.	ID and residence proof\r\n3.	Processing fee cheque\r\n4.	Last 6 months bank statements\r\n5.	Documentation for salaried applicants: Latest Salary-slip and Form 16\r\n6.	Documentation for self-employed applicants: Education qualification certificate, proof of business existence, last 3 years Income Tax Returns with computation of Income, and last 3 years Profit / Loss and Balance Sheet\r\n\r\n', 0),
(82, 'Eligibiliti for car loans', 'Glad to assist you. To check the eligibility criteria for a new car loan\nThe following people are eligible to apply for a New Car Loan:\n<br/>\n\n1.	   Salaried Individuals:<br/>\n\na.	This includes employees of private limited companies, employees from public sector undertakings, including central, state and local bodies<br/>\n\nb.	Individuals who are a minimum of 21 years of age at the time of applying for the loan, and no older than 60 at the end of the loan tenure<br/>\n\nc.	Individuals who have had a job for at least 2 years, with a minimum of 1 year with the current employer<br/>\n\nd.	Those who earn a minimum of Rs. 3,00,000 per year, including the income of the spouse/co-applicant<br/>\n\ne.	Individuals who have a telephone/post-paid mobile\n', 0),
(83, 'Interest for car loan\r\n', 'Glad to assist you. The Rack interest rate for New Car Loan is 9% to 10.25% depending on the segment of vehicle.\n', 0),
(84, 'Document for car laon', 'Any of the following identity proof documents: <br/>\n1.	Aadhar Card <br/>\n2.	Passport <br/>\n3.	PAN Card <br/>\n4.	Voters ID Card <br/>\n5.	Driving License (recent, legible, laminated) <br/>\n7.	Latest salary slip and Form 16 as income proof <br/>\nAny of the following documents as address proof: <br/>\n1.	Aadhar Card <br/>\n2.	Ration Card <br/>\n3.	Driving License (recent, legible, laminated) <br/>\n4.	Voters ID Card <br/>\n5.	Passport Copy <br/>\n6.	Telephone Bill <br/>\n7.	Electricity Bill <br/>\n8.	Life Insurance Policy <br/>\n9.	Bank statement of the previous 6 months <br/>\n', 0),
(85, 'How long will it take to process loan for New Car Loans\n\n', 'Thank you for your patience! New Car Loans will be processed within 48 hours of completing documentation.\nAny of the following identity proof documents: <br/>\n2.	Aadhar Card <br/>\n3.	Passport <br/>\n4.	PAN Card <br/>\n5.	Voters ID Card <br/>\n6.	Driving License (recent, legible, laminated) <br/>\n7.	Latest salary slip and Form 16 as income proof <br/>\nAny of the following documents as address proof: <br/>\n1.	Aadhar Card <br/>\n2.	Ration Card <br/>\n3.	Driving License (recent, legible, laminated) <br/>\n4.	Voters ID Card <br/>\n5.	Passport Copy <br/>\n6.	Telephone Bill <br/>\n7.	Electricity Bill <br/>\n8.	Life Insurance Policy <br/>\n9.	Bank statement of the previous 6 months <br/>\n\nThe end to end TAT is 5 days for Urban locations and 7 days for semi-urban and rural locations.\nAny of the following identity proof documents: <br/>\n2.	Aadhar Card <br/>\n3.	Passport <br/>\n4.	PAN Card <br/>\n5.	Voters ID Card <br/>\n6.	Driving License (recent, legible, laminated) <br/>\n7.	Latest salary slip and Form 16 as income proof <br/>\nAny of the following documents as address proof: <br/>\n1.	Aadhar Card <br/>\n2.	Ration Card <br/>\n3.	Driving License (recent, legible, laminated) <br/>\n4.	Voters ID Card <br/>\n5.	Passport Copy <br/>\n6.	Telephone Bill <br/>\n7.	Electricity Bill <br/>\n8.	Life Insurance Policy <br/>\n9.	Bank statement of the previous 6 months <br/>\n\nEnd-to-End TAT is Login-to-Disbursement turnaround time. TAT calculated from the day complete loan application received by the Bank.\n', 0),
(86, 'near atm me', ' Sure.<a href="https://www.google.co.in/maps/search/atm+near+me/@10.0029485,76.3064949,13z/data=!3m1!4b1?hl=en" target="_blank">Click here</a> to find your nearest ATMs.\n', 0),
(87, 'its okai', 'Thank you ', 0),
(88, 'old are you', 'Im as old as you are ', 0),
(89, 'are you work open todai', 'Timings For Week days [Monday to Friday] is 9.30 AM to 4 PM <br/> Sunday and all public holidays we are closed.\n	 ', 0),
(90, 'documents for educate loans', 'Sure. When you visit the bank for an Education Loan, you need to carry an Agreement Number, Self-attested Identification Proof containing your signature to avail of any information / deliverable along with a written request and produce the documents at the Customer Service Desk.<br/> <br/>\r\n\r\nIf you want to change your address / contact details, you need to submit an address change request along with a Self-attested copy of your revised address proof. The Request form for Address Change is available on the Form Centre of  Bank website..\r\n', 0),
(91, 'What is Educate Loan ', 'Sure. Apart from the basic course fee payable to the institution where you decide to study, the following expenses will be covered under the loan: Exam/Library/Lab fees Caution deposit / Refundable deposit asked by the institution / Building fund - supported by Institution bills / receipts Purchase of Books / equipments / instrument / uniforms Travel expenses / passage money for studies abroad Purchase of computers - essential for completion of the course Insurance Miscellaneous expenses related to the course - like study tours, project work, thesis, etc..', 0),
(92, 'contact you ', 'Happy to answer your questions! We value your relationship and your satisfaction is important to us.\r\n\r\nPlease feel free to contact us at (+000) 009 455 4088', 0),
(93, 'check aadhaar link account', 'I can surely help you with that info. You can check if your Aadhaar is linked to your account in these simple ways: <br/>\r\n1.NetBanking:<br/>\r\nLogin to Net Banking --> Select "Accounts" --> Select "Requests" --> View / Update Aadhaar Number\r\nLogin to Net Banking --> "Update Contact Details" -->Aadhaar No.\r\n\r\n2.MobileBanking: <br/>\r\nLogin to Mobile Banking --> Select Accounts --> Select "Requests" --> View / Update Aadhaar Number\r\n', 0),
(94, 'what emi ', 'I can help you with that! EMI stands for Equated Monthly Instalments..', 0),
(95, 'eligilbiliti for educate loans', 'Thank you for your patience! Eligibility criteria for an education loan is as follows:<br/>\r\n1.	You need to be a Indian resident <br/>\r\n2.	You should be aged between 16 - 35 years.<br/>\r\nOther criteria such as requirement of collateral and co-applicants, depends upon the type of education loan you wish to take.\r\n\r\n', 0),
(96, 'Educate Interest Rates ', 'Happy to answer your questions! <br/>\r\nEnclosed below are HDFC Bank Education Loan for Indian Education Interest Rates & Charges Here is an exhaustive list of all the fees and charges to be paid for the education loan: <br/>Description of Charges Education Loan Loan Processing Charges* Maximum up to 1% of the loan amount as applicable.<br/>\r\n Pre-payment charges* Upto 4% of the Outstanding Balance prepaid, if loan is foreclosed/ part prepaid during Moratorium (along with and in addition to due/accrued interest, if any, and other amounts due and/or payable by the Borrower to the Bank). <br/>\r\nNo prepayment charges will be charged if loan is foreclosed / part prepaid any time after expiry of the Moratorium. <br/>\r\nNo Due Certificate / No Objection Certificate (NOC) Nil Duplicate of No Dues Certificate/NOC Nil Solvency Certificate Not applicable Charges for late payment of EMI @ 24 % p.a. on overdue/unpaid EMI amount outstanding from EMI due date Credit assessment charges Not applicable Non standard repayment charges Not applicable Cheque / ECS swapping charges Rs. 500/- per instance Duplicate Repayment Schedule Charges Rs. 200/- Loan Re-Booking / Re-Scheduling Charges Upto Rs. 1000/- EMI Return Charges* Rs.550/- per instance Legal / incidental charges At actual Stamp Duty & other statutory charges As per applicable laws of the state Loan Cancellation Charges Nil cancellation charges. <br/>\r\nHowever, interest for the interim period (date of disbursement to date of cancellation), CBC/LPP charges as applicable would be charged and Stamp duty will be retained *Terms & conditions apply *<br/>\r\nCharges which are in nature of fees are EXCLUSIVE of service tax. Service tax and other government levies, as applicable, would be charged additionally. Rates offered to customer during the period of January''16 to March''16 Min IRR Max IRR Avg IRR 10.00% 14.75% 12.58% Annual Percentage Rate offered to customer during the period of January''16 to March''16 Min APR Max APR Avg APR 10.00% 15.08% 12.61% .\r\n', 0),
(97, 'How can I pay repay my educate loan', 'Sure. Here is the info you are looking for. You have the option of repaying the loan through a Standing instruction, ECS or post-dated cheques\r\n', 0),
(98, 'What are the different Agricultural Loans you offer', 'I can surely help you with that info. We offer a variety of Agricultural Loans. The options include Crop Loans, Warehouse Receipt Financing, Bill Discounting, and Current Accounts. \r\n\r\n', 0),
(99, 'What is Retail Agriculture Loan\r\n\r\n', 'Happy to help . Kisan Gold Card offers loan to farmers with tenure up to 84 months. With easy documentation and speedy approvals getting a loan couldn''t get any easier.\r\n', 0),
(100, 'Interest rate for agriculture loan\r\n\r\n', 'On crop loans<br/> For 2013-14, as per Govt of India notification, crop loans worth Rs. 3 lakh or below would carry an interest rate of 7% p.a. For those farmers promptly repaying loans, Govt. of India also provide allows interest subvention of 3% p.a-effectively bringing down interest rate to 4% p.a.\nCrop Loans beyond Rs. 3 Lakh, banks charge interest rate as approved by RBI and other conditions as approved by their Board of Directors.\nAs per RBI directive, crop loans till an amount of Rs. 1 lakh require no security. Loans over Rs. 1 lakh may require security as per the lending banks terms and conditions.<br/>\nPost-harvest <br/> Post-harvest loan is available to farmers at a concessional rate of 7% with interest rate subvention. For farmers availing post-harvest loan against the negotiable warehouse receipts, the banks may charge interest at commercial rates.<br/>\nFor land purchase <br/> Banks extend credit for purchase of land within 5 km of the farmers residence at interest rate as determined from time to time. There is no margin for such loans up to Rs 50,000 and amounts higher than this require a margin of 10%. The land is supposed to mortgaged in favour of the Bank and is considered the security.\n', 0),
(101, 'Document Agricultural Loan\r\n', 'Banks sanction agricultural loans, both long-term and short-term to farmers for agricultural activity. Keeping in view the illiteracy of farmers, the documentation requirement is few. However banks insist on the following documentation for agricultural loans:<br/>\r\n1.	ID proof-Voter ID, Photo ration card. Aadhar etc <br/>\r\n2.	Residence proof-Ration card <br/>\r\n3.	Land ownership proof-records of rights, revenue receipt etc <br/>\r\n4.	Kisan Credit Card-This is a card issued to all farmers including small and marginal farmers, tenant farmer, share croppers and oral lessees\r\n', 0),
(102, 'block debit card', 'Happy to answer your questions! You can use the following processes for Hotlisting/blocking Debit Cards: <br/>\r\nNetBanking:<br/>\r\n1.	Login to NetBanking using your NetBanking Id and Password <br/>\r\n2.	Click on the new Debit Card tab and then on Debit Card Hotlisting at the left hand side. This will give you the Debit Cards that are linked to your account. <br/>\r\n3.	If there are more than one Debit Card linked to your account, you	will get a list of the same.Click on the Debit Card No. you wish to hotlist.<br/>\r\n4.	Select the reason for hotlisting, convey your remarks and confirm.<br/>\r\n5.	You will receive confirmation that the Card has been hotlisted online.\r\nYou can also simultaneously place a request for a replacement card.<br/>\r\nPhoneBanking: You can report to our PhoneBanking unit to have the card hotlisted (cancelled).\r\nThis facility is available round the clock.\r\nAt the Branch: An application form for blocking your debit card can be obtained at your nearest branch.\r\n', 0),
(103, 'Debit Card not work problem \r\n\r\n\r\n', 'If there is a technical problem because of which your card is not working, we request you to contact us\r\non our Phone Banking center or branch and hotlist/block the said card.\r\nPlease make a request to issue a new card for your account which will be free of cost and should be\r\ndelivered to you in 7 working days time once issued.', 0),
(104, 'use  Debit Card  pay online\r\n\r\n', 'Currently your Debit Card can be used to make purchases from online merchants who have the Verified by\r\nVisa/ MasterCard SecureCode certification displayed on their web site.\r\nLearn more about using your Debit card for making online purchases here.\r\n', 0),
(105, 'Why do we need use of a debit card', 'A Debit Card makes your payments much more convenient and secure through an electronic payment facility directly from your Savings or Current Account with the bank.\r\n', 0),
(107, 'Is there any fees for using my Debit Card for retail or online transactions?\r\n\r\n\r\n\r\n', 'No. There is no fee for using your debit card for retail or online transactions. However, under certain merchant categories like railways and fuel, a fee may be levied by the merchant on every purchase.\r\n\r\n', 0),
(108, 'Can my Debit Card be used for transactions outside India / foreign country?\r\n\r\n', 'As per RBI mandate, all debit cards issued before December 01, 2013 are blocked for international usage.\r\nHowever, you can activate your debit card for international transactions at ATMs, retail outlets or international websites by calling our Customer Care from your registered mobile number.\r\n', 0),
(109, 'What is the procedure to replace change a damaged Debit Card\r\n\r\n', 'We request you to apply for a new debit card through any of the below mentioned channels:<br/>\r\nInternet Banking:<br/>\r\nLogin to Internet Banking > Customer Service > Service Requests > Select Reissue of Lost ATM/Debit Card under Bank Accounts.<br/>\r\n\r\niMobile:<br/>\r\nLogin to iMobile app > Services > Cards Services > Re issue Debit Card, enter the details and Submit.<br/>\r\n\r\nCustomer Care:<br/>\r\nYou may call our Customer Care between 7:00 a.m. and 9:00 p.m.\r\n<br/>\r\n\r\n', 0),
(110, 'Will there be any fee which will be charge for replace debit card?\r\n', '\r\nYes. There will be a fee of Rs. 200.00 plus 18% Goods and Services Tax (GST) which will be charged for replacement debit card.\r\n', 0),
(111, 'My Debit Card is going to expire soon when should I appli for a new debit card?\n\n', 'You will receive the new debit card by 25th of the month in which the old card is getting expired.\r\nIn the event of non receipt of the new card by 25th, \r\nyou may call our Customer Care between 7:00 a.m. and 9:00 p.m. from your registered mobile number.\r\n', 0),
(112, 'when should I appli for a new debit card', 'You will receive the new debit card by 25th of the month in which the old card is getting expired.\r\nIn the event of non receipt of the new card by 25th, \r\nyou may call our Customer Care between 7:00 a.m. and 9:00 p.m. from your registered mobile number.\r\n', 0),
(113, 'My debit card was not reveive Please resend the card\n\n', 'You may make a request to re-despatch your debit card through the below mentioned channels:<br/>\r\nInternet Banking: <br/>\r\nMy Accounts > Bank Accounts > Service Requests (Left hand side of the page) > ATM/Debit Card Related > Request for re-dispatch of undelivered card/cheque book. <br/>\r\nThe first delivery attempt will be done within 5 working days from the date of request.\r\n\r\n', 0),
(114, 'Debit Card transaction fees swipe card at Petrol pump or Railway station\r\n', 'The following are the transaction charges applicable when you use the Debit Card at:\r\n<br/>\r\n1.	Petrol pumps: Rs. 10 or 2.5% of the transaction amount (whichever is greater).<br/>\r\n2.	Railway Stations: Flat charge of Rs. 30 per ticket + 1.8% of the transaction amount.<br/>\r\n3.	IRCTC: Transaction charge of 1.8% of the transaction amount\r\nPlease note that there are no transaction fees applicable at other merchant locations. These charges attract a Service Tax and an Swachh Bharat Cess as applicable, in terms with the current Finance Bill\r\n', 0),
(115, 'What kinds of costs are associated with debit card\n', 'There may be fees for using your debit card. Examples: Some banks charge a fee if you enter a PIN (Personal Identification Number) to conduct a transaction instead of signing your name. You may trigger a fee if you overdraw your account using your debit card, just as you would if you "bounced" a check. Or, there could be a charge if you use your debit card as an ATM card at a machine that is not operated by your financial institution. As with other bank products, your financial institution must provide disclosures explaining the possible fees associated with a debit card. Be sure to read the disclosures to avoid an unexpected fee.\r\n', 0),
(116, ' do  use my credit card', '\r\nTo use your credit card at merchant outlet, please follow the following instructions:<br/>\r\n1.	The merchant will dip your card at a PIN enabled POS terminal<br/>\r\n2.	The merchant will enter the amount to be paid by you<br/>\r\n3.	The POS terminal will prompt for the PIN<br/>\r\n4.	Enter your 4 digit Credit Card PIN on the POS terminal. Pull out the card once the transaction is complete<br/>\r\n\r\nTo use your credit card for online transaction, please follow the following instructions:\r\n1.	Make sure you are using a secure site while making payments through the Internet. Look for a lock icon in the status bar of your web browser. This icon indicates that a site is employing an encryption technology during the transmission of your sensitive data. <br/>\r\n2.	Never respond to phishing e-mails that falsely claim to be from a bank and ask you to disclose your personal and bank related confidential details. ICICI Bank will never ask you to send your personal banking details. <br/>\r\n3.	Get yourself enrolled for 3D Secure (Verified by Visa (VbV)/ MasterCard SecureCode (MCSC)). This is now mandatory for carrying out online transactions. <br/>\r\n4.	Avoid accessing your Internet banking account on unsecured public computers (e.g. internet cafes). <br/>\r\n5.	Once you have completed your online banking transactions, remember to log-off by clicking on the "log-off" option. Close your browser and lock your computer if it is left idle. <br/>\r\n', 0),
(117, 'increase the credit limit on credit card\n\n\n', 'If you have received a SMS to avail the offer to increase your credit card limit, you may reply to the SMS and we will get in touch with you. Alternatively, if you want to know the eligibility, you may call our Customer Care by authenticating with your credit card and PIN.\r\n\r\n', 0),
(118, 'cancel credit card', 'Bank Credit Cards offer a host of features and offers specially designed for our esteemed customers. We request you to reconsider your decision of cancelling your credit card.\nIn case you want to go ahead with the cancellation, we request you to clear the outstanding amount due as on date and redeem the reward points accumulated against your credit card.\nPlease note that reward points will not be redeemable after the card has been cancelled.\nWe wish to inform you that there is a redemption facilitation fee of ?99 plus Service Tax on Handpicked Rewards Scheme, Catalogue based redemption on PAYBACK Rewards Scheme and ICICI Bank Rewards Scheme. For online and in-store redemption on PAYBACK Rewards Scheme (redemption on PAYBACK Partner Brands like www.bookmyshow.com and www.makemytrip.com and in-store partners like Big Bazaar and HPCL), a redemption facilitation fee of ?25 plus Service Tax is applicable.\n\n\n', 0),
(119, ' credit period use for credit card', 'Credit free period of 48 days depends on your statement date.', 0),
(120, 'use credit card for international transaction outside india foreign country\n\n\n\n', 'All the credit cards issued by ICICI Bank are active for international transactions. If you are unable to use the card for international transactions, you may call our Customer Care .', 0),
(122, 'thank you', 'Sure. Happy to help', 0),
(123, 'block  credit card\r\n', 'To block your lost credit card, please contact our PhoneBanking officers at any of our 24 hour PhoneBanking\r\nnumbers.\r\nWe also have the facility of hotlisting / blocking the Credit Cards through Netbanking:\r\n1.	Login to NetBanking using your NetBanking Id and Password.\r\n2.	Click on the Credit Cards tab and then on Credit Card Hotlisting at the left hand side.\r\nThis will give you the list of Credit Cards that are registered under NetBanking.\r\n3.	Click on the Credit Card No. you wish to hotlist.\r\n4.	Select the reason for hotlisting.\r\n5.	Select if you wish to have the card re-issued.\r\n', 0),
(124, 'pai bill  lost  block credit card', 'To block your lost credit card, please contact our PhoneBanking officers at any of our 24 hour PhoneBanking\r\nnumbers.<br/>\r\nWe also have the facility of hotlisting / blocking the Credit Cards through Netbanking:<br/>\r\n1.	Login to NetBanking using your NetBanking Id and Password.<br/>\r\n2.	Click on the Credit Cards tab and then on Credit Card Hotlisting at the left hand side.<br/>\r\nThis will give you the list of Credit Cards that are registered under NetBanking.<br/>\r\n3.	Click on the Credit Card No. you wish to hotlist.<br/>\r\n4.	Select the reason for hotlisting.<br/>\r\n5.	Select if you wish to have the card re-issued.<br/>\r\n', 0),
(125, 'good ent', 'in aster medi city', 0);

-- --------------------------------------------------------

--
-- Table structure for table `obj`
--

CREATE TABLE `obj` (
  `id` int(11) NOT NULL,
  `obj` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obj`
--

INSERT INTO `obj` (`id`, `obj`) VALUES
(1, 'life'),
(2, 'aadhar card'),
(3, 'account');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stopwords`
--

CREATE TABLE `stopwords` (
  `id` int(11) NOT NULL,
  `swords` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stopwords`
--

INSERT INTO `stopwords` (`id`, `swords`) VALUES
(1, 'the'),
(2, 'is'),
(3, 'a'),
(4, 'of'),
(6, 'an'),
(7, 'at'),
(8, 'be'),
(9, 'by'),
(10, 'how'),
(11, 'can'),
(12, 'i'),
(13, 'what'),
(14, 'if');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hidden_layer`
--
ALTER TABLE `hidden_layer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msgt`
--
ALTER TABLE `msgt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obj`
--
ALTER TABLE `obj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stopwords`
--
ALTER TABLE `stopwords`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hidden_layer`
--
ALTER TABLE `hidden_layer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `msgt`
--
ALTER TABLE `msgt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `obj`
--
ALTER TABLE `obj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stopwords`
--
ALTER TABLE `stopwords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
