BEGIN TRANSACTION;
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('users',1);
INSERT INTO "sqlite_sequence" VALUES('config',6);
INSERT INTO "sqlite_sequence" VALUES('snippets',2);
INSERT INTO "sqlite_sequence" VALUES('pages',12);
INSERT INTO "sqlite_sequence" VALUES('layouts',3);
INSERT INTO "sqlite_sequence" VALUES('page_parts',21);
INSERT INTO "sqlite_sequence" VALUES('employees',16);
INSERT INTO "sqlite_sequence" VALUES('page_attachments',64);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20081203140407');
INSERT INTO "schema_migrations" VALUES('1');
INSERT INTO "schema_migrations" VALUES('2');
INSERT INTO "schema_migrations" VALUES('3');
INSERT INTO "schema_migrations" VALUES('4');
INSERT INTO "schema_migrations" VALUES('5');
INSERT INTO "schema_migrations" VALUES('6');
INSERT INTO "schema_migrations" VALUES('7');
INSERT INTO "schema_migrations" VALUES('8');
INSERT INTO "schema_migrations" VALUES('9');
INSERT INTO "schema_migrations" VALUES('10');
INSERT INTO "schema_migrations" VALUES('11');
INSERT INTO "schema_migrations" VALUES('12');
INSERT INTO "schema_migrations" VALUES('13');
INSERT INTO "schema_migrations" VALUES('14');
INSERT INTO "schema_migrations" VALUES('15');
INSERT INTO "schema_migrations" VALUES('16');
INSERT INTO "schema_migrations" VALUES('17');
INSERT INTO "schema_migrations" VALUES('18');
INSERT INTO "schema_migrations" VALUES('19');
INSERT INTO "schema_migrations" VALUES('20');
INSERT INTO "schema_migrations" VALUES('21');
INSERT INTO "schema_migrations" VALUES('Page Attachments-1');
INSERT INTO "schema_migrations" VALUES('Page Attachments-2');
INSERT INTO "schema_migrations" VALUES('Employees-20090916152220');
INSERT INTO "schema_migrations" VALUES('Employees-20091030193427');
INSERT INTO "schema_migrations" VALUES('Employees-20091030193428');
CREATE TABLE "config" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "key" varchar(40) DEFAULT '' NOT NULL, "value" varchar(255) DEFAULT '');
INSERT INTO "config" VALUES(1,'admin.title','Radiant CMS');
INSERT INTO "config" VALUES(2,'admin.subtitle','Publishing for Small Teams');
INSERT INTO "config" VALUES(3,'defaults.page.parts','body, extended');
INSERT INTO "config" VALUES(4,'defaults.page.status','draft');
INSERT INTO "config" VALUES(5,'defaults.page.filter','');
INSERT INTO "config" VALUES(6,'session_timeout','1209600');
CREATE TABLE "employees" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar(255), "last_name" varchar(255), "title" varchar(255), "management" boolean, "profile" text, "extended_profile" text, "email" varchar(255), "show_order" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "employees" VALUES(2,'Jose','Mourinho','Coach','t','A Portuguese football manager. He is the current manager of Italian Serie A team Internazionale, to whom he is contracted for the following three seasons.','The son of Portuguese goalkeeper Félix, Mourinho started out as a player but he was unsatisfied with his career and switched to management. After spells working as an assistant manager and a youth team coach in the early 1990s, he became an interpreter for Bobby Robson. Mourinho learned much from the veteran coach and worked with him at top Portuguese teams Sporting Clube de Portugal, FC Porto, and at Spanish giants FC Barcelona.
He began focusing on coaching and impressed with brief but successful managerial periods at S.L. Benfica and União de Leiria. He returned to Porto in 2002, this time as head coach, and soon became a force to be reckoned with, winning the Portuguese Liga, Cup of Portugal and UEFA Cup in 2003. Greater success followed in 2004 as Mourinho guided the team to the top of the league for a second time and won the highest honour in European club football, the UEFA Champions League.
Mourinho moved to Chelsea the following year and won two consecutive Premier League titles in 2005 and 2006, among other domestic honours. He often courted controversy for his outspokenness but his victories at Chelsea and Porto established him as one of the world''s top football managers, well regarded by both his peers and the press. Additionally, he was named the world''s best football manager by the International Federation of Football History and Statistics (IFFHS) for both the 2004–05 and 2005–06 seasons. After a fall out with the Chelsea hierarchy, he moved to Serie A, signing a three year contract with Inter in mid-2008. Within three months, he had won his first Italian honour, the Supercoppa Italiana, and completed his first season in Italy by winning the national Serie A title.','jmourinho@internazionale.com',2,'2009-11-04 02:42:29','2009-11-07 17:00:01');
INSERT INTO "employees" VALUES(3,'Rafael','Benitez','Coach','t','Spanish football manager and the current manager of Liverpool Football Club.','Born in Madrid, Benítez played football throughout his youth and joined the Real Madrid academy. He mixed his university studies with his football career at lower division Spanish teams. He joined Real Madrid''s coaching staff at the age of 26, going on to work as the under 19 and reserve team coach, and assistant manager for the senior team. Benítez moved away from Real Madrid but management spells at Real Valladolid and Osasuna were short-lived and unsuccessful.','rbenitez@liverpoolfc.com',3,'2009-11-04 14:13:35','2009-11-05 00:53:10');
INSERT INTO "employees" VALUES(4,'Alex','Ferguson','Coach','t','Popularly known as Sir Alex or Fergie (born 31 December 1941 in Govan, Glasgow) is a Scottish football manager and former player, currently managing Manchester United, where he has been in charge since 1986.','Ferguson previously managed East Stirlingshire and St. Mirren, before a highly successful period as manager of Aberdeen. Briefly manager of the Scotland national team – in a temporary capacity owing to the death of Jock Stein – he was appointed manager of Manchester United in November 1986.','aferguson@manunited.com',4,'2009-11-04 14:14:51','2009-11-05 00:52:45');
INSERT INTO "employees" VALUES(5,'Manuel','Pellegrini','Coach','t','A former Chilean footballer and current manager of Real Madrid.','On June 1, 2009, Pellegrini was announced as Real Madrid''s new manager with his formal presentation to follow on June 2.He joins Real Madrid as the first manager in Florentino Pérez''s second stint as Real Madrid president. After a few days, Pellegrini scouted Kaká from AC Milan because he said "If we want to win the Champions League and be the best team in the world, we need the best players in the world".','mpellegrini@rmadrid.com',5,'2009-11-04 14:17:16','2009-11-05 00:52:52');
INSERT INTO "employees" VALUES(6,'Louis','van Gaal','Coach','t','A Dutch football manager currently in charge of the German club Bayern Munich.','AZ started the 2008–09 season with two losses: 2-1 to NAC Breda and 0-3 to ADO Den Haag, but after that the Alkmaar-based club remained unbeaten until 18 April, topping the League ahead of FC Twente and Ajax for the entire season. AZ had the best defensive record in the Eredivisie and the second-best goalscoring record, thanks to its offensive duo of league topscorer Mounir El Hamdaoui and Brazilian Ari. They were crowned league champions on 19 April, one day after AZ suffered an unexpected loss at home to Vitesse, which ended a string of 28 unbeaten games. That same day Ajax, the only opponent still technically able to reach them, lost 6–2 to PSV.','lvangaal@bayernmunchen.com',6,'2009-11-04 14:19:24','2009-11-05 00:52:56');
INSERT INTO "employees" VALUES(7,'Josep','Guardiola','Coach','t','A former Spanish football midfielder and current FC Barcelona manager.',' He spent the majority of his playing career with Barcelona, and was part of Johan Cruyff''s dream team that won FC Barcelona''s first European Cup. He was captain of the club for the final four years of his time with Barcelona. Guardiola also played for, among others, Brescia Calcio, A.S. Roma, Al-Ahli and Dorados de Sinaloa. As an international, Guardiola played for Spain and some friendly international games for Catalonia. After retiring as a player, Guardiola became coach of FC Barcelona B. On 8 May 2008, FC Barcelona president Joan Laporta announced that Guardiola would succeed Frank Rijkaard as the first team manager. He signed his contract on 5 June 2008. In his first season as manager, FC Barcelona won the treble of La Liga, the Copa del Rey and the Champions League. In doing so, Guardiola became the youngest UEFA Champions League winning manager ever. The following season, Guardiola and Barcelona won the Supercopa de España against Athletic Club Bilbao and the 2009 UEFA Super Cup against Shakhtar Donetsk.','pepguardiola@barsa.com',7,'2009-11-04 14:21:59','2009-11-05 00:53:01');
INSERT INTO "employees" VALUES(8,'Gianluigi','Buffon','Goalkeeper','f','An Italian FIFA World Cup-winning goalkeeper who plays for Serie A club Juventus and the Italian national team. He is widely considered by fans and experts to be one of the greatest goalkeepers of all time.','Gianluigi Buffon was born into an athletic family. His mother, Maria Stella, was a discus thrower, his father, Adriano, a weightlifter, his two sisters Veronica and Guendalina played volleyball and his uncle, Angelo Masocco, played basketball. He is also a nephew of goalkeeping legend Lorenzo Buffon (a cousin of Gianluigi''s grandfather). Buffon lives with Czech model Alena Šeredová, who gave birth to son Louis Thomas on 28 December 2007; they are currently expecting their second child. Buffon and Šeredová are not married yet, the couple stated that they will get married after the birth of their second child.','gbuffon@juventus.com',8,'2009-11-04 14:23:54','2009-11-07 16:54:11');
INSERT INTO "employees" VALUES(9,'Ricardo','Kaka','Midfielder','f','A Brazilian football midfielder who currently plays for Real Madrid and the Brazilian national team.',' He is widely considered as one of the best footballers of his generation, often drawing comparisons in style and ability to other great footballers as Michel Platini, Sócrates, Zico, and Pelé. His footballing style is unique as he has the technique of a Brazilian and the physical qualities of a European. Kaká started his footballing career at the age of eight when he began playing for a local club called "Alphaville". By then, he also played tennis and it was not until he moved on to São Paulo FC and signed his first professional contract with the club at the age of 15 that he chose to focus on football. He was the recipient of both the Ballon d''Or and FIFA World Player of the Year awards in 2007. Besides his contributions on the pitch, Kaká is also famous for his humanitarian works and work against poverty. In 2004, by the time of his appointment, he became the youngest Ambassador of the UNICEF food program. Having coming back from an almost paralyzing accident in 2001 at the age of 18, Kaká attributes his recovery to God.','kaka@realmadrid.com',9,'2009-11-04 14:25:48','2009-11-04 14:26:44');
INSERT INTO "employees" VALUES(10,'Dirk','Kuyt','Striker','f','A Dutch professional footballer who currently plays for English club Liverpool','Kuyt began his professional career with FC Utrecht in 1998 and quickly became part of their first team. He spent five years at the club and in his final season he won his first senior honour, the Dutch Cup, and was chosen as the season''s Dutch Golden Shoe Winner. Following this, he left Utrecht in a €1 million transfer to Feyenoord. He became the club captain in 2005 and was a prolific goalscorer at the Rotterdam club; he was the club''s top scorer for three consecutive seasons, the top goalscorer in the 2004–05 Eredivisie season, and the 2005–06 Dutch Footballer of the Year. Kuyt missed only five games over seven seasons from 1999 until 2006 and appeared in 179 consecutive matches between 2001–06.
He left Feyenoord after three years, having scored 71 league goals in 101 appearances, and joined Premier League side Liverpool for £10 million. He made his Premier League debut in late 2006 and immediately became part of the first team squad. He scored in his first UEFA Champions League Final in 2007 but the team lost to AC Milan.
He made his international debut in 2004 and has represented the Netherlands at two major international tournaments, the 2006 FIFA World Cup and UEFA Euro 2008.','dkuyt@liverpoolfc.com',10,'2009-11-05 01:00:35','2009-11-05 01:00:35');
INSERT INTO "employees" VALUES(11,'Lionel','Messi','Striker','f','An Argentine footballer who currently plays for La Liga''s Barcelona and the Argentine national team.','Messi is considered to be one of the best football players of his generation, having received several Ballon d''Or and FIFA World Player of the Year nominations by the age of 21. His playing style and ability have drawn comparisons to football legend Diego Maradona, who himself declared Messi his "successor".
Messi began playing football at a young age and his potential was quickly identified by Barcelona. He left Rosario-based Newell''s Old Boys''s youth team in 2000 and moved with his family to Europe, as Barcelona offered treatment for his growth hormone deficiency. Making his debut in the 2004–05 season, he broke the La Liga record for the youngest footballer to play a league game, and also the youngest to score a league goal. Major honours soon followed as Barcelona won La Liga in Messi''s debut season, and won a double of the league and UEFA Champions League in 2006. His breakthrough season was in 2006–07: he became a first team regular, scoring a hat-trick in El Clásico and finishing with 14 goals in 26 league games. Perhaps his most successful season was the 2008–09 season, in which Messi scored 38 goals to play an integral part in a treble winning campaign.
Messi was the top scorer with six goals, including two in the final game of the 2005 FIFA World Youth Championship. Shortly thereafter, he became an established member of Argentina''s senior international team. In 2006 he became the youngest Argentine to play in the FIFA World Cup and he won a runners-up medal at the Copa América tournament the following year. In 2008, in Beijing, he won his first international honour, an Olympic gold medal, with the Argentina Olympic football team.','lmessi@barsa.com',11,'2009-11-05 01:03:01','2009-11-05 01:03:01');
INSERT INTO "employees" VALUES(12,'Falcao','Garcia','Striker','f','A Colombian football forward who currently plays for FC Porto of the Portuguese Liga.','As a youth, Falcao began playing at Fair Play, a Colombian football school, before joining the youth system of Bogota''s Millonarios club. At the age of 15, Falcao was discovered by River Plate while playing for the Colombian U-17 side and was recruited to join the Argentine side''s legendary youth academy and reserve system. Before signing his first professional contract with River Plate, Falcao had begun studies in journalism at the University of Palermo in Buenos Aires, Argentina.
At 20, Falcao debuted as a starter under Reinaldo Merlo, scoring two goals in his first start for River Plate. He quickly built a reputation, scoring seven goals in his first seven starts. He would score seven goals in 11 total 2005 appearances (four as a sub under Leo Astrada). He would injure ligaments in his right knee while scoring a goal in a match against San Lorenzo de Almagro and missed the rest of the season.
Falcao exacerbated the knee injury when he tore the anterior cruciate ligaments of the same knee during an pre-season practice in January 2006. The ACL injury subsequently caused him to miss an extensive amount of games. Recovering from the long period of inactivity that followed, Falcao struggled to regain fitness throughout 2006 and the spring of 2007 as nagging injuries continually derailed comeback attempts. The recovery period would be the most difficult of Falcao''s career, as he would score only three goals in 25 appearances in aggregate over the fall and spring of 2006–07 — 10 of these appearances being late game substitutions.','falcao@porto.com',13,'2009-11-05 01:05:09','2009-11-05 01:20:14');
INSERT INTO "employees" VALUES(13,'Steven','Gerrard','Midfielder','f','An English footballer who plays for English Premier League club Liverpool and the England national team','He is usually employed in the central midfield role, although under Liverpool F.C. manager Rafael Benitez he has played the majority of his games as a second striker supporting Fernando Torres in attack, he can also play as a right or left-sided midfielder.
Gerrard, who has spent his entire career at Anfield, made his debut in 1998 and cemented his place in the first team in the 2000-01 season, succeeding Sami Hyypiä as Liverpool team captain in 2003. His honours include a pair of FA Cups and two Football League Cup wins, as well as the UEFA Cup in 2001 and the UEFA Champions League in 2005, following Liverpool''s comeback in the final. As of 13 May 2009, Gerrard is also the current holder of the Football Writers'' Association Footballer of the Year award.
Gerrard made his international debut in 2000, and represented England in the UEFA European Championships in 2000 and 2004 as well as the 2006 FIFA World Cup, where he was the team''s top goalscorer.
Gerrard placed second in the 100 Players Who Shook The Kop, a Liverpool F.C. fan poll','gerrard@liverpoolfc.com',14,'2009-11-05 01:08:07','2009-11-05 01:18:51');
INSERT INTO "employees" VALUES(14,'Fernando','Torres','Striker','f','A Spanish footballer who plays for Premier League club Liverpool and the Spanish national team as a striker.','Torres started his career with Atlético Madrid, progressing through their youth ranks. He made his professional debut in 2001 and finished his career with the club having scored 75 goals in 174 La Liga appearances, earning the nickname El Niño ("The Kid"). Prior to his La Liga debut, Torres played two seasons in the Segunda División, making 40 appearances and scoring seven goals. He joined Liverpool in 2007, after signing for a club record transfer fee. He marked his first season at Anfield by being Liverpool''s first player, since Robbie Fowler in 1995–96, to score more than 20 league goals in a season.
He is also a Spanish international and made his debut for the country against Portugal in 2003. He has since participated in three major tournaments, UEFA Euro 2004, 2006 FIFA World Cup and UEFA Euro 2008. He did not score a goal at Euro 2004, but he scored three at World Cup 2006. Torres scored the winning goal for Spain in their 1–0 win over Germany in the UEFA Euro 2008 Final.','torres@liverpoolfc.com',16,'2009-11-05 01:09:22','2009-11-07 17:33:10');
INSERT INTO "employees" VALUES(15,'Diego','Forlan','Striker','f','An Uruguayan footballer who currently plays for Atlético Madrid of La Liga. He is a two-time winner of both the Pichichi Trophy and the European Golden Shoe.','He was born into a family of footballers. His father Pablo had played for the Uruguay national football team during the 1966 FIFA World Cup held in England and the 1974 FIFA World Cup held in West Germany and his grandfather, Juan Carlos Corazo, played for Independiente in Argentina.

Forlán was a promising tennis player in his youth, but when his sister Alejandra was involved in a car accident which killed her boyfriend and left her in intensive care for five months, he decided however to follow the family tradition and concentrate on football. He played for several South American clubs, including Argentine side Independiente before transferring in January 2002 to play for Manchester United in England for a fee of £6.9 million.

Forlán was linked to transfer with Juan Román Riquelme to Atlético Madrid in exchange for Luis Perea and money in June 2007. On 30 June 2007, following the departure of their captain Fernando Torres to Liverpool, Atlético Madrid confirmed that they had agreed a fee of around €21 million.[1] He returned to England in February 2008 to take part in Atlético''s UEFA Cup clash against Bolton Wanderers (the club against whom he made his Manchester United debut), but the side lost out 1-0 on aggregate. For the 2008–09 season, he was once again the recipient of the La Liga Pichichi Trophy award, with 32 goals in 33 matches, as well as the European Golden Boot for a second time','dforlan@atlmadrid.com',12,'2009-11-05 01:12:19','2009-11-05 01:20:14');
INSERT INTO "employees" VALUES(16,'Roman','Riquelme','Midfielder','f','An Argentine footballer who currently plays for Boca Juniors of the Argentine Primera División as an attacking midfielder.','Riquelme was born into a family of ten in poverty, and grew up in Don Torcuato. Argentine clubs Boca Juniors and River Plate spotted him when he was a youth player for Argentinos Juniors. He chose to move to Boca in 1995 - for US$800,000 - as he had been a fan of the club since childhood. A year later, on 10 November 1996, Riquelme played his first professional match in a 2-0 win over Unión de Santa Fe. Two weeks later, he scored his first senior goal, in Boca''s 6-0 win over Huracán.

Riquelme would be loaned to fellow La Liga side Villareal for the following two years; there, he played alongside compatriots Juan Pablo Sorín and Rodolfo Arruabarrena, as well as two other Argentines and three Brazilians. At the end of 2004-05, Spanish sports newspaper Diario Marca awarded him the title of Artistic Player, and he also earned a nomination for the 2005 FIFA World Player of the Year award. In an effort to keep hold of him, Villarreal bought up 75% of Riquelme''s rights from Barcelona for up to €8 million, depending on Villarreal performance in the next two seasons, and gave the player a four-year contract.[3] A 25% transfer fee would also given to Barça if Villarreal resold him.
A peculiar contract situation arose when, on 7 December 2005, Villarreal beat French club Lille OSC 1-0 to win its UEFA Champions League group, knocking out English giants Manchester United, and advancing to the lucrative knockout stages in the club''s debut season in the main continental competition. Because of a clause in the transfer contract with Barcelona, Villarreal had to pay €1 million to the Catalan club; additionally, the contract included another two €1 million clauses; one if Villarreal finished in one of the top four league positions in 2005-06, and an identical clause for the 2006-07 season.
As Villarreal reached the last-four in the Champions League, in the second lege against Arsenal, Jens Lehmann saved a Riquelme penalty that would have taken the match to extra time; it ended 0-0 at El Madrigal,','roma@boca.com',15,'2009-11-05 01:14:31','2009-11-07 17:33:10');
CREATE TABLE "extension_meta" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "schema_version" integer DEFAULT 0, "enabled" boolean DEFAULT 't');
CREATE TABLE "layouts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(100), "content" text, "created_at" datetime, "updated_at" datetime, "created_by_id" integer, "updated_by_id" integer, "content_type" varchar(40), "lock_version" integer DEFAULT 0);
INSERT INTO "layouts" VALUES(1,'Normal','<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
  "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
  <head>
    <title><r:title /></title>
    <link href="/rss/" rel="alternate" title="RSS" type="application/rss+xml" />
    <link rel="stylesheet" type="text/css" href="/styles.css" />
  </head>
  <body>
    <div id="page">
      <r:snippet name="header" />
      <div id="main">
        <div id="content-wrapper">
          <div id="content">
            <r:unless_url matches="^/$"><h1><r:title /></h1></r:unless_url>
            <r:content />
            <r:if_content part="extended">
            <div id="extended">
              <r:content part="extended" />
            </div>
            </r:if_content>
            <r:if_url matches="^/articles/\d{4}/\d{2}/\d{2}/.+"><r:unless_url matches="-archives/$"><p class="info">Posted by <r:author /> on <r:date /></p></r:unless_url></r:if_url>
          </div>
        </div>
        <div id="sidebar-wrapper">
          <div id="sidebar">
            <r:content part="sidebar" inherit="true" />
          </div>
        </div>
      </div>
      <r:snippet name="footer" />
    </div>
  </body>
</html>
','2009-11-03 13:39:55','2009-11-03 13:39:55',1,NULL,NULL,0);
INSERT INTO "layouts" VALUES(2,'Stylesheet','<r:content />
','2009-11-03 13:39:55','2009-11-03 13:39:55',1,NULL,'text/css',0);
INSERT INTO "layouts" VALUES(3,'XML Feed','<r:content />
','2009-11-03 13:39:55','2009-11-03 13:39:55',1,NULL,'text/xml',0);
CREATE TABLE "page_attachments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content_type" varchar(255), "filename" varchar(255), "size" integer, "parent_id" integer, "thumbnail" varchar(255), "width" integer, "height" integer, "created_at" datetime, "created_by" integer, "updated_at" datetime, "updated_by" integer, "page_id" integer, "title" varchar(255), "description" varchar(255), "position" integer, "employee_id" integer);
INSERT INTO "page_attachments" VALUES(1,'image/jpeg','180px-Jelena.Djurovic.jpg',15955,NULL,NULL,213,350,'2009-11-03 14:11:26',1,'2009-11-03 15:14:45',1,NULL,'jdurovic','profile',1,1);
INSERT INTO "page_attachments" VALUES(2,'image/jpeg','180px-Jelena.Djurovic_icon.jpg',18455,1,'icon',30,50,'2009-11-03 14:11:26',1,'2009-11-03 15:14:45',1,NULL,NULL,NULL,2,NULL);
INSERT INTO "page_attachments" VALUES(3,'image/jpeg','180px-Jelena.Djurovic_thumb.jpg',18455,1,'thumb',122,200,'2009-11-03 15:14:45',1,'2009-11-03 15:14:45',NULL,NULL,NULL,NULL,3,NULL);
INSERT INTO "page_attachments" VALUES(4,'image/jpeg','180px-Jelena.Djurovic_face.jpg',18455,1,'face',46,75,'2009-11-03 15:14:45',1,'2009-11-03 15:14:45',NULL,NULL,NULL,NULL,4,NULL);
INSERT INTO "page_attachments" VALUES(5,'image/jpeg','mourinho.jpg',23267,NULL,NULL,350,322,'2009-11-04 02:42:29',1,'2009-11-07 17:00:01',1,NULL,'mourinho','profile',5,2);
INSERT INTO "page_attachments" VALUES(6,'image/jpeg','mourinho_thumb.jpg',23272,5,'thumb',217,200,'2009-11-04 02:42:29',1,'2009-11-07 17:00:02',1,NULL,NULL,NULL,6,NULL);
INSERT INTO "page_attachments" VALUES(7,'image/jpeg','mourinho_face.jpg',23272,5,'face',75,69,'2009-11-04 02:42:29',1,'2009-11-07 17:00:02',1,NULL,NULL,NULL,7,NULL);
INSERT INTO "page_attachments" VALUES(8,'image/jpeg','mourinho_icon.jpg',23272,5,'icon',50,46,'2009-11-04 02:42:29',1,'2009-11-07 17:00:01',1,NULL,NULL,NULL,8,NULL);
INSERT INTO "page_attachments" VALUES(9,'image/jpeg','benitez.jpeg',40789,NULL,NULL,350,322,'2009-11-04 14:13:35',1,'2009-11-05 00:53:10',1,NULL,'benitez','profile',9,3);
INSERT INTO "page_attachments" VALUES(10,'image/jpeg','benitez_icon.jpeg',40760,9,'icon',50,46,'2009-11-04 14:13:35',1,'2009-11-05 00:53:10',1,NULL,NULL,NULL,10,NULL);
INSERT INTO "page_attachments" VALUES(11,'image/jpeg','benitez_face.jpeg',40760,9,'face',75,69,'2009-11-04 14:13:35',1,'2009-11-05 00:53:10',1,NULL,NULL,NULL,11,NULL);
INSERT INTO "page_attachments" VALUES(12,'image/jpeg','benitez_thumb.jpeg',40760,9,'thumb',217,200,'2009-11-04 14:13:35',1,'2009-11-05 00:53:10',1,NULL,NULL,NULL,12,NULL);
INSERT INTO "page_attachments" VALUES(13,'image/jpeg','ferguson.jpg',30711,NULL,NULL,350,322,'2009-11-04 14:14:51',1,'2009-11-05 00:52:45',1,NULL,'couch','profile',13,4);
INSERT INTO "page_attachments" VALUES(14,'image/jpeg','ferguson_icon.jpg',30697,13,'icon',50,46,'2009-11-04 14:14:51',1,'2009-11-05 00:52:45',1,NULL,NULL,NULL,14,NULL);
INSERT INTO "page_attachments" VALUES(15,'image/jpeg','ferguson_face.jpg',30697,13,'face',75,69,'2009-11-04 14:14:51',1,'2009-11-05 00:52:45',1,NULL,NULL,NULL,15,NULL);
INSERT INTO "page_attachments" VALUES(16,'image/jpeg','ferguson_thumb.jpg',30697,13,'thumb',217,200,'2009-11-04 14:14:51',1,'2009-11-05 00:52:45',1,NULL,NULL,NULL,16,NULL);
INSERT INTO "page_attachments" VALUES(17,'image/jpeg','pellegrini.jpg',28385,NULL,NULL,350,322,'2009-11-04 14:17:16',1,'2009-11-05 00:52:52',1,NULL,'pellegrini','profile',17,5);
INSERT INTO "page_attachments" VALUES(18,'image/jpeg','pellegrini_icon.jpg',28376,17,'icon',50,46,'2009-11-04 14:17:16',1,'2009-11-05 00:52:52',1,NULL,NULL,NULL,18,NULL);
INSERT INTO "page_attachments" VALUES(19,'image/jpeg','pellegrini_face.jpg',28376,17,'face',75,69,'2009-11-04 14:17:16',1,'2009-11-05 00:52:52',1,NULL,NULL,NULL,19,NULL);
INSERT INTO "page_attachments" VALUES(20,'image/jpeg','pellegrini_thumb.jpg',28376,17,'thumb',217,200,'2009-11-04 14:17:16',1,'2009-11-05 00:52:52',1,NULL,NULL,NULL,20,NULL);
INSERT INTO "page_attachments" VALUES(21,'image/jpeg','van-gaal.jpg',32583,NULL,NULL,350,322,'2009-11-04 14:19:24',1,'2009-11-05 00:52:56',1,NULL,'couch','profile',21,6);
INSERT INTO "page_attachments" VALUES(22,'image/jpeg','van-gaal_icon.jpg',32573,21,'icon',50,46,'2009-11-04 14:19:24',1,'2009-11-05 00:52:56',1,NULL,NULL,NULL,22,NULL);
INSERT INTO "page_attachments" VALUES(23,'image/jpeg','van-gaal_face.jpg',32573,21,'face',75,69,'2009-11-04 14:19:24',1,'2009-11-05 00:52:56',1,NULL,NULL,NULL,23,NULL);
INSERT INTO "page_attachments" VALUES(24,'image/jpeg','van-gaal_thumb.jpg',32573,21,'thumb',217,200,'2009-11-04 14:19:24',1,'2009-11-05 00:52:56',1,NULL,NULL,NULL,24,NULL);
INSERT INTO "page_attachments" VALUES(25,'image/jpeg','guardiola.jpg',32288,NULL,NULL,350,322,'2009-11-04 14:21:59',1,'2009-11-05 00:53:01',1,NULL,'guardiola','profile',25,7);
INSERT INTO "page_attachments" VALUES(26,'image/jpeg','guardiola_icon.jpg',32227,25,'icon',50,46,'2009-11-04 14:21:59',1,'2009-11-05 00:53:01',1,NULL,NULL,NULL,26,NULL);
INSERT INTO "page_attachments" VALUES(27,'image/jpeg','guardiola_face.jpg',32227,25,'face',75,69,'2009-11-04 14:21:59',1,'2009-11-05 00:53:01',1,NULL,NULL,NULL,27,NULL);
INSERT INTO "page_attachments" VALUES(28,'image/jpeg','guardiola_thumb.jpg',32227,25,'thumb',217,200,'2009-11-04 14:21:59',1,'2009-11-05 00:53:01',1,NULL,NULL,NULL,28,NULL);
INSERT INTO "page_attachments" VALUES(29,'image/jpeg','buffon.jpg',27302,NULL,NULL,350,322,'2009-11-04 14:23:54',1,'2009-11-07 16:54:11',1,NULL,'buffon','profile',29,8);
INSERT INTO "page_attachments" VALUES(30,'image/jpeg','buffon_icon.jpg',27305,29,'icon',50,46,'2009-11-04 14:23:54',1,'2009-11-07 16:54:11',1,NULL,NULL,NULL,30,NULL);
INSERT INTO "page_attachments" VALUES(31,'image/jpeg','buffon_face.jpg',27305,29,'face',75,69,'2009-11-04 14:23:54',1,'2009-11-07 16:54:11',1,NULL,NULL,NULL,31,NULL);
INSERT INTO "page_attachments" VALUES(32,'image/jpeg','buffon_thumb.jpg',27305,29,'thumb',217,200,'2009-11-04 14:23:54',1,'2009-11-07 16:54:11',1,NULL,NULL,NULL,32,NULL);
INSERT INTO "page_attachments" VALUES(33,'image/jpeg','kaka.jpg',35727,NULL,NULL,350,322,'2009-11-04 14:25:48',1,'2009-11-04 14:26:44',1,NULL,'kaka','profile',33,9);
INSERT INTO "page_attachments" VALUES(34,'image/jpeg','kaka_icon.jpg',35725,33,'icon',50,46,'2009-11-04 14:25:48',1,'2009-11-04 14:26:44',1,NULL,NULL,NULL,34,NULL);
INSERT INTO "page_attachments" VALUES(35,'image/jpeg','kaka_face.jpg',35725,33,'face',75,69,'2009-11-04 14:25:48',1,'2009-11-04 14:26:44',1,NULL,NULL,NULL,35,NULL);
INSERT INTO "page_attachments" VALUES(36,'image/jpeg','kaka_thumb.jpg',35725,33,'thumb',217,200,'2009-11-04 14:25:48',1,'2009-11-04 14:26:44',1,NULL,NULL,NULL,36,NULL);
INSERT INTO "page_attachments" VALUES(37,'image/jpeg','kuyt.jpg',68942,NULL,NULL,350,322,'2009-11-05 01:00:35',1,'2009-11-05 01:00:35',1,NULL,'kuyt','profile',37,10);
INSERT INTO "page_attachments" VALUES(38,'image/jpeg','kuyt_icon.jpg',34294,37,'icon',50,46,'2009-11-05 01:00:35',1,'2009-11-05 01:00:35',NULL,NULL,NULL,NULL,38,NULL);
INSERT INTO "page_attachments" VALUES(39,'image/jpeg','kuyt_face.jpg',34294,37,'face',75,69,'2009-11-05 01:00:35',1,'2009-11-05 01:00:35',NULL,NULL,NULL,NULL,39,NULL);
INSERT INTO "page_attachments" VALUES(40,'image/jpeg','kuyt_thumb.jpg',34294,37,'thumb',217,200,'2009-11-05 01:00:35',1,'2009-11-05 01:00:35',NULL,NULL,NULL,NULL,40,NULL);
INSERT INTO "page_attachments" VALUES(41,'image/jpeg','messi.jpg',80410,NULL,NULL,350,322,'2009-11-05 01:03:01',1,'2009-11-05 01:03:01',1,NULL,'messi','profile',41,11);
INSERT INTO "page_attachments" VALUES(42,'image/jpeg','messi_icon.jpg',40403,41,'icon',50,46,'2009-11-05 01:03:01',1,'2009-11-05 01:03:01',NULL,NULL,NULL,NULL,42,NULL);
INSERT INTO "page_attachments" VALUES(43,'image/jpeg','messi_face.jpg',40403,41,'face',75,69,'2009-11-05 01:03:01',1,'2009-11-05 01:03:01',NULL,NULL,NULL,NULL,43,NULL);
INSERT INTO "page_attachments" VALUES(44,'image/jpeg','messi_thumb.jpg',40403,41,'thumb',217,200,'2009-11-05 01:03:01',1,'2009-11-05 01:03:01',NULL,NULL,NULL,NULL,44,NULL);
INSERT INTO "page_attachments" VALUES(45,'image/jpeg','falcao.jpg',67092,NULL,NULL,350,322,'2009-11-05 01:05:09',1,'2009-11-05 01:05:09',1,NULL,'falcao','profile',45,12);
INSERT INTO "page_attachments" VALUES(46,'image/jpeg','falcao_icon.jpg',33280,45,'icon',50,46,'2009-11-05 01:05:09',1,'2009-11-05 01:05:09',NULL,NULL,NULL,NULL,46,NULL);
INSERT INTO "page_attachments" VALUES(47,'image/jpeg','falcao_face.jpg',33280,45,'face',75,69,'2009-11-05 01:05:09',1,'2009-11-05 01:05:09',NULL,NULL,NULL,NULL,47,NULL);
INSERT INTO "page_attachments" VALUES(48,'image/jpeg','falcao_thumb.jpg',33280,45,'thumb',217,200,'2009-11-05 01:05:09',1,'2009-11-05 01:05:09',NULL,NULL,NULL,NULL,48,NULL);
INSERT INTO "page_attachments" VALUES(49,'image/jpeg','gerrard.jpg',112121,NULL,NULL,350,322,'2009-11-05 01:08:07',1,'2009-11-05 01:08:08',1,NULL,'gerrard','profile',49,13);
INSERT INTO "page_attachments" VALUES(50,'image/jpeg','gerrard_icon.jpg',57815,49,'icon',50,46,'2009-11-05 01:08:07',1,'2009-11-05 01:08:07',NULL,NULL,NULL,NULL,50,NULL);
INSERT INTO "page_attachments" VALUES(51,'image/jpeg','gerrard_face.jpg',57815,49,'face',75,69,'2009-11-05 01:08:07',1,'2009-11-05 01:08:07',NULL,NULL,NULL,NULL,51,NULL);
INSERT INTO "page_attachments" VALUES(52,'image/jpeg','gerrard_thumb.jpg',57815,49,'thumb',217,200,'2009-11-05 01:08:08',1,'2009-11-05 01:08:08',NULL,NULL,NULL,NULL,52,NULL);
INSERT INTO "page_attachments" VALUES(53,'image/jpeg','torres.jpg',41731,NULL,NULL,350,325,'2009-11-05 01:09:22',1,'2009-11-07 17:16:27',1,NULL,'torres','profile',53,14);
INSERT INTO "page_attachments" VALUES(54,'image/jpeg','torres_icon.jpg',41722,53,'icon',50,46,'2009-11-05 01:09:22',1,'2009-11-07 17:16:27',1,NULL,NULL,NULL,54,NULL);
INSERT INTO "page_attachments" VALUES(55,'image/jpeg','torres_face.jpg',41722,53,'face',75,70,'2009-11-05 01:09:22',1,'2009-11-07 17:16:27',1,NULL,NULL,NULL,55,NULL);
INSERT INTO "page_attachments" VALUES(56,'image/jpeg','torres_thumb.jpg',41722,53,'thumb',215,200,'2009-11-05 01:09:22',1,'2009-11-07 17:16:27',1,NULL,NULL,NULL,56,NULL);
INSERT INTO "page_attachments" VALUES(57,'image/jpeg','forlan.jpg',43940,NULL,NULL,350,322,'2009-11-05 01:12:19',1,'2009-11-05 01:12:19',1,NULL,'forlan','profile',57,15);
INSERT INTO "page_attachments" VALUES(58,'image/jpeg','forlan_icon.jpg',30758,57,'icon',50,46,'2009-11-05 01:12:19',1,'2009-11-05 01:12:19',NULL,NULL,NULL,NULL,58,NULL);
INSERT INTO "page_attachments" VALUES(59,'image/jpeg','forlan_face.jpg',30758,57,'face',75,69,'2009-11-05 01:12:19',1,'2009-11-05 01:12:19',NULL,NULL,NULL,NULL,59,NULL);
INSERT INTO "page_attachments" VALUES(60,'image/jpeg','forlan_thumb.jpg',30758,57,'thumb',217,200,'2009-11-05 01:12:19',1,'2009-11-05 01:12:19',NULL,NULL,NULL,NULL,60,NULL);
INSERT INTO "page_attachments" VALUES(61,'image/jpeg','riquelme.jpg',75229,NULL,NULL,350,322,'2009-11-05 01:14:31',1,'2009-11-05 01:14:31',1,NULL,'riquelme','profile',61,16);
INSERT INTO "page_attachments" VALUES(62,'image/jpeg','riquelme_icon.jpg',38869,61,'icon',50,46,'2009-11-05 01:14:31',1,'2009-11-05 01:14:31',NULL,NULL,NULL,NULL,62,NULL);
INSERT INTO "page_attachments" VALUES(63,'image/jpeg','riquelme_face.jpg',38869,61,'face',75,69,'2009-11-05 01:14:31',1,'2009-11-05 01:14:31',NULL,NULL,NULL,NULL,63,NULL);
INSERT INTO "page_attachments" VALUES(64,'image/jpeg','riquelme_thumb.jpg',38869,61,'thumb',217,200,'2009-11-05 01:14:31',1,'2009-11-05 01:14:31',NULL,NULL,NULL,NULL,64,NULL);
CREATE TABLE "page_parts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(100), "filter_id" varchar(25), "content" text, "page_id" integer);
INSERT INTO "page_parts" VALUES(1,'body','','<h3>Managers</h3>
<r:content part="management-team" />

<h2> Managers code </h2>

<script src="http://gist.github.com/230334.js"></script>

<h3>Regular Employees</h3>
<r:content part="regular-employees" />

<h2> Regular Employees code </h2>

<script src="http://gist.github.com/230342.js"></script>',1);
INSERT INTO "page_parts" VALUES(2,'body','Textile','The file you were looking for could not be found.

Attempted URL: @<r:attempted_url />@

It is possible that you typed the URL incorrectly or that you clicked on a bad link.

"<< Back to Home Page":/
',2);
INSERT INTO "page_parts" VALUES(3,'body','','<?xml version="1.0" encoding="UTF-8"?>
<rss version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/">
  <channel>
    <title>Article RSS Feed</title>
    <link>http://your-web-site.com<r:url /></link>
    <language>en-us</language>
    <ttl>40</ttl>
    <description>The main blog feed for my Web site.</description>
    <r:find url="/articles/">
    <r:children:each limit="10" order="desc">
        <item>
          <title><r:title /></title>
          <description><r:escape_html><r:content /></r:escape_html></description>
          <pubDate><r:rfc1123_date /></pubDate>
          <guid>http://your-web-site.com<r:url /></guid>
          <link>http://your-web-site.com<r:url /></link>
        </item>
    </r:children:each>
    </r:find>
  </channel>
</rss>
',3);
INSERT INTO "page_parts" VALUES(4,'body','','<r:children:each limit="5" order="desc">
<div class="entry">
  <h3><r:link /></h3>
  <r:content />
  <r:if_content part="extended"><r:link anchor="extended">Continue Reading&#8230;</r:link></r:if_content>
  <p class="info">Posted by <r:author /> on <r:date format="%b %d, %Y" /></p>
</div>
</r:children:each>',4);
INSERT INTO "page_parts" VALUES(5,'body','Textile','This post uses "textile":http://www.textism.com/tools/textile/.
',5);
INSERT INTO "page_parts" VALUES(6,'body','Markdown','This post uses **Markdown**.
',6);
INSERT INTO "page_parts" VALUES(7,'body','','a {
  color: #3256B6;
}
a:visited {
  color: #cc9;
}
a:hover, a:visited:hover {
  color: #e00;
  text-decoration: none;
}
body {
  background-color: #041a61;
  font-family: Verdana, Arial, Helvetica, sans-serif;
  font-size: 80%;
  padding: 0;
  margin: 0;
  text-align: center;
}
h1 {
  font-family: "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
  font-size: 250%;
  font-weight: normal;
}
h3 {
  color: #999;
  font-family: "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
  font-size: 180%;
  font-weight: normal;
  margin-top: 1.5em;
  margin-bottom: .5em;
}
.hidden {
  display: none;
}
.clear {
  clear: both;
}
#page {
  margin-left: auto;
  margin-right: auto;
  width: 730px;
  text-align: left;
}
#header {
  background-color: #4f57c5;
  border-bottom: 4px solid #fc0;
  color: white;
  font-family: "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
  padding: 0;
  padding-top: 30px;
  padding-bottom: 30px;
  text-align: center;
}
#site-title {
  color: white;
  font-size: 325%;
}
#site-title a, #site-title a:visited {
  color: white;
  text-decoration: none;
}
#site-title a:hover, #site-title a:hover {
  color: white;
  text-decoration: underline;
}
#site-subtitle {
  font-style: italic;
  letter-spacing: 2px;
  text-transform: lowercase;
}
#main {
  background-color: white;
  border-bottom: 4px solid #fc0;
  float: left;
  width: 100%;
}
#content-wrapper {
  float: left;
  width: 500px;
}
#content {
  padding: 25px;
  border-right: 1px dotted #a3a39c;
}
#content h1 {
  margin-top: 0;
}
#content h3 a {
  border-bottom: 1px dotted #a3a39c;
  display: block;
  padding-bottom: 2px;
  text-decoration: none;
}
#content p {
  line-height: 160%;
}
#content .info {
  color: #b0af99;
  font-size: 80%;
  margin-top: 1.5em;
}
#content .entry .info {
  margin-top: 1em;
}
#content .first.entry {
  background-color: #f7f3e8;
  margin: -25px;
  margin-bottom: 0;
  padding: 25px;
}
#content .first.entry h3 {
  margin-top: 0.25em;
}
#sidebar-wrapper {
  float: right;
  width: 225px;
}
#sidebar {
  font-size: 90%;
  padding: 15px;
  padding-top: 0px;
}
#sidebar h3 {
  font-size: 160%;
}
#sidebar p {
  line-height: 140%;
}
#sidebar ul {
  margin-left: 1.5em;
  padding: 0;
}
#sidebar li {
  margin-bottom: .25em;
}
#footer {
  color: #818cb0;
  float: left;
  font-size: 90%;
  padding-top: 1px;
  padding-bottom: 20px;
  width: 100%;
}',7);
INSERT INTO "page_parts" VALUES(8,'sidebar','Textile','h3. About

Radiant CMS employees-directory Extension

h3. Favorite Sites

* "Radiant CMS":http://radiantcms.org
* "employees-directory extension":http://github.com/jpemberthy/radiant-employees-directory
* "This demo applicaton code":http://github.com/jpemberthy/radiant-employees-demo
',1);
INSERT INTO "page_parts" VALUES(9,'body','','This is the third post.',8);
INSERT INTO "page_parts" VALUES(10,'body','Textile','This is just an example of how Radiant can be used to power a Weblog.',9);
INSERT INTO "page_parts" VALUES(11,'sidebar','Textile','h3. Contact Me

List your contact information here.',9);
INSERT INTO "page_parts" VALUES(12,'sidebar','','<h3>Archives By Month</h3>
<ul>
<r:find url="/articles/">
<r:children:each order="desc">
<r:header><li><a href="<r:date format="/articles/%Y/%m/" />"><r:date format="%B %Y" /></a></li></r:header>
</r:children:each>
</r:find>
</ul>',4);
INSERT INTO "page_parts" VALUES(13,'body','','<r:archive:children:each order="desc">
<div class="entry">
  <h3><r:link /></h3>
  <r:content />
  <r:if_content part="extended"><r:link anchor="extended">Continue Reading&#8230;</r:link></r:if_content>
  <p class="info">Posted by <r:author /> on <r:date format="%b %d, %Y" /></p>
</div>
</r:archive:children:each>',10);
INSERT INTO "page_parts" VALUES(14,'body','','<h2 class="employees"><r:employee:kind /></h2>
<p><span class="bold"><r:employee:name />.</span> <em><r:employee:title /></em> <br/>
<img alt="<r:employee:first_name />" src="<r:employee:profile_thumbnail_filename />" />
<r:employee:extended_profile />',11);
INSERT INTO "page_parts" VALUES(15,'body','','<h3>Managers</h3>
<r:content part="management-team" />

<h3>Regular Employees</h3>
<r:content part="regular-employees" />

',12);
INSERT INTO "page_parts" VALUES(17,'management-team','','<table class="employees">
    <tbody> 
      <r:employees:collection employee_type="managers" container="table">
        <r:face_profile />
      </r:employees:collection>
    </tbody>
 </table>',12);
INSERT INTO "page_parts" VALUES(19,'regular-employees','','<table class="employees">
    <tbody> 
      <r:employees:collection container="table" order="first_name">
        <r:face_profile />
      </r:employees:collection>
    </tbody>
 </table>',12);
INSERT INTO "page_parts" VALUES(20,'management-team','','<table class="employees">
    <tbody> 
      <r:employees:collection employee_type="managers" container="table">
        <r:face_profile />
      </r:employees:collection>
    </tbody>
 </table>',1);
INSERT INTO "page_parts" VALUES(21,'regular-employees','','<table class="employees">
    <tbody> 
      <r:employees:collection container="table" order="first_name">
        <r:face_profile />
      </r:employees:collection>
    </tbody>
 </table>',1);
CREATE TABLE "pages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "slug" varchar(100), "breadcrumb" varchar(160), "class_name" varchar(25), "status_id" integer DEFAULT 1 NOT NULL, "parent_id" integer, "layout_id" integer, "created_at" datetime, "updated_at" datetime, "published_at" datetime, "created_by_id" integer, "updated_by_id" integer, "virtual" boolean DEFAULT 'f' NOT NULL, "lock_version" integer DEFAULT 0, "description" varchar(255), "keywords" varchar(255));
INSERT INTO "pages" VALUES(1,'Home Page','/','Home','',100,NULL,1,'2009-11-03 13:39:54','2009-11-09 22:06:03','2009-11-03 08:39:54',1,1,'f',1,'','');
INSERT INTO "pages" VALUES(2,'File Not Found','file-not-found','File Not Found','FileNotFoundPage',100,1,NULL,'2009-11-03 13:39:54','2009-11-03 13:39:54','2009-11-03 08:39:54',1,NULL,'t',0,NULL,NULL);
INSERT INTO "pages" VALUES(3,'RSS Feed','rss','RSS Feed',NULL,100,1,3,'2009-11-03 13:39:54','2009-11-03 13:39:54','2009-11-03 08:39:54',1,NULL,'f',0,NULL,NULL);
INSERT INTO "pages" VALUES(4,'Articles','articles','Articles','ArchivePage',100,1,NULL,'2009-11-03 13:39:55','2009-11-03 13:39:55','2009-11-03 08:39:55',1,NULL,'f',0,NULL,NULL);
INSERT INTO "pages" VALUES(5,'First Post','first-post','First Post',NULL,100,4,NULL,'2009-11-03 13:39:55','2009-11-03 13:39:55','2006-06-09 00:00:00',1,NULL,'f',0,NULL,NULL);
INSERT INTO "pages" VALUES(6,'Second Post','second-post','Second Post',NULL,100,4,NULL,'2009-11-03 13:39:55','2009-11-03 13:39:55','2006-06-10 00:00:00',1,NULL,'f',0,NULL,NULL);
INSERT INTO "pages" VALUES(7,'Styles','styles.css','Styles',NULL,100,1,2,'2009-11-03 13:39:55','2009-11-03 13:39:55','2009-11-03 08:39:55',1,NULL,'f',0,NULL,NULL);
INSERT INTO "pages" VALUES(8,'Third Post','third-post','Third Post',NULL,100,4,NULL,'2009-11-03 13:39:55','2009-11-03 13:39:55','2009-11-03 08:39:55',1,NULL,'f',0,NULL,NULL);
INSERT INTO "pages" VALUES(9,'About','about','About',NULL,100,1,NULL,'2009-11-03 13:39:55','2009-11-03 13:39:55','2009-11-03 08:39:55',1,NULL,'f',0,NULL,NULL);
INSERT INTO "pages" VALUES(10,'%B %Y Archives','monthly-archives','Monthly Archives','ArchiveMonthIndexPage',100,4,NULL,'2009-11-03 13:39:55','2009-11-03 13:39:55','2009-11-03 08:39:55',1,NULL,'t',0,NULL,NULL);
INSERT INTO "pages" VALUES(11,'employee_template','employee_template','employee_template','',100,1,NULL,'2009-11-03 13:41:15','2009-11-04 02:59:25','2009-11-03 08:41:15',NULL,1,'f',2,'','');
INSERT INTO "pages" VALUES(12,'employees','employees','employees','',100,1,1,'2009-11-03 13:45:05','2009-11-03 14:17:15','2009-11-03 08:45:05',1,1,'f',1,'','');
CREATE TABLE "sessions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "session_id" varchar(255), "data" text, "updated_at" datetime);
CREATE TABLE "snippets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(100) DEFAULT '' NOT NULL, "filter_id" varchar(25), "content" text, "created_at" datetime, "updated_at" datetime, "created_by_id" integer, "updated_by_id" integer, "lock_version" integer DEFAULT 0);
INSERT INTO "snippets" VALUES(1,'header','','<div id="header">
  <div id="site-title"><r:if_url matches="^/$">Employees Directory</r:if_url><r:unless_url matches="^/$"><a href="/">Employees Directory</a></r:unless_url></div>
  <div id="site-subtitle">employees-directory management for radiant</div>
</div>
<hr class="hidden" />
','2009-11-03 13:39:54','2009-11-09 22:26:27',1,1,4);
INSERT INTO "snippets" VALUES(2,'footer',NULL,'<hr class="hidden" />
<div id="footer">
  <p>Copyright &copy; <r:date format="%Y" />, Your Name Here. All rights reserved.<br />
    This site is powered by <a href="http://radiantcms.org/">Radiant CMS</a>.</p>
</div>
','2009-11-03 13:39:54','2009-11-03 13:39:54',1,NULL,0);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(100), "email" varchar(255), "login" varchar(40) DEFAULT '' NOT NULL, "password" varchar(40), "created_at" datetime, "updated_at" datetime, "created_by_id" integer, "updated_by_id" integer, "admin" boolean DEFAULT 'f' NOT NULL, "developer" boolean DEFAULT 'f' NOT NULL, "notes" text, "lock_version" integer DEFAULT 0, "salt" varchar(255), "session_token" varchar(255));
INSERT INTO "users" VALUES(1,'Administrator',NULL,'admin','c7719803bda68ec777274204e6c7ecd93a9eae58','2009-11-03 13:39:52','2009-11-03 13:39:52',NULL,NULL,'t','f',NULL,0,'8e635aa68645757bc78a0a0dd518dd91cd998b4c',NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "key" ON "config" ("key");
CREATE INDEX "parts_by_page" ON "page_parts" ("page_id", "name");
CREATE INDEX "pages_class_name" ON "pages" ("class_name");
CREATE INDEX "pages_parent_id" ON "pages" ("parent_id");
CREATE INDEX "pages_child_slug" ON "pages" ("slug", "parent_id");
CREATE INDEX "pages_published" ON "pages" ("virtual", "status_id");
CREATE INDEX "index_sessions_on_session_id" ON "sessions" ("session_id");
CREATE INDEX "index_sessions_on_updated_at" ON "sessions" ("updated_at");
CREATE UNIQUE INDEX "name" ON "snippets" ("name");
CREATE UNIQUE INDEX "login" ON "users" ("login");
COMMIT;
