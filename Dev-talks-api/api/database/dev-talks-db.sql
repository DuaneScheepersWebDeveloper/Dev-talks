-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 08:29 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev-talks-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `uid` int(255) DEFAULT NULL,
  `cat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `img`, `date`, `uid`, `cat`) VALUES
(6, 'An adorable test', '<p>Two Kittys</p>', '1677737251696cats.jpg', '2023-03-01', 9, 'technology'),
(15, 'All you need to know about ChatGPT, the A.I. chatbot that’s got the world talking and tech giants clashing', '<p>What is ChatGPT? I asked the buzzy artificial intelligence chatbot, which has ignited conversation in schools, corporate boardrooms and social media, to explain itself.</p><p>In its own description, ChatGPT is “an AI-powered chatbot developed by OpenAI, based on the GPT (Generative Pretrained Transformer) language model. It uses deep learning techniques to generate human-like responses to text inputs in a conversational manner.”</p><p><br></p><p>The tool is the <a href=\"https://www.cnbc.com/2023/02/04/chatgpt-ignited-an-ai-craze-whos-best-positioned-to-benefit-.html\" rel=\"noopener noreferrer\" target=\"_blank\">talk of the business world</a>. It has been mentioned on earnings calls by management from a range of companies including oil giants, banks — and even the industrial behemoth Caterpillar.</p><p>It has also sparked concerns over potential abuses. In classrooms, students have used ChatGPT to generate entire essays, while hackers have begun testing it to write malicious code.</p><p', '1677736970052sample6.jpg', '2023-03-02', 9, 'chatgpt'),
(16, 'What ChatGPT and generative AI mean for science', '<p>In December, computational biologists Casey Greene and Milton Pividori embarked on an unusual experiment: they asked an assistant who was not a scientist to help them improve three of their research papers. Their assiduous aide suggested revisions to sections of documents in seconds; each manuscript took about five minutes to review. In one biology manuscript, their helper even spotted a mistake in a reference to an equation. The trial didn’t always run smoothly, but the final manuscripts were easier to read — and the fees were modest, at less than US$0.50 per document.</p><p>This assistant, as Greene and Pividori reported in a preprint<a href=\"https://www.nature.com/articles/d41586-023-00340-6#ref-CR1\" rel=\"noopener noreferrer\" target=\"_blank\"><sup>1</sup></a> on 23 January, is not a person but an artificial-intelligence (AI) algorithm called GPT-3, <a href=\"https://www.nature.com/articles/d41586-021-00530-0\" rel=\"noopener noreferrer\" target=\"_blank\">first released in 2020</a>. It ', '1677737038993sample5.jpg', '2023-03-02', 9, 'chatgpt'),
(17, '\'Google killer\' ChatGPT sparks AI chatbot race', '<p>Whether you have asked it to write you a song in the style of your favourite musician, sneaked in a homework question (500 words on the end of World War Two? no problem), tasked it to write copy for your company website, write a speech or even churn out specific program code, ChatGPT has proved that it can deliver - and in a convincing way.</p><p>There has been acres of reporting about its potential threat to a wide range of jobs, and indeed to our entire model of education if students can get their coursework done and university applications written instantly via ChatGPT or its rivals.</p><p>That said - this tech is still, comparatively, in its infancy. It is text only, restricted to content from the internet as it was in 2021, and does not update. It presents its answers as fact, when as we know the net is full of misinformation, some of it more dangerous than others.</p><p>We tried to get it to write an article for the BBC website, and the journalist who worked on it said it need', '1677737166165sample7.jpg', '2023-03-02', 9, 'chatgpt'),
(18, 'TikTok sets 60-minute daily screen time limit for under-18s', '<p><strong>TikTok is setting a 60-minute daily screen time limit for users who are aged under 18.</strong></p><p>If young people hit the new limit, they will have to enter a passcode to continue to use the service that day.</p><p>But they will be able to opt out of the new measure, which TikTok says will be rolled out \"in the coming weeks\".</p><p>The video app, which is owned by Chinese firm ByteDance, said it is introducing the feature to help people \"stay in control\" of their use.</p><p>TikTok said the new limit comes after it brought in a prompt last year to encourage teens to manage their screen time. It said this helped \"increase the use of our screen time tools by 234%\".</p><p>Users of the platform have to be at least 13, and, as part of this new feature, anyone under the age of 18 will receive a weekly notification with a \"recap of their screen time\".</p>', '1677737338753sample8.jpg', '2023-03-02', 9, 'technology'),
(19, 'FTX\'s Nishad Singh pleads guilty to fraud charges', '<p><strong>Another top executive at collapsed cryptocurrency firm FTX has pleaded guilty to criminal charges in the US.</strong></p><p>Former engineering director Nishad Singh admitted six charges, which included three counts of conspiracy to commit fraud on Tuesday.</p><p>The plea comes after FTX founder Sam Bankman-Fried has been accused of 12 criminal charges, which he denies.</p><p>FTX filed for bankruptcy last year, leaving many users unable to withdraw their funds.</p><p>Prosecutors have said the fall was caused by a massive scheme run by Mr Bankman-Fried, who has been released on $250m while awaiting trial.</p><p>Once known as the \"King of Crypto\", Mr Bankman-Fried is accused of directing customer deposits at FTX to be improperly funnelled to his hedge fund Alameda Research and used for political donations, property purchases and other investments.</p><p>Mr Singh, a childhood friend of Mr Bankman-Fried\'s brother, worked at Alameda Research and was later part of the team that est', '1677737442959sample10.jpg', '2023-03-02', 9, ''),
(20, 'Canada bans TikTok on government devices', '<p><strong>Canada will ban video app TikTok from all government-issued devices starting on Tuesday. </strong></p><p>The decision follows a review by Canada\'s chief information officer, and the app \"presents an unacceptable level of risk to privacy and security\", a government spokesperson said in a statement.</p><p>A TikTok spokesperson said the company was disappointed by the decision.</p><p>It comes just days after the European Commission announced a similar ban.</p><h2>Security concerns</h2><p>Prime Minister Justin Trudeau said there was enough concern about security around the app to require the change.</p><p>\"This may the first step, this may be the only step we need to take,\" he said on Monday at a press conference near Toronto.</p><p>TikTok has been criticised for its use of personal information and ties to the Chinese government.</p><p>The short-form video app is owned by Chinese firm ByteDance Ltd.</p><p>US federal employees were banned from using TikTok late last year, and on ', '1677737536886sample11.jpg', '2023-03-02', 9, 'technology'),
(22, 'Taylor Otwell on How He Got Into Programming', '<p><em>We’re creating documentaries to tell the tech stories that inspire people to keep creating and learning, and ultimately, unlock more potential in both themselves and software. </em><a href=\"https://www.youtube.com/c/OfferZenOrigins!?ref=offerzen-blog\" rel=\"noopener noreferrer\" target=\"_blank\"><em>Check out the YouTube Channel</em></a><em>!</em></p><p><em>Here, Laravel creator Taylor Otwell talks about his journey into programming.</em></p><p><br></p><h2>The Transcript</h2><p>So when I was growing up in hot springs, my next door neighbor actually, a man named Kevin Kelly was a programmer.</p><p>I’m pretty sure he had his own sort of programming business that program for businesses around hot springs. And when I was first interested in computers, I think my parents reached out to him and said, “Hey, Taylor, wants a computer.</p><p><br></p><p>You know, what should we get?” And so he actually set us up with our first computer that was like 66 megahertz, you know, just like one of th', '1677737947256sample13,jpg.png', '2023-03-02', 9, 'people'),
(23, 'Schalk Venter on the tech indusrty in South Africa', '<p>I find the South African landscape infinitely complex and confusing - from our strange mix of biomes to our (both tropical and freezing antarctic) ocean currents.</p><p>However, among all of these, I find our divergent socio-economic realities (and their corresponding historical realities) most prominent. As someone who is enmeshed within this strange South African web of peoples (and perhaps more so because I occupy a specific position not afforded to most) I really care about the following:</p><ul><li><em>Attempting to make sense of the bigger South African socio-economic picture.</em></li><li><em>Cultivating daily practices that interrogate my own position in it.</em></li><li><em>Understanding how the latter should stand in relation to the former.</em></li></ul><p>I\'ve been very fortunate insofar that I\'ve had both the opportunity to develop a set of visual-design skills against an academic backdrop and a range of front-end development skills through working in the corporate worl', '1677738086689sample12.jpg', '2023-03-02', 9, 'people'),
(24, 'The pros and cons of open-source feat. the Laravel Origins cast', '<p>So the cool thing about open-source is it’s allowed me to interact with thousands I would say of developers around the world that it’s crazy when you think about like these are individual people right like with their own lives, their own interests, their own stresses, their own victories, their own you know just like life stories that I would never have met otherwise and I think that’s the coolest part of open-source for me is just like all the individuals I’ve interacted with whether it be in Europe, in Africa, in Asia, in Australia, South America that like these are all people I never would have met you know like if I had never written Laravel and I think open-source the way open-source brings people together across countries across ethnicities across everything is just really cool to me like as a social phenomenon.</p><p>It’s also cool because we can all collaborate on this exciting project together. It’s almost like it’s almost like if you had a Minecraft server you know where y', '1677738218847sample14.jpg', '2023-03-02', 9, 'code'),
(25, 'Node.js Developer Salary Trends in South Africa', '<h2>Average junior Node.js developer salary trends</h2><p>Junior Node.js salaries have increased handsomely since 2022 – and the good news is they grow significantly as one gains experience. Developers starting out in this field can expect to earn a monthly income of R22 806. That’s a significant 23.2% (R4 292) increase up from last year’s average of R18 514. It’s also 4.8% (R1 037) more than rookie JavaScript developers, but 4.4% (R1 051) less than those starting out in React.</p><p>After two years on the job, Node.js developers should see their salary rise 38% (R8 671) to R31 477, up 8.7% (R2 527) from last year’s R28 950. That puts them 2.9% (R890) ahead of JavaScript developers at this level, but 3.7% (R1 213) behind React developers.</p><p>With four years’ experience, Node.js developers get a 42.8% (R13 467) raise to R44 944, which is actually 0.9% (R399) less than the 2022 figure of R45 343. This salary is 2.3% (R1 004) more than similarly experienced JavaScript developers, but 5', '1677738385547sample15.jpg', '2023-03-02', 9, 'code'),
(26, 'PHP Developer Salary Trends in Germany', '<p>Germany is home to Europe’s<a href=\"https://dealroom.co/blog/munich-is-europes-4th-tech-hub-after-london-paris-and-berlin?ref=offerzen-blog\" rel=\"noopener noreferrer\" target=\"_blank\"> third and fourth largest tech hubs</a>, <a href=\"https://www.offerzen.com/blog/berlin-city-guide-for-software-developers?ref=offerzen-blog#sts=Securing%20a%20work%20visa%20for%20Germany\" rel=\"noopener noreferrer\" target=\"_blank\">Berlin</a> and <a href=\"https://www.offerzen.com/blog/munich-city-guide-for-software-developers?ref=offerzen-blog#sts=Visas%20for%20working%20in%20Germany%20as%20an%20expat\" rel=\"noopener noreferrer\" target=\"_blank\">Munich</a>. This makes it one of the best countries for software developers. Here, we’ll look at average salaries for PHP developers at each stage of their careers and how they compare to <a href=\"https://www.offerzen.com/blog/java-developer-salary-trends-in-germany?ref=offerzen-blog\" rel=\"noopener noreferrer\" target=\"_blank\">Java </a>and <a href=\"https://www.offerz', '1677738618739sample16.jpg', '2023-03-02', 9, 'code'),
(27, 'Here’s Bill Gates’s Advice to New Programmers. It Should Not be Ignored.', '<p>A programmer’s journey is a fascinating one. It is a long and arduous one, full of trials and tribulations.</p><p>When you’re just starting, you’re bound to run into a few obstacles along the way. Learning your first programming language can be difficult, and it can be easy to get discouraged if you’re not sure what you’re doing.</p><p>However, if there’s one person who knows a thing or two about programming, it’s Bill Gates.</p><p>Bill Gates is the founder of Microsoft and one of the richest people in the world. He’s an iconic figure in the technology sector.</p><p>When he has something to say, the industry stops and listens. That’s why his advice to new programmers should not be ignored.</p><p>He inspired me on many levels, and I hope you can benefit from his wise insights as well.</p><p>Here is some advice from one of the famous programmers — Bill Gates.</p><h1>Don’t Overthink, Just Dive In</h1><p><strong><em>Gates:</em></strong> <em>The best way to prepare [to be a programmer] i', '1677738791884sample17.jpg', '2023-03-02', 9, 'people');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `userName`, `email`, `password`, `img`) VALUES
(1, 'test1', 'test@test1', 'guest1', 'guest1'),
(2, 'tes2', 'test@test2', '$2a$10$Kin7nU1qzSdIu86Eb3RU/upq9rchorsy10DECQdGm1vkWWqjtMhNu', ''),
(3, 'test3', 'test@test3', '$2a$10$agNqo3kF.rhpmc0tIOWYCOx03gM7pGWTEl7laSxOUG7UEKZFT8d6y', ''),
(4, 'test4', 'test4@test4', '$2a$10$TKcLFJi7Tm1Lv6IoqIU2Qug1b/LdrXK.WHMEG.8n.QXYQ/d0zuhZO', ''),
(5, 'test5', 'test4@test5', '$2a$10$gDx/rsvwi2fDbIZvk53UOuJAG9SHL8eXTvxzqNC7gH6UMVOWHIlrO', ''),
(6, 'test6', 'test@test6', '$2a$10$VFR3Xol.Um8aR/Y7BpDzROylDsgKdzGxoxU7VzVss/shpbks8doQe', ''),
(7, 'guest', 'guest@guest', '$2a$10$B0GeBjw0CAIz.5rb9384cuPboYqnlNqj60UEBg4nLaBP764X3/hc.', ''),
(8, 'guest2', 'guest2@guest2', '$2a$10$aWh9C5PfJ.lBPGqjEHLMZ.4XLKCoQbhSkb.ubZFvrJEwEadj7tw9i', ''),
(9, 'guestTest', 'guest@guestTest', '$2a$10$xduPFnI7Zvv5ZQuGMQRdGOzLuME9hwDi9.zRqAXxt8d2DZRR25GXK', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
