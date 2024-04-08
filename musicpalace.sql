-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 06:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0
CREATE DATABASE musicpalace;
USE musicpalace;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicpalace`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`) VALUES
(1, 'engian', 'testing'),
(2, 'jiakeen', '123'),
(3, 'jiaern', '123'),
(4, 'joshua', '123'),
(5, 'gulin', '123'),
(9, 'tanengian', '123'),
(10, '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_ID` varchar(300) NOT NULL,
  `Item_name` varchar(500) NOT NULL,
  `Item_description` text DEFAULT NULL,
  `Item_price` float NOT NULL,
  `Item_category` varchar(500) NOT NULL,
  `Item_img` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_ID`, `Item_name`, `Item_description`, `Item_price`, `Item_category`, `Item_img`) VALUES
('EG001', 'Fender Limited Edition Player Jazzmaster Electric Guitar, Pau Ferro FB, Ice Blue Metallic', 'With a fat, thick sound all its own and sleek, elegant style, the Player Jazzmaster stands out under the spotlight. It’s an inspiring instrument with a flexible, authentic Fender tone—a voice that works with any kind of music. The Jazzmaster keeps turning up in the hands of musical visionaries and rebels; it’s the ideal foundation for your sound. Rugged, raw and powerful, this guitar is ready to throw down.', 4430, 'Electric Guitar', 'eg1.jpg'),
('EG002', 'Fender Limited Edition Player Stratocaster Electric Guitar, Maple FB, Lake Placid Blue', 'The inspiring sound of a Stratocaster is one of the foundations of Fender. Featuring this classic sound—bell-like high end, punchy mids and robust low end, combined with crystal-clear articulation—the Player Stratocaster is packed with authentic Fender feel and style. It’s ready to serve your musical vision, it’s versatile enough to handle any style of music and it’s the perfect platform for creating your own sound.', 3960, 'Electric Guitar', 'eg2.jpg'),
('EG003', 'Fender Limited Edition Player Stratocaster Electric Guitar, Pau Ferro FB, Fiesta Red', 'The inspiring sound of a Stratocaster is one of the foundations of Fender. Featuring this classic sound—bell-like high end, punchy mids and robust low end, combined with crystal-clear articulation—the Player Stratocaster is packed with authentic Fender feel and style. It’s ready to serve your musical vision, it’s versatile enough to handle any style of music and it’s the perfect platform for creating your own sound.', 3960, 'Electric Guitar', 'eg3.jpg'),
('EG004', 'Fender Kurt Cobain Jag-Stang Left-handed Electric Guitar, RW FB, Sonic Blue', 'Commemorating the 30th anniversary of Nirvana’s seminal record “Nevermind,” this Jag-Stang Left-Hand comes equipped with the same features that made it Kurt’s ideal instrument. The alder body delivers a punchy tone perfect for big power chords, the 24” short-scale reduces string tension for easier playing, and the 7.25” radius rosewood fingerboard with maple neck has a comfortable feel that won’t fatigue your hands when chording. The vintage-style single-coil and custom humbucking pickups are pe', 5955, 'Electric Guitar', 'eg4.jpg'),
('EG005', 'Fender Limited Edition Player Plus Top Telecaster Electric Guitar, Maple FB, Blue Burst', 'Bold, innovative and rugged, the Player Telecaster is pure Fender, through and through. The feel, the style and, most importantly, the sound—they’re all there, waiting for you to make them whisper or wail for your music. Versatile enough to handle almost anything you can create and durable enough to survive any gig, this workhorse is a trusty sidekick for your musical vision.', 3960, 'Electric Guitar', 'eg5.jpg'),
('EG006', 'Fender Limited Edition Player Telecaster HH Electric Guitar, Maple FB, Surf Pearl', 'Perfect for pummeling musical assaults, the Player Telecaster HH is pure Fender, through and through. The feel, the style and, most importantly, the sound—they’re all there, waiting for you to make them whisper or scream for your music. Flexible enough to handle almost anything you can create and durable enough to survive any gig, this workhorse is a trusty sidekick for your musical vision.', 4115, 'Electric Guitar', 'eg6.jpg'),
('EG007', 'Fender Player Plus HSS Stratocaster Electric Guitar, PF FB, Belair Blue (B-Stock)', 'Fusing classic Fender design with player-centric features and exciting new finishes, the Player Plus Stratocaster HSS delivers superb playability and unmistakable style. The powerful Player Plus humbucking pickup delivers the perfect balance of gain and definition, while the Player Plus Noiseless Strat® pickups are bright and touch sensitive, offering classic Strat tone without hum. A push-pull tone controls activate coil-split mode for the humbucking pickup, delivering crystal-clear single-coil', 4800, 'Electric Guitar', 'eg7.jpg'),
('EG008', 'Fender Japan Elemental Jazzmaster HH Electric Guitar, RW FB, Nimbus White', 'Equipped with two Modern Modified Humbucking Pickups that cover everything from light and natural clean sound to powerful distortion sound, and it is also compatible with amplifiers and pedals. It is possible to easily create the intended sound of the player. The 12-inch radius fingerboard and medium jumbo frets, and the neck specification of the compound back from \"C\" to \"D\" support comfortable playability from chord stroke to fast playing. In addition, the combination of Fender® Standard Cast/', 5385, 'Electric Guitar', 'eg8.jpg'),
('EG009', 'Fender Japan Elemental Jazzmaster HH Electric Guitar, RW FB, Stone Black', 'Equipped with two Modern Modified Humbucking Pickups that cover everything from light and natural clean sound to powerful distortion sound, and it is also compatible with amplifiers and pedals. It is possible to easily create the intended sound of the player. The 12-inch radius fingerboard and medium jumbo frets, and the neck specification of the compound back from \"C\" to \"D\" support comfortable playability from chord stroke to fast playing. In addition, the combination of Fender® Standard Cast/', 5385, 'Electric Guitar', 'eg9.jpg'),
('EG010', 'Fender Japan Elemental Telecaster HH Electric Guitar, RW FB, Nimbus White', 'Equipped with two Modern Modified Humbucking Pickups that cover everything from light and natural clean sound to powerful distortion sound, and it is also compatible with amplifiers and pedals. It is possible to easily create the intended sound of the player. The 12-inch radius fingerboard and medium jumbo frets, and the neck specification of the compound back from \"C\" to \"D\" support comfortable playability from chord stroke to fast playing. In addition, the combination of Fender® Standard Cast/', 5385, 'Electric Guitar', 'eg10.jpg'),
('AG001', 'Fender Villager 12-String Acoustic Guitar (B-Stock)', 'Best suited for the working musician, the Village 12-string which was first introduced back in 1965 is a distinctive guitar unlike anything else Fender has produced. Sticking out thanks to its maple neck with \"hockey stick\" headstock, this modern iteration stays true to the Villagers look but updates it with necessary electronics and various appointments. A tasteful rosette, gold pickguard, and black dotted bridge pins are just the beginning of this elegant offering, benefiting from the use of ', 1528, 'Acoustic Guitar', 'ag1.jpg'),
('AG002', 'Gretsch G9500 Limited Edition Jim Dandy Acoustic Guitar, Nocturne Blue', 'Perfect for both picked and fingerstyle playing, the Jim Dandy features a non-cutaway basswood body with X-bracing for a powerful and resonant voice and a top-load walnut bridge with compensated synthetic bone saddle for even intonation along the length of the neck. Joining the body at the 12th fret, the “C”-shape nato neck hosts a comfortable, smooth-playing walnut fingerboard with vintage-style frets and Pearloid dot inlays.\r\n\r\nWrapped in a remarkable Nocturne Blue finish, the G9500 also has 1', 860, 'Acoustic Guitar', 'ag2.jpg'),
('AG003', 'Fender American Acoustasonic Jazzmaster Acoustic-Electric Guitar w/Bag, Ebony FB, Bourbon Burst', 'The American Acoustasonic® Jazzmaster® All-Mahogany offers players even more tonal possibilities to the seemingly endless sonic range of our groundbreaking Acoustasonic® platform. Equipped with the revolutionary Fender and Fishman®-designed Acoustic Engine and constructed entirely of mahogany, this powerful guitar goes from acoustic shape-shifting to electric rhythm tones, all with balanced highs, focused mid-range and pronounced bass response. Continuing our legacy of purposeful innovation, thi', 9185, 'Acoustic guitar, Electric Guitar', 'ag3.jpg'),
('AG004', 'Gretsch G9500 Limited Edition Jim Dandy Acoustic Guitar, Frontier Stain', 'Crackerjack quality for a steal! Faithful to the Gretsch® “Rex” parlour guitars of the 1930s, ‘40s and ‘50s, the G9500 Limited Edition Jim Dandy™ Flat Top parlour-style model embodies everything that was great about the beloved “first guitar.”Perfect for both picked and fingerstyle playing, the Jim Dandy features a non-cutaway basswood body with X-bracing for a powerful and resonant voice and a top-load walnut bridge with compensated synthetic bone saddle for even intonation along the length of ', 860, 'Acoustic Guitar', 'ag4.jpg'),
('AG005', 'Fender American Acoustasonic Jazzmaster Acoustic-Electric Guitar w/Bag, Ebony FB, Natural', 'The American Acoustasonic® Jazzmaster® All-Mahogany offers players even more tonal possibilities to the seemingly endless sonic range of our groundbreaking Acoustasonic® platform. Equipped with the revolutionary Fender and Fishman®-designed Acoustic Engine and constructed entirely of mahogany, this powerful guitar goes from acoustic shape-shifting to electric rhythm tones, all with balanced highs, focused mid-range and pronounced bass response. Continuing our legacy of purposeful innovation, thi', 9185, 'Acoustic Guitar, Electric Guitar', 'ag5.jpg'),
('AG006', 'Fender American Acoustasonic Telecaster Guitar w/Bag, Ebony FB, Bourbon Burst', 'The American Acoustasonic® Telecaster® All-Mahogany offers players even more tonal possibilities to the seemingly endless sonic range of our groundbreaking Acoustasonic® platform. Equipped with the revolutionary Fender and Fishman®-designed Acoustic Engine and constructed entirely of mahogany, this powerful guitar goes from acoustic shape-shifting to electric rhythm tones, all with balanced highs, focused mid-range and pronounced bass response. Continuing our legacy of purposeful innovation, thi', 9185, 'Acoustic Guitar', 'ag6.jpg'),
('AG007', 'Fender FSR American Acoustasonic Jazzmaster Acoustic Guitar w/bag, Ebony FB, Black Paisley', 'The American Acoustasonic® Jazzmaster® represents the next phase of purposeful innovation that drives Fender acoustic guitars. The power of the Fender and Fishman®-designed Acoustic Engine is sure to deliver true inspiration. From acoustic shapeshifting to electric rhythm tones, this extremely versatile guitar opens a new door to discovering endless sonic possibilities.', 9500, 'Acoustic Guitar', 'ag7.jpg'),
('AG008', 'Fender FSR American Acoustasonic Jazzmaster Acoustic Guitar w/bag, Ebony FB, Shell Pink', 'The American Acoustasonic® Jazzmaster® represents the next phase of purposeful innovation that drives Fender acoustic guitars. The power of the Fender and Fishman®-designed Acoustic Engine is sure to deliver true inspiration. From acoustic shapeshifting to electric rhythm tones, this extremely versatile guitar opens a new door to discovering endless sonic possibilities.', 9185, 'Acoustic Guitar', 'ag8.jpg'),
('AG009', 'Epiphone Masterbilt Century Zenith Roundhole Acoustic Guitar, Vintage Sunburst (B-Stock)', 'Epiphone, the leader in affordable professional archtop guitars, reinvents the archtop again by combining its original, time-tested designs with 21st-century acoustic guitar electronics to bring you the new Masterbilt Century Collection™. The first collection of archtop “acoustic/electric” guitars was designed to be played and amplified as true acoustic instruments.\r\n\r\nNow with the eSonic™ HD preamp and Shadow NanoFlex™ HD Under-saddle pickup, you can plug in any Masterbilt Century archtop acous', 2730, 'Acoustic Guitar', 'ag9.jpg'),
('AG010', 'PRS SE T40E Tonare Hollow Body Acoustic Guitar, Tobacco Sunburst (B-Stock)', 'The PRS SE T40E pairs ovangkol back and sides with a solid spruce top for a full, lush tone. When matched with PRS hybrid“X”/Classical bracing, which allows the top to freely vibrate, the SE T40E’s voice projects with breathtaking volume and delicate nuance. The Tonare Grand body shape delivers a familiar feel and a thunderous tone, well suited for picking and fingerstyle playing.\r\n\r\nPlugged in, the Fishman GT1 pick up system delivers a dynamic, organic tone and allows players to easily take thi', 2480, 'Acoustic Guitar', 'ag10.jpg'),
('K001', 'Roland BK-5 Backing Keyboard', 'The BK-5 debuted as THE one keyboard for keyboardists out there. It is capable of reproducing incredible sounds and tones with outstanding features; to achieve the \"one-man\" band goal. The BK-5 is suitable for both professionals and beginners alike.', 5090, 'Backing Keyboard', 'k1.jpg'),
('K002', 'Arturia MiniBrute 2 Semi-modular Analog Synthesizer', 'MiniBrute 2 has evolved from the legendary monosynth that revolutionized the analog scene with its mixable waveforms, Steiner-Parker filter, and Brute Factor. Now with semi-modular architecture, you can splice its genome and expand its raw power into the world of Eurorack modular. Born from the lineage of its predecessor, MiniBrute 2 is an adaptable, dynamic synth with semi-modular architecture and huge connectivity. This is synth evolution.\r\n\r\nFrom the earliest electronic instruments, synthesiz', 2190, 'Keyboard Synthesizers', 'k2.jpg'),
('K003', 'Roland Fantom 8 Professional Workstation (88 Keys)', 'FANTOM is a new kind of creative hub, made for rapid production and expressive performance. Inspiring onboard production tools and deep computer integration fuel an experience that feels intuitive, natural, and full of possibilities. The expandable sound engine delivers our best electronic and acoustic sounds, with the depth and control to combine and shape them in exciting new ways. And it’s built from premium materials, with a purposeful design, and the best 61-, 76-, and 88-note keyboards Rol', 16840, 'Backing Keyboards', 'k3.jpg'),
('K004', 'Alesis Harmony 61 MKII 61-Key Portable Arranger Keyboard with built-in Speakers', 'The Alesis Harmony 61 MKII keyboard has 61 piano-style keys, built-in speakers, and 300 built-in sounds covering a wide variety of instruments--pianos, strings, brass, woodwinds, percussion, mallets, guitars, synths, even sound effects! You can layer multiple sounds together in “Dual” mode, or split two sounds across the keyboard in “Split” mode. Harmony 61 MKII also has 40 built-in demo songs and 300 built-in accompaniment rhythms that enable you to instantly create songs in a wide variety of g', 610, 'Backing Keyboards', 'k4.jpg'),
('K005', 'Yamaha PSS-F30 37-key Mini-key Keyboard', 'Featuring a wide range of beautiful sounds only Yamaha could create, an automatic accompaniment function that exposes your child to different styles of music, a keyboard specifically designed for their smaller hands, and a preset library of famous tunes, the PSS-F30 is full of fun stuff to help them learn.', 260, 'Keyboard Synthesizers', 'k5.jpg'),
('K006', 'Roland JUNO-DS76 Synthesizer', 'When you’re racing between rehearsals, sessions, and shows, you don’t have time to deal with a bulky, complex synth that’s difficult to use. The Roland JUNO-DS76 is the portable modern synth that can keep up with your busy band life. Lightweight, compact, and powerful, this 76-note instrument is always ready to go, with easy operation and instant access to pro onboard sounds that let you create or perform music anywhere, from studio to stage. And with its extended-range keyboard, the JUNO-DS76 i', 5390, 'Keyboard Synthesizers', 'k6.jpg'),
('K007', 'Roland BK-3 Backing Keyboard, Black', 'Perfect for solo entertainers and home hobbyists alike, the BK-3 Backing Keyboard brings a new level of performance to entry-level auto-accompaniment instruments. Featuring a wide range of quality onboard sounds and rhythms, song playback via USB memory, built-in speakers, and more, this portable, self-contained keyboard puts the power of a full ensemble under your fingertips. From one-person shows to social gatherings to personal practice, the BK-3 brings endless hours enjoyment for playing all', 2070, 'Backing Keyboards', 'k7.jpg'),
('K008', 'Behringer ODYSSEY 37-Key Analog Synthesizer, UK Plug', 'An ultra-affordable homage to the legendary ARP* synthesizer of the ’70s and beyond with all the features of the original and then some including: dual VCOs; 32-step sequencer with onboard storage; arpeggiator and world-class Klark Teknik FX that boast reverb, chorus, flanger, delay, pitch shifter and multi-effects, the ODYSSEY lets you conjure up virtually any sound with incredible finesse and ease. With its 37 semi-weighted full-size keys, pure analog signal path based on authentic VCO, VCF an', 1890, 'Keyboard Synthesizers', 'k8.jpg'),
('K009', 'Arturia Microfreak Hybrid Synthesizer', 'A synthesizer like no other, MicroFreak is a peculiar, exceptional instrument that rewards the curious musician. It blends wavetable and digital oscillators with analog filters. It features a unique poly-aftertouch flat keyboard. It adds controlled randomness to sequences.\r\n\r\nIt’s been designed to be fun, naughty, easy-to-use, and a blank canvas for the sound designers. MicroFreak is here to break all the rules. It’s fun, inspirational, different, yet affordable enough to find a home in any stud', 1475, 'Keyboard Synthesizers', 'k9.jpg'),
('K010', 'Novation Ultranova Synthesizer', 'The UltraNova is the new generation of Novations iconic Nova range of synthesizers. It packs the massive Nova sound into a compact body with a 12-band vocoder and a dynamic gooseneck microphone. A new \"Touch\" performance system places deep control of the synth right at your fingertips giving you incredible new ways to play, create and perform. UltraNova also ships with a patch librarian that can be hosted on Mac or PC. This enables the user to save an unlimited number patches to the host comput', 1965, 'Keyboard Synthesizers', 'k10.jpg'),
('DP001', 'Alesis Prestige Artist 88-Key Digital Piano, Bundle Set', 'Bring home an authentic piano-playing experience with the Alesis Prestige Artist, a full-featured digital piano with graded hammer-action keys and 30 incredibly realistic built-in sounds. This is the perfect substitute for owning a full-size acoustic piano, with premium multi-sampled voices, 256 max polyphony, and a custom-voiced 50W micro-array speaker system that sounds full and brilliant regardless of room position and surface placement. The Prestige Artist’s sturdy design is substantial yet ', 2199, 'Digital Pianos', 'dp1.jpg'),
('DP002', 'Korg PA300 61-Key Arranger Keyboard', 'The Pa300 is the latest keyboard in the KORG Pa series of internationally acclaimed and bestselling musical arrangers. It’s compact, inexpensive and powerful, with the most up-to-date collection of quality sounds and Styles. Using the built in Styles, you can quickly and easily play along with a backing band or even create your own music. The Pa300 is not only fun to play any time you like, but it’s the ideal way for people of all ages to write and perform music!', 3475, 'Digital Pianos', 'dp2.jpg'),
('DP003', 'Casio CDP-S110 88-Key Digital Piano, Black, Bundle Set', 'The CDP-S110 is the entry-level model in the CDP-S digital piano series and offers an impressive range of features: authentic keyboard, sound generation and an impressive speaker system. Not only is the CASIO digital piano compatible with the Chordana Play for Piano app, the option for battery operation means it is super lightweight. Plus, the portable CDP-S100 can be converted into an attractive standing model using the optional CS-46 stand.', 2359, 'Digital Pianos', 'dp3.jpg'),
('DP004', 'Roland RD-2000 88-key Stage Piano', 'Equipped with two independent sound engines, premium action, and advanced controller features, the Roland RD-2000 delivers unmatched performance on stage and in the studio. Blending evolved piano technologies with extensive modern control, this next-generation instrument takes the industry-standard stage piano series to new levels of inspiration and creativity. Version 1.50 software adds new sounds joining the latest piano models already onboard as well as historic RD stage piano series availabl', 13485, 'Digital Pianos', 'dp4.jpg'),
('DP005', 'Nord Piano 5 73-key Stage Piano', 'The latest edition of our award-winning Piano series is equipped with dual piano engines, dual sample synths and twice the memory of the previous generation. With the combination of a premium Triple Sensor keybed and our exclusive Virtual Hammer Action Technology, the portable Nord Piano 5 delivers an exceptional playing experience.', 12950, 'Digital Pianos', 'dp5.jpg'),
('DP006', 'Nord Piano 5 88-key Stage Piano', 'The latest edition of our award-winning Piano series is equipped with dual piano engines, dual sample synths and twice the memory of the previous generation. With the combination of a premium Triple Sensor keybed and our exclusive Virtual Hammer Action Technology, the portable Nord Piano 5 delivers an exceptional playing experience.', 13570, 'Digital Pianos', 'dp6.jpg'),
('DP007', 'Alesis Prestige Artist 88-Key Digital Piano with Graded Hammer Action Keys', 'Bring home an authentic piano-playing experience with the Alesis Prestige Artist, a full-featured digital piano with graded hammer-action keys and 30 incredibly realistic built-in sounds. This is the perfect substitute for owning a full-size acoustic piano, with premium multi-sampled voices, 256 max polyphony, and a custom-voiced 50W micro-array speaker system that sounds full and brilliant regardless of room position and surface placement. The Prestige Artist’s sturdy design is substantial yet ', 2450, 'Digital Pianos', 'dp7.jpg'),
('DP008', 'Yamaha P-45 88-key Digital Piano, Bundle Set', 'The P-45 features a graded hammer standard (GHS) keyboard. The P-45 has improved on the traditional AWM synthesis to deliver real piano sounds. The piano also features a keyboard with a natural feel, with black keys that feature a matte finish for authentic piano playing close to that of an acoustic piano.\r\n\r\nThe P-45 has improved on the traditional AWM synthesis to deliver real piano sounds. AWM is a technology that uses digital recordings of sources, such as actual instruments, and allows you ', 2425, 'Digital Pianos', 'dp8.jpg'),
('DP009', 'Roland FP-30X Black - 88-Key Digital Piano, Full Set', 'When quality counts but budget is a factor, the FP-30X is the sweet spot of Roland’s FP-X series. Balancing affordability with superior performance, this slim and stylish portable piano builds on the entry-level FP-10 with an enhanced sound engine, more powerful onboard speakers, and increased polyphony. Featuring Roland’s SuperNATURAL Piano technology and the same expressive 88-note PHA-4 Standard keyboard as the premium FP-60X, the FP-30X is the perfect home instrument for seasoned players. An', 3955, 'Digital Pianos', 'dp9.jpg'),
('DP010', 'Casio Casiotone LK-S250 Lighted-Key Portable Keyboard, Bundle Set', 'The ultra-compact LK-S250 lets you make music wherever and whenever you want, with a Key Lighting system so you can easily learn your favourite songs. Just pop in six AA batteries, grab the built-in carrying handle and take your inspiration to go.\r\n\r\nThe LK-S250 features 61 full-size touch-responsive keys with Casio’s Key Lighting System, making it easier than ever to learn your favourite songs. Stay in control with the easy-to-read LCD display and the \"My Setup\" button, which quickly recalls yo', 1199, 'Digital Pianos', 'dp10.jpg'),
('DR001', 'SABIAN 22089 20inch AA Molto Symphonic Suspended Cymbal', 'Smooth, shimmering sound is bright and impactful at all volumes.', 1140, 'Drums, Cymbals', 'dr1.jpg'),
('DR002', 'Alesis Strike MultiPad (B-Stock)', 'Introducing the Strike MultiPad from Alesis - the first percussion pad incredible enough to earn the Strike name. The Strike MultiPad is an incredibly capable and versatile device that far surpasses the performance and creative potential of any previous electronic drum pad. Never before has such sheer percussive power been built into a single unit or been so easy to play. SAMPLE anything you want – any sound, any effect, from anywhere. EDIT your samples and loops with the five built-in effects p', 2800, 'Drums, Electronic Drums', 'dr2.jpg'),
('DR003', 'Alesis Surge Mesh Special Edition Electronic Drum Kit', 'The Surge Mesh Special Edition is an electronic drum kit that provides everything young people need to learn to play the drums and get well fast – inspiring sounds, fun and engaging lessons, and a rock-solid kit from a brand trusted by professionals worldwide - Alesis. This eight-piece kit features mesh drum pads for quiet practice at home, a large mesh kick drum pad with a pedal, three cymbals, and a hi-hat pedal. The included Surge Drum Module packs hundreds of inspiring classic and modern dru', 2555, 'Drums, Electronic Drums', 'dr3.jpg'),
('DR004', 'Ludwig LB400BT 5x14inch Chrome-Over Brass Snare Drum, Smooth Shell, Tube Lugs', 'Ludwig’s Chrome over Brass snare drum, introduced in 1960 as the Super Ludwig, was the predecessor to the Supraphonic. The brass alloy coupled with a chrome plating offers the musical undertones favoured of brass with just the right touch of added focus and treble.\r\n\r\nThough short-lived from its original release, the COB would go on to become one of the most sought-after and in-demand drums which would lead to its re-release in the 90s.', 3700, 'Drums, Snare Drums', 'dr4.jpg'),
('DR005', 'Ludwig LE522028 Evolution 5-Piece Drum Kit w/Hardware, Platinum', 'Designed as an intermediate Drum Set, the Ludwig Element Evolution is everything an aspiring drummer needs to excel. The Evolution Series Outfit comes with double-braced hardware and is great for drummers of any age who are ready to take the next step.', 3050, 'Drums, Drum Kits', 'dr5.jpg'),
('DR006', 'Ludwig LE522024 Evolution 5-Piece Drum Kit w/Hardware, Copper', 'Designed as an intermediate Drum Set, the Ludwig Element Evolution is everything an aspiring drummer needs to excel. The Evolution Series Outfit comes with double-braced hardware and is great for drummers of any age who are ready to take the next step.', 3050, 'Drums, Drum Kits', 'dr6.jpg'),
('DR007', 'Ludwig LE522018 Evolution 5-Piece Drum Kit w/Hardware, Mint', 'Designed as an intermediate Drum Set, the Ludwig Element Evolution is everything an aspiring drummer needs to excel. The Evolution Series Outfit comes with double-braced hardware and is great for drummers of any age who are ready to take the next step.', 3050, 'Drums, Drum Kits', 'dr7.jpg'),
('DR008', 'Ludwig LE522010 Evolution 5-Piece Drum Kit w/Hardware, Cherry', 'Designed as an intermediate Drum Set, the Ludwig Element Evolution is everything an aspiring drummer needs to excel. The Evolution Series Outfit comes with double-braced hardware and is great for drummers of any age who are ready to take the next step.', 3050, 'Drums, Drum Kits', 'dr8.jpg'),
('DR009', 'Ludwig LE520024 Evolution 5-Piece Drum Kit w/Hardware, Copper', 'Designed as an intermediate Drum Set, the Ludwig Element Evolution is everything an aspiring drummer needs to excel. The Evolution Series Outfit comes with double-braced hardware and is great for drummers of any age who are ready to take the next step.', 3050, 'Drums, Drum Kits', 'dr9.jpg'),
('DR010', 'Ludwig LE520018 Evolution 5-Piece Drum Kit w/Hardware, Mint', 'Designed as an intermediate Drum Set, the Ludwig Element Evolution is everything an aspiring drummer needs to excel. The Evolution Series Outfit comes with double-braced hardware and is great for drummers of any age who are ready to take the next step.', 3050, 'Drums, Drum Kits', 'dr10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `orderAmount` int(50) NOT NULL,
  `orderName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `orderAmount`, `orderName`) VALUES
(1, 28606, 'tan eng ian'),
(2, 13438, 'Jia Ern');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
