-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2016 at 10:57 PM
-- Server version: 5.5.45-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `github`
--

-- --------------------------------------------------------

--
-- Table structure for table `reddit`
--

CREATE TABLE IF NOT EXISTS `reddit` (
  `idn` int(11) NOT NULL AUTO_INCREMENT,
  `sub` text NOT NULL,
  `origin` text NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `sourcetype` text NOT NULL,
  `created` text NOT NULL,
  PRIMARY KEY (`idn`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `reddit`
--

INSERT INTO `reddit` (`idn`, `sub`, `origin`, `title`, `content`, `sourcetype`, `created`) VALUES
(1, 'all', '/r/space/comments/4wq15s/nasas_new_high_dynamic_camera_records_sls_rocket/', 'NASA\\u2019s new High Dynamic Camera Records SLS Rocket Test', 'http://gfycat.com/FlimsyWellwornAsiaticwildass', 'other', ''),
(2, 'all', '/r/pokemongo/comments/4wr3wb/how_pokemon_go_spawns_their_commons/', 'How Pokemon GO spawns their commons', 'http://gfycat.com/ImpoliteFilthyKite', 'other', ''),
(3, 'all', '/r/pics/comments/4wonts/my_coworker_had_this_picture_taken_at_a_dodge/', 'My coworker had this picture taken at a Dodge Charger meet-up he helped organize.', 'http://imgur.com/k5GCYi1', 'other', ''),
(4, 'all', '/r/gifs/comments/4wqkvv/jenga_thug_life/', 'Jenga Thug Life', 'http://i.imgur.com/hw8l6GH.gifv', 'other', ''),
(5, 'all', '/r/reactiongifs/comments/4wqg4i/mrw_we_are_watching_our_single_friend_hit_on_a/', 'MRW we are watching our single friend hit on a girl at the bar.', 'http://i.imgur.com/CcwJ0YO.gifv', 'other', ''),
(6, 'all', '/r/aww/comments/4wqeb4/this_dog_was_born_to_dive_into_swimming_pools/', 'This dog was born to dive into swimming pools', 'http://i.imgur.com/7zvzC0m.gifv', 'other', ''),
(7, 'all', '/r/worldnews/comments/4wpa4x/delta_airlines_says_all_flights_suspended_due_to/', 'Delta airlines says all flights suspended \\"due to system outage nationwide\\"', 'http://bbc.com/news/world-us-canada-37007908?ns_mchannel=social&amp;ns_campaign=bbc_breaking&amp;ns_source=twitter&amp;ns_linkname=news_central', 'other', ''),
(8, 'all', '/r/rickandmorty/comments/4wseii/installed_windows_10_poor_edge_browser/', 'Installed Windows 10, poor Edge browser', 'http://imgur.com/NxIHVrY', 'other', ''),
(9, 'all', '/r/science/comments/4wsdog/elusive_arabian_sand_cat_spotted_after_10_years/', 'Elusive Arabian sand cat spotted after 10 years'' disappearance', 'http://newscientist.com/article/2100162-elusive-arabian-sand-cat-spotted-after-10-years-disappearance/', 'other', ''),
(10, 'all', '/r/pics/comments/4wskaz/abandoned_olympic_venues_from_around_the_world/', 'Abandoned Olympic Venues from around the world.', 'http://imgur.com/a/zDPcK', 'other', ''),
(11, 'starcraft', '/r/starcraft/comments/4wq683/david_harbour_hopper_from_stranger_things_follows/', 'David Harbour (Hopper from stranger things) follows StarCraft!', 'http://imgur.com/S1iIvmP', 'other', ''),
(12, 'starcraft', '/r/starcraft/comments/4wp441/adept_shade_wall_off/', 'Adept shade wall off', 'http://gfycat.com/MasculineAggressiveAmericanshorthair', 'other', ''),
(13, 'starcraft', '/r/starcraft/comments/4wohnv/psa_you_cant_shade_through_shades_which_means_you/', 'PSA: You can''t shade through shades. Which means you can wall shades with shades', 'http://i.imgur.com/SbVqlIP.png', 'other', ''),
(14, 'starcraft', '/r/starcraft/comments/4womv9/if_i_had_to_guess/', 'If I had to guess....', 'http://i.imgur.com/KWkBb9p.png', 'other', ''),
(15, 'starcraft', '/r/starcraft/comments/4ws8t2/blizzard_advertising_asl_in_battlenet_scbw_lobby/', 'Blizzard advertising ASL in battlenet (SCBW Lobby)', 'http://imgur.com/a/fzquM#MAKqn8E', 'other', ''),
(16, 'starcraft', '/r/starcraft/comments/4wqq7f/proleague_rumored_to_switch_to_starcraft_brood_war/', 'Proleague rumored to switch to Starcraft: Brood War', 'http://reddit.com/r/broodwar/comments/4wqpyo/httpsportsnewsnavercomesportsnewsreadnhnoid468aid0/', 'other', ''),
(17, 'starcraft', '/r/starcraft/comments/4wpi7n/i_am_not_sure_if_this_has_been_posted_here_before/', 'I am not sure if this has been posted here before but this is an awesome 3D rendering of a Reaper. Killer work!', 'http://lawanoob.gq/2016/08/08/i-am-not-sure-if-this-has-been-posted-here-before-but-this-is-an-awesome-3d-rendering-of-a-reaper-killer-work/', 'other', ''),
(18, 'starcraft', '/r/starcraft/comments/4wp2t4/almost_the_best_moment_of_my_sc2_life/', 'Almost the best moment of my SC2 life', 'http://gyazo.com/8a9ca0f9556384c7eb39e2381c1aa7b0', 'other', ''),
(19, 'starcraft', '/r/starcraft/comments/4wrxj9/the_return_of_team_acer/', 'The Return of Team Acer?', 'http://twitter.com/aceresport/status/762690802229383168?s=09', 'other', ''),
(20, 'starcraft', '/r/starcraft/comments/4wskie/golden_done_with_military_service_in_a_month/', 'Golden done with military service in a month!', 'http://twitter.com/psiPengWin/status/762659852971835392', 'other', ''),
(21, 'worldnews', '/r/worldnews/comments/4wpa4x/delta_airlines_says_all_flights_suspended_due_to/', 'Delta airlines says all flights suspended \\"due to system outage nationwide\\"', 'http://bbc.com/news/world-us-canada-37007908?ns_mchannel=social&amp;ns_campaign=bbc_breaking&amp;ns_source=twitter&amp;ns_linkname=news_central', 'other', ''),
(22, 'worldnews', '/r/worldnews/comments/4wslld/a_catholic_priest_who_sexually_abused_maybe_20/', 'A Catholic priest who sexually abused \\u201cmaybe 20\\u201d boys was instructed to say prayers to repent for his crimes: The 95-year-old said he \\u201cgot the impression that kids liked it\\u201d.', 'http://independent.co.uk/news/world/americas/priest-child-sex-abuse-pope-francis-punishment-pray-hail-mary-guam-a7178416.html', 'other', ''),
(23, 'worldnews', '/r/worldnews/comments/4wr1ta/nobelwinning_economist_joseph_stiglitz_has/', 'Nobel-winning economist Joseph Stiglitz has resigned from an advisory panel to Panama\\u2019s government set up after the Panama Papers scandal, citing lack of transparency within the committee. He said he found evidence in the papers of crimes such as money laundering for child prostitution rings.', 'http://maltatoday.com.mt/news/world/68300/stiglitz_quits_panama_papers_commission_cites_lack_of_transparency?#.V6i0qVUrLnA', 'other', ''),
(24, 'worldnews', '/r/worldnews/comments/4woyxm/pakistan_hospital_bomb_attack_kills_42_in_quetta/', 'Pakistan hospital bomb attack kills 42 in Quetta', 'http://bbc.com/news/world-asia-37007661', 'other', ''),
(25, 'worldnews', '/r/worldnews/comments/4wpqq4/majority_of_germans_against_euturkey_refugee_deal/', 'Majority of Germans against EU-Turkey refugee deal, two thirds of Germans are in favour of halting aid to Turkey and more than half want to end refugee deal.', 'http://aljazeera.com/news/2016/08/majority-germans-eu-turkey-refugee-deal-160808074625566.html', 'other', ''),
(26, 'worldnews', '/r/worldnews/comments/4wpbo9/uks_top_bosses_received_10_pay_rise_in_2015_as/', 'UK''s top bosses received 10% pay rise in 2015 as average salary hit 5.5m. For the average worker, wages rose by 2% in 2015, according to the Office for National Statistics.', 'http://theguardian.com/business/2016/aug/08/uks-top-bosses-earned-10-pay-rise-2015-average-salary-hit-55m', 'other', ''),
(27, 'worldnews', '/r/worldnews/comments/4wq7r9/uk_prisons_arent_big_enough_to_jail_all/', 'UK prisons aren''t big enough to jail all paedophiles, senior police officer warns, The number of convicted paedophiles in UK prisons has soared in recent years.', 'http://independent.co.uk/news/uk/crime/uk-prisons-jail-paedophiles-not-big-enough-capacity-police-warning-a7178851.html', 'other', ''),
(28, 'worldnews', '/r/worldnews/comments/4wpltw/rejection_of_experts_spreads_from_brexit_to/', 'Rejection of experts spreads from Brexit to climate change with ''Clexit'' - Clexit calls for withdrawal from climate treaties, rejects the conclusions of 97% of climate science experts and 95% of economics experts', 'http://theguardian.com/environment/climate-consensus-97-per-cent/2016/aug/08/rejection-of-experts-spreads-from-brexit-to-climate-change-with-clexit', 'other', ''),
(29, 'worldnews', '/r/worldnews/comments/4wok25/daesh_destroys_ancient_assyrian_treasures_in_tal/', 'Daesh destroys ancient Assyrian treasures in Tal Ajaj, Syria', 'http://gulfnews.com/news/mena/syria/daesh-destroys-ancient-treasures-in-syria-s-tal-ajaja-1.1874889', 'other', ''),
(30, 'worldnews', '/r/worldnews/comments/4wpixc/thousands_of_failed_asylumseekers_are_unaccounted/', 'Thousands of failed asylum-seekers are unaccounted for in Ireland - State did not carry out checks to make sure \\u2018voluntary\\u2019 deportees left the country', 'http://irishtimes.com/news/crime-and-law/thousands-of-failed-asylum-seekers-are-unaccounted-for-1.2748386', 'other', ''),
(31, 'interestingasfuck', '/r/interestingasfuck/comments/4wpyol/who_says_you_need_four_wheels_to_skateboard/', 'Who says you need four wheels to skateboard?', 'http://imgur.com/PxRXzun.gifv', 'other', ''),
(32, 'interestingasfuck', '/r/interestingasfuck/comments/4wplaq/cracked_light_sculpture/', 'Cracked Light Sculpture', 'http://i.imgur.com/yDTMzEQ.jpg', 'other', ''),
(33, 'interestingasfuck', '/r/interestingasfuck/comments/4wpvuq/giant_mechanical_elephant/', 'Giant Mechanical Elephant', 'http://i.imgur.com/nsAR2qS.jpg', 'other', ''),
(34, 'interestingasfuck', '/r/interestingasfuck/comments/4wpc2t/in_1959_in_the_province_of_zhejiang_china_formed/', 'In 1959, in the province of Zhejiang (China) formed Lake Qiandaohu. The area was flooded with water for hydroelectric facilities. Were flooded two ancient cities (age about 1800 years). In 2002, the researchers conducted several dives and was told that the ancient buildings are still standing.', 'http://imgur.com/a/0EYOc', 'other', ''),
(35, 'interestingasfuck', '/r/interestingasfuck/comments/4wp9pf/the_art_of_zdzis\\u0142aw_beksi\\u0144ski/', 'The art of Zdzis\\u0142aw Beksi\\u0144ski', 'http://imgur.com/a/X4fgp', 'other', ''),
(36, 'interestingasfuck', '/r/interestingasfuck/comments/4wqwpn/hans_zimmers_home_recording_studio_xpost_from/', 'Hans Zimmer''s Home Recording Studio (x-post from /r/MostBeautiful)', 'http://i.imgur.com/etJTZCH.jpg', 'other', ''),
(37, 'interestingasfuck', '/r/interestingasfuck/comments/4wsucl/hummingbird_best_in_front_of_a_security_camera/', 'Hummingbird best in front of a Security camera', 'http://i.imgur.com/YJ3PeMw.gifv', 'other', ''),
(38, 'interestingasfuck', '/r/interestingasfuck/comments/4wrppi/racing_balls/', 'Racing Balls', 'http://gifbeam.com/uploads/5/0/4/6/50461919/racing-balls-3391240999_1_orig.gif', 'other', ''),
(39, 'interestingasfuck', '/r/interestingasfuck/comments/4wqcn8/teller_cigarette_trick/', 'Teller: Cigarette Trick', 'http://youtu.be/y4U-kHdXgz0', 'other', ''),
(40, 'interestingasfuck', '/r/interestingasfuck/comments/4wqq5d/nasas_new_high_dynamic_camera_records_sls_rocket/', 'NASA\\u2019s new High Dynamic Camera Records SLS Rocket Test [[x-post /r/space]]', 'http://gfycat.com/FlimsyWellwornAsiaticwildass', 'other', ''),
(41, 'todayilearned', '/r/todayilearned/comments/4wqscy/til_there_is_a_small_island_in_shrewsbury_ma_that/', 'TIL: There is a small island in Shrewsbury, MA that doesn''t belong to anyone in particular. One local man is crusading to name it Busta Rhymes Island. When asked why, he said it was because the island had \\"rope-swinging, blueberries, and . . . stuff Busta would enjoy\\".', 'http://atlasobscura.com/places/busta-rhymes-island', 'other', ''),
(42, 'todayilearned', '/r/todayilearned/comments/4wqaek/til_that_william_whipple_freed_his_slave_because/', 'TIL that William Whipple freed his slave because he believed that no man could fight for freedom while holding another in bondage', 'http://en.wikipedia.org/wiki/William_Whipple', 'other', ''),
(43, 'todayilearned', '/r/todayilearned/comments/4wqjip/til_of_emmett_till_a_14yearold_who_was_lynched_in/', 'TIL of Emmett Till, a 14-year-old who was lynched in Mississippi in 1955 after flirting with a white woman. His killers were acquitted of the crime and later admitted to the murder. Till''s mother had an open-casket funeral to display the injustice, helping spur the civil rights movement.', 'http://en.wikipedia.org/wiki/Emmett_Till#Trial?pvs', 'other', ''),
(44, 'todayilearned', '/r/todayilearned/comments/4wqpgu/til_that_in_order_to_prevent_silk_road_founder/', 'TIL that in order to prevent Silk Road founder Ross Ulbricht from deleting or encrypting his hard drive during his arrest at a public library, agents pretended to be quarreling lovers to distract him, at which point a USB drive was inserted that cloned his hard drive', 'http://en.wikipedia.org/wiki/Ross_Ulbricht', 'other', ''),
(45, 'todayilearned', '/r/todayilearned/comments/4wpj02/til_the_japanese_are_working_on_developing/', 'TIL the Japanese are working on developing technology to transmit electricity wirelessly. Their goal is to transmit energy from orbiting solar panels to Earth by 2030. They have successfully transmitted 10 kW of energy 500 meters away.', 'http://alternative-energy-news.info/japan-solar-energy-from-space/', 'other', ''),
(46, 'todayilearned', '/r/todayilearned/comments/4wra94/til_the_man_who_finished_behind_jesse_owens_in/', 'TIL the man who finished behind Jesse Owens in the 1936 Olympics was also black: He was Jackie Robinson''s brother.', 'http://en.wikipedia.org/wiki/Mack_Robinson_(athlete)', 'other', ''),
(47, 'todayilearned', '/r/todayilearned/comments/4wqv0z/til_that_peter_pan_has_an_exception_to_public/', 'TIL That Peter Pan has an Exception to Public Domain Law, so it can Continue to Fund a Children''s Hospital', 'http://copyrightservice.co.uk/copyright/p10_duration', 'other', ''),
(48, 'todayilearned', '/r/todayilearned/comments/4wqx13/til_that_the_republic_of_texas_had_its_own/', 'TIL that the Republic of Texas had its own embassy-like building in London. When it joined the rest of the United States in 1845, the officials skipped town without paying their rent.', 'http://historybuff.com/the-republic-of-texas-had-an-embassy-in-london-J0obd2peD8rQ', 'other', ''),
(49, 'todayilearned', '/r/todayilearned/comments/4wtpjs/til_the_chinese_are_twice_as_willing_to_purchase/', 'TIL The Chinese are twice as willing to purchase products \\u201cMade in America\\u201d than Chinese products', 'http://huffingtonpost.com/2012/11/15/made-in-usa-label-popular_n_2137583.html', 'other', ''),
(50, 'todayilearned', '/r/todayilearned/comments/4wsaol/til_over_8_million_horses_died_in_ww1_of_those/', 'TIL over 8 million horses died in WW1. Of those who survived, most were sent to Belgian butchers, being regarded as unfit for any other purpose.', 'http://history.co.uk/shows/the-real-war-horse/articles/history-of-horses-during-wwi', 'other', ''),
(51, 'Jokes', '/r/Jokes/comments/4wpnme/george_bush_dies_and_goes_to_hell/', 'George Bush dies and goes to hell', 'Satan is already waiting for him.\\n\\n''Well, I don''t know what to do. See, you''re on my list, but I have no free rooms for you. But you, you definitely have to stay in hell, so I''ll have to find a solution. There are a few people here who aren''t as bad as you are... I guess I''ll let one go and you''ll take their place. However, you can choose whose place you want to take.\\n\\n''Oh, that sounds okay I guess'' says Bush.\\n\\nSatan leads him to the first room and opens the door. In this room, there''s a huge swimming pool. In it, Reagan is drowning. He goes down, then up, then down, then up, and he''s gasping for air all the while.\\n\\n''Oh, no,'' says Bush. ''That''s not for me, I''m a poor swimmer.''\\n\\nSatan opens the second door. The room is full of rocks and they see Nixon trying to break up the rocks with a wooden hammer.\\n\\n''Nah, I have problems with my shoulders and my back, that''d be such a painful thing to do day after day.''\\n\\nSo Satan opens the third door. In the room, they see Clinton lying on the floor, all tied up. Monica Lewinsky is lying on top of Clinton, giving him a blowjob. Bush stares at the scene with a wide smile and says:\\n\\n''Ah, that I could endure!''\\n\\n''Alright,'' laughs Satan. ''Monica, you''re free to go!''', 'selftext', ''),
(52, 'Jokes', '/r/Jokes/comments/4wruv2/the_irish_prostitue/', 'The Irish Prostitue', 'An Irish daughter had not been home for over 5 years. Upon her return, her Father cursed her heavily.\\n\\n''Where have ye been all this time, child? Why did ye not write to us, not even a line? Why didn''t ye call? Can ye not understand what ye put yer old Mother through?''\\n\\nThe girl, crying, replied, Dad... I became a prostitute.''\\n\\n''Ye what!? Get out a here, ye shameless harlot! Sinner! You''re a disgrace to this Catholic family.''\\n\\n''OK, Dad... as ye wish. I only came back to give mum this luxurious fur coat, title deed to a ten bedroom mansion, plus a 5 million savings certificate. For me little brother, this gold Rolex. And for ye Daddy, the sparkling new Mercedes limited edition convertible that''s parked outside plus a membership to the country club ... (takes a breath) ... and an invitation for ye all to spend New Year''s Eve on board my new yacht in the Riviera.''\\n\\n''What was it ye said ye had become?'' says Dad.\\n\\nGirl, crying again, ''A prostitute, Daddy!.''\\n\\n''Oh! My Goodness! Ye scared me half to death, girl! I thought ye said a Protestant! Come here and give yer old Dad a hug !!!', 'selftext', ''),
(53, 'Jokes', '/r/Jokes/comments/4wpgpy/there_was_a_papa_mole_a_momma_mole_and_a_baby_mole/', 'There was a papa mole, a momma mole, and a baby mole.', 'There was a papa mole, a momma mole, and a baby mole. They lived in a hole out in the country near a farmhouse. Papa mole poked his head out of the hole and said, \\"Mmmm, I smell sausage!\\" Momma mole poked her head outside the hole and said, \\"Mmmm, I smell pancakes!\\" Baby mole tried to stick his head outside but couldn''t because of the two bigger moles. Baby mole said, \\"The only thing I smell is molasses.\\" - ', 'selftext', ''),
(54, 'Jokes', '/r/Jokes/comments/4wqeao/my_favorite_sex_position_is_9/', 'My favorite sex position is 9.', 'It''s me in my bed. Curled up. Crying. Alone. ', 'selftext', ''),
(55, 'Jokes', '/r/Jokes/comments/4wr69z/two_men_and_a_woman_are_stranded_on_an_island/', 'Two men and a woman are stranded on an island', 'Two men and a woman are stranded on an island after a plane crash. Resourceful, they waste no time, build a house, find food and water, and globally have it good. After one month, the woman goes to the two men and says:\\n\\n\\"Okay guys, let''s be frank. I have my needs, you have your needs, let''s do it. We''ll take turns, one day it''s you\\", she says to the first guy, \\"and the other day it''s the other\\".\\n\\nAnd so they have a whale of time taking turns, enjoying their business together for one whole month. However, unfortunately, the woman dies after that month, because of a rotten banana or whatever. The two men mourn the loss of their playmate and partner for the following week. Then, one man goes to the other and says:\\n\\n\\"Okay man, let''s be frank. I have my needs, you have your needs, let''s do it. We''ll take turns, one day it''s you, and the other day it''s me.\\"\\n\\nAnd so they have a good time taking turns, enjoying their business together for one whole month. The first man then goes to the other and says:\\n\\n\\"Okay man, I need to talk to you.\\n\\n\\\\- Yeah, me too actually.\\n\\n\\\\- We had a fun month, but I think we should stop.\\n\\n\\\\- Yeah, I felt this way too. I feel what we''re doing is not natural.\\n\\n\\\\- That''s right. Let''s stop.\\"\\n\\nSo they nod their head in common understanding. The second man then says:\\n\\n\\"Well then, shall we bury her?\\"', 'selftext', ''),
(56, 'Jokes', '/r/Jokes/comments/4wq5lw/the_bartender_says_free/', 'The bartender Say''s \\"Free\\"', 'A guy walks into the bar of a restaurant and goes to the bartender and asks \\"how much for a beer?\\" The bartender replies \\"free\\". The customer completely amazed, orders a beer then asks the bartender \\"Well then how much for a NY sirloin, with side of mashed potatoes and salad, and an entire cheesecake for desert?\\" The Bartender reply''s \\"free\\". The guy still amazed then orders everything and after he is done eating his meal then says \\"Wow, this place is amazing, I really wish I could meet the owner of this place\\". The bartender then says \\"Oh well, he''s upstairs in his office with my wife\\". The guy looks all confused then asks \\"What is he doing upstairs in his office with your wife?\\" The bartender then says \\"The same thing I''m doing to his business\\".\\n', 'selftext', ''),
(57, 'Jokes', '/r/Jokes/comments/4wp4hr/an_american_walks_into_a_swiss_bank/', 'An american walks into a swiss bank...', 'The bank is very full so it takes a long time for it to be his turn.\\n\\nAfter an hour wait he finally gets to go up to the counter. The woman asks him how she could assist him. \\n\\n\\nHe looks around, making sure he cant be heard and whispers into her ear \\"I would like to deposit $1 million into a bank account\\"\\n\\n\\nThe woman looks a bit startled and says out loud \\"oh dont worry sir! You dont have to whisper, here in Switzerland its no shame to be poor.\\"', 'selftext', ''),
(58, 'Jokes', '/r/Jokes/comments/4wsfyy/i_accidentally_gave_my_girlfriend_a_glue_stick/', 'I accidentally gave my girlfriend a glue stick instead of chapstick...', 'She''s still not talking to me :(', 'selftext', ''),
(59, 'Jokes', '/r/Jokes/comments/4wps6m/friend_of_mine_said_what_rhymes_with_orange/', 'Friend of mine said \\"What rhymes with orange\\"', 'I said \\"No it doesn''t\\"', 'selftext', ''),
(60, 'Jokes', '/r/Jokes/comments/4wr7zw/i_make_apocalypse_jokes/', 'I make apocalypse jokes.', 'Like there''s no tomorrow.', 'selftext', ''),
(61, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wq1mw/jquery_does_all_things/', 'JQuery Does All Things!', 'http://i.reddituploads.com/b79bb2d6e2f14e65b769686647cc4782?fit=max&amp;h=1536&amp;w=1536&amp;s=ed6be616a7a0467c49330eda9253811e', 'other', ''),
(62, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wr1xk/waiting_for_the_build_to_finish/', 'Waiting for the build to finish', 'http://i.imgur.com/CcwJ0YO.gifv', 'other', ''),
(63, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wsmv5/when_it_still_works_after_refactoring/', 'When it still works after refactoring', 'http://i.imgur.com/hw8l6GH.gifv', 'other', ''),
(64, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wsmtg/im_not_sure_this_is_a_good_thing_mercedes/', 'I''m not sure this is a good thing Mercedes...', 'http://i.redd.it/wwxk8nqh88ex.gif', 'other', ''),
(65, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wrzog/refactoring_old_code/', 'Refactoring old code', 'http://i.imgur.com/obPAGVY.png', 'other', ''),
(66, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wqpvb/deployment_is_a_matter_of/', 'Deployment is a matter of ...', 'http://twitter.com/mattLefaux/status/762668155592474624', 'other', ''),
(67, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wslyr/this_guy_is_fixing_up_java_for_us/', 'This guy is fixing up Java for us', 'http://stackoverflow.com/q/38837495/5326679', 'other', ''),
(68, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wrs17/picnic/', 'PICNIC', 'Problem In Chair, Not In Computer\\n\\nUsed this acronym a lot when I worked Comcast tech support.', 'selftext', ''),
(69, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wr0eo/he_claimed_it_was_working_in_ie_color_me_dubious/', 'He claimed it was working in IE. Color me dubious.', 'http://i.redd.it/0hscmtm4q6ex.png', 'other', ''),
(70, 'ProgrammerHumor', '/r/ProgrammerHumor/comments/4wtms7/i_dont_think_i_should_trust_this/', 'I don''t think I should trust this.', 'http://imgur.com/nRcqR6E', 'other', ''),
(71, 'pics', '/r/pics/comments/4wonts/my_coworker_had_this_picture_taken_at_a_dodge/', 'My coworker had this picture taken at a Dodge Charger meet-up he helped organize.', 'http://imgur.com/k5GCYi1', 'other', ''),
(72, 'pics', '/r/pics/comments/4wq53m/in_lucille_balles_hometown_of_celeron_ny_a_statue/', 'In Lucille Balle''s hometown of Celeron, NY a statue was commissioned to honor the TV star... but it was so bad it was dubbed \\"Scary Lucy\\". The replacement statue was unveiled yesterday, here''s the before/after.', 'http://image.newyorkupstate.com/home/nyup-media/width960/img/photo-gallery/photo/2016/08/08/-bcb7acaefd0ea6d5.jpg', 'other', ''),
(73, 'pics', '/r/pics/comments/4wskaz/abandoned_olympic_venues_from_around_the_world/', 'Abandoned Olympic Venues from around the world.', 'http://imgur.com/a/zDPcK', 'other', ''),
(74, 'pics', '/r/pics/comments/4wqbkg/visited_my_younger_cousin_and_noticed_how_his/', 'Visited my younger cousin and noticed how his girlfriend shows love', 'http://imgur.com/a/zVJgO', 'other', ''),
(75, 'pics', '/r/pics/comments/4wrap4/the_brides_father_died_ten_years_ago_and_his/', 'The bride''s father died ten years ago and his heart was donated. The man who received the transplant walked her down the aisle this week.', 'http://static01.nyt.com/images/2016/08/09/style/09xp-BRIDE/09xp-BRIDE-master768.jpg', 'other', ''),
(76, 'pics', '/r/pics/comments/4wqyb0/person_of_the_year/', 'Person of the Year.', 'http://i.redd.it/yrsb2kero6ex.jpg', 'other', ''),
(77, 'pics', '/r/pics/comments/4wqidl/in_a_giant_cave_in_china_there_live_21_families/', 'In a giant cave in China, there live 21 families. This cave now contains a basketball court and even a school.', 'http://i.imgur.com/ViYziKi.jpg', 'other', ''),
(78, 'pics', '/r/pics/comments/4woep5/nsfw_france_is_getting_ready_to_attack/', 'NSFW. France is getting ready to attack!', 'http://i.imgur.com/3v5RC3x.jpg', 'other', ''),
(79, 'pics', '/r/pics/comments/4wqo42/godiva_store_walls_ceiling/', 'Godiva Store Walls &amp; Ceiling', 'http://i.imgur.com/likzz5F.jpg', 'other', ''),
(80, 'pics', '/r/pics/comments/4wpuzq/30_people_draw_the_world_map_from_memory_the/', '30 people draw the world map from memory. The results are merged.', 'http://i.redd.it/fw1h9i96i5ex.jpg', 'other', ''),
(81, 'gifs', '/r/gifs/comments/4wqkvv/jenga_thug_life/', 'Jenga Thug Life', 'http://i.imgur.com/hw8l6GH.gifv', 'other', ''),
(82, 'gifs', '/r/gifs/comments/4wpkxa/70_hours_of_dots/', '70 Hours of Dots', 'http://i.redd.it/4vgs3dqc35ex.gif', 'other', ''),
(83, 'gifs', '/r/gifs/comments/4wptx9/no_skateboarding_allowed/', 'No Skateboarding allowed!', 'http://imgur.com/k5hmknb.gifv', 'other', ''),
(84, 'gifs', '/r/gifs/comments/4wspn2/dopey_falls_off_of_the_boat_during_fantasmic_in/', 'Dopey falls off of the boat during Fantasmic! in Disney World', 'http://i.giphy.com/3o6Ztf31WDVA2FICRy.gif', 'other', ''),
(85, 'gifs', '/r/gifs/comments/4wrv6a/refugees_attack_and_steal_mans_possessions_after/', 'Refugees attack and steal man''s possessions after he gives them some food', 'http://i.imgur.com/hAj0gCT.gifv', 'other', ''),
(86, 'gifs', '/r/gifs/comments/4wqa4u/dog_pees_on_electric_fence/', 'Dog pees on electric fence', 'http://i.imgur.com/VkSFISR.gif', 'other', ''),
(87, 'gifs', '/r/gifs/comments/4wrttg/wheelchairbound_man_having_a_great_time_at_a/', 'wheelchair-bound man having a great time at a hardstyle festival.', 'http://i.imgur.com/RAMUXLR.gifv', 'other', ''),
(88, 'gifs', '/r/gifs/comments/4wslmt/swimmers_reaction_after_the_reporter_told_her_her/', 'Swimmer''s reaction after the reporter told her her time', 'http://i.redd.it/39cxdtbe78ex.gif', 'other', ''),
(89, 'gifs', '/r/gifs/comments/4wrwxm/synchronized_diving/', 'Synchronized diving', 'http://i.imgur.com/CwN3laP.gifv', 'other', ''),
(90, 'gifs', '/r/gifs/comments/4wpfil/opposing_players_having_some_fun_midgame/', 'Opposing players having some fun mid-game', 'http://i.imgur.com/Cul5mf8.gif', 'other', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;