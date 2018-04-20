BEGIN TRANSACTION;
CREATE TABLE "Variables" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Variable" PRIMARY KEY AUTOINCREMENT,
	"ConfigurationId" INTEGER NOT NULL,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"Value" TEXT NOT NULL,
	"Position" INTEGER,
	CONSTRAINT "FK_Variable_Configuration_ConfigurationId" FOREIGN KEY("ConfigurationId") REFERENCES "Configurations" ("Id")
);
INSERT INTO `Variables` (Id,ConfigurationId,Code,Name,Value,Position) VALUES (1,1,'SmtpServer','SMTP server','test',1);
INSERT INTO `Variables` (Id,ConfigurationId,Code,Name,Value,Position) VALUES (2,1,'SmtpPort','SMTP port','25',2);
INSERT INTO `Variables` (Id,ConfigurationId,Code,Name,Value,Position) VALUES (3,1,'SmtpLogin','SMTP login','test',3);
INSERT INTO `Variables` (Id,ConfigurationId,Code,Name,Value,Position) VALUES (4,1,'SmtpPassword','SMTP password','test',4);
INSERT INTO `Variables` (Id,ConfigurationId,Code,Name,Value,Position) VALUES (5,1,'SmtpSenderEmail','SMTP sender email','test',5);
INSERT INTO `Variables` (Id,ConfigurationId,Code,Name,Value,Position) VALUES (6,1,'SmtpSenderName','SMTP sender name','test',6);
INSERT INTO `Variables` (Id,ConfigurationId,Code,Name,Value,Position) VALUES (7,2,'SpecifyCultureInUrl','Specify culture in URL','yes',1);
CREATE TABLE "Users" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_User" PRIMARY KEY AUTOINCREMENT,
	"Name" TEXT NOT NULL,
	"Created" TEXT NOT NULL
);
INSERT INTO `Users` (Id,Name,Created) VALUES (1,'Administrator','2017-01-01 00:00:00.0000000');
CREATE TABLE "UserRoles" (
	"UserId" INTEGER NOT NULL,
	"RoleId" INTEGER NOT NULL,
	CONSTRAINT "PK_UserRole" PRIMARY KEY ("UserId", "RoleId"),
	CONSTRAINT "FK_UserRole_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Users" ("Id"),
	CONSTRAINT "FK_UserRole_Role_RoleId" FOREIGN KEY ("RoleId") REFERENCES "Roles" ("Id")
);
INSERT INTO `UserRoles` (UserId,RoleId) VALUES (1,1);
INSERT INTO `UserRoles` (UserId,RoleId) VALUES (1,2);
CREATE TABLE "Tabs" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Tab" PRIMARY KEY AUTOINCREMENT,
	"ClassId" INTEGER NOT NULL,
	"Name" TEXT NOT NULL,
	"Position" INTEGER,
	CONSTRAINT "FK_Tab_Class_ClassId" FOREIGN KEY("ClassId") REFERENCES "Classes" ("Id")
);
INSERT INTO `Tabs` (Id,ClassId,Name,Position) VALUES (1,1,'SEO',100);
CREATE TABLE "SerializedObjects" (
	"CultureId" INTEGER NOT NULL,
	"ObjectId" INTEGER NOT NULL,
	"ClassId" INTEGER NOT NULL,
	"UrlPropertyStringValue" TEXT,
	"SerializedProperties" TEXT,
	CONSTRAINT "PK_SerializedObject" PRIMARY KEY("CultureId","ObjectId"),
	CONSTRAINT "FK_SerializedObject_Culture_CultureId" FOREIGN KEY("CultureId") REFERENCES "Cultures"("Id"),
	CONSTRAINT "FK_SerializedObject_Object_ObjectId" FOREIGN KEY("ObjectId") REFERENCES "Objects"("Id"),
	CONSTRAINT "FK_SerializedObject_Class_ClassId" FOREIGN KEY("ClassId") REFERENCES "Classes"("Id")
);
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,1,2,'/','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Your Personal Blog</h1><p>Hello! This is your personal blog, it is based on the <a href=\"http://platformus.net/\" target=\"_blank\" rel=\"noopener\">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href=\"/backend\">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href=\"http://docs.platformus.net/\" target=\"_blank\" rel=\"noopener\">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href=\"https://gitter.im/Platformus/Platformus\" target=\"_blank\" rel=\"noopener\">chat</a>.</p><p>Have a nice work!</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Your Personal Blog","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,1,2,'/','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Ваш персональный блог</h1><p>Здравствуйте! Это ваш персональный блог, он работает на базе системы управления содержимым &laquo;<a href=\"http://platformus.net/\" target=\"_blank\" rel=\"noopener\">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href=\"/backend\">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href=\"http://docs.platformus.net/\" target=\"_blank\" rel=\"noopener\">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href=\"https://gitter.im/Platformus/Platformus\" target=\"_blank\" rel=\"noopener\">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Ваш персональный блог","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,1,2,'/','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Ваш персональний блог</h1><p>Вітаємо! Це ваш персональний блог, він працює на базі системи керування вмістом &laquo;<a href=\"http://platformus.net/\" target=\"_blank\" rel=\"noopener\">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href=\"/backend\">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href=\"http://docs.platformus.net/\" target=\"_blank\" rel=\"noopener\">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href=\"https://gitter.im/Platformus/Platformus\" target=\"_blank\" rel=\"noopener\">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Ваш персональний блог","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,2,2,'/about-me','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/about-me","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>About Me</h1><p>Tell us about yourself in a few words. You can add photos or videos here.</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"About Me","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,2,2,'/about-me','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/about-me","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Обо мне</h1><p>Расскажите о себе в нескольких словах. Вы можете добавить сюда фотографии или видео.</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Обо мне","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,2,2,'/about-me','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/about-me","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Про мене</h1><p>Розкажіть про себе в кількох словах. Ви можете додати сюди фотографії або відео.</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Про мене","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,3,2,'/blog','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Blog</h1>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Blog","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,3,2,'/blog','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Блог</h1>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Блог","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,3,2,'/blog','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Блог</h1>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Блог","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,4,2,'/contacts','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/contacts","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Contacts","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,4,2,'/contacts','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/contacts","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Контакты","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,4,2,'/contacts','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/contacts","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Контакти","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,5,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag1","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,5,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag1","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,5,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag1","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,6,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag2","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,6,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag2","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,6,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag2","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,7,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag3","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,7,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag3","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,7,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag3","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,8,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag4","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,8,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag4","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,8,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag4","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,9,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag5","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,9,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag5","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,9,3,NULL,'[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag5","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,10,5,'/blog/post-1','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-1","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 1","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/10/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:43.3111639+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 1","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,10,5,'/blog/post-1','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-1","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 1","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/10/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:43.3111639+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 1","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,10,5,'/blog/post-1','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-1","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 1","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/10/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:43.3111639+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 1","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,11,5,'/blog/post-2','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-2","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 2","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/11/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:44.8680473+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 2","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,11,5,'/blog/post-2','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-2","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 2","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/11/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:44.8680473+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 2","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,11,5,'/blog/post-2','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-2","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 2","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/11/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:44.8680473+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 2","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,12,5,'/blog/post-3','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-3","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 3","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/12/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:46.3169184+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 3","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,12,5,'/blog/post-3','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-3","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 3","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/12/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:46.3169184+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 3","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,12,5,'/blog/post-3','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-3","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 3","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/12/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:46.3169184+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 3","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,13,5,'/blog/post-4','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-4","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 4","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/13/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:47.3987461+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 4","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,13,5,'/blog/post-4','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-4","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 4","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/13/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:47.3987461+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 4","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,13,5,'/blog/post-4','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-4","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 4","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/13/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:47.3987461+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 4","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (2,14,5,'/blog/post-5','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-5","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 5","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/14/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:48.9489615+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 5","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (3,14,5,'/blog/post-5','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-5","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 5","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/14/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:48.9489615+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 5","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO `SerializedObjects` (CultureId,ObjectId,ClassId,UrlPropertyStringValue,SerializedProperties) VALUES (4,14,5,'/blog/post-5','[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-5","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 5","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/14/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2018-04-20T21:55:48.9489615+03:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 5","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
CREATE TABLE "SerializedMenus" (
	"CultureId" INTEGER NOT NULL,
	"MenuId" INTEGER NOT NULL,
	"Code" TEXT NOT NULL,
	"SerializedMenuItems" TEXT,
	CONSTRAINT "PK_SerializedMenu" PRIMARY KEY("CultureId","MenuId"),
	CONSTRAINT "FK_SerializedMenu_Culture_CultureId" FOREIGN KEY("CultureId") REFERENCES "Cultures"("Id"),
	CONSTRAINT "FK_SerializedMenu_Menu_MenuId" FOREIGN KEY("MenuId") REFERENCES "Menus"("Id")
);
INSERT INTO `SerializedMenus` (CultureId,MenuId,Code,SerializedMenuItems) VALUES (2,1,'Main','[{"MenuItemId":1,"Name":"Home","Url":"/","Position":10,"SerializedMenuItems":null},{"MenuItemId":2,"Name":"About me","Url":"/about-me","Position":20,"SerializedMenuItems":null},{"MenuItemId":3,"Name":"Blog","Url":"/blog","Position":30,"SerializedMenuItems":null},{"MenuItemId":4,"Name":"Contacts","Url":"/contacts","Position":40,"SerializedMenuItems":null}]');
INSERT INTO `SerializedMenus` (CultureId,MenuId,Code,SerializedMenuItems) VALUES (3,1,'Main','[{"MenuItemId":1,"Name":"Главная","Url":"/","Position":10,"SerializedMenuItems":null},{"MenuItemId":2,"Name":"Обо мне","Url":"/about-me","Position":20,"SerializedMenuItems":null},{"MenuItemId":3,"Name":"Блог","Url":"/blog","Position":30,"SerializedMenuItems":null},{"MenuItemId":4,"Name":"Контакты","Url":"/contacts","Position":40,"SerializedMenuItems":null}]');
INSERT INTO `SerializedMenus` (CultureId,MenuId,Code,SerializedMenuItems) VALUES (4,1,'Main','[{"MenuItemId":1,"Name":"Головна","Url":"/","Position":10,"SerializedMenuItems":null},{"MenuItemId":2,"Name":"Про мене","Url":"/about-me","Position":20,"SerializedMenuItems":null},{"MenuItemId":3,"Name":"Блог","Url":"/blog","Position":30,"SerializedMenuItems":null},{"MenuItemId":4,"Name":"Контакти","Url":"/contacts","Position":40,"SerializedMenuItems":null}]');
CREATE TABLE "SerializedForms" (
	"CultureId" INTEGER NOT NULL,
	"FormId" INTEGER NOT NULL,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"SerializedFields" TEXT,
	CONSTRAINT "PK_SerializedForm" PRIMARY KEY("CultureId","FormId"),
	CONSTRAINT "FK_SerializedForm_Culture_CultureId" FOREIGN KEY("CultureId") REFERENCES "Cultures"("Id"),
	CONSTRAINT "FK_SerializedForm_Form_FormId" FOREIGN KEY("FormId") REFERENCES "Forms"("Id")
);
INSERT INTO `SerializedForms` (CultureId,FormId,Code,Name,SerializedFields) VALUES (2,1,'Feedback','Feedback','[{"FieldId":1,"FieldTypeCode":"TextBox","Code":"Name","Name":"Your name","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":2,"FieldTypeCode":"TextBox","Code":"Email","Name":"Your email","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null},{"FieldId":3,"FieldTypeCode":"TextArea","Code":"Message","Name":"Your message","IsRequired":true,"MaxLength":null,"Position":30,"SerializedFieldOptions":null}]');
INSERT INTO `SerializedForms` (CultureId,FormId,Code,Name,SerializedFields) VALUES (3,1,'Feedback','Обратная связь','[{"FieldId":1,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше имя","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":2,"FieldTypeCode":"TextBox","Code":"Email","Name":"Ваша электронная почта","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null},{"FieldId":3,"FieldTypeCode":"TextArea","Code":"Message","Name":"Ваше сообщение","IsRequired":true,"MaxLength":null,"Position":30,"SerializedFieldOptions":null}]');
INSERT INTO `SerializedForms` (CultureId,FormId,Code,Name,SerializedFields) VALUES (4,1,'Feedback','Зворотний зв’язок','[{"FieldId":1,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше ім’я","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":2,"FieldTypeCode":"TextBox","Code":"Email","Name":"Ваша електронна пошта","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null},{"FieldId":3,"FieldTypeCode":"TextArea","Code":"Message","Name":"Ваше повідомлення","IsRequired":true,"MaxLength":null,"Position":30,"SerializedFieldOptions":null}]');
INSERT INTO `SerializedForms` (CultureId,FormId,Code,Name,SerializedFields) VALUES (2,2,'WriteComment','Write comment','[{"FieldId":4,"FieldTypeCode":"TextBox","Code":"Name","Name":"Your name","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":5,"FieldTypeCode":"TextArea","Code":"Comment","Name":"Your comment","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null}]');
INSERT INTO `SerializedForms` (CultureId,FormId,Code,Name,SerializedFields) VALUES (3,2,'WriteComment','Напишите комментарий','[{"FieldId":4,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше имя","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":5,"FieldTypeCode":"TextArea","Code":"Comment","Name":"Ваш ","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null}]');
INSERT INTO `SerializedForms` (CultureId,FormId,Code,Name,SerializedFields) VALUES (4,2,'WriteComment','Напишіть коментар','[{"FieldId":4,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше ім’я","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":5,"FieldTypeCode":"TextArea","Code":"Comment","Name":"Ваше повідомлення","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null}]');
CREATE TABLE "Roles" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Role" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"Position" INTEGER
);
INSERT INTO `Roles` (Id,Code,Name,Position) VALUES (1,'Administrator','Administrator',100);
INSERT INTO `Roles` (Id,Code,Name,Position) VALUES (2,'ApplicationOwner','Application owner',200);
INSERT INTO `Roles` (Id,Code,Name,Position) VALUES (3,'ContentManager','Content manager',300);
CREATE TABLE "RolePermissions" (
	"RoleId" INTEGER NOT NULL,
	"PermissionId" INTEGER NOT NULL,
	CONSTRAINT "PK_RolePermission" PRIMARY KEY ("RoleId", "PermissionId"),
	CONSTRAINT "FK_RolePermission_Role_RoleId" FOREIGN KEY ("RoleId") REFERENCES "Roles" ("Id"),
	CONSTRAINT "FK_RolePermission_Permission_PermissionId" FOREIGN KEY ("PermissionId") REFERENCES "Permissions" ("Id")
);
INSERT INTO `RolePermissions` (RoleId,PermissionId) VALUES (1,1);
INSERT INTO `RolePermissions` (RoleId,PermissionId) VALUES (2,2);
INSERT INTO `RolePermissions` (RoleId,PermissionId) VALUES (3,9);
INSERT INTO `RolePermissions` (RoleId,PermissionId) VALUES (3,12);
INSERT INTO `RolePermissions` (RoleId,PermissionId) VALUES (3,13);
INSERT INTO `RolePermissions` (RoleId,PermissionId) VALUES (3,14);
CREATE TABLE "Relations" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Relation" PRIMARY KEY AUTOINCREMENT,
	"MemberId" INTEGER NOT NULL,
	"PrimaryId" INTEGER NOT NULL,
	"ForeignId" INTEGER NOT NULL,
	CONSTRAINT "FK_Relation_Member_MemberId" FOREIGN KEY ("MemberId") REFERENCES "Members" ("Id"),
	CONSTRAINT "FK_Relation_Object_PrimaryId" FOREIGN KEY ("PrimaryId") REFERENCES "Objects" ("Id"),
	CONSTRAINT "FK_Relation_Object_ForeignId" FOREIGN KEY ("ForeignId") REFERENCES "Objects" ("Id")
);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (1,11,9,10);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (2,11,6,11);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (3,11,8,12);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (4,11,7,12);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (5,11,8,13);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (6,11,5,13);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (7,11,9,13);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (8,11,8,14);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (9,11,7,14);
INSERT INTO `Relations` (Id,MemberId,PrimaryId,ForeignId) VALUES (10,11,6,14);
CREATE TABLE "Properties" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Property" PRIMARY KEY AUTOINCREMENT,
	"ObjectId" INTEGER NOT NULL,
	"MemberId" INTEGER NOT NULL,
	"IntegerValue" INTEGER,
	"DecimalValue" REAL,
	"StringValueId" INTEGER,
	"DateTimeValue" TEXT,
	CONSTRAINT "FK_Property_Object_ObjectId" FOREIGN KEY("ObjectId") REFERENCES "Objects"("Id"),
	CONSTRAINT "FK_Property_Member_MemberId" FOREIGN KEY("MemberId") REFERENCES "Members"("Id"),
	CONSTRAINT "FK_Property_Dictionary_StringValueId" FOREIGN KEY("StringValueId") REFERENCES "Dictionaries"("Id")
);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (1,1,1,NULL,NULL,13,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (2,1,2,NULL,NULL,14,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (3,1,3,NULL,NULL,15,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (4,1,4,NULL,NULL,16,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (5,1,5,NULL,NULL,17,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (6,2,1,NULL,NULL,18,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (7,2,2,NULL,NULL,19,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (8,2,3,NULL,NULL,20,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (9,2,4,NULL,NULL,21,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (10,2,5,NULL,NULL,22,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (11,3,1,NULL,NULL,23,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (12,3,2,NULL,NULL,24,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (13,3,3,NULL,NULL,25,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (14,3,4,NULL,NULL,26,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (15,3,5,NULL,NULL,27,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (16,4,1,NULL,NULL,28,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (17,4,2,NULL,NULL,29,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (18,4,3,NULL,NULL,30,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (19,4,4,NULL,NULL,31,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (20,4,5,NULL,NULL,32,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (21,5,6,NULL,NULL,33,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (22,6,6,NULL,NULL,34,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (23,7,6,NULL,NULL,35,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (24,8,6,NULL,NULL,36,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (25,9,6,NULL,NULL,37,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (26,10,10,NULL,NULL,38,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (27,10,12,NULL,NULL,39,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (28,10,13,NULL,NULL,40,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (29,10,14,NULL,NULL,NULL,'2018-04-20 21:55:43.3111639');
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (30,10,1,NULL,NULL,41,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (31,10,2,NULL,NULL,42,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (32,10,3,NULL,NULL,43,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (33,10,4,NULL,NULL,44,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (34,10,5,NULL,NULL,45,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (35,11,10,NULL,NULL,46,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (36,11,12,NULL,NULL,47,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (37,11,13,NULL,NULL,48,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (38,11,14,NULL,NULL,NULL,'2018-04-20 21:55:44.8680473');
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (39,11,1,NULL,NULL,49,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (40,11,2,NULL,NULL,50,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (41,11,3,NULL,NULL,51,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (42,11,4,NULL,NULL,52,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (43,11,5,NULL,NULL,53,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (44,12,10,NULL,NULL,54,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (45,12,12,NULL,NULL,55,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (46,12,13,NULL,NULL,56,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (47,12,14,NULL,NULL,NULL,'2018-04-20 21:55:46.3169184');
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (48,12,1,NULL,NULL,57,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (49,12,2,NULL,NULL,58,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (50,12,3,NULL,NULL,59,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (51,12,4,NULL,NULL,60,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (52,12,5,NULL,NULL,61,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (53,13,10,NULL,NULL,62,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (54,13,12,NULL,NULL,63,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (55,13,13,NULL,NULL,64,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (56,13,14,NULL,NULL,NULL,'2018-04-20 21:55:47.3987461');
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (57,13,1,NULL,NULL,65,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (58,13,2,NULL,NULL,66,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (59,13,3,NULL,NULL,67,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (60,13,4,NULL,NULL,68,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (61,13,5,NULL,NULL,69,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (62,14,10,NULL,NULL,70,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (63,14,12,NULL,NULL,71,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (64,14,13,NULL,NULL,72,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (65,14,14,NULL,NULL,NULL,'2018-04-20 21:55:48.9489615');
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (66,14,1,NULL,NULL,73,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (67,14,2,NULL,NULL,74,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (68,14,3,NULL,NULL,75,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (69,14,4,NULL,NULL,76,NULL);
INSERT INTO `Properties` (Id,ObjectId,MemberId,IntegerValue,DecimalValue,StringValueId,DateTimeValue) VALUES (70,14,5,NULL,NULL,77,NULL);
CREATE TABLE "Products" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Product" PRIMARY KEY AUTOINCREMENT,
	"CategoryId" INTEGER NOT NULL,
	"Url" TEXT,
	"Code" TEXT NOT NULL,
	"NameId" INTEGER NOT NULL,
	"DescriptionId" INTEGER NOT NULL,
	"Price" REAL,
	"TitleId" INTEGER NOT NULL,
	"MetaDescriptionId" INTEGER NOT NULL,
	"MetaKeywordsId" INTEGER NOT NULL,
	CONSTRAINT "FK_Product_Category_CategoryId" FOREIGN KEY("CategoryId") REFERENCES "Categories" ("Id"),
	CONSTRAINT "FK_Product_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries" ("Id"),
	CONSTRAINT "FK_Product_Dictionary_DescriptionId" FOREIGN KEY("DescriptionId") REFERENCES "Dictionaries" ("Id"),
	CONSTRAINT "FK_Product_Dictionary_TitleId" FOREIGN KEY("TitleId") REFERENCES "Dictionaries" ("Id"),
	CONSTRAINT "FK_Product_Dictionary_MetaDescriptionId" FOREIGN KEY("MetaDescriptionId") REFERENCES "Dictionaries" ("Id"),
	CONSTRAINT "FK_Product_Dictionary_MetaKeywordsId" FOREIGN KEY("MetaKeywordsId") REFERENCES "Dictionaries" ("Id")
);
CREATE TABLE "Positions" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Position" PRIMARY KEY AUTOINCREMENT,
	"CartId" INTEGER NOT NULL,
	"ProductId" INTEGER NOT NULL,
	CONSTRAINT "FK_Position_Cart_CartId" FOREIGN KEY("CartId") REFERENCES "Carts" ("Id"),
	CONSTRAINT "FK_Position_Product_ProductId" FOREIGN KEY("ProductId") REFERENCES "Products" ("Id")
);
CREATE TABLE "Photos" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Photo" PRIMARY KEY AUTOINCREMENT,
	"ProductId" INTEGER NOT NULL,
	"Filename" TEXT NOT NULL,
	"IsCover" INTEGER NOT NULL,
	"Position" INTEGER,
	CONSTRAINT "FK_Photo_Product_ProductId" FOREIGN KEY("ProductId") REFERENCES "Products" ("Id")
);
CREATE TABLE "Permissions" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Permission" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"Position" INTEGER
);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (1,'BrowseBackend','Browse backend',1);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (2,'DoEverything','Do everything',100);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (3,'BrowsePermissions','Browse permissions',200);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (4,'BrowseRoles','Browse roles',210);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (5,'BrowseUsers','Browse users',220);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (6,'BrowseConfigurations','Browse configurations',300);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (7,'BrowseCultures','Browse cultures',400);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (8,'BrowseEndpoints','Browse endpoints',500);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (9,'BrowseObjects','Browse objects',600);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (10,'BrowseDataTypes','Browse data types',610);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (11,'BrowseClasses','Browse classes',620);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (12,'BrowseMenus','Browse menus',700);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (13,'BrowseForms','Browse forms',800);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (14,'BrowseFileManager','Browse file manager',900);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (15,'BrowseViews','Browse views',1000);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (16,'BrowseStyles','Browse styles',1010);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (17,'BrowseScripts','Browse scripts',1020);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (18,'BrowseBundles','Browse bundles',1030);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (19,'BrowseCatalogs','Browse catalogs',1100);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (20,'BrowseCategories','Browse categories',1110);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (21,'BrowseProducts','Browse products',1120);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (22,'BrowseCarts','Browse carts',1130);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (23,'BrowseOrderStates','Browse order states',1140);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (24,'BrowsePaymentMethods','Browse payment methods',1150);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (25,'BrowseDeliveryMethods','Browse delivery methods',1160);
INSERT INTO `Permissions` (Id,Code,Name,Position) VALUES (26,'BrowseOrders','Browse orders',1170);
CREATE TABLE "PaymentMethods" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_PaymentMethod" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"NameId" INTEGER NOT NULL,
	"Position" INTEGER,
	CONSTRAINT "FK_PaymentMethod_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries" ("Id")
);
CREATE TABLE "Orders" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Order" PRIMARY KEY AUTOINCREMENT,
	"OrderStateId" INTEGER NOT NULL,
	"PaymentMethodId" INTEGER NOT NULL,
	"DeliveryMethodId" INTEGER NOT NULL,
	"CustomerFirstName" TEXT NOT NULL,
	"CustomerLastName" TEXT,
	"CustomerPhone" TEXT NOT NULL,
	"CustomerEmail" TEXT,
	"CustomerAddress" TEXT,
	"Note" TEXT,
	"Created" TEXT NOT NULL,
	CONSTRAINT "FK_Order_OrderState_OrderStateId" FOREIGN KEY("OrderStateId") REFERENCES "OrderStates" ("Id"),
	CONSTRAINT "FK_Order_PaymentMethod_PaymentMethodId" FOREIGN KEY("PaymentMethodId") REFERENCES "PaymentMethods" ("Id"),
	CONSTRAINT "FK_Order_DeliveryMethod_DeliveryMethodId" FOREIGN KEY("DeliveryMethodId") REFERENCES "DeliveryMethods" ("Id")
);
CREATE TABLE "OrderStates" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_OrderState" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"NameId" INTEGER NOT NULL,
	"Position" INTEGER,
	CONSTRAINT "FK_OrderState_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries" ("Id")
);
CREATE TABLE "Objects" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Object" PRIMARY KEY AUTOINCREMENT,
	"ClassId" INTEGER NOT NULL,
	CONSTRAINT "FK_Object_Class_ClassId" FOREIGN KEY("ClassId") REFERENCES "Classes" ("Id")
);
INSERT INTO `Objects` (Id,ClassId) VALUES (1,2);
INSERT INTO `Objects` (Id,ClassId) VALUES (2,2);
INSERT INTO `Objects` (Id,ClassId) VALUES (3,2);
INSERT INTO `Objects` (Id,ClassId) VALUES (4,2);
INSERT INTO `Objects` (Id,ClassId) VALUES (5,3);
INSERT INTO `Objects` (Id,ClassId) VALUES (6,3);
INSERT INTO `Objects` (Id,ClassId) VALUES (7,3);
INSERT INTO `Objects` (Id,ClassId) VALUES (8,3);
INSERT INTO `Objects` (Id,ClassId) VALUES (9,3);
INSERT INTO `Objects` (Id,ClassId) VALUES (10,5);
INSERT INTO `Objects` (Id,ClassId) VALUES (11,5);
INSERT INTO `Objects` (Id,ClassId) VALUES (12,5);
INSERT INTO `Objects` (Id,ClassId) VALUES (13,5);
INSERT INTO `Objects` (Id,ClassId) VALUES (14,5);
CREATE TABLE "Menus" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Menu" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"NameId" INTEGER NOT NULL,
	CONSTRAINT "FK_Menu_Dictionary_NameId" FOREIGN KEY ("NameId") REFERENCES "Dictionaries" ("Id")
);
INSERT INTO `Menus` (Id,Code,NameId) VALUES (1,'Main',1);
CREATE TABLE "MenuItems" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_MenuItem" PRIMARY KEY AUTOINCREMENT,
	"MenuId" INTEGER,
	"MenuItemId" INTEGER,
	"NameId" INTEGER NOT NULL,
	"Url" TEXT,
	"Position" INTEGER,
	CONSTRAINT "FK_MenuItem_Menu_MenuId" FOREIGN KEY("MenuId") REFERENCES "Menus" ("Id"),
	CONSTRAINT "FK_MenuItem_MenuItem_MenuItemId" FOREIGN KEY("MenuItemId") REFERENCES "MenuItems" ("Id"),
	CONSTRAINT "FK_MenuItem_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries" ("Id")
);
INSERT INTO `MenuItems` (Id,MenuId,MenuItemId,NameId,Url,Position) VALUES (1,1,NULL,2,'/',10);
INSERT INTO `MenuItems` (Id,MenuId,MenuItemId,NameId,Url,Position) VALUES (2,1,NULL,3,'/about-me',20);
INSERT INTO `MenuItems` (Id,MenuId,MenuItemId,NameId,Url,Position) VALUES (3,1,NULL,4,'/blog',30);
INSERT INTO `MenuItems` (Id,MenuId,MenuItemId,NameId,Url,Position) VALUES (4,1,NULL,5,'/contacts',40);
CREATE TABLE "Members" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Member" PRIMARY KEY AUTOINCREMENT,
	"ClassId" INTEGER NOT NULL,
	"TabId" INTEGER,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"Position" INTEGER,
	"PropertyDataTypeId" INTEGER,
	"IsPropertyLocalizable" INTEGER,
	"IsPropertyVisibleInList" INTEGER,
	"RelationClassId" INTEGER,
	"IsRelationSingleParent" INTEGER,
  "MinRelatedObjectsNumber" INTEGER,
  "MaxRelatedObjectsNumber" INTEGER,
	CONSTRAINT "FK_Member_Class_ClassId" FOREIGN KEY("ClassId") REFERENCES "Classes" ("Id"),
	CONSTRAINT "FK_Member_Tab_TabId" FOREIGN KEY("TabId") REFERENCES "Tabs" ("Id"),
	CONSTRAINT "FK_Member_DataType_PropertyDataTypeId" FOREIGN KEY("PropertyDataTypeId") REFERENCES "DataTypes" ("Id"),
	CONSTRAINT "FK_Member_Class_RelationClassId" FOREIGN KEY("RelationClassId") REFERENCES "Classes" ("Id")
);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (1,1,NULL,'Url','URL',1,1,0,1,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (2,1,NULL,'Content','Content',100,3,1,0,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (3,1,1,'Title','Title',1000,1,1,0,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (4,1,1,'MetaDescription','META description',1010,1,1,0,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (5,1,1,'MetaKeywords','META keywords',1020,1,1,0,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (6,3,NULL,'Text','Text',10,1,0,1,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (7,4,NULL,'Author','Author',10,1,0,1,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (8,4,NULL,'Text','Text',20,2,0,0,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (9,4,NULL,'Created','Created',30,8,0,1,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (10,5,NULL,'Name','Name',10,1,1,1,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (11,5,NULL,'Tags','Tags',20,NULL,NULL,NULL,3,0,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (12,5,NULL,'Cover','Cover',30,7,0,0,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (13,5,NULL,'Preview','Preview',40,3,1,0,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (14,5,NULL,'Created','Created',200,8,0,1,NULL,NULL,NULL,NULL);
INSERT INTO `Members` (Id,ClassId,TabId,Code,Name,Position,PropertyDataTypeId,IsPropertyLocalizable,IsPropertyVisibleInList,RelationClassId,IsRelationSingleParent,MinRelatedObjectsNumber,MaxRelatedObjectsNumber) VALUES (15,5,NULL,'Comments','Comments',0,NULL,NULL,NULL,4,1,NULL,NULL);
CREATE TABLE "Localizations" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Localization" PRIMARY KEY AUTOINCREMENT,
	"DictionaryId" INTEGER NOT NULL,
	"CultureId" INTEGER NOT NULL,
	"Value" TEXT,
	CONSTRAINT "FK_Localization_Dictionary_DictionaryId" FOREIGN KEY ("DictionaryId") REFERENCES "Dictionaries" ("Id"),
	CONSTRAINT "FK_Localization_Culture_CultureId" FOREIGN KEY ("CultureId") REFERENCES "Cultures" ("Id")
);
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (1,1,2,'Main');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (2,1,3,'Главное');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (3,1,4,'Головне');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (4,2,2,'Home');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (5,2,3,'Главная');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (6,2,4,'Головна');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (7,3,2,'About me');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (8,3,3,'Обо мне');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (9,3,4,'Про мене');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (10,4,2,'Blog');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (11,4,3,'Блог');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (12,4,4,'Блог');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (13,5,2,'Contacts');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (14,5,3,'Контакты');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (15,5,4,'Контакти');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (16,6,2,'Feedback');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (17,6,3,'Обратная связь');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (18,6,4,'Зворотний зв’язок');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (19,7,2,'Your name');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (20,7,3,'Ваше имя');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (21,7,4,'Ваше ім’я');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (22,8,2,'Your email');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (23,8,3,'Ваша электронная почта');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (24,8,4,'Ваша електронна пошта');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (25,9,2,'Your message');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (26,9,3,'Ваше сообщение');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (27,9,4,'Ваше повідомлення');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (28,10,2,'Write comment');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (29,10,3,'Напишите комментарий');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (30,10,4,'Напишіть коментар');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (31,11,2,'Your name');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (32,11,3,'Ваше имя');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (33,11,4,'Ваше ім’я');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (34,12,2,'Your comment');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (35,12,3,'Ваш ');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (36,12,4,'Ваше повідомлення');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (37,13,1,'/');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (38,14,2,'<h1>Your Personal Blog</h1><p>Hello! This is your personal blog, it is based on the <a href="http://platformus.net/" target="_blank" rel="noopener">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href="/backend">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href="http://docs.platformus.net/" target="_blank" rel="noopener">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">chat</a>.</p><p>Have a nice work!</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (39,14,3,'<h1>Ваш персональный блог</h1><p>Здравствуйте! Это ваш персональный блог, он работает на базе системы управления содержимым &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href="/backend">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (40,14,4,'<h1>Ваш персональний блог</h1><p>Вітаємо! Це ваш персональний блог, він працює на базі системи керування вмістом &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href="/backend">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (41,15,2,'Your Personal Blog');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (42,15,3,'Ваш персональный блог');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (43,15,4,'Ваш персональний блог');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (44,16,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (45,16,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (46,16,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (47,17,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (48,17,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (49,17,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (50,18,1,'/about-me');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (51,19,2,'<h1>About Me</h1><p>Tell us about yourself in a few words. You can add photos or videos here.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (52,19,3,'<h1>Обо мне</h1><p>Расскажите о себе в нескольких словах. Вы можете добавить сюда фотографии или видео.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (53,19,4,'<h1>Про мене</h1><p>Розкажіть про себе в кількох словах. Ви можете додати сюди фотографії або відео.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (54,20,2,'About Me');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (55,20,3,'Обо мне');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (56,20,4,'Про мене');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (57,21,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (58,21,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (59,21,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (60,22,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (61,22,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (62,22,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (63,23,1,'/blog');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (64,24,2,'<h1>Blog</h1>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (65,24,3,'<h1>Блог</h1>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (66,24,4,'<h1>Блог</h1>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (67,25,2,'Blog');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (68,25,3,'Блог');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (69,25,4,'Блог');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (70,26,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (71,26,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (72,26,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (73,27,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (74,27,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (75,27,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (76,28,1,'/contacts');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (77,29,2,'<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (78,29,3,'<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (79,29,4,'<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (80,30,2,'Contacts');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (81,30,3,'Контакты');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (82,30,4,'Контакти');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (83,31,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (84,31,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (85,31,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (86,32,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (87,32,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (88,32,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (89,33,1,'Tag1');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (90,34,1,'Tag2');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (91,35,1,'Tag3');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (92,36,1,'Tag4');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (93,37,1,'Tag5');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (94,38,2,'Post 1');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (95,38,3,'Пост 1');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (96,38,4,'Пост 1');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (97,39,1,'/images/objects/10/cover.jpg');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (98,40,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (99,40,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (100,40,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (101,41,1,'/blog/post-1');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (102,42,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (103,42,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (104,42,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (105,43,2,'Post 1');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (106,43,3,'Пост 1');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (107,43,4,'Пост 1');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (108,44,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (109,44,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (110,44,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (111,45,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (112,45,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (113,45,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (114,46,2,'Post 2');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (115,46,3,'Пост 2');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (116,46,4,'Пост 2');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (117,47,1,'/images/objects/11/cover.jpg');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (118,48,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (119,48,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (120,48,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (121,49,1,'/blog/post-2');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (122,50,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (123,50,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (124,50,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (125,51,2,'Post 2');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (126,51,3,'Пост 2');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (127,51,4,'Пост 2');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (128,52,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (129,52,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (130,52,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (131,53,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (132,53,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (133,53,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (134,54,2,'Post 3');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (135,54,3,'Пост 3');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (136,54,4,'Пост 3');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (137,55,1,'/images/objects/12/cover.jpg');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (138,56,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (139,56,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (140,56,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (141,57,1,'/blog/post-3');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (142,58,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (143,58,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (144,58,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (145,59,2,'Post 3');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (146,59,3,'Пост 3');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (147,59,4,'Пост 3');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (148,60,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (149,60,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (150,60,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (151,61,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (152,61,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (153,61,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (154,62,2,'Post 4');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (155,62,3,'Пост 4');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (156,62,4,'Пост 4');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (157,63,1,'/images/objects/13/cover.jpg');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (158,64,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (159,64,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (160,64,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (161,65,1,'/blog/post-4');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (162,66,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (163,66,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (164,66,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (165,67,2,'Post 4');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (166,67,3,'Пост 4');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (167,67,4,'Пост 4');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (168,68,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (169,68,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (170,68,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (171,69,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (172,69,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (173,69,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (174,70,2,'Post 5');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (175,70,3,'Пост 5');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (176,70,4,'Пост 5');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (177,71,1,'/images/objects/14/cover.jpg');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (178,72,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (179,72,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (180,72,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (181,73,1,'/blog/post-5');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (182,74,2,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (183,74,3,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (184,74,4,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (185,75,2,'Post 5');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (186,75,3,'Пост 5');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (187,75,4,'Пост 5');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (188,76,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (189,76,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (190,76,4,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (191,77,2,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (192,77,3,'');
INSERT INTO `Localizations` (Id,DictionaryId,CultureId,Value) VALUES (193,77,4,'');
CREATE TABLE "Forms" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Form" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"NameId" INTEGER NOT NULL,
	"ProduceCompletedForms" INTEGER NOT NULL,
	"CSharpClassName" TEXT NOT NULL,
	"Parameters" TEXT,
	CONSTRAINT "FK_Form_Dictionary_NameId" FOREIGN KEY ("NameId") REFERENCES "Dictionaries" ("Id")
);
INSERT INTO `Forms` (Id,Code,NameId,ProduceCompletedForms,CSharpClassName,Parameters) VALUES (1,'Feedback',6,1,'Platformus.Forms.Frontend.FormHandlers.EmailFormHandler','RecipientEmails=test@test.com;RedirectUrl=/contacts');
INSERT INTO `Forms` (Id,Code,NameId,ProduceCompletedForms,CSharpClassName,Parameters) VALUES (2,'WriteComment',10,1,'WebApplication.FormHandlers.WriteCommentFormHandler',NULL);
CREATE TABLE "Files" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_File" PRIMARY KEY AUTOINCREMENT,
	"Name" TEXT NOT NULL,
	"Size" INTEGER NOT NULL
);
CREATE TABLE "Fields" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Field" PRIMARY KEY AUTOINCREMENT,
	"FormId" INTEGER NOT NULL,
	"FieldTypeId" INTEGER NOT NULL,
	"Code" TEXT NOT NULL,
	"NameId" INTEGER NOT NULL,
	"IsRequired" INTEGER NOT NULL,
	"MaxLength" INTEGER,
	"Position" INTEGER,
	CONSTRAINT "FK_Field_Form_FormId" FOREIGN KEY ("FormId") REFERENCES "Forms" ("Id"),
	CONSTRAINT "FK_Field_FieldType_FieldTypeId" FOREIGN KEY ("FieldTypeId") REFERENCES "FieldTypes" ("Id"),
	CONSTRAINT "FK_Field_Dictionary_NameId" FOREIGN KEY ("NameId") REFERENCES "Dictionaries" ("Id")
);
INSERT INTO `Fields` (Id,FormId,FieldTypeId,Code,NameId,IsRequired,MaxLength,Position) VALUES (1,1,1,'Name',7,1,NULL,10);
INSERT INTO `Fields` (Id,FormId,FieldTypeId,Code,NameId,IsRequired,MaxLength,Position) VALUES (2,1,1,'Email',8,1,NULL,20);
INSERT INTO `Fields` (Id,FormId,FieldTypeId,Code,NameId,IsRequired,MaxLength,Position) VALUES (3,1,2,'Message',9,1,NULL,30);
INSERT INTO `Fields` (Id,FormId,FieldTypeId,Code,NameId,IsRequired,MaxLength,Position) VALUES (4,2,1,'Name',11,1,NULL,10);
INSERT INTO `Fields` (Id,FormId,FieldTypeId,Code,NameId,IsRequired,MaxLength,Position) VALUES (5,2,2,'Comment',12,1,NULL,20);
CREATE TABLE "FieldTypes" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_FieldType" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"Position" INTEGER
);
INSERT INTO `FieldTypes` (Id,Code,Name,Position) VALUES (1,'TextBox','Text box',1);
INSERT INTO `FieldTypes` (Id,Code,Name,Position) VALUES (2,'TextArea','Text area',2);
INSERT INTO `FieldTypes` (Id,Code,Name,Position) VALUES (3,'Checkbox','Checkbox',3);
INSERT INTO `FieldTypes` (Id,Code,Name,Position) VALUES (4,'RadioButtonList','Radio button list',4);
INSERT INTO `FieldTypes` (Id,Code,Name,Position) VALUES (5,'DropDownList','Drop down list',5);
INSERT INTO `FieldTypes` (Id,Code,Name,Position) VALUES (6,'FileUpload','File upload',6);
CREATE TABLE "FieldOptions" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_FieldOption" PRIMARY KEY AUTOINCREMENT,
	"FieldId" INTEGER NOT NULL,
	"ValueId" INTEGER NOT NULL,
	"Position" INTEGER,
	CONSTRAINT "FK_FieldOption_Field_FieldId" FOREIGN KEY ("FieldId") REFERENCES "Fields" ("Id"),
	CONSTRAINT "FK_FieldOption_Dictionary_ValueId" FOREIGN KEY ("ValueId") REFERENCES "Dictionaries" ("Id")
);
CREATE TABLE "Endpoints" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Endpoint" PRIMARY KEY AUTOINCREMENT,
	"Name" TEXT NOT NULL,
	"UrlTemplate" TEXT,
	"Position" INTEGER,
	"DisallowAnonymous" INTEGER NOT NULL,
	"SignInUrl" TEXT,
	"CSharpClassName" TEXT NOT NULL,
	"Parameters" TEXT
);
INSERT INTO `Endpoints` (Id,Name,UrlTemplate,Position,DisallowAnonymous,SignInUrl,CSharpClassName,Parameters) VALUES (1,'Default','{*url}',1000,0,NULL,'Platformus.Domain.Frontend.DefaultEndpoint','ViewName=RegularPage;UseCaching=true');
INSERT INTO `Endpoints` (Id,Name,UrlTemplate,Position,DisallowAnonymous,SignInUrl,CSharpClassName,Parameters) VALUES (2,'Blog','blog',10,0,NULL,'Platformus.Domain.Frontend.DefaultEndpoint','ViewName=BlogPage;UseCaching=true');
INSERT INTO `Endpoints` (Id,Name,UrlTemplate,Position,DisallowAnonymous,SignInUrl,CSharpClassName,Parameters) VALUES (3,'Post','blog/{segment}',20,0,NULL,'Platformus.Domain.Frontend.DefaultEndpoint','ViewName=PostPage;UseCaching=true');
INSERT INTO `Endpoints` (Id,Name,UrlTemplate,Position,DisallowAnonymous,SignInUrl,CSharpClassName,Parameters) VALUES (4,'Contacts','contacts',30,0,NULL,'Platformus.Domain.Frontend.DefaultEndpoint','ViewName=ContactsPage;UseCaching=true');
CREATE TABLE "EndpointPermissions" (
	"EndpointId" INTEGER NOT NULL,
	"PermissionId" INTEGER NOT NULL,
	CONSTRAINT "PK_EndpointPermission" PRIMARY KEY ("EndpointId", "PermissionId"),
	CONSTRAINT "FK_EndpointPermission_Endpoint_EndpointId" FOREIGN KEY ("EndpointId") REFERENCES "Endpoints" ("Id"),
	CONSTRAINT "FK_EndpointPermission_Permission_PermissionId" FOREIGN KEY ("PermissionId") REFERENCES "Permissions" ("Id")
);
CREATE TABLE "Dictionaries" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Dictionary" PRIMARY KEY AUTOINCREMENT
);
INSERT INTO `Dictionaries` (Id) VALUES (1);
INSERT INTO `Dictionaries` (Id) VALUES (2);
INSERT INTO `Dictionaries` (Id) VALUES (3);
INSERT INTO `Dictionaries` (Id) VALUES (4);
INSERT INTO `Dictionaries` (Id) VALUES (5);
INSERT INTO `Dictionaries` (Id) VALUES (6);
INSERT INTO `Dictionaries` (Id) VALUES (7);
INSERT INTO `Dictionaries` (Id) VALUES (8);
INSERT INTO `Dictionaries` (Id) VALUES (9);
INSERT INTO `Dictionaries` (Id) VALUES (10);
INSERT INTO `Dictionaries` (Id) VALUES (11);
INSERT INTO `Dictionaries` (Id) VALUES (12);
INSERT INTO `Dictionaries` (Id) VALUES (13);
INSERT INTO `Dictionaries` (Id) VALUES (14);
INSERT INTO `Dictionaries` (Id) VALUES (15);
INSERT INTO `Dictionaries` (Id) VALUES (16);
INSERT INTO `Dictionaries` (Id) VALUES (17);
INSERT INTO `Dictionaries` (Id) VALUES (18);
INSERT INTO `Dictionaries` (Id) VALUES (19);
INSERT INTO `Dictionaries` (Id) VALUES (20);
INSERT INTO `Dictionaries` (Id) VALUES (21);
INSERT INTO `Dictionaries` (Id) VALUES (22);
INSERT INTO `Dictionaries` (Id) VALUES (23);
INSERT INTO `Dictionaries` (Id) VALUES (24);
INSERT INTO `Dictionaries` (Id) VALUES (25);
INSERT INTO `Dictionaries` (Id) VALUES (26);
INSERT INTO `Dictionaries` (Id) VALUES (27);
INSERT INTO `Dictionaries` (Id) VALUES (28);
INSERT INTO `Dictionaries` (Id) VALUES (29);
INSERT INTO `Dictionaries` (Id) VALUES (30);
INSERT INTO `Dictionaries` (Id) VALUES (31);
INSERT INTO `Dictionaries` (Id) VALUES (32);
INSERT INTO `Dictionaries` (Id) VALUES (33);
INSERT INTO `Dictionaries` (Id) VALUES (34);
INSERT INTO `Dictionaries` (Id) VALUES (35);
INSERT INTO `Dictionaries` (Id) VALUES (36);
INSERT INTO `Dictionaries` (Id) VALUES (37);
INSERT INTO `Dictionaries` (Id) VALUES (38);
INSERT INTO `Dictionaries` (Id) VALUES (39);
INSERT INTO `Dictionaries` (Id) VALUES (40);
INSERT INTO `Dictionaries` (Id) VALUES (41);
INSERT INTO `Dictionaries` (Id) VALUES (42);
INSERT INTO `Dictionaries` (Id) VALUES (43);
INSERT INTO `Dictionaries` (Id) VALUES (44);
INSERT INTO `Dictionaries` (Id) VALUES (45);
INSERT INTO `Dictionaries` (Id) VALUES (46);
INSERT INTO `Dictionaries` (Id) VALUES (47);
INSERT INTO `Dictionaries` (Id) VALUES (48);
INSERT INTO `Dictionaries` (Id) VALUES (49);
INSERT INTO `Dictionaries` (Id) VALUES (50);
INSERT INTO `Dictionaries` (Id) VALUES (51);
INSERT INTO `Dictionaries` (Id) VALUES (52);
INSERT INTO `Dictionaries` (Id) VALUES (53);
INSERT INTO `Dictionaries` (Id) VALUES (54);
INSERT INTO `Dictionaries` (Id) VALUES (55);
INSERT INTO `Dictionaries` (Id) VALUES (56);
INSERT INTO `Dictionaries` (Id) VALUES (57);
INSERT INTO `Dictionaries` (Id) VALUES (58);
INSERT INTO `Dictionaries` (Id) VALUES (59);
INSERT INTO `Dictionaries` (Id) VALUES (60);
INSERT INTO `Dictionaries` (Id) VALUES (61);
INSERT INTO `Dictionaries` (Id) VALUES (62);
INSERT INTO `Dictionaries` (Id) VALUES (63);
INSERT INTO `Dictionaries` (Id) VALUES (64);
INSERT INTO `Dictionaries` (Id) VALUES (65);
INSERT INTO `Dictionaries` (Id) VALUES (66);
INSERT INTO `Dictionaries` (Id) VALUES (67);
INSERT INTO `Dictionaries` (Id) VALUES (68);
INSERT INTO `Dictionaries` (Id) VALUES (69);
INSERT INTO `Dictionaries` (Id) VALUES (70);
INSERT INTO `Dictionaries` (Id) VALUES (71);
INSERT INTO `Dictionaries` (Id) VALUES (72);
INSERT INTO `Dictionaries` (Id) VALUES (73);
INSERT INTO `Dictionaries` (Id) VALUES (74);
INSERT INTO `Dictionaries` (Id) VALUES (75);
INSERT INTO `Dictionaries` (Id) VALUES (76);
INSERT INTO `Dictionaries` (Id) VALUES (77);
CREATE TABLE "DeliveryMethods" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_DeliveryMethod" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"NameId" INTEGER NOT NULL,
	"Position" INTEGER,
	CONSTRAINT "FK_DeliveryMethod_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries" ("Id")
);
CREATE TABLE "DataTypes" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_DataType" PRIMARY KEY AUTOINCREMENT,
	"StorageDataType" TEXT NOT NULL,
	"JavaScriptEditorClassName" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"Position" INTEGER
);
INSERT INTO `DataTypes` (Id,StorageDataType,JavaScriptEditorClassName,Name,Position) VALUES (1,'string','singleLinePlainText','Single line plain text',1);
INSERT INTO `DataTypes` (Id,StorageDataType,JavaScriptEditorClassName,Name,Position) VALUES (2,'string','multilinePlainText','Multiline plain text',2);
INSERT INTO `DataTypes` (Id,StorageDataType,JavaScriptEditorClassName,Name,Position) VALUES (3,'string','html','Html',3);
INSERT INTO `DataTypes` (Id,StorageDataType,JavaScriptEditorClassName,Name,Position) VALUES (4,'integer','integerNumber','Integer number',4);
INSERT INTO `DataTypes` (Id,StorageDataType,JavaScriptEditorClassName,Name,Position) VALUES (5,'decimal','decimalNumber','Decimal number',5);
INSERT INTO `DataTypes` (Id,StorageDataType,JavaScriptEditorClassName,Name,Position) VALUES (6,'integer','booleanFlag','Boolean flag',6);
INSERT INTO `DataTypes` (Id,StorageDataType,JavaScriptEditorClassName,Name,Position) VALUES (7,'string','image','Image',7);
INSERT INTO `DataTypes` (Id,StorageDataType,JavaScriptEditorClassName,Name,Position) VALUES (8,'datetime','date','Date',8);
CREATE TABLE "DataTypeParameters" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_DataTypeParameter" PRIMARY KEY AUTOINCREMENT,
	"DataTypeId" INT NOT NULL,
	"JavaScriptEditorClassName" TEXT NOT NULL,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	CONSTRAINT "FK_DataTypeParameter_DataType_DataTypeId" FOREIGN KEY("DataTypeId") REFERENCES "DataTypes" ("Id")
);
INSERT INTO `DataTypeParameters` (Id,DataTypeId,JavaScriptEditorClassName,Code,Name) VALUES (1,1,'checkbox','IsRequired','Is required');
INSERT INTO `DataTypeParameters` (Id,DataTypeId,JavaScriptEditorClassName,Code,Name) VALUES (2,1,'numericTextBox','MaxLength','Max length');
INSERT INTO `DataTypeParameters` (Id,DataTypeId,JavaScriptEditorClassName,Code,Name) VALUES (3,2,'checkbox','IsRequired','Is required');
INSERT INTO `DataTypeParameters` (Id,DataTypeId,JavaScriptEditorClassName,Code,Name) VALUES (4,2,'numericTextBox','MaxLength','Max length');
INSERT INTO `DataTypeParameters` (Id,DataTypeId,JavaScriptEditorClassName,Code,Name) VALUES (5,7,'numericTextBox','Width','Width');
INSERT INTO `DataTypeParameters` (Id,DataTypeId,JavaScriptEditorClassName,Code,Name) VALUES (6,7,'numericTextBox','Height','Height');
INSERT INTO `DataTypeParameters` (Id,DataTypeId,JavaScriptEditorClassName,Code,Name) VALUES (7,8,'checkbox','IsRequired','Is required');
CREATE TABLE "DataTypeParameterValues" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_DataTypeParameterValue" PRIMARY KEY AUTOINCREMENT,
	"DataTypeParameterId" INT NOT NULL,
	"MemberId" INT NOT NULL,
	"Value" TEXT NOT NULL,
	CONSTRAINT "FK_DataTypeParameterValue_DataTypeParameter_DataTypeParameterId" FOREIGN KEY("DataTypeParameterId") REFERENCES "DataTypeParameters" ("Id"),
	CONSTRAINT "FK_DataTypeParameterValue_Member_MemberId" FOREIGN KEY("MemberId") REFERENCES "Members" ("Id")
);
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (1,1,1,'true');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (2,2,1,'128');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (3,1,3,'false');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (4,2,3,'128');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (5,1,4,'false');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (6,2,4,'512');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (7,1,5,'false');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (8,2,5,'256');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (9,1,6,'true');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (10,2,6,'48');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (11,1,7,'true');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (12,2,7,'64');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (13,3,8,'true');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (14,7,9,'true');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (15,1,10,'true');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (16,2,10,'128');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (17,5,12,'1024');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (18,6,12,'256');
INSERT INTO `DataTypeParameterValues` (Id,DataTypeParameterId,MemberId,Value) VALUES (19,7,14,'true');
CREATE TABLE "DataSources" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_DataSource" PRIMARY KEY AUTOINCREMENT,
	"EndpointId" INTEGER NOT NULL,
	"Code" TEXT NOT NULL,
	"CSharpClassName" TEXT NOT NULL,
	"Parameters" TEXT,
	CONSTRAINT "FK_DataSource_Endpoint_EndpointId" FOREIGN KEY("EndpointId") REFERENCES "Endpoints"("Id")
);
INSERT INTO `DataSources` (Id,EndpointId,Code,CSharpClassName,Parameters) VALUES (1,1,'Page','Platformus.Domain.Frontend.DataSources.PageObjectDataSource',NULL);
INSERT INTO `DataSources` (Id,EndpointId,Code,CSharpClassName,Parameters) VALUES (2,2,'Page','Platformus.Domain.Frontend.DataSources.PageObjectDataSource',NULL);
INSERT INTO `DataSources` (Id,EndpointId,Code,CSharpClassName,Parameters) VALUES (3,2,'Posts','Platformus.Domain.Frontend.DataSources.ObjectsDataSource','ClassId=5;NestedXPaths=/Tags;EnableFiltering=false;QueryUrlParameterName=q;SortingMemberId=14;SortingDirection=DESC;EnablePaging=false;SkipUrlParameterName=skip;TakeUrlParameterName=take;DefaultTake=10');
INSERT INTO `DataSources` (Id,EndpointId,Code,CSharpClassName,Parameters) VALUES (4,3,'Page','Platformus.Domain.Frontend.DataSources.PageObjectDataSource',NULL);
INSERT INTO `DataSources` (Id,EndpointId,Code,CSharpClassName,Parameters) VALUES (5,3,'Tags','Platformus.Domain.Frontend.DataSources.RelatedObjectsDataSource','RelationMemberId=11;RelationType=Primary;EnableFiltering=false;QueryUrlParameterName=q;SortingDirection=ASC;EnablePaging=false;SkipUrlParameterName=skip;TakeUrlParameterName=take;DefaultTake=10');
INSERT INTO `DataSources` (Id,EndpointId,Code,CSharpClassName,Parameters) VALUES (6,3,'Comments','Platformus.Domain.Frontend.DataSources.RelatedObjectsDataSource','RelationMemberId=15;RelationType=Primary;EnableFiltering=false;QueryUrlParameterName=q;SortingMemberId=9;SortingDirection=ASC;EnablePaging=false;SkipUrlParameterName=skip;TakeUrlParameterName=take;DefaultTake=10');
INSERT INTO `DataSources` (Id,EndpointId,Code,CSharpClassName,Parameters) VALUES (7,4,'Page','Platformus.Domain.Frontend.DataSources.PageObjectDataSource',NULL);
CREATE TABLE "Cultures" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Culture" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"IsNeutral" INTEGER NOT NULL,
	"IsFrontendDefault" INTEGER NOT NULL,
	"IsBackendDefault" INTEGER NOT NULL
);
INSERT INTO `Cultures` (Id,Code,Name,IsNeutral,IsFrontendDefault,IsBackendDefault) VALUES (1,'__','Neutral',1,0,0);
INSERT INTO `Cultures` (Id,Code,Name,IsNeutral,IsFrontendDefault,IsBackendDefault) VALUES (2,'en','English',0,1,1);
INSERT INTO `Cultures` (Id,Code,Name,IsNeutral,IsFrontendDefault,IsBackendDefault) VALUES (3,'ru','Русский',0,0,0);
INSERT INTO `Cultures` (Id,Code,Name,IsNeutral,IsFrontendDefault,IsBackendDefault) VALUES (4,'uk','Українська',0,0,0);
CREATE TABLE "Credentials" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Credential" PRIMARY KEY AUTOINCREMENT,
	"UserId" INTEGER NOT NULL,
	"CredentialTypeId" INTEGER NOT NULL,
	"Identifier" TEXT NOT NULL,
	"Secret" TEXT,
	"Extra" TEXT,
	CONSTRAINT "FK_Credential_User_UserId" FOREIGN KEY ("UserId") REFERENCES "Users" ("Id"),
	CONSTRAINT "FK_Credential_CredentialType_CredentialTypeId" FOREIGN KEY ("CredentialTypeId") REFERENCES "CredentialTypes" ("Id")
);
INSERT INTO `Credentials` (Id,UserId,CredentialTypeId,Identifier,Secret,Extra) VALUES (1,1,1,'admin@platformus.net','8lE3xN2Ijiv/Y/aIGwaZLrbcqrt/1jDmzPTdudKbVD0=','0O/ZGwhScZRGbsmiUEckOg==');
CREATE TABLE "CredentialTypes" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_CredentialType" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"Position" INTEGER
);
INSERT INTO `CredentialTypes` (Id,Code,Name,Position) VALUES (1,'Email','Email',1);
CREATE TABLE "Configurations" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Configuration" PRIMARY KEY AUTOINCREMENT,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL
);
INSERT INTO `Configurations` (Id,Code,Name) VALUES (1,'Email','Email');
INSERT INTO `Configurations` (Id,Code,Name) VALUES (2,'Globalization','Globalization');
CREATE TABLE "CompletedForms" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_CompletedForm" PRIMARY KEY AUTOINCREMENT,
	"FormId" INTEGER NOT NULL,
	"Created" TEXT NOT NULL,
	CONSTRAINT "FK_CompletedForm_Form_FormId" FOREIGN KEY ("FormId") REFERENCES "Forms" ("Id")
);
CREATE TABLE "CompletedFields" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_CompletedField" PRIMARY KEY AUTOINCREMENT,
	"CompletedFormId" INTEGER NOT NULL,
	"FieldId" INTEGER NOT NULL,
	"Value" TEXT,
	CONSTRAINT "FK_CompletedField_CompletedForm_CompletedFormId" FOREIGN KEY ("CompletedFormId") REFERENCES "CompletedForms" ("Id")
	CONSTRAINT "FK_CompletedField_Field_FieldId" FOREIGN KEY ("FieldId") REFERENCES "Fields" ("Id")
);
CREATE TABLE "Classes" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Class" PRIMARY KEY AUTOINCREMENT,
	"ClassId" INTEGER,
	"Code" TEXT NOT NULL,
	"Name" TEXT NOT NULL,
	"PluralizedName" TEXT NOT NULL,
	"IsAbstract" INTEGER NOT NULL,
	CONSTRAINT "FK_Class_Class_ClassId" FOREIGN KEY("ClassId") REFERENCES "Classes" ("Id")
);
INSERT INTO `Classes` (Id,ClassId,Code,Name,PluralizedName,IsAbstract) VALUES (1,NULL,'Page','Page','Pages',1);
INSERT INTO `Classes` (Id,ClassId,Code,Name,PluralizedName,IsAbstract) VALUES (2,1,'RegularPage','Regular Page','Regular Pages',0);
INSERT INTO `Classes` (Id,ClassId,Code,Name,PluralizedName,IsAbstract) VALUES (3,NULL,'Tag','Tag','Tags',0);
INSERT INTO `Classes` (Id,ClassId,Code,Name,PluralizedName,IsAbstract) VALUES (4,NULL,'Comment','Comment','Comments',0);
INSERT INTO `Classes` (Id,ClassId,Code,Name,PluralizedName,IsAbstract) VALUES (5,1,'PostPage','Post Page','Post Pages',0);
CREATE TABLE "Categories" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Category" PRIMARY KEY AUTOINCREMENT,
	"CategoryId" INTEGER,
	"NameId" INTEGER NOT NULL,
	"Position" INTEGER,
	CONSTRAINT "FK_Category_Category_CategoryId" FOREIGN KEY("CategoryId") REFERENCES "Categories" ("Id"),
	CONSTRAINT "FK_Category_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries" ("Id")
);
CREATE TABLE "Catalogs" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Catalog" PRIMARY KEY AUTOINCREMENT,
	"CatalogId" INTEGER,
	"Url" TEXT,
	"NameId" INTEGER NOT NULL,
	"CSharpClassName" TEXT NOT NULL,
  "Parameters" TEXT,
	"Position" INTEGER,
	CONSTRAINT "FK_Catalog_Catalog_CatalogId" FOREIGN KEY("CatalogId") REFERENCES "Catalogs" ("Id"),
	CONSTRAINT "FK_Catalog_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries" ("Id")
);
CREATE TABLE "Carts" (
	"Id" INTEGER NOT NULL CONSTRAINT "PK_Cart" PRIMARY KEY AUTOINCREMENT,
	"OrderId" INTEGER,
	"ClientSideId" TEXT NOT NULL,
	"Created" TEXT NOT NULL,
	CONSTRAINT "FK_Cart_Order_OrderId" FOREIGN KEY("OrderId") REFERENCES "Orders" ("Id")
);
COMMIT;
