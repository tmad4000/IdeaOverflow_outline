-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 27, 2013 at 02:04 AM
-- Server version: 5.0.96-community
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jcole_ideaoverflow2_ma`
--

-- --------------------------------------------------------

--
-- Table structure for table `post_ideas_mitsugg`
--

CREATE TABLE IF NOT EXISTS `post_ideas_mitsugg` (
  `pid` int(11) NOT NULL auto_increment,
  `time` bigint(20) NOT NULL,
  `title` varchar(80) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL default '0',
  `progress` int(11) default NULL,
  `metric` varchar(200) NOT NULL,
  `uid` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `mapid` int(11) NOT NULL,
  `upvotes` int(11) NOT NULL,
  `path` text NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=188 ;

--
-- Dumping data for table `post_ideas_mitsugg`
--

INSERT INTO `post_ideas_mitsugg` (`pid`, `time`, `title`, `body`, `status`, `progress`, `metric`, `uid`, `parent`, `mapid`, `upvotes`, `path`) VALUES
(37, 1351665485, '', '&lt;b&gt;BOLD!&lt;/b&gt;', 0, NULL, '', 0, 0, 3, 0, '37'),
(34, 1351665305, '', 'alert("Hi Jacob I''m going to annoy you");', 0, NULL, '', 0, 0, 3, 0, '34'),
(13, 1351656482, '', 'Testing submit from index.', 0, NULL, '', 0, 0, 3, 0, '13'),
(33, 1351665216, '', '<b>i can do html!</b>', 0, NULL, '', 0, 0, 3, 0, '33'),
(36, 1351665469, '', '&lt;script type=&quot;text/javascript&quot;&gt;alert(&quot;Hi Jacob! I''m so annoying&quot;)&lt;/script&gt;', 0, NULL, '', 0, 0, 3, 0, '36'),
(23, 1351660537, '', 'Can I submit a post?', 0, NULL, '', 0, 0, 3, 0, '23'),
(38, 1353207401, '', 'A capella!', 0, NULL, '', 0, 0, 3, 0, '38'),
(39, 1353400866, '', 'test', 0, NULL, '', 0, 0, 3, 0, '39'),
(40, 1354063574, '', 'aoeu', 0, NULL, '', 0, 0, 3, 0, '40'),
(29, 1351662607, '', 'Does it sync?', 0, NULL, '', 0, 0, 3, 0, '29'),
(30, 1351663561, '', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, NULL, '', 0, 0, 3, 0, '30'),
(31, 1351663767, '', 'abc', 0, NULL, '', 0, 0, 3, 0, '31'),
(32, 1351663794, '', 'I''m looking at electrical engineering and computer science for a major, and potentially in English literature or linguistics for a minor.  I know I also love philosophy, biology, and psychology-- time will tell how these factor into my major.  \n\nTell us what activities you are presently or hope to become involved with at MIT.\nBreakdancing, cross-country ski, martial arts, rock climbing, surfing*, snowboarding, hiking, yoga, debate, acting, SIPB, high-tech entrepreneurship/Web development business, juggling/yoyoing, Rubik''s cubing, blogging**, gaming, MIT hacking, playing RPG''s, reading science fiction and fantasy and classic literature, cooking my way to the gustatory frontier of the universe, having late-night philosophical discussions, lucid dreaming, meeting incredible people at and around MIT, eating lunch each weekend with friends going to college elsewhere in Boston, living with my best friend of 12 years as a roommate, coding late on Saturday nights with my high school programming buddy and others I''m sure to meet, forging within the smithy of my soul the uncreated conscience of my species (sorry James Joyce), and most importantly, sleeping enough on top of this. Lucid dreaming hopefully will help with this latter goal.  For the rest I''ll have to rely on Pareto''s law (the idea that statistically speaking, 20% of your resources produced 80% of the yield in real economic systems).\n*surfing is without a doubt my favorite activity on the list, though ironically, the only one that''s actually impractical to do in Boston. There''s nothing like it -- Dropping into a 7 foot barreling wave is like riding a standup, liquid roller coaster that I control (or if I fall it''s like being a cockroach in a trash compactor).\n**whether or not I become admissions blogger :)\n\nThe dormitory or FSILG you presently or hope to live with.\nI''m temped in Burton Conner, but I''m going to check out East Campus during orientation and perhaps see if I can transfer (because it''s that awesome). I love to cook, I love to work on intense projects (like installing an automatic party button in my room), I would be absolutely ecstatic to live in a dorm where I can paint murals on the walls and climb on the rock wall installed in the hallway while waiting for the scrumptious Italian delicacy I ordered by pressing the emergency pizza button to arrive.', 0, NULL, '', 0, 0, 3, 0, '32'),
(41, 1354363292, '', 'sthsnth', 0, NULL, '', 0, 0, 3, 0, '41'),
(42, 1354363314, '', 'transfer to mit\n', 0, NULL, '', 0, 0, 3, 0, '42'),
(43, 1354363599, '', 'meowwwwwww\n', 0, NULL, '', 0, 0, 3, 0, '43'),
(44, 1354364093, '', 'aoeu\naoeu\n', 0, NULL, '', 0, 0, 3, 0, '44'),
(45, 1354364169, '', 'aoeu', 0, NULL, '', 0, 0, 3, 0, '45'),
(46, 1354364175, '', 'aoeuaoeu', 0, NULL, '', 0, 0, 3, 0, '46'),
(47, 1354364184, '', 'aoeu', 0, NULL, '', 0, 0, 3, 0, '47'),
(48, 1354364189, '', 'aoeu', 0, NULL, '', 0, 0, 3, 0, '48'),
(49, 1354364415, '', 'aoeu\n', 0, NULL, '', 0, 0, 3, 0, '49'),
(50, 1354364439, '', 'uei\n', 0, NULL, '', 0, 0, 3, 0, '50'),
(51, 1354364439, '', 'uei\n\n', 0, NULL, '', 0, 0, 3, 0, '51'),
(52, 1354364439, '', 'ueid\n', 0, NULL, '', 0, 0, 3, 0, '52'),
(53, 1354364439, '', 'euid\n', 0, NULL, '', 0, 0, 3, 0, '53'),
(54, 1354364465, '', 'kxbm\n', 0, NULL, '', 0, 0, 3, 0, '54'),
(55, 1354364471, '', 'kxbm\nkxbm\n', 0, NULL, '', 0, 0, 3, 0, '55'),
(56, 1354366387, '', 'MIT-worthy high tech community ', 0, NULL, '', 0, 0, 3, 0, '56'),
(57, 1354366405, '', 'Students healthy/happy\n', 0, NULL, '', 0, 0, 3, 0, '57'),
(58, 1354366446, '', 'aoeu\nao\n\neu', 0, NULL, '', 0, 0, 3, 0, '58'),
(59, 1354690611, '', 'CuriosityThread -- Site that shows the chain of questions/interests a person asked/followed to gain the knowledge they have. Perhaps to partially populate this site, Wikipedia could track threads of browsing, and scrolling. Subsequently, tutorials (even a textbook!) customized to the curiosity profiles of different people could be made of it? Relatedly, creating a web database of the series of questions bright students ask could be extremely powerful. I would love, for instance, to have documentation of the series of questions one of my friends asked over the course of his life to ultimately gain the knowledge to get gold at the International Chemistry Olympiad. #edu #&lt;-&gt;admitsphere', 0, NULL, '', 0, 0, 3, 0, '59'),
(60, 1354698834, '', 'asdf -- #edu #intentiondb', 0, NULL, '', 0, 0, 3, 0, '60'),
(61, 1354698891, '', 'a -- #edu\n', 0, NULL, '', 0, 0, 3, 0, '61'),
(62, 1354700387, '', 'q -- #&lt;-&gt;a #asdf', 0, NULL, '', 0, 0, 3, 0, '62'),
(63, 1354700702, '', '&lt;b&gt;asdf&lt;/b&gt;', 0, NULL, '', 0, 0, 3, 0, '63'),
(64, 1354700792, '', 'asdf', 0, NULL, '', 0, 0, 3, 0, '64'),
(65, 1354700799, '', 'asdf', 0, NULL, '', 0, 0, 3, 0, '65'),
(66, 1354700845, '', 'asdf', 0, NULL, '', 0, 0, 3, 0, '66'),
(67, 1354700895, '', 'a', 0, NULL, '', 0, 0, 3, 0, '67'),
(68, 1354700959, '', 'asdf', 0, NULL, '', 0, 0, 3, 0, '68'),
(69, 1354700964, '', '#asdf', 0, NULL, '', 0, 0, 3, 0, '69'),
(70, 1354700968, '', '#asd', 0, NULL, '', 0, 0, 3, 0, '70'),
(71, 1354702903, '', 'PhotoQuote -- app that lets you photograph a quote in a book, then searches online to find the boundaries of the quote you''re probably looking to note down, and adds the quote to your notebook. I find myself photographing quotes all the time. This is a big idea, and knowing the thread of quotes a person is interested in is a very powerful, and truly relevant advertising dataset. #relates to â€œsite that autocompletes quotesâ€ #intentiondb', 0, NULL, '', 0, 0, 3, 0, '71'),
(72, 1354702917, '', 'online etymology tree #&lt;-&gt;instadefine #&lt;-&gt;admitsphere', 0, NULL, '', 0, 0, 3, 0, '72'),
(73, 1354702950, '', 'App that tells you what to cook and automatically orders ingredients (or makes you a shopping list). Also suggest who you should cook with using the following meeting people strategy:â€\nMeet people who have similar interests by matching people to each other who have mentioned titles to the same Wikipedia articles in their gmail chats, or used the same quotes. (Or it could look at your playlist history and match by music taste! (real â€œmusicmatchâ€)). Cooking/eating is one of the few anchors to physical world in an era of increasing digital distraction, and we should use it to resurrect classic face to face socialization. Ideas. Starts with http://foodlists.tk/ #primer #lifecoach', 0, NULL, '', 0, 0, 3, 0, '73'),
(74, 1354702969, '', '-app that uses accelerometer data to detect when you (an old person) have fallen. If you donâ€™t touch a button in 1 min cancelling emergency call, it calls your relatives who check if youâ€™re okay, and broadcasts your gps location. ~jcole likes this one -- email me if you want to work on it! #&lt;-&gt; ginger.io #lowhanging #humandatamining #machinelearning', 0, NULL, '', 0, 0, 3, 0, '74'),
(75, 1354702976, '', '-one-touch broadcast your current location (gps) to answer text msg (â€œwhere are youâ€). #easyui #lowhanging ', 0, NULL, '', 0, 0, 3, 0, '75'),
(76, 1354702985, '', 'ThisIsHowYouSoundRightNow (or ThisIsHowYouLookRightNow) -- app that determines if youâ€™re in â€œhack modeâ€ or â€œlazy modeâ€ (alertness level) by using machine learning on keystrokes. Make hack-o-meter. Also make it so that it shows a picture of you from webcam when youâ€™re drowiy so you look at yourself and see you need to go to sleep #humandatamining #machinelearning', 0, NULL, '', 0, 0, 3, 0, '76'),
(77, 1354702993, '', 'Sphero app idea: make angry angry templar from SCII (http://us.battle.net/sc2/en/blog/7435938/Arcade_Highlight_%E2%80%9CAngry_Angry_Templar%E2%80%9D-9_28_2012) -- a sphero chases whoever is holding a sphero. Would use WifiSlam? #inprogress', 0, NULL, '', 0, 0, 3, 0, '77'),
(78, 1354703013, '', 'App that tells you when to leave/what route to take so you donâ€™t get stuck in as bad of traffic. #relates to Social ridesharing app (search it on page) #lifeguiding\n', 0, NULL, '', 0, 0, 3, 0, '78'),
(79, 1354703034, '', 'Organize related news articles into timelines so you can see the meaning of each article, and maybe join in! #intentiondb', 0, NULL, '', 0, 0, 3, 0, '79'),
(80, 1354703043, '', 'Ambient information display app -- show imgs relevant to conversation by processing speech; e.g. saying i want to know if there is paint program for macs should autodisplay it. Inspired by Dougâ€™s #augmentedvirtuality', 0, NULL, '', 0, 0, 3, 0, '80'),
(81, 1354703055, '', 'Wa (japanese word for personal peace) monitoring/regulating app. Maybe could use neural data. relates to gracegrader. peace within the mind leads to peace within the family, peace within the #humandatamining #machinelearning #intentiondb', 0, NULL, '', 0, 0, 3, 0, '81'),
(82, 1354703066, '', '\r\nplaylistforlife.com -- looks at what you''re doing on pc and other devices and gives you the music for it! Or just compiles peopleâ€™s coding playlists, jogging playlists, etc and lets you look them up, mix and match, etc. Could use stereotyping after learning to predict tastes #music ', 0, NULL, '', 0, 0, 3, 0, '82'),
(83, 1354703081, '', 'Mechanical Turk problems as reCaptcha -- service that lets you embed box that has ppl do specific types of mturk tasks AS the captcha challenges. have them do 2: one is super verified. the other less so.  Apparently, When you fill out some Google capchas it helps in Google street view For reading house numbers #hack', 0, NULL, '', 0, 0, 3, 0, '83'),
(84, 1354703102, '', 'Social ridesharing app --  If your friends or friends of friends (on fb, linkedin, gmail/google+, etc) are going in a similar direction, they can be advised to pick you up, and vice versa. This would avoid legal problems with hitchhiking (not to mention safety issues). And then you could bring on &quot;friends of friends,&quot; people who work in same company as you, etc. to expand network into, ultimately, a general rideshare.\nRelatedly, CabShare: App that tells you whether anyone else in your vicinity is taking a cab to the same place or in the same direction. Finally, what if google maps had an integrated call a cab button when you searched directions. And/or what if this were integrated with Social Rideshare/Cabshare? Relates to database of intentions. #intentiondb #&lt;-&gt;â€App that tells you when to leave/what route to take so you donâ€™t get stuck in as bad of traffic&gt;. #lifeguiding', 0, NULL, '', 0, 0, 3, 0, '84'),
(85, 1354704423, '', 'Browser-based distributed computing API ~SETI@home with Chrome NaCl -- Mark Vismonte started on a JS version of this... #lowhanging ', 0, NULL, '', 0, 0, 3, 0, '85'),
(86, 1354781940, '', 'Timbre Hierarchy -- echonest analyze a song, then recursively use k-means clustering on the timbre vectors of each segment. Do this recursively (within each cluster, another k-means). k = 2 maybe. #machinelearning #echonest #musictech ', 0, 0, '', 0, 0, 3, 0, '86'),
(87, 1355272177, '', 'Emergency Pizza Button app -- One click pizza ordering, modeled after the MIT east campus pizza button.  I actually want to do this at the next hackathon Iâ€™m at, and I think it could make a lot of money. Relatedly, I want to make â€œPush a button, get a cookieâ€ app for Insomnia Cookies. ~jcole@mit.edu', 0, 40, '', 0, 0, 3, 0, '87'),
(88, 1363297761, '', 'KnowThyEnemy -- ChatRoulette for people in warring countries', 0, 20, '% core features built', 0, 0, 3, 0, '88'),
(89, 1364528879, '', 'klingon', 0, NULL, '', 0, 0, 3, 0, '89'),
(90, 1366965163, '', 'FSILG Recycling', 2, 80, '% FSILGs that have recycling, 2012', 0, 0, 3, 0, '90'),
(91, 1366965180, '', 'Reusable grocery bags in dorms', 2, 20, '% dorms that offer reusable bags, 2012', 0, 0, 3, 0, '91'),
(92, 1366965187, '', 'Composting in main buildings', 2, 50, '% of critical points in main buildings with composting, 2012', 0, 0, 3, 0, '92'),
(93, 1366965194, '', 'CFL Exchange', 2, 30, '% incandescent bulbs displaced by CFLs on campus, in 2012', 0, 0, 3, 0, '93'),
(94, 1366965203, '', 'Motion Sens. Lighting Campus', 3, 100, '% of desired locations on campus that have motion sensor lighting', 0, 0, 3, 0, '94'),
(95, 1366965211, '', 'Plastic Bag Recycling W20', 3, 100, 'Plastic bag recycling is available in W20', 0, 0, 3, 0, '95'),
(96, 1366965216, '', 'Sustainability Mailing List', 3, 100, 'Created, assigned admins in student government, publicized, well-used', 0, 0, 3, 0, '96'),
(97, 1366965222, '', 'Plastic Bag Recycling Dorms', 3, 100, '% Dorms with plastic bag recycling 2012', 0, 0, 3, 0, '97'),
(98, 1366965229, '', 'Sustainability IAP CLASS', 3, 100, 'Created, funded, offered annually', 0, 0, 3, 0, '98'),
(99, 1366965727, '', 'Student relationship w/ 1 faculty by grad ', 2, 80, '% seniors graduating w/ relationship w/ 1 faculty 2012', 0, 0, 3, 0, '99'),
(100, 1366965746, '', 'Student-faculty dinners', 2, 20, '% students that attended a student-faculty dinner 2012', 0, 0, 3, 0, '100'),
(101, 1366965767, '', 'Publicize faculty dinners via email to ea. class', 2, 20, '% faculty dinners students are notified of via email? (bad metric?), 2012', 0, 0, 3, 0, '101'),
(102, 1366965780, '', 'Invite faculty to student-run salons', 2, 20, '% of student-run intellectual salons wanting to invite a faculty member that successfully get one to come, 2012', 0, 0, 3, 0, '102'),
(103, 1366965795, '', 'Faculty eat in dining halls annually+', 2, 20, '% faculty that joined students for a meal in dining hall 2012', 0, 0, 3, 0, '103'),
(104, 1366965810, '', 'Students want to attend every class', 2, 30, '% students that wanted to attend every class in 2012 based on polls', 0, 0, 3, 0, '104'),
(105, 1366969201, '', 'Institute funding for intellectual salon dinners ', 2, 20, '% cost of intellectual salons covered by MIT', 0, 0, 3, 0, '105'),
(110, 1366969605, '', 'Kayaks at sailing pavillion -- you should be able to explore the Charles with them. Analogous to Cambridge university boating clubs?', 1, NULL, '', 0, 0, 3, 0, '110'),
(107, 1366969612, '', 'Piano in Maseeh Dining', 1, NULL, '', 0, 0, 3, 0, '107'),
(106, 1366969604, '', 'Adult-sized playground on MIT Campus -- possibly place on Briggs field? Should contain obstacle course', 1, NULL, '', 0, 0, 3, 0, '106'),
(112, 1366987232, '', 'Improve quality of MIT-Stanford Wormhole -- Join with media labs glasses free 3-D TV project\n', 0, NULL, '', 0, 0, 3, 0, '112'),
(113, 1366987259, '', 'Interesting teas in dining halls like coconut cocoa and passion fruit and sugar plum spice. More decaf varieties\n', 0, NULL, '', 0, 0, 3, 0, '113'),
(114, 1366987315, '', 'Developer office hours at MIT startlabs like at the Harvard innovation lab â€“ developers who will help you implement a prototype of your project even if you have no coding experience\n', 0, NULL, '', 0, 0, 3, 0, '114'),
(115, 1366987369, '', 'Enable checkout of tennis/squash rackets at Z-center\n', 0, NULL, '', 0, 0, 3, 0, '115'),
(116, 1366987411, '', 'Synch classes like 21W.789 mobile app development with venture capitalists -- startlabs, ideaoverflow, and biz school students, and people who want to get projects done. #unity\n	Comment: Iâ€™d love to work on this if anybody else does ~jcole@mit.edu\n', 1, NULL, '', 0, 0, 3, 0, '116'),
(117, 1367396144, 'Improve MIT people search', 'Improve MIT people search: create url people.mit.edu for http://web.mit.edu/people.html and make cursor automatically just to search box #ist', 0, NULL, '', 0, 0, 3, 0, '117'),
(119, 1367776349, 'bring back a humanities requirement for freshman l', 'bring back a humanities requirement for freshman like MIT had in the 70s\n', 0, NULL, '', 0, 0, 3, 0, '119'),
(121, 1367883947, 'Big Dig', 'Big Dig -- Underground Highway System', 3, 100, '% intended miles of highways built by end of 2012', 0, 146, 0, 0, '146'),
(122, 1367883915, 'Apply social network analysis counterinsurgency ta', 'High-tech gang-violence reduction -- Apply social network analysis counterinsurgency tactics to resolve gang violence in Springfield', 3, 100, '% stages of counterinsurgency-inspired plan implemented', 0, 139, 0, 0, '145/132/139/'),
(130, 1367883948, '100% high school completion rate', '100% high school completion rate', 2, 83, '% of MA high school students who graduated with in 4 years, 2012', 0, 146, 0, 0, '146'),
(131, 1367883908, '0% obesity rate', '0% obesity rate', 2, 40, '% of MA adults at healthy weight, 2012', 0, 144, 0, 0, '144'),
(132, 1367883916, '0% crime rates', '0% crime rates', 2, 90, '% MA citizens not victims of a crime in 2012', 0, 145, 0, 0, '145'),
(133, 1367883949, '100% employment', '100% employment', 2, 90, '% of MA residents looking for a job who could find one, 2012', 0, 146, 0, 0, '146'),
(134, 1367883950, 'Rehabilitate homeless population', 'Rehabilitate homeless population -- #goal', 2, 30, '% of 2011 MA homeless population housed by end of 2012', 0, 146, 0, 0, '146'),
(135, 1367883986, 'leaders can''t communicate their good ideas', 'Leaders can''t communicate their good ideas -- #complaint', 1, NULL, '', 0, 138, 0, 0, '138'),
(136, 1367883997, 'citizens can''t communicate their good ideas', 'Citizens can''t communicate their good ideas  -- #complaint', 1, NULL, '', 0, 138, 0, 0, '138'),
(137, 1367884060, 'in the digital age, no one has time for town hall', 'In the digital age, no one has time for town hall meetings -- #complaint', 1, NULL, '', 0, 138, 0, 0, '138'),
(138, 1367884077, 'Make a non-partisan platform for citizens ', 'Citizens and government can concisely communicate ideas -- via Outline platform #idea', 2, 10, '% MA government departments accessible via online communication tools, 2012', 0, 0, 0, 1, ''),
(139, 1367883916, '0% gang-related crime in Springfield, MA', '0% gang-related crime in Springfield, MA', 3, 100, '% Springfield, MA citizens not victims of a gang-related crime in 2012', 0, 132, 0, 0, '145/132/'),
(140, 1367923045, 'Perform the following transformations on the state', 'Perform the following transformations on the state budget: Income Tax (+0.95%), Capital Gains Tax (-5.75%), Sales Tax (-1.75%), Gas Tax (+0.15%) ~Deval Patrick''s budget, see Proposals.', 1, NULL, '', 0, 0, 1, 0, '140'),
(141, 1367923042, 'Optimize the state budget to include several impor', 'Optimize the state budget -- to include several important projects decided on via Outline', 1, NULL, '', 0, 0, 1, 0, '141'),
(147, 1367927761, 'Double-paned windows in Burton Conner and other do', 'Double-paned windows in Burton Conner and other dorms to keep out traffic noise', 0, NULL, '', 0, 0, 3, 0, '147'),
(142, 1367926603, 'Outsource running the elections to a contractor to', 'Outsource running the elections to a contractor to make the process more streamlined --  A third-party system could, for example, send the students text message reminders to vote, as well as have a more aesthetically pleasing voting system.', 0, NULL, '', 0, 0, 5, 0, '142'),
(143, 1367926632, 'Get more activity from the student body, especiall', 'Get more activity from the student body, especially freshmen, who at their start of the year elections traditionally have low turnout', 0, NULL, '', 0, 0, 5, 0, '143'),
(144, 1367883909, 'Health', 'Health', 2, NULL, '', 0, 0, 0, 0, ''),
(145, 1367883917, 'Tranquility', 'Tranquility', 2, NULL, '', 0, 0, 0, 0, ''),
(146, 1367883951, 'Prosperity', 'Prosperity -- people have access to the abundance of resources there are', 2, NULL, '', 0, 0, 0, 0, ''),
(148, 1367923046, 'Keep 2013 Baseline Budget - Income Tax (+0%), Capi', 'Keep 2013 Baseline Budget - Income Tax (+0%), Capital Gains Tax (+0%), Sales Tax (+0%), Gas Tax (+0%). $39.4B Revenue, $32.6B Spending, $6.84B', 0, NULL, '', 0, 0, 1, 0, '148'),
(149, 1368301456, 'Renewal program for campus dormitories', 'Renew dilapidated campus dormitories', 2, 70, '% dormitories in satisfactory condition, as of May 2013', 0, 0, 6, 0, '149'),
(150, 1368301517, 'Have really top-quality restaurants in the student', 'Have really top-quality restaurants in the student center, analogous to Ike''s Sandwiches at Stanford', 1, 0, 'steps: find restaurants, negotiate contracts, implement', 0, 0, 7, 1, '150'),
(151, 1368301528, 'Tune pianos in student center', 'Tune pianos in student center', 0, NULL, '', 0, 0, 7, 0, '151'),
(152, 1368301565, 'Nap spaces on MIT campus', 'Nap spaces on MIT campus', 1, NULL, '', 0, 0, 6, 0, '152'),
(154, 1368476880, 'Become carbon neutral by 2020', 'Become carbon neutral by 2020', 2, 20, '100 - % of 2011 net carbon output (20 tons) produced last year (2012)', 0, 0, 9, 1, '154'),
(155, 1368477564, 'Central suggestion box platform - for Princeton st', 'Central suggestion box platform - for Princeton student government, like mitsuggestionbox.tk!', 0, NULL, '', 0, 0, 9, 0, '155'),
(156, 1368502842, 'Map 2013 seniors\\'' locations', '*Map 2013 Eliot seniors\\'' locations by May 20, 2013*: place on simple web interface. Goal: 100% of seniors add where they are going to be after graduation, a blurb, and a link to a minimalist homepage for themselves. Form to submit information http://Eliot2013Seniors.tk. Map so far: http://Eliot2013Map.tk', 2, 29, '% Eliot 2013 seniors submitted to map. Add yourself! <a href=''http://Eliot2013Seniors.tk'' target=''_blank''>http://Eliot2013Seniors.tk</a>', 0, 0, 11, 3, '156'),
(157, 1368503567, 'Swipe access in the back breezeway at night', 'Swipe access in the back breezeway at night', 0, NULL, '', 0, 0, 11, 1, '157'),
(158, 1368503605, 'Nutella in dining hall', 'Nutella in dining hall -- an instant hit previously. Should be placed in dessert section to improve mindfulness ', 1, NULL, '', 0, 0, 11, 0, '158'),
(159, 1368502841, 'Free espresso during evenings over finals period', 'Free espresso during evenings over finals period -- from top-quality provider like Espresso Dave''s', 3, 100, 'Scheduled, planned, executed, enjoyed. ', 0, 0, 11, 0, '159'),
(160, 1368514208, '\\&quot; me', '\\&quot; me:  see\nliving in australia\nis like being on academic team\nexcept you die if you miss a question\\&quot;\nthe conversation had turned to platypuses\nlittle-known toxicity ~jcole', 0, NULL, '', 0, 0, 13, 1, '160'),
(161, 1368516100, 'ClickTracker', 'ClickTracker: Keep track of your clicking patterns (for instance, how much you switch tabs, and go back to check your email), and compares them on productive vs. nonproductive days. Thereâ€™s a study that shows people who are depressed and in front of a computer tend to switch tabs a lot. My guess is that if you log someoneâ€™s click patterns and show them how much time they are wasting, they will shape up rather fast! #self-quantification ~holden1@mit.edu ', 0, NULL, '', 0, 0, 14, 0, '161'),
(162, 1368516119, 'Pitch-based scrolling - e.g. when you sing middle', 'Pitch-based scrolling - e.g. when you sing middle C, the document jumps to 50% mark. natural tool for voice recognition users/RSI/paralyzed patients ~jcole@mit.edu', 2, 30, 'started as UROP summer 2011 with dron', 0, 0, 14, 0, '162'),
(163, 1368516127, 'EEG-based Slumping Detector', 'EEG-based Slumping Detector -- detect the pattern of brain activity that correlates with slumping / program that alerts me as is my posture begins to deteriorate so that I could correct it.. Could also just tells you to go to sleep. Helps people recover more quickly from RSI/carpal tunnel. Has interesting neuro/psych implications if it works as well. Would use Emotiv headset ~jcole@mit.edu\n', 0, NULL, '', 0, 0, 14, 0, '163'),
(164, 1368516136, 'WorldThroughYourEyes', 'WorldThroughYourEyes -- What if you could make an app for Google Glasses or similar that follows a person\\''s eyes and then and tracks where they are focusing. This way, you could  compare how different people focus differently, and analyze what that does to their lives. I also imagine that you could you could put on glasses yourself (or watch a screen), and then see the world through another person\\''s eyes. ~jcole@mit.edu\n', 1, NULL, '', 0, 0, 14, 0, '164'),
(165, 1368516161, 'Emergency Pizza Button app', 'Emergency Pizza Button app -- One click pizza ordering via a big red button, modeled after the MIT east campus emergency pizza button.  Relatedly, I want to make â€œPush a button, get a cookieâ€ app for Insomnia Cookies. ~jcole@mit.edu #active', 2, 40, 'stripe, logos, ajax queries prepped', 0, 0, 14, 0, '165'),
(166, 1368516171, 'PhotoQuote', 'PhotoQuote -- app that lets you photograph a quote in a book, then searches online to find the boundaries of the quote you\\''re probably looking to note down, and adds the quote to your notebook. I find myself photographing quotes all the time. This is a big idea, and knowing the thread of quotes a person is interested in is a very powerful, and truly relevant advertising dataset. #relates to â€œsite that autocompletes quotesâ€ #intentiondb', 1, NULL, '', 0, 0, 14, 0, '166'),
(167, 1368564860, 'Voice Recog Quick Install', 'Voice Recog Quick Install', 0, NULL, '', 0, 0, 14, 0, '167'),
(168, 1368564867, 'Pitch-based scrolling', 'Pitch-based scrolling', 0, NULL, '', 0, 0, 14, 0, '168'),
(169, 1368564880, 'Slump-o-meter', 'Slump-o-meter -- webcam (or other device!) based posture detector that tells you to go to sleep when the height of your head decreases too much during a session at the PC', 0, NULL, '', 0, 0, 14, 0, '169'),
(170, 1368564889, 'SpeechChat/Txting', 'SpeechChat/Txting -- chat program that uses speech recognition/screenwriter to make it so that you can text/chat without ever looking at the screen. ', 0, NULL, '', 0, 0, 14, 0, '170'),
(171, 1368564986, '#VoiceRecognition_RSI', '#VoiceRecognition_RSI', 0, NULL, '', 0, 0, 14, 0, '171'),
(172, 1368576951, 'Creamed corn', 'Creamed corn', 0, NULL, '', 0, 0, 15, 0, '172'),
(173, 1369345589, 'I\\''m thinking about getting into a rhythm of joggi', ' I\\''m thinking about getting into a rhythm of jogging around maybe 7:30 or 8:00 for like half an hour to 45 minutes to begin with', 0, NULL, '', 0, 0, 18, 1, ''),
(174, 1369345644, 'Establish a lifelong relationship with at least on', 'Establish a lifelong relationship with at least one faculty member', 0, NULL, '', 0, 0, 19, 0, ''),
(175, 1369345651, 'I\\''m thinking about getting into a rhythm of joggin', 'I\\''m thinking about getting into a rhythm of jogging around maybe 7:30 or 8:00 for like half an hour to 45 minutes to begin with', 0, NULL, '', 0, 0, 19, 1, ''),
(176, 1369345665, 'Wake up early and watch the sunrise over the Charl', 'Wake up early and watch the sunrise over the Charles River! Or just watch the sunrise from any college. Go for a jog and watch the same sun set with some friends from atop of a hill. Become inspired by peers and channel the inspiration into something meaningful.  ', 0, NULL, '', 0, 0, 19, 0, ''),
(177, 1369345677, 'Stanford', 'Stanford: I would study something that covered applying business models using new technology to old industries (real estate) but mostly I would try to make as many friends as possible. The knowledge learned will go stale if not maintained, which makes the alum network the most valuable/durable asset you are buying by attending Stanford or Harvard etc. This is one of those quality over quantity things, I can attest to that being from the 2nd largest school in the nation. Building a technology requires a lot of human assets and investor confidence. Investors offer confidence to the Stanford/Harvard alum when evaluating technologies, the assumption is they must be worth a look (the school already pre-screened them). \n\nIf I were an investor I would surely do the same. As the technology builder, I can\\''t help but wonder if changing my school\\''s name would have changed investor\\''s reactions when I say \\&quot;Here is an inevitable technology that will open a billion dollar plus market\\&quot;. With UCF on my resume, all I get is a goofy facial expression that says \\&quot;You must have over estimated, or have no idea what you are talking about\\&quot;. However, in the past year I have watched $35m be invested into two companies, separately developing Part A &amp; Part B of my technology. It is only a matter of time before someone figures out that the real magic happens when the two parts are combined. Hindsight being 20/20 I wonder how my decision not to attend a well named Boston school has affected real world outcomes. I don\\''t believe the education at UCF was inferior in any way, but I do wonder, \\&quot;How much difference does the name make?\\&quot; \n\nSo go to Stanford if you can, and make a lot of friends', 0, NULL, '', 0, 0, 19, 0, ''),
(178, 1369345687, 'Stanford I\\''d major in Symbolic Systems, which is o', 'Stanford I\\''d major in Symbolic Systems, which is one of the most interesting majors I\\''ve ever heard about.', 0, NULL, '', 0, 0, 19, 0, ''),
(179, 1369345695, 'MIT', 'MIT: I would work as hard as I possibly could in order to receive the highest possible degree in business management. I would work my hardest to get an internship with a sports team in the Boston area and follow my dream: to reach the upper echelons of a sports franchise. Using advanced metrics and stats, I would change the way sports teams viewed, recruited and signed players. I would modernize the game using math.  ', 0, NULL, '', 0, 0, 19, 1, ''),
(180, 1369345710, 'MIT', 'MIT: Iâ€™d spend time reading all books at the Barker library, meet all the professors ( specially Walter Lewin ) , I would make great lifelong friends and devise lots of physics theories. I will open a website for all of the world to see my theories. I would also love to spend a year abroad and immerse myself in different cultures and places ', 0, NULL, '', 0, 0, 19, 0, ''),
(181, 1369345721, 'MIT', 'MIT: Rogue programmer here...Iâ€™d finally get the chance to systematically learn computer algorithms from the best of the best!! (:', 0, NULL, '', 0, 0, 19, 0, ''),
(182, 1369345731, 'MIT', 'MIT: Iâ€™d work and do my best to not let opportunities slip by. To take advantage of whatever comes and  try a variety of things. ', 0, NULL, '', 0, 0, 19, 0, ''),
(183, 1369345739, 'MIT', 'MIT: Iâ€™d pursue massive heavy media studies and use computer science knowledge to be frontrunner of the changing digital media today. :) And Iâ€™d constantly tell people itâ€™s not a bad idea to go to MIT for anything other than engineering because at the core of everything is engineering. Journalism is synthesis of words to stories, just like how engineering is synthesis of formulas to theories, and theories to projects. Long story short: Iâ€™d pursue Comparative Media Studies which is my dream major (and only exists at MIT) at the time I will be learning how to code and work digitally.\n', 0, NULL, '', 0, 0, 19, 1, ''),
(184, 1369345769, 'Go to/hold intellectual â€œSalonâ€ dinners/brunches', 'Go to/hold intellectual â€œSalonâ€ dinners/brunches -- Their purpose is basically to get people of all  disciplines/generations with big ideas/interesting perspectives who would really appreciate meeting each other in the same room.  Called salons after the famous salons of Paris where the intellectuals met to discuss their big ideas', 0, NULL, '', 0, 0, 19, 1, ''),
(185, 1369345799, 'I want to get into Cornellâ€™s CS department and th', '\nI want to get into Cornellâ€™s CS department and then go to Harvard Business School and start my own business of computers! \n', 0, NULL, '', 0, 0, 19, 0, ''),
(186, 1369439186, 'Bring Fiber Optic to Boston', 'Bring Fiber Optic to Boston', 0, NULL, '', 0, 0, 20, 1, ''),
(187, 1369634616, 'Utopia', 'Utopia -- Turn MA into a prosperous, nurturing bastion of human flourishing', 2, NULL, '', 0, 0, 0, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
