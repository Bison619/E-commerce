-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 06:24 AM
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
-- Database: `obd`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookId` int(12) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `bookPrice` int(12) NOT NULL,
  `bookDesc` text NOT NULL,
  `bookCategorieId` int(12) NOT NULL,
  `bookPubDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookId`, `bookName`, `writer`, `bookPrice`, `bookDesc`, `bookCategorieId`, `bookPubDate`) VALUES
(1, 'Chainsaw-Man', 'Tatsuki Fujimoto', 1500, 'Chainsaw Man is a Japanese manga series written and illustrated by Tatsuki Fujimoto. Its first part was serialized in Shueisha\'s shōnen manga magazine Weekly Shōnen Jump from December 2018 to December 2020; its second part began serialization in Shueisha\'s Shōnen Jump+ online magazine in July 2022. ', 4, '2022-08-03 11:04:35'),
(2, 'Jujutsu Kaisen', 'Gege Akutami', 1200, 'Jujutsu Kaisen is a Japanese manga series written and illustrated by Gege Akutami. It has been serialized in Shueisha\'s shōnen manga magazine Weekly Shōnen Jump since March 2018, with its chapters collected and published in nineteen tankōbon volumes as of April 2022.', 4, '2022-08-03 13:04:37'),
(3, 'Thor: Gorr the God Butcher', 'Aron Ribic', 550, 'A trail of blood consumes Thor\'s past , present and future! Gods are vanishing across the ages and Thor must unravel the gruesome mystery of Gorr the God Butcher! In the distant past, Thor discovers a cave echoing with the cries of tortured gods! ', 23, '2022-08-03 15:52:20'),
(4, 'Solo Leveling', 'Chugong', 1800, 'Solo Leveling, also alternatively translated as Only I Level Up, is a South Korean web novel written by Chugong. It was serialized in Kakao\'s digital comic and fiction platform KakaoPage beginning on July 25, 2016, and was later published in full by D&C Media under their Papyrus label on November 4, 2016.', 4, '2022-08-04 14:11:37'),
(5, 'Tokyo Ghoul', 'Sui Ishida', 1200, 'Tokyo Ghoul is a Japanese dark fantasy manga series written and illustrated by Sui Ishida. It was serialized in Shueisha\'s seinen manga magazine Weekly Young Jump between September 2011 and September 2014, and was collected in fourteen tankōbon volumes.', 4, '2022-08-04 14:12:25'),
(6, 'Tokyo Revengers', 'Ken Wakui', 1000, 'Tokyo Revengers is a Japanese manga series written and illustrated by Ken Wakui. It has been serialized in Kodansha\'s Weekly Shōnen Magazine since March 2017. An anime television series adaptation by Liden Films aired from April to September 2021. A second season is set to premiere in January 2023.', 4, '2022-08-04 15:07:09'),
(7, 'The Promised Neverland', 'Kaiu Shirai', 1200, 'The Promised Neverland is a Japanese manga series written by Kaiu Shirai and illustrated by Posuka Demizu. It was serialized in Shueisha\'s Weekly Shōnen Jump from August 2016 to June 2020, with its chapters collected in twenty tankōbon volumes', 4, '2022-08-04 15:09:02'),
(9, 'Aristotle and Dante Dive Into the Waters of the World', 'Benjamin Alire Saenz', 700, 'The highly anticipated sequel to the beloved cult classic about family, friendship and first love, from award-winning author Benjamin Alire Saenz. This lyrical novel will enrapture readers of Adam Silvera (They Both Die at the End), The Perks of Being a Wallflower and Call me by your Name. A love story like no other. In Aristotle and Dante Discover the Secrets of the Universe, two boys fell in love. Now they must discover what it means to stay in love and build a relationship in a world that seems to challenge their very existen...', 1, '2022-08-10 21:16:59'),
(10, 'The Love Hypothesis', 'Ali Hazelwood', 1000, 'As a third-year Ph.D. candidate, Olive Smith doesn\'t believe in lasting romantic relationships but her best friend does, and that\'s what got her into this situation. C onvincing Anh that Olive on her way to a happily ever after was always going to be tough, scientists require proof. So, like any self-respecting woman, Olive panics and kisses the first man she sees. That man is none other than Adam C arlsen, a young hotshot professor and well-known ass. Which is why Olive is positively floored when he agrees to keep her charade a secre...', 1, '2022-08-10 21:25:10'),
(11, 'It End with Us', ' Colleen Hoover', 700, 'Instant New York Times Bestseller Combining a captivating romance with a cast of all-too-human characters, Colleen Hoover’s It Ends With Us is an unforgettable tale of love that comes at the ultimate price.Lily hasn’t always had it easy, but that’s never stopped her from working hard for the life she wants. She’s come a long way from the small town in Maine where she grew up—she graduated from college, moved to Boston, and started her own business. So when she feels a spark with a gorgeous neurosurgeon named Ryle Kincaid, everything i...', 1, '2022-08-10 21:31:20'),
(12, 'Return to Love', ' Marianne Williamson', 1200, 'Back by popular demand -- and newly updated by the author -- the mega-bestselling spiritual guide in which Marianne Williamson shares her reflections on A Course in Miracles and her insights on the application of love in the search for inner peace.Williamson reveals how we each can become a miracle worker by accepting God and by the expression of love in our daily lives. Whether psychic pain is in the area of relationships, career, or health, she shows us how love is a potent force, the key to inner peace, and how by practicing love w...', 1, '2022-08-10 21:48:28'),
(13, 'After', 'Anna Todd', 700, 'Experience the internet\'s most talked-about book, now a major motion picture, from Anna Todd, the writer Cosmopolitan called “the biggest literary phenomenon of her generation.”There was the time before Tessa met Hardin, and then there’s everything AFTER... Life will never be the same. #Hessa Tessa is a good girl with a sweet, reliable boyfriend back home. She’s got direction, ambition, and a mother who’s intent on keeping her that way. But she’s barely moved into her freshman dorm when she runs into Hardin. With his tousled brown hai...', 1, '2022-08-10 21:50:15'),
(14, 'World\'s Best Boyfriend', 'Durjoy Dutta', 800, 'Hate, is a four letter word. So is love. And sometimes, people can\'t tell the difference... Dhurv and Aranya spend a good part of their lives trying to figure out why they want to destroy each other, why they hurt each other so deeply. And, why they can\'t stay away from each other. The answer is just as difficult each time because all they\'ve wanted is to do the worst, most miserable things to one another. Yet there is something that tells them: THIS IS NOT IT. If you want to know the answer to it all, read the book.', 1, '2022-08-10 22:01:01'),
(15, 'Strange Weather in Tokyo', ' Hiromi Kawakami', 1200, '“Strange Weather in Tokyo” is a May-December romance, and focuses quite a bit on the food of Japan, making it a great way to learn what some of the unique foods of Japan taste like before you give them a try yourself, all while enjoying the unfolding romance.', 1, '2022-08-10 22:07:08'),
(16, 'Kitchen', 'Banana Yoshimoto', 1000, 'Kitchen is a story about a young woman who has to overcome the death of her grandmother while finding her own footing in the cooking world and perhaps even love.\r\n\r\nThe book received glowing reviews all over the world when it was first published in English 1993 (its original publication was in 1983 in Japanese).\r\n\r\nIt received multiple awards, including the 6th Kaien Newcomer Writers Prize in 1987 and the 9th Best Newcomer Artists in 1988.', 1, '2022-08-10 22:08:30'),
(17, 'Norwegian Wood ', 'Haruki Murakami', 900, 'Set mostly in late 1960s Tokyo, this novel follows Tou Watanabe as he reminisces on his relationships with troubled Naoko and the lively Midori. Most of the characters are university students and the times as well as their emotions are troubled.\r\n\r\nNothing is simple for these young people as they navigate through life and relationships. Suicide, and the effects it has on surviving friends and family, is a common theme. In 2020, a film adaptation of the book was released.', 1, '2022-08-10 22:09:08'),
(18, 'Snow Country ', ' Yasunari Kawabata', 800, 'Distinctly Japanese, this story tells the tale of a young upper-class man who is in love with a provincial geisha who works as a prostitute in a hot spring town.\r\n\r\nBecause of the limitations of the time and the way their respective classes worked, their relationship was doomed from the start.', 1, '2022-08-10 22:09:42'),
(19, 'The Sound of Waves', 'Yukio Mishima', 1200, 'This book explores the saga of Shinji, the son of a pearl diver and her now-dead fisherman husband, and the daughter of a wealthy shipowner, the beautiful Hatsue.\r\n\r\nThe prospect of wealth and the return of long-forgotten acquaintances spurs jealousy and violence as the pair court and eventually fall in love as they face adversity and come of age.', 1, '2022-08-10 22:10:20'),
(20, 'Autofiction', 'Hitomi Kanehara', 400, 'A weird, strange book meant to be (potentially) read as a fictional autobiography.\r\n\r\nThe main character, Rin, may have mental issues, especially when it comes to obsessing and being jealous of her loved ones, but she may not. The book is twisted and strange, with a dark sense of humor far from your average romance.\r\n\r\nKeep in mind that this book is not for everyone; it is occasionally disturbing and may seem gross to some readers and juvenile to many more.', 1, '2022-08-10 22:11:03'),
(21, 'Socrates in Love', ' Kyoichi Katayama', 600, 'This hit book has become a franchise unto itself in its native country.\r\n\r\nIt is the touching and heart-wrenching story of love between an average high school girl and a popular guy. As the two grow closer, the girl falls ill with leukemia.\r\n\r\nThe book tackles many of these issues as seen from the young man’s point of view in a way that tugs powerfully at the heartstrings.', 1, '2022-08-10 22:11:40'),
(22, 'Convenience Store Woman', 'Sayaka Murata', 1200, 'This is another odd tale, one more about the war between conformity and nonconformity that is taking place in Japan.\r\n\r\nKeiko finds people difficult and has worked at a convenience store for much of her life, ordering her life around its detailed regulations and relying on them to develop relationships with others.\r\n\r\nWhen the opportunity to take the pressure off comes by having something like a relationship with an equally odd man, Shiraha, she takes it, though not all is as it seems.', 1, '2022-08-10 22:12:17'),
(23, 'The Ten Loves of Mr. Nishino ', ' Hiromi Kawakami', 1500, '“The Ten Loves of Nishino” is a set of ten short stories centered on the womanizer Mr. Nishino. It is a bit of a fantasy novel, as we start off with him appearing as a ghost.\r\n\r\nThe book is not just about his inability to commit, but also details why the ten women in the stories struggle with commitment as well. This book is deeper than its initial drama hints at and well worth a read.', 1, '2022-08-10 22:13:25'),
(24, ' The Housekeeper and the Professor', ' Yoko Ogawa', 1100, 'Due to an accident, the Professor of this novel only has a short-term memory of 80 minutes. The narrator, the Housekeeper, is a single mother who now struggles to help this man who only really connects to others through numbers.\r\n\r\nThe two connect through her son, who the Professor teaches math and starts to share his love as he would with a son. This is a sweet story littered with references to mathematics, making it very unconventional. Here you can order you copy!', 1, '2022-08-10 22:14:02'),
(25, 'Donut Fall In Love', 'Jackie Lau', 700, 'Actor Ryan Kwok is back in Toronto after the promotional tour for his latest film, a rom-com that is getting less-than-stellar reviews. After the sudden death of his mother and years of constant work, Ryan is taking some much-needed time off. But as he tries to be supportive to his family, he struggles with his loss and doesn\'t know how to talk to his dad—who now trolls him on Twitter instead of meeting him for dim sum.', 1, '2022-08-10 22:23:11'),
(26, 'The Loop', 'Jeremy Robert Jhonson', 700, 'You could argue that body horror is the purest horror. It taps into our basest fears: the vulnerability of our own bodies to infection, mutation, and destruction. In The Loop, a Pacific Northwest town falls prey to a parasite that transforms its youth into ravening fiends. After a short build-up, young adult sensibility blossoms darkly into scenes of extreme violence and bodily damage. The Loop is fiction’s closest equivalent to the films of David Cronenberg, with a jaw-dropping central set-piece that rivals the most fevered excesses of horror cinema.', 2, '2022-08-13 13:15:04'),
(27, 'Harvest Home ', 'Thomas Tryon', 800, 'After quitting his career as a Hollywood star, Thomas Tryon turned to writing and gave us a pair of bestselling horror novels. The Other may be better known, but Harvest Home is the true chiller. In classic New England Gothic style, a nice family relocates to a Quaint Little Town™ only to discover hideous secrets about the corn crop. What follows is an ultra slow-burn of tightening anxiety, with a folk-horror finale that rivals 1973’s other pagan classic, The Wicker Man, or even Ben Wheatley’s 2011 shocker, Kill List. The final passages are as bleak as horror got in the ‘70s.', 2, '2022-08-13 13:16:59'),
(28, 'The Other Black Girl', ' Zakiya Dalila Harris', 900, 'At first glance, the terrors of The Other Black Girl appear slight. Harris’ workplace thriller spends ample time cataloguing the microaggressions endured by Nella, the only woman of color at a major New York publishing house. However, when Hazel, the titular other Black girl, joins the firm, the novel moves into more uncanny territory. The result is a scalpel-sharp instrument of social horror—a book that exposes monstrousness in the minutiae of office politics and the complacent evil of white privilege. It’s particularly telling that Harris wrote the book after working in New York publishing…', 2, '2022-08-13 13:18:27'),
(29, 'The Auctioneer', 'Joan Samson', 1300, 'The Auctioneer may be the bestselling horror novel that most people have never heard of. It sold a million copies on release, garnered praise from genre heavyweights, and was further distinguished by the author’s death soon after publication. Yet Samson’s novel remained in obscurity for decades until Grady Hendrix and Valancourt Press reissued it as part of the Paperbacks from Hell series. In the figure of the titular auctioneer, Perly Dinsmore, and the havoc wreaked by his manipulation of a rural New Hampshire community, Samson’s novel refers back to Shirley Jackson’s ”The Lottery,” and must surely be the inspiration behind Leland Gaunt, the malignant shopkeeper in Stephen King’s Needful Things.', 2, '2022-08-13 13:20:06'),
(30, 'The Hungers', 'Alma Katsu', 1200, 'The Hunger takes one of the darkest incidents in American history and makes it more horrible still. Katsu’s retelling of the Donner Party’s catastrophic attempt to cross the Sierra Nevadas in winter begins with the death of a child and heads onward, like the wagon train, into deeper horror. It’s slow progress, too. The Hunger takes its time to get to the awful fate we know is waiting. Some people may buck at the pace and the way Katsu dangles the grisliest elements of the story just out of reach. But for those who appreciate authenticity and great character work, it’s a piece of historical horror that takes exactly the route it should.', 2, '2022-08-13 13:20:54'),
(31, 'Dark Valley', ' Joe Donnelly', 700, 'Joe Donnelly’s books arrived at the tail-end of horror’s paperback boom, all gaudy covers and pulpy premises. Yet his final horror novel is an almost unknown classic: an adolescent trial set on the West coast of Scotland, where five young friends on a camping trip encounter a child killer. The Scottish setting gives a different tone and a grittier vernacular to the oft-romanticized coming-of-age tradition. Think Stand by Me refracted through Trainspotting. It’s a violent story, with the rare threat that simply being a child is not enough to save Donnelly’s characters from a brutal end.', 2, '2022-08-13 13:22:34'),
(32, 'The Monk', 'Matthew Lewis', 1200, 'Horror’s roots extend far back into the 18th century Gothic tradition, beginning with The Castle of Otranto in 1764 and evolving in Anne Radcliffe’s The Mysteries of Udolpho in 1794. It is Lewis’ novel, however, that first showcases the genre’s power to shock. Written when Lewis was still a teenager, The Monk relates the demonic corruption of the devout Ambrosio. Upon its release, the novel was considered a danger to society; even now, its details of rape, incest, murder, and black sorcery remain eyebrow-raising. If the scares are dulled by archaic language, some moments still hit hard, such as when the prioress’ body is mutilated by a mob “till it became no more than a mass of flesh, unsightly, shapeless, and disgusting.” Remember, this was written in 1796!', 2, '2022-08-13 13:23:26'),
(33, 'Bag of Bones', 'Stephen King', 1000, 'Bag of Bones is a 1998 horror novel by American writer Stephen King. It focuses on an author who suffers severe writer\'s block and delusions at an isolated lake house four years after the death of his wife.', 2, '2022-08-13 13:26:58'),
(34, 'Silent Patient', ' Alex Michaelides', 1200, 'The Silent Patient is a 2019 psychological thriller novel written by British–Cypriot author Alex Michaelides. The debut novel was published by Celadon Books, a division of Macmillan Publishers, on 5 February 2019. The audiobook version, released on the same date, is read by Louise Brealey and Jack Hawkins. ', 3, '2022-08-13 13:28:58'),
(35, 'All Her Little Secrets', ' Wanda M. Morris', 700, 'uspense? Check. Mystery? Check. Thriller? Check. This book is a fast-paced, nonstop story that follows a well-to-do Atlanta lawyer who unfortunately finds her boss — her secret lover — shot dead. ', 3, '2022-08-13 13:31:14'),
(36, 'Apples Never Fall', 'Liane Moriarty', 1200, 'Families are tough. Full stop. Add in a missing spouse and a husband as the prime suspect, and things get even more complicated. The Delaney siblings are split on their father\'s innocence and their complex relationships, sibling rivalries, and secrets, which keep readers\' minds spinning. The author that brought the world Big Little Lies is back again with a story sure to have people talking. ', 3, '2022-08-13 13:32:01'),
(37, 'Behind Her Eyes', 'Sarah Pinborough', 500, 'This novel will leave your jaw on the floor. Sarah Pinborough really went there with an ending that would make most readers scratch their head and eyes roll, but she made it work. And by making it work she did something that many authors strive to do in their novels: shock readers. Behind Her Eyes is a sensual thriller with supernatural elements. It\'s a read you\'ll never forget. ', 3, '2022-08-13 13:32:41'),
(38, 'Carrie', 'Stephen King', 500, 'This book takes all of your high school fears, cranks them up to 100, and doesn\'t let up. Stephen King is truly a national treasure. How was this his first novel? Throughout the novel you feel Carrie\'s teenage angst and want to reach out to help, but not to worry, the revenge that Carrie White unleashes on her unrelenting bullies will leave you in awe of her telekinetic destruction. ', 3, '2022-08-13 13:33:28'),
(39, 'Fates and Furies ', ' Lauren Groff', 1000, 'This book is what happens when you take that picture-perfect, wealthy, high school sweetheart couple and give them a big dose of reality. A novel written from two perspectives of a flailing marriage, the pretentious characters are spiteful, unlikeable, yet still appealing. Former US President Barack Obama even named the book his favorite read of 2015! ', 3, '2022-08-13 13:34:21'),
(40, 'Gone Girl ', 'Gillian Flynn', 507, 'This iconic novel took the world by storm. Gillian Flynn, another national treasure, creates atmospheric tension that jumps off the pages. Amy Dunne is sadistic. Nick Dunne is complacent (picture Ben Affleck), and the pair cannot live without the other. I guess that\'s marriage? The novel is filled with twists and turns, and by the end readers are nauseated at the toxicity from this Leave It to Beaver couple. ', 3, '2022-08-13 13:36:25'),
(41, 'Misery', 'Stephen King', 700, 'Annie Wilkes is the stan of all stans for renowned author Paul Sheldon. When Paul finds himself in the care of his biggest fan after a car crash as a result of a snowstorm, things take a dark turn. This classic Stephen King novel will haunt you for years to come. ', 3, '2022-08-13 13:39:32'),
(42, 'kaiju no.8', 'Naoya Matsumoto', 1500, 'Kaiju No. 8, also known in English as Monster #8, is a Japanese manga series written and illustrated by Naoya Matsumoto. It has been serialized for free on Shueisha\'s Shōnen Jump+ application and website since July 2020, with its chapters collected in seven tankōbon volumes as of July 2022. ', 4, '2022-08-13 13:44:44'),
(43, 'Don\'t Toy with me Nagatoro', 'Nanashi', 2600, 'Don\'t Toy With Me, Miss Nagatoro (イジらないで、長瀞さん, Ijiranaide, Nagatoro-san) was first published as a five chapter Pixiv Webcomic from August 15, 2011 until December 25, 2015. Upon concluding, the series began serialization in Kodansha\'s online and app-based webmanga magazine Magazine Pocket on November 1, 2017. As of May 2021 the series has been compiled into 10 physical volumes published by Kodansha and 7 English language volumes by Vertical.', 4, '2022-08-13 13:45:54'),
(45, 'What Is History?', 'Edward Hallett Carr', 300, '\r\nDescription : An outlier on this list in that it doesn’t look at any specific period or event in history, Carr’s book is nevertheless essential reading in that it teaches you how to read and understand history. Initially criticized for its “dangerous relativism,” the book is now considered foundational to the field thanks to its explanation of how perspective and bias can affect the way we interpret historical events. This should arguably be your first book if you’re making your initial forays into history.', 5, '2022-08-13 13:54:15'),
(46, 'A study of History', 'Arnold J. Toynbee ', 800, 'Arnold Toynbee\'s A Study of History is his magnum opus. In it he analyses the rise and fall of all 26 of the great world civilizations; whereas, previous historians had mainly concentrated on the West. Toynbee traces general themes focussing on the genesis, growth, and disintegration of civilisations. .', 5, '2022-08-13 13:58:12'),
(47, ' The Making of the English Working Class', ' E. P. Thompson', 700, 'This book transformed our understanding of English social history. Thompson revealed how working class people were not merely victims of history, moved by powerful forces outside of themselves, but were also active in creating their own culture and future, during the degradation of the industrial revolution.', 5, '2022-08-13 13:59:10'),
(48, 'The Mediterranean', ' Fernand Braudel', 900, 'The Mediterranean and the Mediterranean World in the Age of Philip II is the most influencial work of the great 20th century historian Fernand Braudel, a leader of the Annales School. This work perfectly demonstrates Braudel’s l\'histoire totale, writing history from as many perspectives as possible, including a focus on geography, anthropology, and archaeology.', 5, '2022-08-13 14:00:33'),
(49, 'The Age of Revolution', ' Eric Hobsbawm', 700, 'The Age of Revolution is a book by Eric Hobsbawm. It\'s the first of 3 books about the long 19th century, and The Age of Extremes: The Short Twentieth Century, is the sequel to the trilogy.\r\n', 5, '2022-08-13 14:01:54'),
(50, 'The Vikings: A History', ' Robert Ferguson', 3400, 'A comprehensive and thrilling history of the Vikings for fans of the History Channel series, soon to return for its fifth seasonFrom Harald Bluetooth to Cnut the Great, the feared seamen and plunderers of the Viking Age ruled Norway, Sweden, and Denmark but roamed as far as Byzantium, Greenland, and America. ', 5, '2022-08-13 14:04:18'),
(51, 'The Imperial Radch Trilogy', 'Ann lecky', 500, 'Breq is a human now — but once she was a starship. Once she was an AI with a vast and ancient metal body and troops of ancillaries, barely animate bodies that all carried her consciousness. Poll judge Ann Leckie has created a massive yet intricate interstellar empire where twisty galactic intrigues and multiple clashing cultures form a brilliant backdrop for the story of a starship learning to be a human being. Your humble editor got a copy of Ancillary Justice when it came out and promptly forced her entire family to read it.', 6, '2022-08-13 14:07:41'),
(52, 'The Dead Djinn Universe ', 'Deji Clark', 900, 'What a wonderful world P. Djélì Clarke has created here — an Arab world never colonized, where magic-powered trams glide through a cosmopolitan Cairo and where djinns make mischief among humans. Clarke\'s novella Ring Shout also showed up on our semifinalists list, and it was hard to decide between them, but ultimately our judges felt the Dead Djinn Universe offered more to explore. But you should still read Ring Shout, a wild ride of a read where gun-toting demon-hunters go up against Ku Klux Klan', 6, '2022-08-13 14:08:43'),
(53, 'The Age of Madness Trilogy', 'Joe Abercrombie', 1200, 'One of my pet peeves with fantasy novels is they sometimes don\'t allow for the progression of time and technology — but in Joe Abercrombie\'s Age of Madness series, the follow-up to his debut First Law trilogy, industrialization has come to the world of The Union, and it\'s brought no good in its wake. More than that — machines may be rising, but magic will not give way, and all over the world, those at the bottom of the heap are beginning to get really, really angry. This series works as a standalone — but you should also read the excellent First Law series (even though it\'s old enough to fall outside the scope of this list).', 6, '2022-08-13 14:09:56'),
(54, 'The Green Bone Saga', 'Fonda Lee', 600, 'his sprawling saga of family, honor, blood and magical jade will suck you in from the very first page. Poll judge Fonda Lee\'s story works on every conceivable level, from minute but meaningful character beats to solid, elegantly conveyed world-building to political intrigue to big, overarching themes of clan, loyalty and identity. Plus, wow, the jade-powered martial arts sequences are as fine as anything the Shaw Brothers ever put on screen. Reviewing books is my actual job, says fellow judge Amal El-Mohtar, but I still have to fight my husband for the advance copies of Fonda\'s books, and we\'re both THIS CLOSE to learning actual martial arts to assist us in our dueling for dibs.', 6, '2022-08-13 14:11:13'),
(55, 'The Daevabad Trilogy', 'S.A Chakrawarti', 700, 'Nahri is a con woman (with a mysteriously real healing talent) scraping a living in the alleys of 18th century Cairo — until she accidentally summons some true magic and discovers her fate is bound to a legendary city named Daevabad, far from human civilization, home of djinns and bloody intrigues. Author S.A. Chakraborty converted to Islam as a teenager and after college began writing what she describes as historical fanfiction about medieval Islam; then characters appeared, inspired by people she met at her mosque.', 6, '2022-08-13 14:12:44'),
(56, 'Dune', 'Frank Herbert', 1500, 'Dune is a 1965 epic science fiction novel by American author Frank Herbert, originally published as two separate serials in Analog magazine. It tied with Roger Zelazny\'s This Immortal for the Hugo Award in 1966 and it won the inaugural Nebula Award for Best Novel. It is the first installment of the Dune saga.', 6, '2022-08-13 14:13:33'),
(57, 'The Martians', 'Andy Wier', 1400, 'The Martian is a 2011 science fiction debut novel written by Andy Weir. The book was originally self-published on Weir\'s blog, in a serialized format. In 2014, the book was re-released after Crown Publishing Group purchased the exclusive publishing rights.', 6, '2022-08-13 14:14:48'),
(58, 'Moby Dick', 'Herman Melville', 1500, 'Moby-Dick; or, The Whale is an 1851 novel by American writer Herman Melville. The book is the sailor Ishmael\'s narrative of the obsessive quest of Ahab, captain of the whaling ship Pequod, for revenge against Moby Dick, the giant white sperm whale that on the ship\'s previous voyage bit off Ahab\'s leg at the knee.', 7, '2022-08-13 14:16:12'),
(59, 'Black Flag ', 'David Ricciardi', 1500, 'Ricciardi’s Jake Keller series has flown under the radar for a while, but with book three, it’s earned a spot on everyone’s must-read list. A gang of organized, brutal thieves are using high-speed boats to hijack oil tankers, killing the crews and selling the oil on the black market. CIA agents Jake Keller, a young man versed in technology, and John Pickens, old-school and thoughtful, are …', 7, '2022-08-13 14:17:50'),
(60, 'The Sentinel ', 'Lee Child and Andrew Child', 1200, 'Jack Reacher has become one of the mainstays of the action and adventure genre because he’s a nearly-perfect thriller character: physically imposing, intelligent, deeply moral, and free. Child coauthored the 25th book in the series with his younger brother and fellow novelist Andrew Grant, who will take over the series under the pen name Andrew Child — ', 7, '2022-08-13 14:19:43'),
(61, ' Hour of the Assassin ', 'Matthew Quirk', 1200, 'Quirk’s former Secret Service agent Nick Averose runs a security company that breaks into secure homes to stress-test security systems. Working to test the security at the home of a former CIA director, Nick finds the man murdered — and soon finds himself on the run after being framed for the crime, desperately trying to connect the dots. As he realizes everything ties back to a presidential …', 7, '2022-08-13 14:20:46'),
(62, 'The Ancient Nine', ' Ian K. Smith', 900, 'This “based on real events” novel from Ian K. Smith has a lot going for it: secret histories inside Harvard’s walls, a mysterious disappearance, and a coveted Harlan Coben seal of approval. The Ancient Nine takes us back to Cambridge, Massachusetts, in 1988, where two unlikely friends — Dalton and Spenser — begin to uncover the dark past of the Delphic Club, Harvard’s most prestigious ', 7, '2022-08-13 14:21:26'),
(63, 'Savage Son', ' Jack Carr', 1200, 'Carr, a pseudonym for a former Navy SEAL, returns with James Reece, another former SEAL who has come to the Montana wilderness to recuperate from brain surgery. BBut Reece has enemies, including an ex–CIA officer who betrayed America and now betrays Reece: setting him up for assassination. But another old enemy, someone who wants to kill Reece personally, gets wind of the operation', 7, '2022-08-13 14:22:52'),
(64, 'Dirt Town', 'Hayley Scrivenor', 1000, 'Detective Sergeant Sarah Michaels begins her investigation of the disappearance of twelve-year-old Esther Bianchi from her home in the small rural Australian town of Durton. For Esther\'s mother Constance this is the worst thing that could possibly happen. But as the investigation continues, things get worse still. Esther\'s best friend Ronnie is doing her own investigation. Who is the strange man Esther was seen with at the creek? And why are witnesses refusing to speak to the police?', 8, '2022-08-13 14:26:05'),
(65, 'The Sleeping and the Dead ', ' Ann Cleeves', 900, 'This page-turning psychological thriller is from the pen of Ann Cleeves, author of three outstanding TV series – Shetland, Vera and The Long Call. The body of a teenager has been found, and Detective Peter Porteous is called to Cranwell Lake. After studying the missing persons files, he concludes that the dead man is Michael Grey, a mysterious young man reported missing by his foster parents back in the early 70s. A news report of the crime leaves  prison officer Hannah Morton reeling. ', 8, '2022-08-13 14:26:54'),
(66, 'The Murders at Fleat House ', 'Lucinda Riley', 800, 'The sudden death of a pupil in Fleat House at St Stephen’s – a small private boarding school in deepest Norfolk – is a shocking event that the headmaster is very keen to call a tragic accident. But the local police cannot rule out foul play and the case prompts the return of high-flying Detective Inspector Jazmine ‘Jazz’ Hunter to the force. Jazz begins to probe the circumstances surrounding Charlie Cavendish’s tragic death, but events soon take another troubling turn when Charlie is exposed as an arrogant bully, giving those around him a motive to switch the drugs he took daily to control his epilepsy.', 8, '2022-08-13 14:27:33'),
(67, 'Daisy Darker', 'Alice Feeney', 900, 'Daisy Darker is arriving at her grandmother’s house for her eightieth birthday. It is Halloween, and Seaglass – the crumbling Cornish house perched upon its own tiny private island – is at one with the granite rocks it sits on. The Darker family haven’t all been in the same place for over a decade, and when the tide comes in they’ll be cut off from the rest of the world for eight hours. When the tide goes back out, nothing will ever be the same again, because one of them is a killer . . .', 8, '2022-08-13 14:28:14'),
(68, 'In Cold Blood Novel', 'Truman Capote', 800, 'In Cold Blood is a non-fiction novel by American author Truman Capote, first published in 1966. It details the 1959 murders of four members of the Clutter family in the small farming community of Holcomb, Kansas', 8, '2022-08-13 14:29:22'),
(69, 'Trekking in the Himalaya', 'Kev Reynolds', 700, 'From K2 and Nanga Parbat in Pakistan, to Mount Kailash in Tibet, to Annapurna, Manaslu, Everest, Makalu, Kangchenjunga and many more, this book is an inspirational and detailed guide to 20 memorable expeditions in the Himalaya. The spectacular surroundings covered by the treks cannot fail to encourage trekkers to take on a journey to the greatest of mountain ranges. The treks described within this guide range from the popular to the little-known, and from gentle treks on good paths at a moderate altitude, to long and challenging routes. All of them share the scenic magnificence for which the Himalaya is justly known, as well as the sense of adventure that accompanies each journey. This guidebook will inspire trekkers to scale the heights of their potential.', 9, '2022-08-13 14:32:34'),
(70, 'The Almost Nearly Perfect People ', ' Michael Booth', 1200, 'Is Scandinavia really the happiest place on earth? That’s the question that journalist Michael Booth attempted to answer by traveling through the Nordic countries to investigate the truth of the Nordic model.', 9, '2022-08-13 14:33:52'),
(71, 'The Year of Living Danishly ', 'Helen Russell', 700, 'Journalist Helen Russell set herself a target: Discover the secrets of Denmark’s purported happiness within one year.\r\n\r\nRather than hang around in the international hipster community of Copenhagen, she chose instead to move to rural Denmark.\r\n\r\n', 9, '2022-08-13 14:34:45'),
(72, 'A Short Walk in the Hindu Kush', 'Eric Newby', 900, 'A Walk in the Hindu Kush, first published in 1958, is, in my opinion, one of the all-time classic travel books. What makes the book fascinating is that it tells the story of the on-foot trek the English author Eric Newby undertook through Afghanistan’s Hindu Kush mountains in 1956.', 9, '2022-08-13 14:35:28'),
(73, 'Shantaram', ' David Roberts', 900, 'So begins this epic, mesmerizing first novel set in the underworld of contemporary Bombay. Shantaram is narrated by Lin, an escaped convict with a false passport who flees maximum security prison in Australia for the teeming streets of a city where he can disappear.\r\n\r\nAccompanied by his guide and faithful friend, Prabaker, the two enter Bombay\'s hidden society of beggars and gangsters, prostitutes and holy men, soldiers and actors, and Indians and exiles from other countries, who seek in this remarkable place what they cannot find elsewhere.\r\n\r\nAs a hunted man without a home, family, or identity, Lin searches for love and meaning while running a clinic in one of the city\'s poorest slums, and serving his apprenticeship in the dark arts of the Bombay mafia. The search leads him to war, prison torture, murder, and a series of enigmatic and bloody betrayals. The keys to unlock the mysteries and intrigues that bind Lin are held by two people. The first is Khader Khan: mafia godfather, criminal-philosopher-saint, and mentor to Lin in the underworld of the Golden City. The second is Karla: elusive, dangerous, and beautiful, whose passions are driven by secrets that torment her and yet give her a terrible power.', 9, '2022-08-13 14:36:55'),
(74, 'Barbarian Days: A Surfing Life', 'William Finnegan ', 300, 'Finnegan’s Pulitzer-Prize-winning memoir about his lifelong obsession with surfing – starting in California as kid, then Hawaii as a teen, taking him right though to New York in the present (a lesser-known surf spot, certainly) – is a searing and startling paean to the sport. Yes it can seem pointless, and yes it can be punishing, but Finnegan is able to encapsulate the feeling of freedom and euphoria like few others, while also describing his own meandering personal history, which somehow transformed him from a twentysomething stoner surf-bum into a renowned political journalist for the New Yorker, particularly for his reporting from Apartheid-era South Africa.', 11, '2022-08-13 14:42:19'),
(75, 'Land of Second Chances', 'Tim Lewis', 800, 'If sport can be accused of providing neat story arcs (see intro!), or clear-cut heroes and villains, Lewis’s British Sports Book Award-winning exploration of the attempt – by a group of American former professional cyclists – to set up a cycling team in Rwanda a decade after the genocide there in which 1 million people were slaughtered, is as nuanced and fascinating as they come. Lewis, a contributing editor to Esquire, spent time in Rwanda with the would-be riders, including the talented Adrien Niyonshuti, who lost six brothers in the 1994 genocide,', 11, '2022-08-13 15:00:34'),
(76, 'Football Against The Enemy ', ' Simon Kuper ', 900, 'Financial Times columnist Simon Kuper wrote this accomplished and quirky footballing travelogue when he was still only in his early 20s. And it\'s remarkably good; arguably the first and even best in the now-not-so-new wave of \'literary\' football tomes that have followed in ever-greater numbers. Kuper travels to 22 countries to find out how football has shaped individual national politics and culture – and vice versa – meeting players, politicians and picking up anecdotes and observations along the way. ', 11, '2022-08-13 15:01:54'),
(77, 'Addicted ', 'Tony Adams', 700, 'Adams was still a regular for Arsenal and England when his jaw-droppingly frank autobiography was published at the start of the 1998–99 season. His drinking problem destroyed him personally yet seemed to leave his football unaffected (wearing bin bags under training kit to sweat out the booze served him well). If any stories were left out, they must have been truly hideous. Here are remembrances of picking through jeans on the bedroom floor to find the least-piss-soaked pair to wear. Expect fights, prostitutes, broken lives, redemption.', 11, '2022-08-13 15:02:35'),
(78, 'Muhammad Ali ', 'Various', 2300, 'The Greatest has a whole shelf to himself in the sporting library (including, naturally, The Greatest Coloring Book of All Time). Four books in particular stand out, together covering every angle you could wish for. Jonathan Eig’s Ali: a Life (2017) is the best cradle-to-grave account, as good on the flaws as the fabulous. King of the World: Muhammad Ali and the Rise of an American Hero (1999) by David Remnick focuses on the Clay-becomes-Ali era of the early Sixties. The Fight (1975) is Norman Mailer’s amazing retelling of the Rumble in the Jungle, and the giant, glossy Greatest of all Time (2003; 2010 reprint) by Taschen, is the coffee table book to top them all.', 11, '2022-08-13 15:03:36'),
(79, 'A Beautiful Mind', ' Sylvia Nasar', 600, 'This biography of esteemed mathematician John Nash was both a finalist for the 1998 Pulitzer Prize and the basis for the award-winning film of the same name. Nasar thoroughly explores Nash’s prestigious career, from his beginnings at MIT to his work at the RAND Corporation — as well the internal battle he waged against schizophrenia, a disorder that nearly derailed his life.', 12, '2022-08-13 15:04:52'),
(80, 'Alan Turing', ' Andrew Hodges', 700, 'Hodges’ 1983 biography of Alan Turing sheds light on the inner workings of this brilliant mathematician, cryptologist, and computer pioneer. Indeed, despite the title (a nod to his work during WWII), a great deal of the “enigmatic” Turing is laid out in this book. It covers his heroic code-breaking efforts during the war, his computer designs and contributions to mathematical biology in the years following, and of course, the vicious persecution that befell him in the 1950s — when homosexual acts were still a crime punishable by English law.', 12, '2022-08-13 15:05:42'),
(81, 'Frida', 'Hayden Herrera', 500, 'Herrera’s 1983 biography of renowned painter Frida Kahlo, one of the most recognizable names in modern art, has since become the definitive account on her life. And while Kahlo no doubt endured a great deal of suffering (a horrific accident when she was eighteen, a husband who had constant affairs), the focal point of the book is not her pain. Instead, it’s her artistic brilliance and immense resolve to leave her mark on the world — a mark that will not soon be forgotten, in part thanks to Herrera’s dedicated work.', 12, '2022-08-13 15:06:34'),
(82, ' The Immortal Life of Henrietta Lacks', 'Rebecca Skloot', 1500, 'Perhaps the most impressive biographical feat of the twenty-first century, The Immortal Life of Henrietta Lacks is about a woman whose cells completely changed the trajectory of modern medicine. Rebecca Skloot skillfully commemorates the previously unknown life of a poor black woman whose cancer cells were taken, without her knowledge, for medical testing — and without whom we wouldn’t have many of the critical cures we depend upon today.', 12, '2022-08-13 15:07:17'),
(83, 'Steve Jobs', 'Walter Isaacson', 1200, 'The man, the myth, the legend: Steve Jobs, co-founder and CEO of Apple, is properly immortalized in Isaacson’s masterful biography. It divulges the details of Jobs’ little-known childhood and tracks his fateful path from garage engineer to leader of one of the largest tech companies in the world — not to mention his formative role in other legendary companies like Pixar, and indeed within the Silicon Valley ecosystem as a whole.', 12, '2022-08-13 15:07:57'),
(84, 'Ragnar Lothbrok', 'Adam West', 1200, 'Ragnar Lodbrok, according to legends, was a Viking hero and a Danish and Swedish king. He is known from Old Norse poetry of the Viking Age, Icelandic sagas, and near-contemporary chronicles.', 12, '2022-08-13 15:09:41'),
(85, 'Batman: The Killing Joke', 'Alan Moore', 1200, 'Batman: The Killing Joke is a 1988 DC Comics one-shot graphic novel featuring the characters Batman and the Joker written by Alan Moore and illustrated by Brian Bolland.', 23, '2022-08-13 15:12:49'),
(86, 'Extremis', 'Warren Ellis', 1100, 'Extremis is a six-issue story arc from the comic book series Iron Man, published in issues one through six in 2005 and 2006 by Marvel Comics. It was written by Warren Ellis and illustrated by Adi Granov. Extremis elevates the status quo for Iron Man, increasing the power of his armor significantly.', 23, '2022-08-13 15:13:51'),
(87, 'Nimona', 'ND Stevenson', 1200, 'Nimona is a fantasy graphic novel by ND Stevenson, an American cartoonist. The story follows Nimona, a shapeshifter who joins the villain Ballister Blackheart in his plans to destroy the over-controlling Institute. Blackheart tries to operate under his code of ethics, while Nimona has no problem with killing.', 23, '2022-08-13 15:14:50'),
(88, ' Deadpool: Bad Blood', 'Chad Bowers, Rob Liefeld', 1500, 'Thumper was supposed to be Canada’s answer to the Winter Soldier, a programmable killing machine who can assassinate any target! There’s only one problem: On each mission, he goes rogue and hunts down Deadpool instead! That’s bad news for Canada — and even worse news for Wade Wilson, who’s no fan of the near-fatal beatings that Thumper administers every chance he gets! Now, with old pal Garrison Kane by his side, Deadpool faces the ultimate rematch against Thumper — but can he survive long enough to learn the truth about his single-minded nemesis?\r\n\r\n', 23, '2022-08-13 15:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categorieId` int(12) NOT NULL,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(1, 'Romance', 'Romance novels are based on the idea of an innate emotional justice—the notion that good people in the world are rewarded and evil people are punished. In a romance, the lovers who risk and struggle for each other and their relationship are rewarded with emotional justice and unconditional love.', '2022-08-01 18:49:14'),
(2, 'Horror', 'horror story, a story in which the focus is on creating a feeling of fear. Such tales are of ancient origin and form a substantial part of the body of folk literature. They can feature supernatural elements such as ghosts, witches, or vampires, or they can address more realistic psychological fears.\r\n', '2021-03-17 18:17:14'),
(3, 'Thriller', 'The universal theme or CONTROLLING IDEA of a Thriller story is: Life is preserved when the protagonist succeeds in unleashing their unique gift, but death or damnation triumphs when they fail to do so.\r\n', '2021-03-17 18:17:43'),
(4, 'Manga', 'To put it briefly, manga is the Japanese word for comics published in Japan. The word itself is comprised of two characters: man 漫 meaning “whimsical” and ga 画 meaning “pictures.”', '2021-03-17 18:19:10'),
(5, 'Historical', 'In historical fiction at its best, a theme arises out of true historical events and characters, and that theme is what the work is about. It\'s not about the historical characters, except as their actions coincide with the theme.', '2021-03-17 21:58:58'),
(6, 'Sci-Fi', 'Science fiction authors often play off of Albert Einstein\'s theories to imagine methods of time or space travel. The most common science fiction themes are those of alternate realities, possible future worlds, and of characters that have abilities beyond those of ordinary humans.', '2021-03-18 07:55:28'),
(7, 'Action', 'The universal theme or CONTROLLING IDEA of an action story is: Life is preserved when the protagonist makes a sacrifice to overpower or outwit their external and internal antagonists.  For mystery writers a major theme is “crime does not pay.” A minor theme might be “overcoming adversity”—despite failed relationships a character finds a new romance', '2021-03-18 08:06:30'),
(8, 'Crime', 'The universal theme or CONTROLLING IDEA of a Crime story is: Justice prevails when the protagonist overpowers or outwits his/her antagonist to reveal the truth.', '2021-03-18 08:13:47'),
(9, 'Travel', 'Travel is one of literature\'s most basic themes. Literature records the movement of human beings or the imagery created by human beings both in space and time. The essence of this movement is travel.', '2022-08-01 18:54:17'),
(11, 'Sports', 'Sports teaches many important values which can reshape the foundation of human society. By participating in sports, one learn that there are no barriers in terms of social, political and ethnic aspects. Sports plays a crucial role in individual level also as it encourage them to stay overall active', '2022-08-01 18:56:58'),
(12, 'Biography', 'Whenever a biography is written, it usually focuses on a theme, or a recurring idea, that centers around the person\'s fame and/or importance. Some themes that are commonly seen in biographies are: rising above challenges, always being yourself, never giving up, and resilience in the face of adversity.', '2022-08-01 18:56:58'),
(23, 'Comics', 'a magazine containing sequences of comic strips —usually hyphenated in attributive use.', '2022-08-03 13:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT 0 COMMENT 'If problem is not related to the order then order id = 0',
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactId`, `userId`, `email`, `phoneNo`, `orderId`, `message`, `time`) VALUES
(1, 3, 'baruwal20@gmail.com', 9812314344, 1, 'asasdasd', '2022-08-13 18:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `contactreply`
--

CREATE TABLE `contactreply` (
  `id` int(21) NOT NULL,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactreply`
--

INSERT INTO `contactreply` (`id`, `contactId`, `userId`, `message`, `datetime`) VALUES
(1, 1, 3, 'yes      ', '2022-08-13 18:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `deliveryBoyName` varchar(35) NOT NULL,
  `deliveryBoyPhoneNo` bigint(25) NOT NULL,
  `deliveryTime` int(200) NOT NULL COMMENT 'Time in minutes',
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliverydetails`
--

INSERT INTO `deliverydetails` (`id`, `orderId`, `deliveryBoyName`, `deliveryBoyPhoneNo`, `deliveryTime`, `dateTime`) VALUES
(1, 1, 'Ram', 234234234234, 2, '2022-08-02 21:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `bookId` int(21) NOT NULL,
  `itemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `bookId`, `itemQuantity`) VALUES
(2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `amount` int(200) NOT NULL,
  `paymentMode` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=cash on delivery, \r\n1=online ',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0' COMMENT '0=Order Placed.\r\n1=Order Confirmed.\r\n2=Preparing your Order.\r\n3=Your order is on the way!\r\n4=Order Delivered.\r\n5=Order Denied.\r\n6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `address`, `zipCode`, `phoneNo`, `amount`, `paymentMode`, `orderStatus`, `orderDate`) VALUES
(1, 3, 'itaharu, asdasd', 234234, 9812411241, 1300, '0', '6', '2022-08-01 19:14:47'),
(2, 3, 'hill, mountain', 234234, 2342423442, 1500, '0', '0', '2022-08-03 18:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `sitedetail`
--

CREATE TABLE `sitedetail` (
  `tempId` int(11) NOT NULL,
  `systemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(21) NOT NULL,
  `contact2` bigint(21) DEFAULT NULL COMMENT 'Optional',
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitedetail`
--

INSERT INTO `sitedetail` (`tempId`, `systemName`, `email`, `contact1`, `contact2`, `address`, `dateTime`) VALUES
(1, 'BookMania.', 'Bookmania@gmail.com', 9823423423, 9823423444, 'Itahari, Sunsari<br> Province 1', '2021-03-23 19:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(21) NOT NULL,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(21) NOT NULL,
  `lastName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user\r\n1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 1111111111, '1', '$2y$10$AAfxRFOYbl7FdN17rN3fgeiPu/xQrx6MnvRGzqjVHlGqHAM4d9T1i', '2021-04-11 11:40:58'),
(3, 'aman', 'user', 'user', 'baruwal20@gmail.com', 1234234234, '0', '$2y$10$t.oC2NaawH2byWWfd8yFuOlziw3NolnpO07fXuJ0R90wKwi0buzuu', '2022-08-01 10:57:19'),
(4, 'user1', 'sadiksha', 'baniya', '123@gmail.com', 3423423423, '0', '$2y$10$H503J4rDzKHqGVkd3/K/oeg8IsmOllCw.wNbueoDyo6wiX42rVGj6', '2022-08-13 19:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `viewcart`
--

CREATE TABLE `viewcart` (
  `cartItemId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewcart`
--

INSERT INTO `viewcart` (`cartItemId`, `bookId`, `itemQuantity`, `userId`, `addedDate`) VALUES
(4, 6, 1, 3, '2022-08-07 15:38:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookId`);
ALTER TABLE `book` ADD FULLTEXT KEY `bookName` (`bookName`,`bookDesc`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorieId`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `contactreply`
--
ALTER TABLE `contactreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `sitedetail`
--
ALTER TABLE `sitedetail`
  ADD PRIMARY KEY (`tempId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cartItemId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categorieId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactreply`
--
ALTER TABLE `contactreply`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sitedetail`
--
ALTER TABLE `sitedetail`
  MODIFY `tempId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cartItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
