BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "ModelStates" (
	"Id"	TEXT NOT NULL,
	"Value"	TEXT NOT NULL,
	"Created"	TEXT NOT NULL,
	CONSTRAINT "PK_ModelState" PRIMARY KEY("Id")
);
CREATE TABLE IF NOT EXISTS "Users" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Created"	TEXT NOT NULL,
	CONSTRAINT "PK_User" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "CredentialTypes" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "PK_CredentialType" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Credentials" (
	"Id"	INTEGER NOT NULL,
	"UserId"	INTEGER NOT NULL,
	"CredentialTypeId"	INTEGER NOT NULL,
	"Identifier"	TEXT NOT NULL,
	"Secret"	TEXT,
	"Extra"	TEXT,
	CONSTRAINT "PK_Credential" PRIMARY KEY("Id" AUTOINCREMENT),
	CONSTRAINT "FK_Credential_User_UserId" FOREIGN KEY("UserId") REFERENCES "Users"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Credential_CredentialType_CredentialTypeId" FOREIGN KEY("CredentialTypeId") REFERENCES "CredentialTypes"("Id") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "Roles" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "PK_Role" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "UserRoles" (
	"UserId"	INTEGER NOT NULL,
	"RoleId"	INTEGER NOT NULL,
	CONSTRAINT "PK_UserRole" PRIMARY KEY("UserId","RoleId"),
	CONSTRAINT "FK_UserRole_User_UserId" FOREIGN KEY("UserId") REFERENCES "Users"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_UserRole_Role_RoleId" FOREIGN KEY("RoleId") REFERENCES "Roles"("Id") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "Permissions" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "PK_Permission" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "RolePermissions" (
	"RoleId"	INTEGER NOT NULL,
	"PermissionId"	INTEGER NOT NULL,
	CONSTRAINT "PK_RolePermission" PRIMARY KEY("RoleId","PermissionId"),
	CONSTRAINT "FK_RolePermission_Role_RoleId" FOREIGN KEY("RoleId") REFERENCES "Roles"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_RolePermission_Permission_PermissionId" FOREIGN KEY("PermissionId") REFERENCES "Permissions"("Id") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "Configurations" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	CONSTRAINT "PK_Configuration" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Variables" (
	"Id"	INTEGER NOT NULL,
	"ConfigurationId"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"Value"	TEXT NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "PK_Variable" PRIMARY KEY("Id" AUTOINCREMENT),
	CONSTRAINT "FK_Variable_Configuration_ConfigurationId" FOREIGN KEY("ConfigurationId") REFERENCES "Configurations"("Id") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "Cultures" (
	"Id"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"IsNeutral"	INTEGER NOT NULL,
	"IsFrontendDefault"	INTEGER NOT NULL,
	"IsBackendDefault"	INTEGER NOT NULL,
	CONSTRAINT "PK_Culture" PRIMARY KEY("Id")
);
CREATE TABLE IF NOT EXISTS "Dictionaries" (
	"Id"	INTEGER NOT NULL,
	CONSTRAINT "PK_Dictionary" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Localizations" (
	"Id"	INTEGER NOT NULL,
	"DictionaryId"	INTEGER NOT NULL,
	"CultureId"	TEXT NOT NULL,
	"Value"	TEXT,
	CONSTRAINT "PK_Localization" PRIMARY KEY("Id" AUTOINCREMENT),
	CONSTRAINT "FK_Localization_Dictionary_DictionaryId" FOREIGN KEY("DictionaryId") REFERENCES "Dictionaries"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Localization_Culture_CultureId" FOREIGN KEY("CultureId") REFERENCES "Cultures"("Id") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "Endpoints" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"UrlTemplate"	TEXT,
	"Position"	INTEGER,
	"DisallowAnonymous"	INTEGER NOT NULL,
	"SignInUrl"	TEXT,
	"RequestProcessorCSharpClassName"	TEXT NOT NULL,
	"RequestProcessorParameters"	TEXT,
	"ResponseCacheCSharpClassName"	TEXT,
	"ResponseCacheParameters"	TEXT,
	CONSTRAINT "PK_Endpoint" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "EndpointPermissions" (
	"EndpointId"	INTEGER NOT NULL,
	"PermissionId"	INTEGER NOT NULL,
	CONSTRAINT "PK_EndpointPermission" PRIMARY KEY("EndpointId","PermissionId"),
	CONSTRAINT "FK_EndpointPermission_Endpoint_EndpointId" FOREIGN KEY("EndpointId") REFERENCES "Endpoints"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_EndpointPermission_Permission_PermissionId" FOREIGN KEY("PermissionId") REFERENCES "Permissions"("Id") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "DataSources" (
	"Id"	INTEGER NOT NULL,
	"EndpointId"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"DataProviderCSharpClassName"	TEXT NOT NULL,
	"DataProviderParameters"	TEXT,
	CONSTRAINT "PK_DataSource" PRIMARY KEY("Id" AUTOINCREMENT),
	CONSTRAINT "FK_DataSource_Endpoint_EndpointId" FOREIGN KEY("EndpointId") REFERENCES "Endpoints"("Id") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "Classes" (
	"Id"	INTEGER NOT NULL,
	"ClassId"	INTEGER,
	"Code"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"PluralizedName"	TEXT NOT NULL,
	"IsAbstract"	INTEGER NOT NULL,
	CONSTRAINT "PK_Class" PRIMARY KEY("Id" AUTOINCREMENT),
	CONSTRAINT "FK_Class_Class_ClassId" FOREIGN KEY("ClassId") REFERENCES "Classes"("Id") ON DELETE SET NULL
);
CREATE TABLE IF NOT EXISTS "Tabs" (
	"Id"	INTEGER NOT NULL,
	"ClassId"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "PK_Tab" PRIMARY KEY("Id" AUTOINCREMENT),
	CONSTRAINT "FK_Tab_Class_ClassId" FOREIGN KEY("ClassId") REFERENCES "Classes"("Id") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "DataTypes" (
	"Id"	INTEGER NOT NULL,
	"StorageDataType"	TEXT NOT NULL,
	"JavaScriptEditorClassName"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "PK_DataType" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "DataTypeParameters" (
	"Id"	INTEGER NOT NULL,
	"DataTypeId"	INT NOT NULL,
	"JavaScriptEditorClassName"	TEXT NOT NULL,
	"Code"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	CONSTRAINT "FK_DataTypeParameter_DataType_DataTypeId" FOREIGN KEY("DataTypeId") REFERENCES "DataTypes"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_DataTypeParameter" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Members" (
	"Id"	INTEGER NOT NULL,
	"ClassId"	INTEGER NOT NULL,
	"TabId"	INTEGER,
	"Code"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"Position"	INTEGER,
	"PropertyDataTypeId"	INTEGER,
	"IsPropertyLocalizable"	INTEGER,
	"IsPropertyVisibleInList"	INTEGER,
	"RelationClassId"	INTEGER,
	"IsRelationSingleParent"	INTEGER,
	"MinRelatedObjectsNumber"	INTEGER,
	"MaxRelatedObjectsNumber"	INTEGER,
	CONSTRAINT "FK_Member_Class_ClassId" FOREIGN KEY("ClassId") REFERENCES "Classes"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Member_Class_RelationClassId" FOREIGN KEY("RelationClassId") REFERENCES "Classes"("Id") ON DELETE SET NULL,
	CONSTRAINT "FK_Member_Tab_TabId" FOREIGN KEY("TabId") REFERENCES "Tabs"("Id") ON DELETE SET NULL,
	CONSTRAINT "FK_Member_DataType_PropertyDataTypeId" FOREIGN KEY("PropertyDataTypeId") REFERENCES "DataTypes"("Id") ON DELETE SET NULL,
	CONSTRAINT "PK_Member" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "DataTypeParameterValues" (
	"Id"	INTEGER NOT NULL,
	"DataTypeParameterId"	INT NOT NULL,
	"MemberId"	INT NOT NULL,
	"Value"	TEXT NOT NULL,
	CONSTRAINT "FK_DataTypeParameterValue_Member_MemberId" FOREIGN KEY("MemberId") REFERENCES "Members"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_DataTypeParameterValue_DataTypeParameter_DataTypeParameterId" FOREIGN KEY("DataTypeParameterId") REFERENCES "DataTypeParameters"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_DataTypeParameterValue" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Objects" (
	"Id"	INTEGER NOT NULL,
	"ClassId"	INTEGER NOT NULL,
	CONSTRAINT "FK_Object_Class_ClassId" FOREIGN KEY("ClassId") REFERENCES "Classes"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_Object" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Properties" (
	"Id"	INTEGER NOT NULL,
	"ObjectId"	INTEGER NOT NULL,
	"MemberId"	INTEGER NOT NULL,
	"IntegerValue"	INTEGER,
	"DecimalValue"	REAL,
	"StringValueId"	INTEGER,
	"DateTimeValue"	TEXT,
	CONSTRAINT "FK_Property_Object_ObjectId" FOREIGN KEY("ObjectId") REFERENCES "Objects"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Property_Member_MemberId" FOREIGN KEY("MemberId") REFERENCES "Members"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Property_Dictionary_StringValueId" FOREIGN KEY("StringValueId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_Property" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Relations" (
	"Id"	INTEGER NOT NULL,
	"MemberId"	INTEGER NOT NULL,
	"PrimaryId"	INTEGER NOT NULL,
	"ForeignId"	INTEGER NOT NULL,
	CONSTRAINT "FK_Relation_Object_ForeignId" FOREIGN KEY("ForeignId") REFERENCES "Objects"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Relation_Object_PrimaryId" FOREIGN KEY("PrimaryId") REFERENCES "Objects"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Relation_Member_MemberId" FOREIGN KEY("MemberId") REFERENCES "Members"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_Relation" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Menus" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"NameId"	INTEGER NOT NULL,
	CONSTRAINT "FK_Menu_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_Menu" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "MenuItems" (
	"Id"	INTEGER NOT NULL,
	"MenuId"	INTEGER,
	"MenuItemId"	INTEGER,
	"NameId"	INTEGER NOT NULL,
	"Url"	TEXT,
	"Position"	INTEGER,
	CONSTRAINT "FK_MenuItem_Menu_MenuId" FOREIGN KEY("MenuId") REFERENCES "Menus"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_MenuItem_MenuItem_MenuItemId" FOREIGN KEY("MenuItemId") REFERENCES "MenuItems"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_MenuItem_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_MenuItem" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Forms" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"NameId"	INTEGER NOT NULL,
	"SubmitButtonTitleId"	INTEGER NOT NULL,
	"ProduceCompletedForms"	INTEGER NOT NULL,
	"FormHandlerCSharpClassName"	TEXT NOT NULL,
	"FormHandlerParameters"	TEXT,
	CONSTRAINT "FK_Form_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Form_Dictionary_SubmitButtonTitleId" FOREIGN KEY("SubmitButtonTitleId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_Form" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "FieldTypes" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"Name"	TEXT NOT NULL,
	"Position"	INTEGER,
	"ValidatorCSharpClassName"	TEXT,
	CONSTRAINT "PK_FieldType" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Fields" (
	"Id"	INTEGER NOT NULL,
	"FormId"	INTEGER NOT NULL,
	"FieldTypeId"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"NameId"	INTEGER NOT NULL,
	"IsRequired"	INTEGER NOT NULL,
	"MaxLength"	INTEGER,
	"Position"	INTEGER,
	CONSTRAINT "FK_Field_FieldType_FieldTypeId" FOREIGN KEY("FieldTypeId") REFERENCES "FieldTypes"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Field_Form_FormId" FOREIGN KEY("FormId") REFERENCES "Forms"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Field_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_Field" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "FieldOptions" (
	"Id"	INTEGER NOT NULL,
	"FieldId"	INTEGER NOT NULL,
	"ValueId"	INTEGER NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "FK_FieldOption_Dictionary_ValueId" FOREIGN KEY("ValueId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_FieldOption_Field_FieldId" FOREIGN KEY("FieldId") REFERENCES "Fields"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_FieldOption" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "CompletedForms" (
	"Id"	INTEGER NOT NULL,
	"FormId"	INTEGER NOT NULL,
	"Created"	TEXT NOT NULL,
	CONSTRAINT "FK_CompletedForm_Form_FormId" FOREIGN KEY("FormId") REFERENCES "Forms"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_CompletedForm" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "CompletedFields" (
	"Id"	INTEGER NOT NULL,
	"CompletedFormId"	INTEGER NOT NULL,
	"FieldId"	INTEGER NOT NULL,
	"Value"	TEXT,
	CONSTRAINT "FK_CompletedField_CompletedForm_CompletedFormId" FOREIGN KEY("CompletedFormId") REFERENCES "CompletedForms"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_CompletedField_Field_FieldId" FOREIGN KEY("FieldId") REFERENCES "Fields"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_CompletedField" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Files" (
	"Id"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL,
	"Size"	INTEGER NOT NULL,
	CONSTRAINT "PK_File" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Categories" (
	"Id"	INTEGER NOT NULL,
	"CategoryId"	INTEGER,
	"Url"	TEXT,
	"NameId"	INTEGER NOT NULL,
	"DescriptionId"	INTEGER NOT NULL,
	"Position"	INTEGER,
	"TitleId"	INTEGER NOT NULL,
	"MetaDescriptionId"	INTEGER NOT NULL,
	"MetaKeywordsId"	INTEGER NOT NULL,
	"ProductProviderCSharpClassName"	TEXT NOT NULL,
	"ProductProviderParameters"	TEXT,
	CONSTRAINT "FK_Category_Dictionary_DescriptionId" FOREIGN KEY("DescriptionId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Category_Dictionary_TitleId" FOREIGN KEY("TitleId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Category_Category_CategoryId" FOREIGN KEY("CategoryId") REFERENCES "Categories"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Category_Dictionary_MetaKeywordsId" FOREIGN KEY("MetaKeywordsId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Category_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Category_Dictionary_MetaDescriptionId" FOREIGN KEY("MetaDescriptionId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_Category" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Products" (
	"Id"	INTEGER NOT NULL,
	"CategoryId"	INTEGER NOT NULL,
	"Url"	TEXT,
	"Code"	TEXT NOT NULL,
	"NameId"	INTEGER NOT NULL,
	"DescriptionId"	INTEGER NOT NULL,
	"UnitsId"	INTEGER NOT NULL,
	"Price"	REAL NOT NULL,
	"TitleId"	INTEGER NOT NULL,
	"MetaDescriptionId"	INTEGER NOT NULL,
	"MetaKeywordsId"	INTEGER NOT NULL,
	CONSTRAINT "FK_Product_Dictionary_DescriptionId" FOREIGN KEY("DescriptionId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Product_Dictionary_TitleId" FOREIGN KEY("TitleId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Product_Dictionary_UnitsId" FOREIGN KEY("UnitsId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Product_Dictionary_MetaKeywordsId" FOREIGN KEY("MetaKeywordsId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Product_Category_CategoryId" FOREIGN KEY("CategoryId") REFERENCES "Categories"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Product_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "FK_Product_Dictionary_MetaDescriptionId" FOREIGN KEY("MetaDescriptionId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_Product" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Photos" (
	"Id"	INTEGER NOT NULL,
	"ProductId"	INTEGER NOT NULL,
	"Filename"	TEXT NOT NULL,
	"IsCover"	INTEGER NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "FK_Photo_Product_ProductId" FOREIGN KEY("ProductId") REFERENCES "Products"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_Photo" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "OrderStates" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"NameId"	INTEGER NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "FK_OrderState_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_OrderState" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "PaymentMethods" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"NameId"	INTEGER NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "FK_PaymentMethod_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_PaymentMethod" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "DeliveryMethods" (
	"Id"	INTEGER NOT NULL,
	"Code"	TEXT NOT NULL,
	"NameId"	INTEGER NOT NULL,
	"Position"	INTEGER,
	CONSTRAINT "FK_DeliveryMethod_Dictionary_NameId" FOREIGN KEY("NameId") REFERENCES "Dictionaries"("Id"),
	CONSTRAINT "PK_DeliveryMethod" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Carts" (
	"Id"	INTEGER NOT NULL,
	"ClientSideId"	TEXT NOT NULL,
	"Created"	TEXT NOT NULL,
	CONSTRAINT "PK_Cart" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Orders" (
	"Id"	INTEGER NOT NULL,
	"OrderStateId"	INTEGER NOT NULL,
	"PaymentMethodId"	INTEGER NOT NULL,
	"DeliveryMethodId"	INTEGER NOT NULL,
	"CustomerFirstName"	TEXT NOT NULL,
	"CustomerLastName"	TEXT,
	"CustomerPhone"	TEXT NOT NULL,
	"CustomerEmail"	TEXT,
	"CustomerAddress"	TEXT,
	"Note"	TEXT,
	"Created"	TEXT NOT NULL,
	CONSTRAINT "FK_Order_OrderState_OrderStateId" FOREIGN KEY("OrderStateId") REFERENCES "OrderStates"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Order_PaymentMethod_PaymentMethodId" FOREIGN KEY("PaymentMethodId") REFERENCES "PaymentMethods"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Order_DeliveryMethod_DeliveryMethodId" FOREIGN KEY("DeliveryMethodId") REFERENCES "DeliveryMethods"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_Order" PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Positions" (
	"Id"	INTEGER NOT NULL,
	"CartId"	INTEGER,
	"OrderId"	INTEGER,
	"ProductId"	INTEGER NOT NULL,
	"Price"	REAL NOT NULL,
	"Quantity"	REAL NOT NULL,
	"Subtotal"	REAL NOT NULL,
	CONSTRAINT "FK_Position_Cart_CartId" FOREIGN KEY("CartId") REFERENCES "Carts"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Position_Order_OrderId" FOREIGN KEY("OrderId") REFERENCES "Orders"("Id") ON DELETE CASCADE,
	CONSTRAINT "FK_Position_Product_ProductId" FOREIGN KEY("ProductId") REFERENCES "Products"("Id") ON DELETE CASCADE,
	CONSTRAINT "PK_Position" PRIMARY KEY("Id" AUTOINCREMENT)
);
INSERT INTO "Users" VALUES (1,'Administrator','2017-01-01 00:00:00.0000000');
INSERT INTO "CredentialTypes" VALUES (1,'Email','Email',1);
INSERT INTO "Credentials" VALUES (1,1,1,'admin@platformus.net','8lE3xN2Ijiv/Y/aIGwaZLrbcqrt/1jDmzPTdudKbVD0=','0O/ZGwhScZRGbsmiUEckOg==');
INSERT INTO "Roles" VALUES (1,'Developer','Developer',100);
INSERT INTO "Roles" VALUES (2,'Administrator','Administrator',200);
INSERT INTO "Roles" VALUES (3,'ContentManager','Content manager',300);
INSERT INTO "UserRoles" VALUES (1,1);
INSERT INTO "UserRoles" VALUES (1,2);
INSERT INTO "Permissions" VALUES (1,'DoAnything','Do anything',100);
INSERT INTO "Permissions" VALUES (2,'ManagePermissions','Manage permissions',200);
INSERT INTO "Permissions" VALUES (3,'ManageRoles','Manage roles',300);
INSERT INTO "Permissions" VALUES (4,'ManageUsers','Manage users',400);
INSERT INTO "Permissions" VALUES (5,'ManageConfigurations','Manage configurations',500);
INSERT INTO "Permissions" VALUES (6,'ManageCultures','Manage cultures',600);
INSERT INTO "Permissions" VALUES (7,'ManageEndpoints','Manage endpoints',700);
INSERT INTO "Permissions" VALUES (8,'ManageObjects','Manage objects',800);
INSERT INTO "Permissions" VALUES (9,'ManageDataTypes','Manage data types',900);
INSERT INTO "Permissions" VALUES (10,'ManageClasses','Manage classes',1000);
INSERT INTO "Permissions" VALUES (11,'ManageMenus','Manage menus',1100);
INSERT INTO "Permissions" VALUES (12,'ManageForms','Manage forms',1200);
INSERT INTO "Permissions" VALUES (13,'ManageFileManager','Manage file manager',1300);
INSERT INTO "Permissions" VALUES (14,'ManageCategories','Manage categories',1400);
INSERT INTO "Permissions" VALUES (15,'ManageProducts','Manage products',1500);
INSERT INTO "Permissions" VALUES (16,'ManageOrderStates','Manage order states',1600);
INSERT INTO "Permissions" VALUES (17,'ManagePaymentMethods','Manage payment methods',1700);
INSERT INTO "Permissions" VALUES (18,'ManageDeliveryMethods','Manage delivery methods',1800);
INSERT INTO "Permissions" VALUES (19,'ManageCarts','Manage carts',1900);
INSERT INTO "Permissions" VALUES (20,'ManageOrders','Manage orders',2000);
INSERT INTO "RolePermissions" VALUES (1,1);
INSERT INTO "RolePermissions" VALUES (2,1);
INSERT INTO "RolePermissions" VALUES (3,8);
INSERT INTO "RolePermissions" VALUES (3,11);
INSERT INTO "RolePermissions" VALUES (3,12);
INSERT INTO "RolePermissions" VALUES (3,13);
INSERT INTO "Configurations" VALUES (1,'Email','Email');
INSERT INTO "Configurations" VALUES (2,'Globalization','Globalization');
INSERT INTO "Variables" VALUES (1,1,'SmtpServer','SMTP server','test',1);
INSERT INTO "Variables" VALUES (2,1,'SmtpPort','SMTP port','25',2);
INSERT INTO "Variables" VALUES (3,1,'SmtpUseSsl','SMTP use SSL','no',3);
INSERT INTO "Variables" VALUES (4,1,'SmtpLogin','SMTP login','test',4);
INSERT INTO "Variables" VALUES (5,1,'SmtpPassword','SMTP password','test',5);
INSERT INTO "Variables" VALUES (6,1,'SmtpSenderEmail','SMTP sender email','test',6);
INSERT INTO "Variables" VALUES (7,1,'SmtpSenderName','SMTP sender name','test',7);
INSERT INTO "Variables" VALUES (8,2,'SpecifyCultureInUrl','Specify culture in URL','yes',1);
INSERT INTO "Cultures" VALUES ('__','Neutral',1,0,0);
INSERT INTO "Cultures" VALUES ('en','English',0,1,1);
INSERT INTO "Cultures" VALUES ('ru','Русский',0,0,0);
INSERT INTO "Cultures" VALUES ('uk','Українська',0,0,0);
INSERT INTO "Dictionaries" VALUES (1);
INSERT INTO "Dictionaries" VALUES (2);
INSERT INTO "Dictionaries" VALUES (3);
INSERT INTO "Dictionaries" VALUES (4);
INSERT INTO "Dictionaries" VALUES (5);
INSERT INTO "Dictionaries" VALUES (6);
INSERT INTO "Dictionaries" VALUES (7);
INSERT INTO "Dictionaries" VALUES (8);
INSERT INTO "Dictionaries" VALUES (9);
INSERT INTO "Dictionaries" VALUES (10);
INSERT INTO "Dictionaries" VALUES (11);
INSERT INTO "Dictionaries" VALUES (12);
INSERT INTO "Dictionaries" VALUES (13);
INSERT INTO "Dictionaries" VALUES (14);
INSERT INTO "Dictionaries" VALUES (15);
INSERT INTO "Dictionaries" VALUES (16);
INSERT INTO "Dictionaries" VALUES (17);
INSERT INTO "Dictionaries" VALUES (18);
INSERT INTO "Dictionaries" VALUES (19);
INSERT INTO "Dictionaries" VALUES (20);
INSERT INTO "Dictionaries" VALUES (21);
INSERT INTO "Dictionaries" VALUES (22);
INSERT INTO "Dictionaries" VALUES (23);
INSERT INTO "Dictionaries" VALUES (24);
INSERT INTO "Dictionaries" VALUES (25);
INSERT INTO "Dictionaries" VALUES (26);
INSERT INTO "Dictionaries" VALUES (27);
INSERT INTO "Dictionaries" VALUES (28);
INSERT INTO "Dictionaries" VALUES (29);
INSERT INTO "Dictionaries" VALUES (30);
INSERT INTO "Dictionaries" VALUES (31);
INSERT INTO "Dictionaries" VALUES (32);
INSERT INTO "Dictionaries" VALUES (33);
INSERT INTO "Dictionaries" VALUES (34);
INSERT INTO "Dictionaries" VALUES (35);
INSERT INTO "Dictionaries" VALUES (36);
INSERT INTO "Dictionaries" VALUES (37);
INSERT INTO "Dictionaries" VALUES (38);
INSERT INTO "Dictionaries" VALUES (39);
INSERT INTO "Dictionaries" VALUES (40);
INSERT INTO "Dictionaries" VALUES (41);
INSERT INTO "Dictionaries" VALUES (42);
INSERT INTO "Dictionaries" VALUES (43);
INSERT INTO "Dictionaries" VALUES (44);
INSERT INTO "Dictionaries" VALUES (45);
INSERT INTO "Dictionaries" VALUES (46);
INSERT INTO "Dictionaries" VALUES (47);
INSERT INTO "Dictionaries" VALUES (48);
INSERT INTO "Dictionaries" VALUES (49);
INSERT INTO "Dictionaries" VALUES (50);
INSERT INTO "Dictionaries" VALUES (51);
INSERT INTO "Dictionaries" VALUES (52);
INSERT INTO "Dictionaries" VALUES (53);
INSERT INTO "Dictionaries" VALUES (54);
INSERT INTO "Dictionaries" VALUES (55);
INSERT INTO "Dictionaries" VALUES (56);
INSERT INTO "Dictionaries" VALUES (57);
INSERT INTO "Dictionaries" VALUES (58);
INSERT INTO "Dictionaries" VALUES (59);
INSERT INTO "Dictionaries" VALUES (60);
INSERT INTO "Dictionaries" VALUES (61);
INSERT INTO "Dictionaries" VALUES (62);
INSERT INTO "Dictionaries" VALUES (63);
INSERT INTO "Dictionaries" VALUES (64);
INSERT INTO "Dictionaries" VALUES (65);
INSERT INTO "Dictionaries" VALUES (66);
INSERT INTO "Dictionaries" VALUES (67);
INSERT INTO "Dictionaries" VALUES (68);
INSERT INTO "Dictionaries" VALUES (69);
INSERT INTO "Dictionaries" VALUES (70);
INSERT INTO "Dictionaries" VALUES (71);
INSERT INTO "Dictionaries" VALUES (72);
INSERT INTO "Dictionaries" VALUES (73);
INSERT INTO "Dictionaries" VALUES (74);
INSERT INTO "Dictionaries" VALUES (75);
INSERT INTO "Dictionaries" VALUES (76);
INSERT INTO "Dictionaries" VALUES (77);
INSERT INTO "Dictionaries" VALUES (78);
INSERT INTO "Dictionaries" VALUES (79);
INSERT INTO "Localizations" VALUES (1,1,'en','Main');
INSERT INTO "Localizations" VALUES (2,1,'ru','Главное');
INSERT INTO "Localizations" VALUES (3,1,'uk','Головне');
INSERT INTO "Localizations" VALUES (4,2,'uk','Головна');
INSERT INTO "Localizations" VALUES (5,2,'ru','Главная');
INSERT INTO "Localizations" VALUES (6,2,'en','Home');
INSERT INTO "Localizations" VALUES (7,3,'uk','Про мене');
INSERT INTO "Localizations" VALUES (8,3,'ru','Обо мне');
INSERT INTO "Localizations" VALUES (9,3,'en','About me');
INSERT INTO "Localizations" VALUES (10,4,'uk','Блог');
INSERT INTO "Localizations" VALUES (11,4,'ru','Блог');
INSERT INTO "Localizations" VALUES (12,4,'en','Blog');
INSERT INTO "Localizations" VALUES (13,5,'uk','Контакти');
INSERT INTO "Localizations" VALUES (14,5,'ru','Контакты');
INSERT INTO "Localizations" VALUES (15,5,'en','Contacts');
INSERT INTO "Localizations" VALUES (16,6,'uk','Зворотний зв’язок');
INSERT INTO "Localizations" VALUES (17,6,'ru','Обратная связь');
INSERT INTO "Localizations" VALUES (18,6,'en','Feedback');
INSERT INTO "Localizations" VALUES (19,7,'en','Submit');
INSERT INTO "Localizations" VALUES (20,7,'ru','Отправить');
INSERT INTO "Localizations" VALUES (21,7,'uk','Надіслати');
INSERT INTO "Localizations" VALUES (22,8,'uk','Ваше ім’я');
INSERT INTO "Localizations" VALUES (23,8,'ru','Ваше имя');
INSERT INTO "Localizations" VALUES (24,8,'en','Your name');
INSERT INTO "Localizations" VALUES (25,9,'uk','Ваша електронна пошта');
INSERT INTO "Localizations" VALUES (26,9,'ru','Ваша электронная почта');
INSERT INTO "Localizations" VALUES (27,9,'en','Your email');
INSERT INTO "Localizations" VALUES (28,10,'uk','Ваше повідомлення');
INSERT INTO "Localizations" VALUES (29,10,'ru','Ваше сообщение');
INSERT INTO "Localizations" VALUES (30,10,'en','Your message');
INSERT INTO "Localizations" VALUES (31,11,'uk','Надіслати');
INSERT INTO "Localizations" VALUES (32,11,'ru','Отправить');
INSERT INTO "Localizations" VALUES (33,11,'en','Submit');
INSERT INTO "Localizations" VALUES (34,12,'uk','Напишіть коментар');
INSERT INTO "Localizations" VALUES (35,12,'ru','Напишите комментарий');
INSERT INTO "Localizations" VALUES (36,12,'en','Write comment');
INSERT INTO "Localizations" VALUES (37,13,'uk','Ваше ім’я');
INSERT INTO "Localizations" VALUES (38,13,'ru','Ваше имя');
INSERT INTO "Localizations" VALUES (39,13,'en','Your name');
INSERT INTO "Localizations" VALUES (40,14,'uk','Ваше повідомлення');
INSERT INTO "Localizations" VALUES (41,14,'ru','Ваш ');
INSERT INTO "Localizations" VALUES (42,14,'en','Your comment');
INSERT INTO "Localizations" VALUES (43,15,'__','/');
INSERT INTO "Localizations" VALUES (44,16,'uk','<h1>Ваш персональний блог</h1><p>Вітаємо! Це ваш персональний блог, він працює на базі системи керування вмістом &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href="/backend">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>');
INSERT INTO "Localizations" VALUES (45,16,'ru','<h1>Ваш персональный блог</h1><p>Здравствуйте! Это ваш персональный блог, он работает на базе системы управления содержимым &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href="/backend">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>');
INSERT INTO "Localizations" VALUES (46,16,'en','<h1>Your Personal Blog</h1><p>Hello! This is your personal blog, it is based on the <a href="http://platformus.net/" target="_blank" rel="noopener">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href="/backend">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href="http://docs.platformus.net/" target="_blank" rel="noopener">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">chat</a>.</p><p>Have a nice work!</p>');
INSERT INTO "Localizations" VALUES (47,17,'uk','Ваш персональний блог');
INSERT INTO "Localizations" VALUES (48,17,'ru','Ваш персональный блог');
INSERT INTO "Localizations" VALUES (49,17,'en','Your Personal Blog');
INSERT INTO "Localizations" VALUES (50,18,'uk','');
INSERT INTO "Localizations" VALUES (51,18,'ru','');
INSERT INTO "Localizations" VALUES (52,18,'en','');
INSERT INTO "Localizations" VALUES (53,19,'uk','');
INSERT INTO "Localizations" VALUES (54,19,'ru','');
INSERT INTO "Localizations" VALUES (55,19,'en','');
INSERT INTO "Localizations" VALUES (56,20,'__','/about-me');
INSERT INTO "Localizations" VALUES (57,21,'uk','<h1>Про мене</h1><p>Розкажіть про себе в кількох словах. Ви можете додати сюди фотографії або відео.</p>');
INSERT INTO "Localizations" VALUES (58,21,'ru','<h1>Обо мне</h1><p>Расскажите о себе в нескольких словах. Вы можете добавить сюда фотографии или видео.</p>');
INSERT INTO "Localizations" VALUES (59,21,'en','<h1>About Me</h1><p>Tell us about yourself in a few words. You can add photos or videos here.</p>');
INSERT INTO "Localizations" VALUES (60,22,'uk','Про мене');
INSERT INTO "Localizations" VALUES (61,22,'ru','Обо мне');
INSERT INTO "Localizations" VALUES (62,22,'en','About Me');
INSERT INTO "Localizations" VALUES (63,23,'uk','');
INSERT INTO "Localizations" VALUES (64,23,'ru','');
INSERT INTO "Localizations" VALUES (65,23,'en','');
INSERT INTO "Localizations" VALUES (66,24,'uk','');
INSERT INTO "Localizations" VALUES (67,24,'ru','');
INSERT INTO "Localizations" VALUES (68,24,'en','');
INSERT INTO "Localizations" VALUES (69,25,'__','/blog');
INSERT INTO "Localizations" VALUES (70,26,'uk','<h1>Блог</h1>');
INSERT INTO "Localizations" VALUES (71,26,'ru','<h1>Блог</h1>');
INSERT INTO "Localizations" VALUES (72,26,'en','<h1>Blog</h1>');
INSERT INTO "Localizations" VALUES (73,27,'uk','Блог');
INSERT INTO "Localizations" VALUES (74,27,'ru','Блог');
INSERT INTO "Localizations" VALUES (75,27,'en','Blog');
INSERT INTO "Localizations" VALUES (76,28,'uk','');
INSERT INTO "Localizations" VALUES (77,28,'ru','');
INSERT INTO "Localizations" VALUES (78,28,'en','');
INSERT INTO "Localizations" VALUES (79,29,'uk','');
INSERT INTO "Localizations" VALUES (80,29,'ru','');
INSERT INTO "Localizations" VALUES (81,29,'en','');
INSERT INTO "Localizations" VALUES (82,30,'__','/contacts');
INSERT INTO "Localizations" VALUES (83,31,'uk','<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>');
INSERT INTO "Localizations" VALUES (84,31,'ru','<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>');
INSERT INTO "Localizations" VALUES (85,31,'en','<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>');
INSERT INTO "Localizations" VALUES (86,32,'uk','Контакти');
INSERT INTO "Localizations" VALUES (87,32,'ru','Контакты');
INSERT INTO "Localizations" VALUES (88,32,'en','Contacts');
INSERT INTO "Localizations" VALUES (89,33,'uk','');
INSERT INTO "Localizations" VALUES (90,33,'ru','');
INSERT INTO "Localizations" VALUES (91,33,'en','');
INSERT INTO "Localizations" VALUES (92,34,'uk','');
INSERT INTO "Localizations" VALUES (93,34,'ru','');
INSERT INTO "Localizations" VALUES (94,34,'en','');
INSERT INTO "Localizations" VALUES (95,35,'uk','Тег1');
INSERT INTO "Localizations" VALUES (96,35,'ru','Тэг1');
INSERT INTO "Localizations" VALUES (97,35,'en','Tag1');
INSERT INTO "Localizations" VALUES (98,36,'uk','Тег2');
INSERT INTO "Localizations" VALUES (99,36,'ru','Тэг2');
INSERT INTO "Localizations" VALUES (100,36,'en','Tag2');
INSERT INTO "Localizations" VALUES (101,37,'uk','Тег3');
INSERT INTO "Localizations" VALUES (102,37,'ru','Тэг3');
INSERT INTO "Localizations" VALUES (103,37,'en','Tag3');
INSERT INTO "Localizations" VALUES (104,38,'uk','Тег4');
INSERT INTO "Localizations" VALUES (105,38,'ru','Тэг4');
INSERT INTO "Localizations" VALUES (106,38,'en','Tag4');
INSERT INTO "Localizations" VALUES (107,39,'uk','Тег5');
INSERT INTO "Localizations" VALUES (108,39,'ru','Тэг5');
INSERT INTO "Localizations" VALUES (109,39,'en','Tag5');
INSERT INTO "Localizations" VALUES (110,40,'__','/blog/post-1');
INSERT INTO "Localizations" VALUES (111,41,'__','/images/objects/10/cover.jpg');
INSERT INTO "Localizations" VALUES (112,42,'uk','Пост 1');
INSERT INTO "Localizations" VALUES (113,42,'ru','Пост 1');
INSERT INTO "Localizations" VALUES (114,42,'en','Post 1');
INSERT INTO "Localizations" VALUES (115,43,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (116,43,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (117,43,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (118,44,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (119,44,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (120,44,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (121,45,'uk','Пост 1');
INSERT INTO "Localizations" VALUES (122,45,'ru','Пост 1');
INSERT INTO "Localizations" VALUES (123,45,'en','Post 1');
INSERT INTO "Localizations" VALUES (124,46,'uk','');
INSERT INTO "Localizations" VALUES (125,46,'ru','');
INSERT INTO "Localizations" VALUES (126,46,'en','');
INSERT INTO "Localizations" VALUES (127,47,'uk','');
INSERT INTO "Localizations" VALUES (128,47,'ru','');
INSERT INTO "Localizations" VALUES (129,47,'en','');
INSERT INTO "Localizations" VALUES (130,48,'__','/blog/post-2');
INSERT INTO "Localizations" VALUES (131,49,'__','/images/objects/11/cover.jpg');
INSERT INTO "Localizations" VALUES (132,50,'uk','Пост 2');
INSERT INTO "Localizations" VALUES (133,50,'ru','Пост 2');
INSERT INTO "Localizations" VALUES (134,50,'en','Post 2');
INSERT INTO "Localizations" VALUES (135,51,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (136,51,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (137,51,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (138,52,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (139,52,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (140,52,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (141,53,'uk','Пост 2');
INSERT INTO "Localizations" VALUES (142,53,'ru','Пост 2');
INSERT INTO "Localizations" VALUES (143,53,'en','Post 2');
INSERT INTO "Localizations" VALUES (144,54,'uk','');
INSERT INTO "Localizations" VALUES (145,54,'ru','');
INSERT INTO "Localizations" VALUES (146,54,'en','');
INSERT INTO "Localizations" VALUES (147,55,'uk','');
INSERT INTO "Localizations" VALUES (148,55,'ru','');
INSERT INTO "Localizations" VALUES (149,55,'en','');
INSERT INTO "Localizations" VALUES (150,56,'__','/blog/post-3');
INSERT INTO "Localizations" VALUES (151,57,'__','/images/objects/12/cover.jpg');
INSERT INTO "Localizations" VALUES (152,58,'uk','Пост 3');
INSERT INTO "Localizations" VALUES (153,58,'ru','Пост 3');
INSERT INTO "Localizations" VALUES (154,58,'en','Post 3');
INSERT INTO "Localizations" VALUES (155,59,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (156,59,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (157,59,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (158,60,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (159,60,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (160,60,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (161,61,'uk','Пост 3');
INSERT INTO "Localizations" VALUES (162,61,'ru','Пост 3');
INSERT INTO "Localizations" VALUES (163,61,'en','Post 3');
INSERT INTO "Localizations" VALUES (164,62,'uk','');
INSERT INTO "Localizations" VALUES (165,62,'ru','');
INSERT INTO "Localizations" VALUES (166,62,'en','');
INSERT INTO "Localizations" VALUES (167,63,'uk','');
INSERT INTO "Localizations" VALUES (168,63,'ru','');
INSERT INTO "Localizations" VALUES (169,63,'en','');
INSERT INTO "Localizations" VALUES (170,64,'__','/blog/post-4');
INSERT INTO "Localizations" VALUES (171,65,'__','/images/objects/13/cover.jpg');
INSERT INTO "Localizations" VALUES (172,66,'uk','Пост 4');
INSERT INTO "Localizations" VALUES (173,66,'ru','Пост 4');
INSERT INTO "Localizations" VALUES (174,66,'en','Post 4');
INSERT INTO "Localizations" VALUES (175,67,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (176,67,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (177,67,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (178,68,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (179,68,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (180,68,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (181,69,'uk','Пост 4');
INSERT INTO "Localizations" VALUES (182,69,'ru','Пост 4');
INSERT INTO "Localizations" VALUES (183,69,'en','Post 4');
INSERT INTO "Localizations" VALUES (184,70,'uk','');
INSERT INTO "Localizations" VALUES (185,70,'ru','');
INSERT INTO "Localizations" VALUES (186,70,'en','');
INSERT INTO "Localizations" VALUES (187,71,'uk','');
INSERT INTO "Localizations" VALUES (188,71,'ru','');
INSERT INTO "Localizations" VALUES (189,71,'en','');
INSERT INTO "Localizations" VALUES (190,72,'__','/blog/post-5');
INSERT INTO "Localizations" VALUES (191,73,'__','/images/objects/14/cover.jpg');
INSERT INTO "Localizations" VALUES (192,74,'uk','Пост 5');
INSERT INTO "Localizations" VALUES (193,74,'ru','Пост 5');
INSERT INTO "Localizations" VALUES (194,74,'en','Post 5');
INSERT INTO "Localizations" VALUES (195,75,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (196,75,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (197,75,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (198,76,'uk','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (199,76,'ru','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (200,76,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (201,77,'uk','Пост 5');
INSERT INTO "Localizations" VALUES (202,77,'ru','Пост 5');
INSERT INTO "Localizations" VALUES (203,77,'en','Post 5');
INSERT INTO "Localizations" VALUES (204,78,'uk','');
INSERT INTO "Localizations" VALUES (205,78,'ru','');
INSERT INTO "Localizations" VALUES (206,78,'en','');
INSERT INTO "Localizations" VALUES (207,79,'uk','');
INSERT INTO "Localizations" VALUES (208,79,'ru','');
INSERT INTO "Localizations" VALUES (209,79,'en','');
INSERT INTO "Endpoints" VALUES (1,'Default','{*url}',1000,0,NULL,'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor','ViewName=RegularPage',NULL,NULL);
INSERT INTO "Endpoints" VALUES (2,'Blog','blog',10,0,NULL,'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor','ViewName=BlogPage',NULL,NULL);
INSERT INTO "Endpoints" VALUES (3,'Post','blog/{segment}',20,0,NULL,'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor','ViewName=PostPage',NULL,NULL);
INSERT INTO "Endpoints" VALUES (4,'Contacts','contacts',30,0,NULL,'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor','ViewName=ContactsPage',NULL,NULL);
INSERT INTO "DataSources" VALUES (1,1,'Page','Platformus.Website.Frontend.DataProviders.PageObjectDataProvider',NULL);
INSERT INTO "DataSources" VALUES (2,2,'Page','Platformus.Website.Frontend.DataProviders.PageObjectDataProvider',NULL);
INSERT INTO "DataSources" VALUES (3,2,'Posts','Platformus.Website.Frontend.DataProviders.ObjectsDataProvider','ClassId=5');
INSERT INTO "DataSources" VALUES (4,3,'Page','Platformus.Website.Frontend.DataProviders.PageObjectDataProvider',NULL);
INSERT INTO "DataSources" VALUES (5,3,'Tags','Platformus.Website.Frontend.DataProviders.RelatedObjectsDataProvider','RelationMemberId=11;RelationType=Primary');
INSERT INTO "DataSources" VALUES (6,3,'Comments','Platformus.Website.Frontend.DataProviders.RelatedObjectsDataProvider','RelationMemberId=15;RelationType=Primary');
INSERT INTO "DataSources" VALUES (7,4,'Page','Platformus.Website.Frontend.DataProviders.PageObjectDataProvider',NULL);
INSERT INTO "Classes" VALUES (1,NULL,'Page','Page','Pages',1);
INSERT INTO "Classes" VALUES (2,1,'RegularPage','Regular Page','Regular Pages',0);
INSERT INTO "Classes" VALUES (3,NULL,'Tag','Tag','Tags',0);
INSERT INTO "Classes" VALUES (4,NULL,'Comment','Comment','Comments',0);
INSERT INTO "Classes" VALUES (5,1,'PostPage','Post Page','Post Pages',0);
INSERT INTO "Tabs" VALUES (1,1,'SEO',100);
INSERT INTO "DataTypes" VALUES (1,'string','singleLinePlainText','Single line plain text',1);
INSERT INTO "DataTypes" VALUES (2,'string','multilinePlainText','Multiline plain text',2);
INSERT INTO "DataTypes" VALUES (3,'string','html','Html',3);
INSERT INTO "DataTypes" VALUES (4,'integer','integerNumber','Integer number',4);
INSERT INTO "DataTypes" VALUES (5,'decimal','decimalNumber','Decimal number',5);
INSERT INTO "DataTypes" VALUES (6,'integer','booleanFlag','Boolean flag',6);
INSERT INTO "DataTypes" VALUES (7,'datetime','date','Date',7);
INSERT INTO "DataTypes" VALUES (8,'datetime','dateTime','DateTime',8);
INSERT INTO "DataTypes" VALUES (9,'string','image','Image',9);
INSERT INTO "DataTypes" VALUES (10,'string','sourceCode','Source code',10);
INSERT INTO "DataTypeParameters" VALUES (1,1,'checkbox','IsRequired','Is required');
INSERT INTO "DataTypeParameters" VALUES (2,1,'numericTextBox','MaxLength','Max length');
INSERT INTO "DataTypeParameters" VALUES (3,2,'checkbox','IsRequired','Is required');
INSERT INTO "DataTypeParameters" VALUES (4,2,'numericTextBox','MaxLength','Max length');
INSERT INTO "DataTypeParameters" VALUES (5,4,'checkbox','IsRequired','Is required');
INSERT INTO "DataTypeParameters" VALUES (6,4,'numericTextBox','MinValue','Min value');
INSERT INTO "DataTypeParameters" VALUES (7,4,'numericTextBox','MaxValue','Max value');
INSERT INTO "DataTypeParameters" VALUES (8,5,'checkbox','IsRequired','Is required');
INSERT INTO "DataTypeParameters" VALUES (9,5,'numericTextBox','MinValue','Min value');
INSERT INTO "DataTypeParameters" VALUES (10,5,'numericTextBox','MaxValue','Max value');
INSERT INTO "DataTypeParameters" VALUES (11,7,'checkbox','IsRequired','Is required');
INSERT INTO "DataTypeParameters" VALUES (12,8,'numericTextBox','Width','Width');
INSERT INTO "DataTypeParameters" VALUES (13,8,'numericTextBox','Height','Height');
INSERT INTO "DataTypeParameters" VALUES (14,9,'textBox','Mode','Mode');
INSERT INTO "Members" VALUES (1,1,NULL,'Url','URL',1,1,0,1,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (2,1,NULL,'Content','Content',100,3,1,0,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (3,1,1,'Title','Title',1000,1,1,0,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (4,1,1,'MetaDescription','META description',1010,1,1,0,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (5,1,1,'MetaKeywords','META keywords',1020,1,1,0,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (6,3,NULL,'Text','Text',10,1,1,1,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (7,4,NULL,'Author','Author',10,1,0,1,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (8,4,NULL,'Text','Text',20,2,0,0,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (9,4,NULL,'Created','Created',30,7,0,1,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (10,5,NULL,'Name','Name',10,1,1,1,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (11,5,NULL,'Tags','Tags',20,NULL,NULL,NULL,3,0,NULL,NULL);
INSERT INTO "Members" VALUES (12,5,NULL,'Cover','Cover',30,8,0,0,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (13,5,NULL,'Preview','Preview',40,3,1,0,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (14,5,NULL,'Created','Created',200,7,0,1,NULL,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (15,5,NULL,'Comments','Comments',0,NULL,NULL,NULL,4,1,NULL,NULL);
INSERT INTO "DataTypeParameterValues" VALUES (1,1,1,'true');
INSERT INTO "DataTypeParameterValues" VALUES (2,2,1,'128');
INSERT INTO "DataTypeParameterValues" VALUES (3,1,3,'false');
INSERT INTO "DataTypeParameterValues" VALUES (4,2,3,'128');
INSERT INTO "DataTypeParameterValues" VALUES (5,1,4,'false');
INSERT INTO "DataTypeParameterValues" VALUES (6,2,4,'512');
INSERT INTO "DataTypeParameterValues" VALUES (7,1,5,'false');
INSERT INTO "DataTypeParameterValues" VALUES (8,2,5,'256');
INSERT INTO "DataTypeParameterValues" VALUES (9,1,6,'true');
INSERT INTO "DataTypeParameterValues" VALUES (10,2,6,'48');
INSERT INTO "DataTypeParameterValues" VALUES (11,1,7,'true');
INSERT INTO "DataTypeParameterValues" VALUES (12,2,7,'64');
INSERT INTO "DataTypeParameterValues" VALUES (13,3,8,'true');
INSERT INTO "DataTypeParameterValues" VALUES (14,7,9,'true');
INSERT INTO "DataTypeParameterValues" VALUES (15,1,10,'true');
INSERT INTO "DataTypeParameterValues" VALUES (16,2,10,'128');
INSERT INTO "DataTypeParameterValues" VALUES (17,5,12,'1024');
INSERT INTO "DataTypeParameterValues" VALUES (18,6,12,'256');
INSERT INTO "DataTypeParameterValues" VALUES (19,7,14,'true');
INSERT INTO "Objects" VALUES (1,2);
INSERT INTO "Objects" VALUES (2,2);
INSERT INTO "Objects" VALUES (3,2);
INSERT INTO "Objects" VALUES (4,2);
INSERT INTO "Objects" VALUES (5,3);
INSERT INTO "Objects" VALUES (6,3);
INSERT INTO "Objects" VALUES (7,3);
INSERT INTO "Objects" VALUES (8,3);
INSERT INTO "Objects" VALUES (9,3);
INSERT INTO "Objects" VALUES (10,5);
INSERT INTO "Objects" VALUES (11,5);
INSERT INTO "Objects" VALUES (12,5);
INSERT INTO "Objects" VALUES (13,5);
INSERT INTO "Objects" VALUES (14,5);
INSERT INTO "Properties" VALUES (1,1,1,NULL,NULL,15,NULL);
INSERT INTO "Properties" VALUES (2,1,2,NULL,NULL,16,NULL);
INSERT INTO "Properties" VALUES (3,1,3,NULL,NULL,17,NULL);
INSERT INTO "Properties" VALUES (4,1,4,NULL,NULL,18,NULL);
INSERT INTO "Properties" VALUES (5,1,5,NULL,NULL,19,NULL);
INSERT INTO "Properties" VALUES (6,2,1,NULL,NULL,20,NULL);
INSERT INTO "Properties" VALUES (7,2,2,NULL,NULL,21,NULL);
INSERT INTO "Properties" VALUES (8,2,3,NULL,NULL,22,NULL);
INSERT INTO "Properties" VALUES (9,2,4,NULL,NULL,23,NULL);
INSERT INTO "Properties" VALUES (10,2,5,NULL,NULL,24,NULL);
INSERT INTO "Properties" VALUES (11,3,1,NULL,NULL,25,NULL);
INSERT INTO "Properties" VALUES (12,3,2,NULL,NULL,26,NULL);
INSERT INTO "Properties" VALUES (13,3,3,NULL,NULL,27,NULL);
INSERT INTO "Properties" VALUES (14,3,4,NULL,NULL,28,NULL);
INSERT INTO "Properties" VALUES (15,3,5,NULL,NULL,29,NULL);
INSERT INTO "Properties" VALUES (16,4,1,NULL,NULL,30,NULL);
INSERT INTO "Properties" VALUES (17,4,2,NULL,NULL,31,NULL);
INSERT INTO "Properties" VALUES (18,4,3,NULL,NULL,32,NULL);
INSERT INTO "Properties" VALUES (19,4,4,NULL,NULL,33,NULL);
INSERT INTO "Properties" VALUES (20,4,5,NULL,NULL,34,NULL);
INSERT INTO "Properties" VALUES (21,5,6,NULL,NULL,35,NULL);
INSERT INTO "Properties" VALUES (22,6,6,NULL,NULL,36,NULL);
INSERT INTO "Properties" VALUES (23,7,6,NULL,NULL,37,NULL);
INSERT INTO "Properties" VALUES (24,8,6,NULL,NULL,38,NULL);
INSERT INTO "Properties" VALUES (25,9,6,NULL,NULL,39,NULL);
INSERT INTO "Properties" VALUES (26,10,1,NULL,NULL,40,NULL);
INSERT INTO "Properties" VALUES (27,10,12,NULL,NULL,41,NULL);
INSERT INTO "Properties" VALUES (28,10,10,NULL,NULL,42,NULL);
INSERT INTO "Properties" VALUES (29,10,13,NULL,NULL,43,NULL);
INSERT INTO "Properties" VALUES (30,10,2,NULL,NULL,44,NULL);
INSERT INTO "Properties" VALUES (31,10,14,NULL,NULL,NULL,'2021-09-09 19:04:51.2038867');
INSERT INTO "Properties" VALUES (32,10,3,NULL,NULL,45,NULL);
INSERT INTO "Properties" VALUES (33,10,4,NULL,NULL,46,NULL);
INSERT INTO "Properties" VALUES (34,10,5,NULL,NULL,47,NULL);
INSERT INTO "Properties" VALUES (35,11,1,NULL,NULL,48,NULL);
INSERT INTO "Properties" VALUES (36,11,12,NULL,NULL,49,NULL);
INSERT INTO "Properties" VALUES (37,11,10,NULL,NULL,50,NULL);
INSERT INTO "Properties" VALUES (38,11,13,NULL,NULL,51,NULL);
INSERT INTO "Properties" VALUES (39,11,2,NULL,NULL,52,NULL);
INSERT INTO "Properties" VALUES (40,11,14,NULL,NULL,NULL,'2021-09-09 19:04:51.38441');
INSERT INTO "Properties" VALUES (41,11,3,NULL,NULL,53,NULL);
INSERT INTO "Properties" VALUES (42,11,4,NULL,NULL,54,NULL);
INSERT INTO "Properties" VALUES (43,11,5,NULL,NULL,55,NULL);
INSERT INTO "Properties" VALUES (44,12,1,NULL,NULL,56,NULL);
INSERT INTO "Properties" VALUES (45,12,12,NULL,NULL,57,NULL);
INSERT INTO "Properties" VALUES (46,12,10,NULL,NULL,58,NULL);
INSERT INTO "Properties" VALUES (47,12,13,NULL,NULL,59,NULL);
INSERT INTO "Properties" VALUES (48,12,2,NULL,NULL,60,NULL);
INSERT INTO "Properties" VALUES (49,12,14,NULL,NULL,NULL,'2021-09-09 19:04:51.5678291');
INSERT INTO "Properties" VALUES (50,12,3,NULL,NULL,61,NULL);
INSERT INTO "Properties" VALUES (51,12,4,NULL,NULL,62,NULL);
INSERT INTO "Properties" VALUES (52,12,5,NULL,NULL,63,NULL);
INSERT INTO "Properties" VALUES (53,13,1,NULL,NULL,64,NULL);
INSERT INTO "Properties" VALUES (54,13,12,NULL,NULL,65,NULL);
INSERT INTO "Properties" VALUES (55,13,10,NULL,NULL,66,NULL);
INSERT INTO "Properties" VALUES (56,13,13,NULL,NULL,67,NULL);
INSERT INTO "Properties" VALUES (57,13,2,NULL,NULL,68,NULL);
INSERT INTO "Properties" VALUES (58,13,14,NULL,NULL,NULL,'2021-09-09 19:04:51.7547237');
INSERT INTO "Properties" VALUES (59,13,3,NULL,NULL,69,NULL);
INSERT INTO "Properties" VALUES (60,13,4,NULL,NULL,70,NULL);
INSERT INTO "Properties" VALUES (61,13,5,NULL,NULL,71,NULL);
INSERT INTO "Properties" VALUES (62,14,1,NULL,NULL,72,NULL);
INSERT INTO "Properties" VALUES (63,14,12,NULL,NULL,73,NULL);
INSERT INTO "Properties" VALUES (64,14,10,NULL,NULL,74,NULL);
INSERT INTO "Properties" VALUES (65,14,13,NULL,NULL,75,NULL);
INSERT INTO "Properties" VALUES (66,14,2,NULL,NULL,76,NULL);
INSERT INTO "Properties" VALUES (67,14,14,NULL,NULL,NULL,'2021-09-09 19:04:51.9740874');
INSERT INTO "Properties" VALUES (68,14,3,NULL,NULL,77,NULL);
INSERT INTO "Properties" VALUES (69,14,4,NULL,NULL,78,NULL);
INSERT INTO "Properties" VALUES (70,14,5,NULL,NULL,79,NULL);
INSERT INTO "Relations" VALUES (1,11,7,10);
INSERT INTO "Relations" VALUES (2,11,6,11);
INSERT INTO "Relations" VALUES (3,11,8,12);
INSERT INTO "Relations" VALUES (4,11,6,13);
INSERT INTO "Relations" VALUES (5,11,5,13);
INSERT INTO "Relations" VALUES (6,11,8,14);
INSERT INTO "Menus" VALUES (1,'Main',1);
INSERT INTO "MenuItems" VALUES (1,1,NULL,2,'/',10);
INSERT INTO "MenuItems" VALUES (2,1,NULL,3,'/about-me',20);
INSERT INTO "MenuItems" VALUES (3,1,NULL,4,'/blog',30);
INSERT INTO "MenuItems" VALUES (4,1,NULL,5,'/contacts',40);
INSERT INTO "Forms" VALUES (1,'Feedback',6,7,1,'Platformus.Website.Frontend.FormHandlers.EmailFormHandler','RecipientEmails=test@test.com;RedirectUrl=/contacts');
INSERT INTO "Forms" VALUES (2,'WriteComment',12,11,1,'WebApplication.FormHandlers.WriteCommentFormHandler',NULL);
INSERT INTO "FieldTypes" VALUES (1,'TextBox','Text box',1,NULL);
INSERT INTO "FieldTypes" VALUES (2,'TextArea','Text area',2,NULL);
INSERT INTO "FieldTypes" VALUES (3,'Checkbox','Checkbox',3,NULL);
INSERT INTO "FieldTypes" VALUES (4,'RadioButtonList','Radio button list',4,NULL);
INSERT INTO "FieldTypes" VALUES (5,'DropDownList','Drop down list',5,NULL);
INSERT INTO "FieldTypes" VALUES (6,'FileUpload','File upload',6,NULL);
INSERT INTO "FieldTypes" VALUES (7,'ReCAPTCHA','ReCAPTCHA',7,'Platformus.Website.Frontend.FieldValidators.ReCaptchaFieldValidator');
INSERT INTO "Fields" VALUES (1,1,1,'Name',8,1,NULL,10);
INSERT INTO "Fields" VALUES (2,1,1,'Email',9,1,NULL,20);
INSERT INTO "Fields" VALUES (3,1,2,'Message',10,1,NULL,30);
INSERT INTO "Fields" VALUES (4,2,1,'Name',13,1,NULL,10);
INSERT INTO "Fields" VALUES (5,2,2,'Comment',14,1,NULL,20);
COMMIT;
