use mlangdb;
 create table categories
(catnum int primary key auto_increment not null,
 catname varchar(40));
  
 create table PartOfSpeech
(part_speech_num int primary key auto_increment not null,
 name_part_speech varchar(25));
 
 create table ba_lang
(bashlang_id int primary key auto_increment not null,
BashkirWords varchar(40));
 
 create table tt_lang
(tatlang_id int primary key auto_increment not null,
 TatarWords varchar(40));
 
 create table en_lang
(englang_id int primary key auto_increment not null,
 EnglishWords varchar(40));
 
 create table ru_lang
(rulang_id int primary key auto_increment not null,
 RussianWords varchar(40));
 
 create table bayu_lang
(southbashlang_id int primary key auto_increment not null,
 YurmatinWords varchar(40));
 
 create table Bash_Rus
 (category int not null,
  part_speech int,
  en_us int,
  ba_ru int,
  bayu_ru int,
  ru_ru int,
  tt_ru int,
  
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (ba_ru) references ba_lang(bashlang_id),
  foreign key (ru_ru) references ru_lang(rulang_id),
  foreign key (bayu_ru) references bayu_lang(southbashlang_id),
  foreign key (en_us) references en_lang(englang_id),
  foreign key (tt_ru) references tt_lang(tatlang_id));
  
  create table SouthBash_Bash 
(category int not null,
  part_speech int,
  bayu_ru int,
  ba_ru int,
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (ba_ru) references ba_lang(bashlang_id),
  foreign key (bayu_ru) references bayu_lang(southbashlang_id));
  
  create table SouthBash_Tat 
(category int not null,
  part_speech int,
  bayu_ru int,
  tt_ru int,
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (bayu_ru) references bayu_lang(southbashlang_id),
  foreign key (tt_ru) references tt_lang(tatlang_id));
  
  create table SouthBash_Eng
(category int not null,
  part_speech int,
  bayu_ru int,
  en_us int,
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (bayu_ru) references bayu_lang(southbashlang_id),
  foreign key (en_us) references en_lang(englang_id));
  
  create table SouthBash_Rus
(category int not null,
  part_speech int,
  bayu_ru int,
  ru_ru int,
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (bayu_ru) references bayu_lang(southbashlang_id),
  foreign key (ru_ru) references ru_lang(rulang_id));
  
  create table Bash_Eng
  (category int not null,
  part_speech int,
  ba_ru int,
  en_us int,
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (ba_ru) references ba_lang(bashlang_id),
  foreign key (en_us) references en_lang(englang_id));
  
  create table Bash_Tat
  (category int not null,
  part_speech int,
  ba_ru int,
  tt_ru int,
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (ba_ru) references ba_lang(bashlang_id),
  foreign key (tt_ru) references tt_lang(tatlang_id));
  
  create table Eng_Rus
  (category int not null,
  part_speech int,
  en_us int,
  ru_ru int,
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (en_us) references en_lang(englang_id),
  foreign key (ru_ru) references ru_lang(rulang_id));
  
  create table Eng_Tat
  (category int not null,
  part_speech int,
  en_us int,
  tt_ru int,
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (en_us) references en_lang(englang_id),
  foreign key (tt_ru) references tt_lang(tatlang_id));  
  
  create table Rus_Tat
  (category int not null,
  part_speech int,
  ru_ru int,
  tt_ru int,
  foreign key (category) references categories(catnum),
  foreign key (part_speech) references PartOfSpeech(part_speech_num),
  foreign key (ru_ru) references ru_lang(rulang_id),
  foreign key (tt_ru) references tt_lang(tatlang_id));
  
INSERT INTO categories VALUES ('1', 'Анатомия');
INSERT INTO categories VALUES ('2', 'Археология');
INSERT INTO categories VALUES ('3', 'Архитектура');
INSERT INTO categories VALUES ('4', 'Базовые глаголы');
INSERT INTO categories VALUES ('5', 'Бизнес');
INSERT INTO categories VALUES ('6', 'Внешность');
INSERT INTO categories VALUES ('7', 'Военное дело, оружие');
INSERT INTO categories VALUES ('8', 'Время года, календарь');
INSERT INTO categories VALUES ('9', 'Вещи');
INSERT INTO categories VALUES ('10', 'География');
INSERT INTO categories VALUES ('11', 'Город');
INSERT INTO categories VALUES ('12', 'Деньги');
INSERT INTO categories VALUES ('13', 'Деревья, кустарники');
INSERT INTO categories VALUES ('14', 'Дом');
INSERT INTO categories VALUES ('15', 'Еда');
INSERT INTO categories VALUES ('16', 'Животные');
INSERT INTO categories VALUES ('17', 'Здоровье');
INSERT INTO categories VALUES ('18', 'Знаки зодиака');
INSERT INTO categories VALUES ('19', 'Искусство');
INSERT INTO categories VALUES ('20', 'Карьера');
INSERT INTO categories VALUES ('21', 'Кино');
INSERT INTO categories VALUES ('22', 'Компьютер');
INSERT INTO categories VALUES ('23', 'Космос');
INSERT INTO categories VALUES ('24', 'Литература');
INSERT INTO categories VALUES ('25', 'Магазины');
INSERT INTO categories VALUES ('26', 'Маркетинг');
INSERT INTO categories VALUES ('27', 'Математика');
INSERT INTO categories VALUES ('28', 'Мебель');
INSERT INTO categories VALUES ('29', 'Музыка');
INSERT INTO categories VALUES ('30', 'Одежда');
INSERT INTO categories VALUES ('31', 'Политика');
INSERT INTO categories VALUES ('32', 'Психология');
INSERT INTO categories VALUES ('33', 'Путешествия');
INSERT INTO categories VALUES ('34', 'Рыбы');
INSERT INTO categories VALUES ('35', 'Семья');
INSERT INTO categories VALUES ('36', 'СМИ');
INSERT INTO categories VALUES ('37', 'Социальные сети');
INSERT INTO categories VALUES ('38', 'Спорт');
INSERT INTO categories VALUES ('39', 'Строительство');
INSERT INTO categories VALUES ('40', 'Транспорт');
INSERT INTO categories VALUES ('41', 'Фотография');
INSERT INTO categories VALUES ('42', 'Характер');
INSERT INTO categories VALUES ('43', 'Хобби');
INSERT INTO categories VALUES ('44', 'Цвета');
INSERT INTO categories VALUES ('45', 'Цветы');
INSERT INTO categories VALUES ('46', 'Числа');
INSERT INTO categories VALUES ('47', 'Экология');
INSERT INTO categories VALUES ('48', 'Экономика');
INSERT INTO categories VALUES ('49', 'Юриспруденция');
INSERT INTO categories VALUES ('50', 'Список слов Сводеша');

INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('1', 'Мин');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('2', 'Һин');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('3', 'Беҙ');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('4', 'Һеҙ');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('5', 'Ул');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('6', 'Ул');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('7', 'Ул');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('8', 'Ул');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('9', 'Был');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('10', 'Шул');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('11', 'Бында');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('12', 'Унда');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('13', 'Кем?');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('14', 'Ни?');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('15', 'Ҡайҙа?');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('16', 'Ҡасан?');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('17', 'Нисек?');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('18', 'түгел');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('19', 'Барлыҡ');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('20', 'Күп');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('21', 'Бер нисә');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('22', 'Әҙ');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('23', 'Башҡа');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('24', 'Бер');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('25', 'Ике');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('26', 'Өс');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('27', 'Дүрт');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('28', 'Биш');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('29', 'Өлкән');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('30', 'Оҙон');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('31', 'Киң');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('32', 'Ҡалын');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('33', 'Ауыр');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('34', 'Бәләкәс');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('35', 'Ҡыҫҡа');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('36', 'Тар');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('37', 'Йоҡа');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('38', 'Ҡатын');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('39', 'Ир');
INSERT INTO `ba_lang`(`bashlang_id`, `BashkirWords`) VALUES ('40', 'Кеше');

INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('1', 'Мин');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('2', 'Cин');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('3', 'Беp');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('4', 'Сез');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('5', 'Ул');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('6', 'Ул');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('7', 'Ул');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('8', 'Ул');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('9', 'Бу');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('10', 'Шу');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('11', 'Монда');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('12', 'Анда');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('13', 'Кем?');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('14', 'Ни?');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('15', 'Кайда?');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('16', 'Качан?');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('17', 'Ничек?');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('18', 'түгел');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('19', 'Барлык');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('20', 'Күп');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('21', 'Бер ничә');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('22', 'Әз');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('23', 'Башка');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('24', 'Бер');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('25', 'Ике');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('26', 'Өч');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('27', 'Дүрт');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('28', 'Биш');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('29', 'Өлкән');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('30', 'Озын');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('31', 'Киң');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('32', 'Калын');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('33', 'Ар');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('34', 'Киче');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('35', 'Кыска');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('36', 'Тар');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('37', 'Нәзек');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('38', 'Катын');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('39', 'Ир');
INSERT INTO `tt_lang`(`tatlang_id`, `TatarWords`) VALUES ('40', 'Кеше');

INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('1', 'I');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('2', 'Thou');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('3', 'We');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('4', 'You');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('5', 'He');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('6', 'She');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('7', 'They');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('8', 'It');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('9', 'This');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('10', 'That');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('11', 'Here');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('12', 'There');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('13', 'Who?');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('14', 'What?');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('15', 'Where?');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('16', 'When?');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('17', 'How?');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('18', 'Not');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('19', 'All');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('20', 'Many');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('21', 'Some');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('22', 'Few');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('23', 'Other');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('24', 'One');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('25', 'Two');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('26', 'Three');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('27', 'Four');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('28', 'Five');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('29', 'Big');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('30', 'Long');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('31', 'Wide');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('32', 'Thick');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('33', 'Heavy');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('34', 'Small');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('35', 'Short');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('36', 'Narrow');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('37', 'Thin');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('38', 'Woman');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('39', 'Man');
INSERT INTO `en_lang`(`englang_id`, `EnglishWords`) VALUES ('40', 'Human');

INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('1', 'Мин');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('2', 'Ҫин');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('3', 'Беҙ');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('4', 'Ҫеҙ');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('5', 'Ул');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('6', 'Ул');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('7', 'Ул');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('8', 'Ул');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('9', 'Был');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('10', 'Шул');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('11', 'Мында');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('12', 'Анда');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('13', 'Кем?');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('14', 'Ний?');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('15', 'Ҡайҙа?');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('16', 'Ҡасан?');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('17', 'Нисек?');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('18', 'түгел');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('19', 'Бөтә');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('20', 'Күп');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('21', 'Әллә нисә');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('22', 'Әҙ');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('23', 'Икенсе');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('24', 'Бер');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('25', 'Ике');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('26', 'Өс');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('27', 'Дүрт');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('28', 'Биш');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('29', 'Ҙур');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('30', 'Оҙон');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('31', 'Киң');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('32', 'Ҡалын');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('33', 'Аур');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('34', 'Бәләкәй');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('35', 'Ҡыҫҡаҡ');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('36', 'Тар');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('37', 'Йоҡаҡ');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('38', 'Бисә');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('39', 'Ир');
INSERT INTO `bayu_lang`(`southbashlang_id`, `YurmatinWords`) VALUES ('40', 'Кеше');

INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('1', 'Я');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('2', 'Ты');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('3', 'Мы');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('4', 'Вы');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('5', 'Он');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('6', 'Она');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('7', 'Они');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('8', 'Оно');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('9', 'Этот');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('10', 'Тот');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('11', 'Здесь');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('12', 'Там');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('13', 'Кто?');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('14', 'Что?');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('15', 'Где?');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('16', 'Когда?');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('17', 'Как?');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('18', 'Не');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('19', 'Все');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('20', 'Много');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('21', 'Несколько');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('22', 'Немного');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('23', 'Другой');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('24', 'Один');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('25', 'Два');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('26', 'Три');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('27', 'Четыре');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('28', 'Пять');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('29', 'Большой');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('30', 'Длинный');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('31', 'Широкий');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('32', 'Плотный');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('33', 'Тяжёлый');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('34', 'Маленький');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('35', 'Короткий');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('36', 'Узкий');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('37', 'Тонкий');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('38', 'Женщина');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('39', 'Мужчина');
INSERT INTO `ru_lang`(`rulang_id`, `RussianWords`) VALUES ('40', 'Человек');

INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('1', 'Имя существительное');
INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('2', 'Имя прилагательное');
INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('3', 'Имя числительное');
INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('4', 'Местоимение');
INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('5', 'Глагол');
INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('6', 'Наречие');
INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('7', 'Предлог');
INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('8', 'Союз');
INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('9', 'Частица');
INSERT INTO `PartOfSpeech`(`part_speech_num`, `name_part_speech`) VALUES ('10', 'Местоимённое наречие');

INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `Bash_Rus`(`category`, `part_speech`, `ba_ru`, `ru_ru`) VALUES ('50', '1', '40', '40');

INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `Rus_Tat`(`category`, `part_speech`, `tt_ru`, `ru_ru`) VALUES ('50', '1', '40', '40');

INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `Eng_Tat`(`category`, `part_speech`, `en_us`, `tt_ru`) VALUES ('50', '1', '40', '40');

INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `Bash_Tat`(`category`, `part_speech`, `ba_ru`, `tt_ru`) VALUES ('50', '1', '40', '40');

INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `Eng_Rus`(`category`, `part_speech`, `en_us`, `ru_ru`) VALUES ('50', '1', '40', '40');

INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `Bash_Eng`(`category`, `part_speech`, `en_us`, `ba_ru`) VALUES ('50', '1', '40', '40');

INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `SouthBash_Bash`(`category`, `part_speech`, `bayu_ru`, `ba_ru`) VALUES ('50', '1', '40', '40');

INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `SouthBash_Tat`(`category`, `part_speech`, `bayu_ru`, `tt_ru`) VALUES ('50', '1', '40', '40');

INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `SouthBash_Eng`(`category`, `part_speech`, `en_us`, `bayu_ru`) VALUES ('50', '1', '40', '40');


INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '1', '1');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '2', '2');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '3', '3');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '4', '4');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '5', '5');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '6', '6');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '7', '7');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '8', '8');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '9', '9');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '10', '10');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '10', '11', '11');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '10', '12', '12');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '13', '13');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '14', '14');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '10', '15', '15');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '10', '16', '16');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '10', '17', '17');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '9', '18', '18');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '1', '19', '19');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '3', '20', '20');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '3', '21', '21');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '3', '22', '22');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '4', '23', '23');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '3', '24', '24');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '3', '25', '25');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '3', '26', '26');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '3', '27', '27');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '3', '28', '28');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '2', '29', '29');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '2', '30', '30');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '2', '31', '31');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '2', '32', '32');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '2', '33', '33');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '2', '34', '34');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '2', '35', '35');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '2', '36', '36');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '2', '37', '37');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '1', '38', '38');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '1', '39', '39');
INSERT INTO `SouthBash_Rus`(`category`, `part_speech`, `bayu_ru`, `ru_ru`) VALUES ('50', '1', '40', '40');

запрос на выборку всех слов с характеристиками перевода En-Ba:
select en_lang.EnglishWords as 'Английский', ba_lang.BashkirWords as 'Башкирский', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи' from Bash_Eng inner join en_lang on Bash_Eng.en_us = en_lang.englang_id inner join ba_lang on Bash_Eng.ba_ru = ba_lang.bashlang_id inner join categories on Bash_Eng.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = Bash_Eng.part_speech

запрос на выборку всех слов с характеристиками перевода En-Tt:
select en_lang.EnglishWords as 'Английский', tt_lang.TatarWords as 'Татарский', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи' from Eng_Tat inner join en_lang on Eng_Tat.en_us = en_lang.englang_id inner join tt_lang on Eng_Tat.tt_ru = tt_lang.tatlang_id inner join categories on Eng_Tat.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = Eng_Tat.part_speech

запрос на выборку всех слов с характеристиками перевода En-Yu:
select en_lang.EnglishWords as 'Английский', bayu_lang.YurmatinWords as 'Южный диалект башкирского', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи' from SouthBash_Eng inner join en_lang on SouthBash_Eng.en_us = en_lang.englang_id inner join bayu_lang on SouthBash_Eng.bayu_ru = bayu_lang.southbashlang_id inner join categories on SouthBash_Eng.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = SouthBash_Eng.part_speech group by en_lang 

запрос на выборку всех слов с характеристиками перевода En-Ru:
select en_lang.EnglishWords as 'Английский', ru_lang.RussianWords as 'Русский', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи' from Eng_Rus inner join en_lang on Eng_Rus.en_us = en_lang.englang_id inner join ru_lang on Eng_Rus.ru_ru = ru_lang.rulang_id inner join categories on Eng_Rus.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = Eng_Rus.part_speech 

запрос на выборку всех слов с характеристиками перевода Ba-Ru:
select ba_lang.BashkirWords as 'Башкирский', ru_lang.RussianWords as 'Русский', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи' from Bash_Rus inner join ru_lang on Bash_Rus.ru_ru = ru_lang.rulang_id inner join ba_lang on Bash_Rus.ba_ru = ba_lang.bashlang_id inner join categories on Bash_Rus.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = Bash_Rus.part_speech

запрос на выборку всех слов с характеристиками перевода Ba-Tt:
select ba_lang.BashkirWords as 'Башкирский', tt_lang.TatarWords as 'Татарский', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи'  from Bash_Tat inner join tt_lang on Bash_Tat.tt_ru = tt_lang.tatlang_id inner join ba_lang on Bash_Tat.ba_ru = ba_lang.bashlang_id inner join categories on Bash_Tat.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = Bash_Tat.part_speech 

запрос на выборку всех слов с характеристиками перевода Ba-Yu:
select ba_lang.BashkirWords as 'Башкирский', bayu_lang.YurmatinWords as 'Южный диалект башкирского', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи' from SouthBash_Bash inner join bayu_lang on SouthBash_Bash.bayu_ru = bayu_lang.southbashlang_id inner join ba_lang on SouthBash_Bash.ba_ru = ba_lang.bashlang_id inner join categories on SouthBash_Bash.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = SouthBash_Bash.part_speech group by ba_lang 

запрос на выборку всех слов с характеристиками перевода Ru-Tt:
select ru_lang.RussianWords as 'Русский', tt_lang.TatarWords as 'Татарский', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи' from Rus_Tat inner join ru_lang on Rus_Tat.ru_ru = ru_lang.rulang_id inner join tt_lang on Rus_Tat.tt_ru = tt_lang.tatlang_id inner join categories on Rus_Tat.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = Rus_Tat.part_speech 

запрос на выборку всех слов с характеристиками перевода Ru-Yu:
select ru_lang.RussianWords as 'Русский', bayu_lang.YurmatinWords as 'Южный диалект башкирского', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи' from SouthBash_Rus inner join ru_lang on SouthBash_Rus.ru_ru = ru_lang.rulang_id inner join bayu_lang on SouthBash_Rus.bayu_ru = bayu_lang.southbashlang_id inner join categories on SouthBash_Rus.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = SouthBash_Rus.part_speech group by ru_lang.RussianWords 

запрос на выборку всех слов с характеристиками перевода Yu-Tt:
select bayu_lang.YurmatinWords as 'Южный диалект башкирского', tt_lang.TatarWords as 'Татарский', categories.catname as 'Категория', PartOfSpeech.name_part_speech as 'Часть речи'from SouthBash_Tat inner join bayu_lang on SouthBash_Tat.bayu_ru = bayu_lang.southbashlang_id inner join tt_lang on SouthBash_Tat.tt_ru = tt_lang.tatlang_id inner join categories on SouthBash_Tat.category = categories.catnum inner join PartOfSpeech on PartOfSpeech.part_speech_num = SouthBash_Tat.part_speech group by bayu_lang.YurmatinWords
            
WhereParam ='Анатомия';
WhereParam ='Археология';
WhereParam ='Архитектура';
WhereParam ='Базовые глаголы';
WhereParam ='Бизнес';
WhereParam ='Внешность';
WhereParam ='Военное дело, оружие';
WhereParam ='Время года, календарь';
WhereParam ='Вещи';
WhereParam ='География';
WhereParam ='Город';
WhereParam ='Деньги';
WhereParam ='Деревья, кустарники';
WhereParam ='Дом';
WhereParam ='Еда';
WhereParam ='Животные';
WhereParam ='Здоровье';
WhereParam ='Знаки зодиака';
WhereParam ='Искусство';
WhereParam ='Карьера';
WhereParam ='Кино';
WhereParam ='Компьютер';
WhereParam ='Космос';
WhereParam ='Литература';
WhereParam ='Магазины';
WhereParam ='Маркетинг';
WhereParam ='Математика';
WhereParam ='Мебель';
WhereParam ='Музыка';
WhereParam ='Одежда';
WhereParam ='Политика';
WhereParam ='Психология';
WhereParam ='Путешествия';
WhereParam ='Рыбы';
WhereParam ='Семья';
WhereParam ='СМИ';
WhereParam ='Социальные сети';
WhereParam ='Спорт';
WhereParam ='Строительство';
WhereParam ='Транспорт';
WhereParam ='Фотография';
WhereParam ='Характер';
WhereParam ='Хобби';
WhereParam ='Цвета';
WhereParam ='Цветы';
WhereParam ='Числа';
WhereParam ='Экология';
WhereParam ='Экономика';
WhereParam ='Юриспруденция';
WhereParam ='Список слов Сводеша';
WhereParam = 'Minecraft Translators Words';


запрос на выборку всех слов перевода En-Ba:
select en_lang.EnglishWords as 'Английский' from Bash_Eng inner join en_lang on Bash_Eng.en_us = en_lang.englang_id inner join ba_lang on Bash_Eng.ba_ru = ba_lang.bashlang_id where ba_lang.BashkirWords ='" + WordFromRichTextBox +"'
select ba_lang.BashkirWords as 'Башкирский' from Bash_Eng inner join ba_lang on Bash_Eng.ba_ru = ba_lang.bashlang_id inner join en_lang on Bash_Eng.en_us = en_lang.englang_id where en_lang.EnglishWords ='" + WordFromRichTextBox + "'

запрос на выборку всех слов перевода En-Tt:
select en_lang.EnglishWords as 'Английский' from Eng_Tat inner join en_lang on Eng_Tat.en_us = en_lang.englang_id inner join tt_lang on Eng_Tat.tt_ru = tt_lang.tatlang_id where  tt_lang.TatarWords ='" + WordFromRichTextBox +"'
select tt_lang.TatarWords as 'Татарский' from Eng_Tat inner join tt_lang on Eng_Tat.tt_ru = tt_lang.tatlang_id inner join en_lang on Eng_Tat.en_us = en_lang.englang_id where en_lang.EnglishWords ='" + WordFromRichTextBox +"'

запрос на выборку всех слов перевода En-Yu:
select en_lang.EnglishWords as 'Английский' from SouthBash_Eng inner join en_lang on SouthBash_Eng.en_us = en_lang.englang_id inner join bayu_lang on SouthBash_Eng.bayu_ru = bayu_lang.southbashlang_id where bayu_lang.YurmatinWords ='" + WordFromRichTextBox +"' group by en_lang.EnglishWords
select bayu_lang.YurmatinWords as 'Южный диалект башкирского' from SouthBash_Eng inner join en_lang on SouthBash_Eng.en_us = en_lang.englang_id inner join bayu_lang on SouthBash_Eng.bayu_ru = bayu_lang.southbashlang_id where en_lang.EnglishWords ='" + WordFromRichTextBox +"' group by en_lang.EnglishWords

запрос на выборку всех слов перевода En-Ru:
select en_lang.EnglishWords as 'Английский' from Eng_Rus inner join en_lang on Eng_Rus.en_us = en_lang.englang_id inner join ru_lang on Eng_Rus.ru_ru = ru_lang.rulang_id where ru_lang.RussianWords ='" + WordFromRichTextBox +"'
select ru_lang.RussianWords as 'Русский' from Eng_Rus inner join ru_lang on Eng_Rus.ru_ru = ru_lang.rulang_id inner join en_lang on Eng_Rus.en_us = en_lang.englang_id where en_lang.EnglishWords ='" + WordFromRichTextBox +"'

запрос на выборку всех слов перевода Ba-Ru:
select ba_lang.BashkirWords as 'Башкирский' from Bash_Rus inner join ba_lang on Bash_Rus.ba_ru = ba_lang.bashlang_id inner join ru_lang on Bash_Rus.ru_ru = ru_lang.rulang_id where ru_lang.RussianWords = '" + WordFromRichTextBox +"'
select ru_lang.RussianWords as 'Русский' from Bash_Rus inner join ru_lang on Bash_Rus.ru_ru = ru_lang.rulang_id inner join ba_lang on Bash_Rus.ba_ru = ba_lang.bashlang_id where ba_lang.BashkirWords = '" + WordFromRichTextBox +"'

запрос на выборку всех слов с перевода Ba-Tt:
select ba_lang.BashkirWords as 'Башкирский' from Bash_Tat inner join ba_lang on Bash_Tat.ba_ru = ba_lang.bashlang_id inner join tt_lang on Bash_Tat.tt_ru = tt_lang.tatlang_id where tt_lang.TatarWords = '" + WordFromRichTextBox +"'
select tt_lang.TatarWords as 'Татарский' from Bash_Tat inner join tt_lang on Bash_Tat.tt_ru = tt_lang.tatlang_id inner join ba_lang on Bash_Tat.ba_ru = ba_lang.bashlang_id where ba_lang.BashkirWords = '" + WordFromRichTextBox +"'

запрос на выборку всех слов перевода Ba-Yu:
select ba_lang.BashkirWords as 'Башкирский' from SouthBash_Bash inner join ba_lang on SouthBash_Bash.ba_ru = ba_lang.bashlang_id inner join bayu_lang on SouthBash_Bash.bayu_ru = bayu_lang.southbashlang_id where bayu_lang.YurmatinWords = '" + WordFromRichTextBox +"' group by ba_lang.BashkirWords
select bayu_lang.YurmatinWords as 'Южный диалект башкирского' from SouthBash_Bash inner join bayu_lang on SouthBash_Bash.bayu_ru = bayu_lang.southbashlang_id inner join ba_lang on SouthBash_Bash.ba_ru = ba_lang.bashlang_id where bayu_lang.YurmatinWords = '" + WordFromRichTextBox +"' group by ba_lang.BashkirWords

запрос на выборку всех слов перевода Ru-Tt:
select ru_lang.RussianWords as 'Русский' from Rus_Tat inner join ru_lang on Rus_Tat.ru_ru = ru_lang.rulang_id inner join tt_lang on Rus_Tat.tt_ru = tt_lang.tatlang_id where tt_lang.TatarWords = '" + WordFromRichTextBox +"'
select tt_lang.TatarWords as 'Татарский' from Rus_Tat inner join tt_lang on Rus_Tat.tt_ru = tt_lang.tatlang_id inner join ru_lang on Rus_Tat.ru_ru = ru_lang.rulang_id where ru_lang.RussianWords = '" + WordFromRichTextBox +"'

запрос на выборку всех слов перевода Ru-Yu:
select ru_lang.RussianWords as 'Русский' from SouthBash_Rus inner join ru_lang on SouthBash_Rus.ru_ru = ru_lang.rulang_id inner join bayu_lang on SouthBash_Rus.bayu_ru = bayu_lang.southbashlang_id where bayu_lang.YurmatinWords = '" + WordFromRichTextBox +"' group by ru_lang.RussianWords 
select bayu_lang.YurmatinWords as 'Южный диалект башкирского' from SouthBash_Rus inner join bayu_lang on SouthBash_Rus.bayu_ru = bayu_lang.southbashlang_id inner join ru_lang on SouthBash_Rus.ru_ru = ru_lang.rulang_id where ru_lang.RussianWords = '" + WordFromRichTextBox +"' group by ru_lang.RussianWords 

запрос на выборку всех слов перевода Yu-Tt:
select bayu_lang.YurmatinWords as 'Южный диалект башкирского' from SouthBash_Tat inner join bayu_lang on SouthBash_Tat.bayu_ru = bayu_lang.southbashlang_id inner join tt_lang on SouthBash_Tat.tt_ru = tt_lang.tatlang_id where tt_lang.TatarWords = '" + WordFromRichTextBox +"' group by bayu_lang.YurmatinWords
select tt_lang.TatarWords as 'Татарский' from SouthBash_Tat inner join tt_lang on SouthBash_Tat.tt_ru = tt_lang.tatlang_id inner join bayu_lang on SouthBash_Tat.bayu_ru = bayu_lang.southbashlang_id where bayu_lang.YurmatinWords = '" + WordFromRichTextBox +"' group by bayu_lang.YurmatinWords

            switch (LanguageOne)
            {
                case 0:
                    switch (LanguageTwo)
                    {
                        case 0:
                            richTextBox2.Text = "TROLOLO SELECT ANOTHER LANGUAGE PLEASE!!!";
                            break;
                        case 1:
                            TranslateQuery = "select ba_lang.BashkirWords as 'Башкирский' from Bash_Eng inner join ba_lang on Bash_Eng.ba_ru = ba_lang.bashlang_id inner join en_lang on Bash_Eng.en_us = en_lang.englang_id where en_lang.EnglishWords ='" + richTextBox1.Text + "'";
                            ColumnName = "ba_lang.BashkirWords";
                            break;
                        case 2:
                            TranslateQuery = "select ru_lang.RussianWords as 'Русский' from Eng_Rus inner join ru_lang on Eng_Rus.ru_ru = ru_lang.rulang_id inner join en_lang on Eng_Rus.en_us = en_lang.englang_id where en_lang.EnglishWords ='" + richTextBox1.Text + "'";
                            ColumnName = "ru_lang.RussianWords";
                            break;
                        case 3:
                            TranslateQuery = "select tt_lang.TatarWords as 'Татарский' from Eng_Tat inner join tt_lang on Eng_Tat.tt_ru = tt_lang.tatlang_id inner join en_lang on Eng_Tat.en_us = en_lang.englang_id where en_lang.EnglishWords ='" + richTextBox1.Text + "'";
                            ColumnName = "tt_lang.TatarWords";
                            break;
                        case 4:
                            TranslateQuery = "select bayu_lang.YurmatinWords as 'Южный диалект башкирского' from SouthBash_Eng inner join en_lang on SouthBash_Eng.en_us = en_lang.englang_id inner join bayu_lang on SouthBash_Eng.bayu_ru = bayu_lang.southbashlang_id where en_lang.EnglishWords ='" + richTextBox1.Text + "' group by en_lang.EnglishWords";
                            ColumnName = "bayu_lang.YurmatinWords";
                            break;
                    }
                    break;
                case 1:
                    switch (LanguageTwo)
                    {
                        case 0:
                            TranslateQuery = "select en_lang.EnglishWords as 'Английский' from Bash_Eng inner join en_lang on Bash_Eng.en_us = en_lang.englang_id inner join ba_lang on Bash_Eng.ba_ru = ba_lang.bashlang_id where ba_lang.BashkirWords  ='" + richTextBox1.Text + "'";
                            ColumnName = "en_lang.EnglishWords";
                            break;
                        case 1:
                            richTextBox2.Text = "TROLOLO SELECT ANOTHER LANGUAGE PLEASE!!!";
                            break;
                        case 2:
                            TranslateQuery = "select ru_lang.RussianWords as 'Русский' from Bash_Rus inner join ru_lang on Bash_Rus.ru_ru = ru_lang.rulang_id inner join ba_lang on Bash_Rus.ba_ru = ba_lang.bashlang_id where ba_lang.BashkirWords = '" + richTextBox1.Text + "'";
                            ColumnName = "ru_lang.RussianWords";
                            break;
                        case 3:
                            TranslateQuery = "select tt_lang.TatarWords as 'Татарский' from Bash_Tat inner join tt_lang on Bash_Tat.tt_ru = tt_lang.tatlang_id inner join ba_lang on Bash_Tat.ba_ru = ba_lang.bashlang_id where ba_lang.BashkirWords = '" + richTextBox1.Text + "'";
                            ColumnName = "tt_lang.TatarWords";
                            break;
                        case 4:
                            TranslateQuery = "select bayu_lang.YurmatinWords as 'Южный диалект башкирского' from SouthBash_Bash inner join bayu_lang on SouthBash_Bash.bayu_ru = bayu_lang.southbashlang_id inner join ba_lang on SouthBash_Bash.ba_ru = ba_lang.bashlang_id where bayu_lang.YurmatinWords = '" + richTextBox1.Text + "' group by ba_lang.BashkirWords";
                            ColumnName = "bayu_lang.YurmatinWords";
                            break;
                    }
                    break;
                case 2:
                    switch (LanguageTwo)
                    {
                        case 0:
                            TranslateQuery = "select en_lang.EnglishWords as 'Английский' from Eng_Rus inner join en_lang on Eng_Rus.en_us = en_lang.englang_id inner join ru_lang on Eng_Rus.ru_ru = ru_lang.rulang_id where ru_lang.RussianWords ='" + richTextBox1.Text + "'";
                            ColumnName = "en_lang.EnglishWords";
                            break;
                        case 1:
                            TranslateQuery = "select ba_lang.BashkirWords as 'Башкирский' from Bash_Rus inner join ba_lang on Bash_Rus.ba_ru = ba_lang.bashlang_id inner join ru_lang on Bash_Rus.ru_ru = ru_lang.rulang_id where ru_lang.RussianWords = '" + richTextBox1.Text + "'";
                            ColumnName = "ba_lang.BashkirWords";
                            break;
                        case 2:
                            richTextBox2.Text = "TROLOLO SELECT ANOTHER LANGUAGE PLEASE!!!";
                            break;
                        case 3:
                            TranslateQuery = "select tt_lang.TatarWords as 'Татарский' from Rus_Tat inner join tt_lang on Rus_Tat.tt_ru = tt_lang.tatlang_id inner join ru_lang on Rus_Tat.ru_ru = ru_lang.rulang_id where ru_lang.RussianWords = '" + richTextBox1.Text + "'";
                            ColumnName = "tt_lang.TatarWords";
                            break;
                        case 4:
                            TranslateQuery = "select bayu_lang.YurmatinWords as 'Южный диалект башкирского' from SouthBash_Rus inner join bayu_lang on SouthBash_Rus.bayu_ru = bayu_lang.southbashlang_id inner join ru_lang on SouthBash_Rus.ru_ru = ru_lang.rulang_id where ru_lang.RussianWords = '" + richTextBox1.Text + "' group by ru_lang.RussianWords";
                            ColumnName = "bayu_lang.YurmatinWords";
                            break;
                    }
                    break;
                case 3:
                    switch (LanguageTwo)
                    {
                        case 0:
                            TranslateQuery = "select en_lang.EnglishWords as 'Английский' from Eng_Tat inner join en_lang on Eng_Tat.en_us = en_lang.englang_id inner join tt_lang on Eng_Tat.tt_ru = tt_lang.tatlang_id where tt_lang.TatarWords ='" + richTextBox1.Text + "'";
                            ColumnName = "en_lang.EnglishWords";
                            break;
                        case 1:
                            TranslateQuery = "select ba_lang.BashkirWords as 'Башкирский' from Bash_Tat inner join ba_lang on Bash_Tat.ba_ru = ba_lang.bashlang_id inner join tt_lang on Bash_Tat.tt_ru = tt_lang.tatlang_id where tt_lang.TatarWords = '" + richTextBox1.Text + "'";
                            ColumnName = "ba_lang.BashkirWords";
                            break;
                        case 2:
                            TranslateQuery = "select ru_lang.RussianWords as 'Русский' from Rus_Tat inner join ru_lang on Rus_Tat.ru_ru = ru_lang.rulang_id inner join tt_lang on Rus_Tat.tt_ru = tt_lang.tatlang_id where tt_lang.TatarWords = '" + richTextBox1.Text + "'";
                            ColumnName = "ru_lang.RussianWords";
                            break;
                        case 3:
                            richTextBox2.Text = "TROLOLO SELECT ANOTHER LANGUAGE PLEASE!!!";
                            break;
                        case 4:
                            TranslateQuery = "select bayu_lang.YurmatinWords as 'Южный диалект башкирского' from SouthBash_Tat inner join bayu_lang on SouthBash_Tat.bayu_ru = bayu_lang.southbashlang_id inner join tt_lang on SouthBash_Tat.tt_ru = tt_lang.tatlang_id where tt_lang.TatarWords = '" + richTextBox1.Text + "' group by bayu_lang.YurmatinWords";
                            ColumnName = "bayu_lang.YurmatinWords";
                            break;
                    }
                    break;
                case 4:
                    switch (LanguageTwo)
                    {
                        case 0:
                            TranslateQuery = "select en_lang.EnglishWords as 'Английский' from SouthBash_Eng inner join en_lang on SouthBash_Eng.en_us = en_lang.englang_id inner join bayu_lang on SouthBash_Eng.bayu_ru = bayu_lang.southbashlang_id where bayu_lang.YurmatinWords ='" + richTextBox1.Text + "' group by en_lang.EnglishWords";
                            ColumnName = "Английский";
                            break;
                        case 1:
                            TranslateQuery = "select ba_lang.BashkirWords as 'Башкирский' from SouthBash_Bash inner join ba_lang on SouthBash_Bash.ba_ru = ba_lang.bashlang_id inner join bayu_lang on SouthBash_Bash.bayu_ru = bayu_lang.southbashlang_id where bayu_lang.YurmatinWords = '" + richTextBox1.Text + "' group by ba_lang.BashkirWords";
                            ColumnName = "Башкирский";
                            break;
                        case 2:
                            TranslateQuery = "select ru_lang.RussianWords as 'Русский' from SouthBash_Rus inner join ru_lang on SouthBash_Rus.ru_ru = ru_lang.rulang_id inner join bayu_lang on SouthBash_Rus.bayu_ru = bayu_lang.southbashlang_id where bayu_lang.YurmatinWords = '" + richTextBox1.Text + "' group by ru_lang.RussianWords ";
                            ColumnName = "Русский";
                            break;
                        case 3:
                            TranslateQuery = "select tt_lang.TatarWords as 'Татарский' from SouthBash_Tat inner join tt_lang on SouthBash_Tat.tt_ru = tt_lang.tatlang_id inner join bayu_lang on SouthBash_Tat.bayu_ru = bayu_lang.southbashlang_id where bayu_lang.YurmatinWords = '" + richTextBox1.Text + "' group by bayu_lang.YurmatinWords";
                            ColumnName = "Татарский";
                            break;
                        case 4:
                            richTextBox2.Text = "TROLOLO SELECT ANOTHER LANGUAGE PLEASE!!!";
                            break;
                    }
                    break;
					
					
					
					
label3.Text = "Английский";
            label4.Text = "Башкирский";
            int SelIndex = listBox3.SelectedIndex;
            switch (SelIndex)
            {
                case 0:
                    
                    break;
                case 1:
                    label3.Text = "Английский";
                    label4.Text = "Русский";
                    break;
                case 2:
                    label3.Text = "Английский";
                    label4.Text = "Татарский";
                    break;
                case 3:
                    label3.Text = "Английский";
                    label4.Text = "Южный диалект башкирского";
                    break;
                case 4:
                    label3.Text = "Башкирский";
                    label4.Text = "Русский";
                    break;
                case 5:
                    label3.Text = "Башкирский";
                    label4.Text = "Татарский";
                    break;
                case 6:
                    label3.Text = "Башкирский";
                    label4.Text = "Южный диалект башкирского";
                    break;
                case 7:
                    label3.Text = "Русский";
                    label4.Text = "Татарский";
                    break;
                case 8:
                    label3.Text = "Русский";
                    label4.Text = "Южный диалект башкирского";
                    break;
                case 9:
                    label3.Text = "Татарский";
                    label4.Text = "Южный диалект башкирского";
                    break;
            }
			
			
запрос на добавление слов 5 языков:
@"INSERT INTO `en_lang`(`EnglishWords`) VALUES (@Lang1); INSERT INTO `ru_lang`(`RussianWords`) VALUES(@Lang2); INSERT INTO `ba_lang`(`BashkirWords`) VALUES(@Lang3); INSERT INTO `tt_lang`(`TatarWords`) VALUES(@Lang4); INSERT INTO `bayu_lang`(`YurmatinWords`) VALUES(@Lang5); INSERT INTO `Bash_Eng`(`ba_ru`, `en_us`, `category`, `part_speech`) VALUES((select bashlang_id from ba_lang where BashkirWords = @Lang3), (select englang_id from en_lang where EnglishWords = @Lang1), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech)); 
INSERT INTO `Eng_Rus`(`ru_ru`, `en_us`, `category`, `part_speech`) VALUES((select rulang_id from ru_lang where RussianWords = @Lang2), (select englang_id from en_lang where EnglishWords = @Lang1), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech));
INSERT INTO `Eng_Tat`(`tt_ru`, `en_us`, `category`, `part_speech`) VALUES((select tatlang_id from tt_lang where TatarWords = @Lang4), (select englang_id from en_lang where EnglishWords = @Lang1), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech)); 
INSERT INTO `SouthBash_Eng`(`bayu_ru`, `en_us`, `category`, `part_speech`) VALUES((select southbashlang_id from bayu_lang where YurmatinWords = @Lang5), (select englang_id from en_lang where EnglishWords = @Lang1), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech)); 
INSERT INTO `Bash_Rus`(`ru_ru`, `ba_ru`, `category`, `part_speech`) VALUES((select rulang_id from ru_lang where RussianWords = @Lang2), (select bashlang_id from ba_lang where BashkirWords = @Lang3), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech)); 
INSERT INTO `Bash_Tat`(`tt_ru`, `ba_ru`, `category`, `part_speech`) VALUES((select tatlang_id from tt_lang where TatarWords = @Lang4), (select bashlang_id from ba_lang where BashkirWords = @Lang3), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech)); 
INSERT INTO `SouthBash_Bash`(`bayu_ru`, `ba_ru`, `category`, `part_speech`) VALUES((select southbashlang_id from bayu_lang where YurmatinWords = @Lang5), (select bashlang_id from ba_lang where BashkirWords = @Lang3), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech)); 
INSERT INTO `Rus_Tat`(`tt_ru`, `ru_ru`, `category`, `part_speech`) VALUES((select tatlang_id from tt_lang where TatarWords = @Lang4), (select rulang_id from ru_lang where RussianWords = @Lang2), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech)); 
INSERT INTO `SouthBash_Rus`(`bayu_ru`, `ru_ru`, `category`, `part_speech`) VALUES((select southbashlang_id from bayu_lang where YurmatinWords = @Lang5), (select rulang_id from ru_lang where RussianWords = @Lang2), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech)); 
INSERT INTO `SouthBash_Tat`(`bayu_ru`, `tt_ru`, `category`, `part_speech`) VALUES((select southbashlang_id from bayu_lang where YurmatinWords = @Lang5), (select tatlang_id from tt_lang where TatarWords = @Lang4), (SELECT `catnum` from categories where catname = @Category), (SELECT `part_speech_num` from PartOfSpeech where name_part_speech = @PartOfSpeech))";

запрос на удаление записи из 5 языков по условию ввыбранному в комбобокс:

delete from en_lang WHERE en_lang.englang_id = (select en_lang.englang_id from en_lang where en_lang.EnglishWords = @EnglishWord group by en_lang.englang_id);
delete from ba_lang WHERE ba_lang.bashlang_id =(select ba_lang.bashlang_id from ba_lang where ba_lang.BashkirWords = @BashkirWord group by ba_lang.bashlang_id);
delete from ru_lang WHERE ru_lang.rulang_id = (select ru_lang.rulang_id from ru_lang where ru_lang.RussianWords = @RussianWord group by ru_lang.rulang_id);
delete from tt_lang WHERE tt_lang.tatlang_id = (select tt_lang.tatlang_id from tt_lang where tt_lang.TatarWords = @TatarWord group by tt_lang.tatlang_id);
delete from bayu_lang WHERE bayu_lang.southbashlang_id =(select bayu_lang.tatlang_id from bayu_lang where bayu_lang.YurmatinWords = @YurmatinWord group by bayu_lang.southbashlang_id);

delete from Bash_Eng WHERE (select en_lang.englang_id from en_lang where en_lang.EnglishWords =@EnglishWord group by en_lang.englang_id)= Bash_Eng.en_us;
delete from Eng_Rus WHERE (select en_lang.englang_id from en_lang where en_lang.EnglishWords =@EnglishWord group by en_lang.englang_id) = Eng_Rus.en_us;
delete from Eng_Tat WHERE (select en_lang.englang_id from en_lang where en_lang.EnglishWords =@EnglishWord group by en_lang.englang_id) = Eng_Tat.en_us;
delete from SouthBash_Eng WHERE (select en_lang.englang_id from en_lang where en_lang.EnglishWords =@EnglishWord group by en_lang.englang_id) = SouthBash_Eng.en_us;

delete from Bash_Rus WHERE (select ba_lang.bashlang_id from ba_lang where ba_lang.BashkirWords =@BashkirWord group by ba_lang.bashlang_id) = Bash_Rus.ba_ru;
delete from Bash_Eng WHERE (select ba_lang.bashlang_id from ba_lang where ba_lang.BashkirWords =@BashkirWord group by ba_lang.bashlang_id) = Bash_Eng.ba_ru;
delete from Bash_Tat WHERE (select ba_lang.bashlang_id from ba_lang where ba_lang.BashkirWords =@BashkirWord group by ba_lang.bashlang_id) = Bash_Tat.ba_ru;
delete from SouthBash_Bash WHERE (select ba_lang.bashlang_id from ba_lang where ba_lang.BashkirWords =@BashkirWord group by ba_lang.bashlang_id) = SouthBash_Bash.ba_ru;

delete from Bash_Rus WHERE (select ru_lang.rulang_id from ru_lang where ru_lang.RussianWords = @RussianWord group by ru_lang.rulang_id) = Bash_Rus.ru_ru;
delete from Eng_Rus WHERE (select ru_lang.rulang_id from ru_lang where ru_lang.RussianWords = @RussianWord group by ru_lang.rulang_id) = Eng_Rus.ru_ru;
delete from SouthBash_Rus WHERE (select ru_lang.rulang_id from ru_lang where ru_lang.RussianWords = @RussianWord group by ru_lang.rulang_id) = SouthBash_Rus.ru_ru;
delete from Rus_Tat WHERE (select ru_lang.rulang_id from ru_lang where ru_lang.RussianWords = @RussianWord group by ru_lang.rulang_id) = Rus_Tat.ru_ru;

delete from Bash_Tat WHERE (select tt_lang.tatlang_id from tt_lang where tt_lang.TatarWords = @TatarWord group by tt_lang.tatlang_id) = Bash_Tat.tt_ru;
delete from Eng_Tat WHERE (select tt_lang.tatlang_id from tt_lang where tt_lang.TatarWords = @TatarWord group by tt_lang.tatlang_id) = Eng_Tat.tt_ru;
delete from SouthBash_Tat WHERE (select tt_lang.tatlang_id from tt_lang where tt_lang.TatarWords = @TatarWord group by tt_lang.tatlang_id) = SouthBash_Tat.tt_ru;
delete from Rus_Tat WHERE (select tt_lang.tatlang_id from tt_lang where tt_lang.TatarWords = @TatarWord group by tt_lang.tatlang_id) = Rus_Tat.tt_ru;

delete from SouthBash_Bash WHERE (select bayu_lang.tatlang_id from bayu_lang where bayu_lang.YurmatinWords= @YurmatinWord group by bayu_lang.tatlang_id) = SouthBash_Bash.bayu_ru;
delete from SouthBash_Eng WHERE (select bayu_lang.tatlang_id from bayu_lang where bayu_lang.YurmatinWords = @YurmatinWord group by bayu_lang.tatlang_id) = SouthBash_Eng.bayu_ru;
delete from SouthBash_Tat WHERE (select bayu_lang.tatlang_id from bayu_lang where bayu_lang.YurmatinWords = @YurmatinWord group by bayu_lang.tatlang_id) = SouthBash_Tat.bayu_ru;
delete from SouthBash_Rus WHERE (select bayu_lang.tatlang_id from bayu_lang where bayu_lang.YurmatinWords = @YurmatinWord group by bayu_lang.tatlang_id) = SouthBash_Rus.bayu_ru;
