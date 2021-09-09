--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-09-09 18:29:28

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 276 (class 1259 OID 21225)
-- Name: Carts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Carts" (
    "Id" integer NOT NULL,
    "ClientSideId" text NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE public."Carts" OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 21223)
-- Name: Carts_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Carts_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Carts_Id_seq" OWNER TO postgres;

--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 275
-- Name: Carts_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Carts_Id_seq" OWNED BY public."Carts"."Id";


--
-- TOC entry 264 (class 1259 OID 21074)
-- Name: Categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categories" (
    "Id" integer NOT NULL,
    "CategoryId" integer,
    "Url" text NOT NULL,
    "NameId" integer NOT NULL,
    "DescriptionId" integer NOT NULL,
    "Position" integer,
    "TitleId" integer NOT NULL,
    "MetaDescriptionId" integer NOT NULL,
    "MetaKeywordsId" integer NOT NULL,
    "ProductProviderCSharpClassName" text NOT NULL,
    "ProductProviderParameters" text
);


ALTER TABLE public."Categories" OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 21072)
-- Name: Categories_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categories_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Categories_Id_seq" OWNER TO postgres;

--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 263
-- Name: Categories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categories_Id_seq" OWNED BY public."Categories"."Id";


--
-- TOC entry 228 (class 1259 OID 20738)
-- Name: Classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Classes" (
    "Id" integer NOT NULL,
    "ClassId" integer,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "PluralizedName" text NOT NULL,
    "IsAbstract" boolean NOT NULL
);


ALTER TABLE public."Classes" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 20736)
-- Name: Classes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Classes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Classes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 227
-- Name: Classes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Classes_Id_seq" OWNED BY public."Classes"."Id";


--
-- TOC entry 260 (class 1259 OID 21042)
-- Name: CompletedFields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CompletedFields" (
    "Id" integer NOT NULL,
    "CompletedFormId" integer NOT NULL,
    "FieldId" integer NOT NULL,
    "Value" text
);


ALTER TABLE public."CompletedFields" OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 21040)
-- Name: CompletedFields_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."CompletedFields_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CompletedFields_Id_seq" OWNER TO postgres;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 259
-- Name: CompletedFields_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CompletedFields_Id_seq" OWNED BY public."CompletedFields"."Id";


--
-- TOC entry 258 (class 1259 OID 21029)
-- Name: CompletedForms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CompletedForms" (
    "Id" integer NOT NULL,
    "FormId" integer NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE public."CompletedForms" OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 21027)
-- Name: CompletedForms_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."CompletedForms_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CompletedForms_Id_seq" OWNER TO postgres;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 257
-- Name: CompletedForms_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CompletedForms_Id_seq" OWNED BY public."CompletedForms"."Id";


--
-- TOC entry 214 (class 1259 OID 20632)
-- Name: Configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Configurations" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL
);


ALTER TABLE public."Configurations" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 20630)
-- Name: Configurations_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Configurations_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Configurations_Id_seq" OWNER TO postgres;

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 213
-- Name: Configurations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Configurations_Id_seq" OWNED BY public."Configurations"."Id";


--
-- TOC entry 204 (class 1259 OID 20548)
-- Name: CredentialTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CredentialTypes" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE public."CredentialTypes" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 20546)
-- Name: CredentialTypes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."CredentialTypes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CredentialTypes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 203
-- Name: CredentialTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CredentialTypes_Id_seq" OWNED BY public."CredentialTypes"."Id";


--
-- TOC entry 206 (class 1259 OID 20559)
-- Name: Credentials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Credentials" (
    "Id" integer NOT NULL,
    "UserId" integer NOT NULL,
    "CredentialTypeId" integer NOT NULL,
    "Identifier" text NOT NULL,
    "Secret" text,
    "Extra" text
);


ALTER TABLE public."Credentials" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 20557)
-- Name: Credentials_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Credentials_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Credentials_Id_seq" OWNER TO postgres;

--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 205
-- Name: Credentials_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Credentials_Id_seq" OWNED BY public."Credentials"."Id";


--
-- TOC entry 217 (class 1259 OID 20657)
-- Name: Cultures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Cultures" (
    "Id" text NOT NULL,
    "Name" text NOT NULL,
    "IsNeutral" boolean NOT NULL,
    "IsFrontendDefault" boolean NOT NULL,
    "IsBackendDefault" boolean NOT NULL
);


ALTER TABLE public."Cultures" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 20722)
-- Name: DataSources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataSources" (
    "Id" integer NOT NULL,
    "EndpointId" integer NOT NULL,
    "Code" text NOT NULL,
    "DataProviderCSharpClassName" text NOT NULL,
    "DataProviderParameters" text
);


ALTER TABLE public."DataSources" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 20720)
-- Name: DataSources_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DataSources_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DataSources_Id_seq" OWNER TO postgres;

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 225
-- Name: DataSources_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataSources_Id_seq" OWNED BY public."DataSources"."Id";


--
-- TOC entry 238 (class 1259 OID 20828)
-- Name: DataTypeParameterValues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataTypeParameterValues" (
    "Id" integer NOT NULL,
    "DataTypeParameterId" integer NOT NULL,
    "MemberId" integer NOT NULL,
    "Value" text NOT NULL
);


ALTER TABLE public."DataTypeParameterValues" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 20826)
-- Name: DataTypeParameterValues_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DataTypeParameterValues_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DataTypeParameterValues_Id_seq" OWNER TO postgres;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 237
-- Name: DataTypeParameterValues_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataTypeParameterValues_Id_seq" OWNED BY public."DataTypeParameterValues"."Id";


--
-- TOC entry 234 (class 1259 OID 20781)
-- Name: DataTypeParameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataTypeParameters" (
    "Id" integer NOT NULL,
    "DataTypeId" integer NOT NULL,
    "JavaScriptEditorClassName" text NOT NULL,
    "Code" text NOT NULL,
    "Name" text
);


ALTER TABLE public."DataTypeParameters" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 20779)
-- Name: DataTypeParameters_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DataTypeParameters_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DataTypeParameters_Id_seq" OWNER TO postgres;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 233
-- Name: DataTypeParameters_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataTypeParameters_Id_seq" OWNED BY public."DataTypeParameters"."Id";


--
-- TOC entry 232 (class 1259 OID 20770)
-- Name: DataTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataTypes" (
    "Id" integer NOT NULL,
    "StorageDataType" text NOT NULL,
    "JavaScriptEditorClassName" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE public."DataTypes" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 20768)
-- Name: DataTypes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DataTypes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DataTypes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 231
-- Name: DataTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataTypes_Id_seq" OWNED BY public."DataTypes"."Id";


--
-- TOC entry 274 (class 1259 OID 21209)
-- Name: DeliveryMethods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DeliveryMethods" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE public."DeliveryMethods" OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 21207)
-- Name: DeliveryMethods_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DeliveryMethods_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DeliveryMethods_Id_seq" OWNER TO postgres;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 273
-- Name: DeliveryMethods_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DeliveryMethods_Id_seq" OWNED BY public."DeliveryMethods"."Id";


--
-- TOC entry 219 (class 1259 OID 20667)
-- Name: Dictionaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Dictionaries" (
    "Id" integer NOT NULL
);


ALTER TABLE public."Dictionaries" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 20665)
-- Name: Dictionaries_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Dictionaries_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Dictionaries_Id_seq" OWNER TO postgres;

--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 218
-- Name: Dictionaries_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Dictionaries_Id_seq" OWNED BY public."Dictionaries"."Id";


--
-- TOC entry 224 (class 1259 OID 20705)
-- Name: EndpointPermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EndpointPermissions" (
    "EndpointId" integer NOT NULL,
    "PermissionId" integer NOT NULL
);


ALTER TABLE public."EndpointPermissions" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 20696)
-- Name: Endpoints; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Endpoints" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "UrlTemplate" text,
    "Position" integer,
    "DisallowAnonymous" boolean NOT NULL,
    "SignInUrl" text,
    "RequestProcessorCSharpClassName" text NOT NULL,
    "RequestProcessorParameters" text,
    "ResponseCacheCSharpClassName" text,
    "ResponseCacheParameters" text
);


ALTER TABLE public."Endpoints" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 20694)
-- Name: Endpoints_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Endpoints_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Endpoints_Id_seq" OWNER TO postgres;

--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 222
-- Name: Endpoints_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Endpoints_Id_seq" OWNED BY public."Endpoints"."Id";


--
-- TOC entry 256 (class 1259 OID 21011)
-- Name: FieldOptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FieldOptions" (
    "Id" integer NOT NULL,
    "FieldId" integer NOT NULL,
    "ValueId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE public."FieldOptions" OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 21009)
-- Name: FieldOptions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FieldOptions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FieldOptions_Id_seq" OWNER TO postgres;

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 255
-- Name: FieldOptions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FieldOptions_Id_seq" OWNED BY public."FieldOptions"."Id";


--
-- TOC entry 252 (class 1259 OID 20974)
-- Name: FieldTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FieldTypes" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer,
    "ValidatorCSharpClassName" text
);


ALTER TABLE public."FieldTypes" OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 20972)
-- Name: FieldTypes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FieldTypes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FieldTypes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 251
-- Name: FieldTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FieldTypes_Id_seq" OWNED BY public."FieldTypes"."Id";


--
-- TOC entry 254 (class 1259 OID 20985)
-- Name: Fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Fields" (
    "Id" integer NOT NULL,
    "FormId" integer NOT NULL,
    "FieldTypeId" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "IsRequired" boolean NOT NULL,
    "MaxLength" integer,
    "Position" integer
);


ALTER TABLE public."Fields" OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 20983)
-- Name: Fields_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Fields_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Fields_Id_seq" OWNER TO postgres;

--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 253
-- Name: Fields_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Fields_Id_seq" OWNED BY public."Fields"."Id";


--
-- TOC entry 262 (class 1259 OID 21063)
-- Name: Files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Files" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Size" bigint NOT NULL
);


ALTER TABLE public."Files" OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 21061)
-- Name: Files_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Files_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Files_Id_seq" OWNER TO postgres;

--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 261
-- Name: Files_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Files_Id_seq" OWNED BY public."Files"."Id";


--
-- TOC entry 250 (class 1259 OID 20953)
-- Name: Forms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Forms" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "SubmitButtonTitleId" integer NOT NULL,
    "ProduceCompletedForms" boolean NOT NULL,
    "FormHandlerCSharpClassName" text NOT NULL,
    "FormHandlerParameters" text
);


ALTER TABLE public."Forms" OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 20951)
-- Name: Forms_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Forms_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Forms_Id_seq" OWNER TO postgres;

--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 249
-- Name: Forms_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Forms_Id_seq" OWNED BY public."Forms"."Id";


--
-- TOC entry 221 (class 1259 OID 20675)
-- Name: Localizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Localizations" (
    "Id" integer NOT NULL,
    "DictionaryId" integer NOT NULL,
    "CultureId" text NOT NULL,
    "Value" text
);


ALTER TABLE public."Localizations" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 20673)
-- Name: Localizations_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Localizations_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Localizations_Id_seq" OWNER TO postgres;

--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 220
-- Name: Localizations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Localizations_Id_seq" OWNED BY public."Localizations"."Id";


--
-- TOC entry 236 (class 1259 OID 20797)
-- Name: Members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Members" (
    "Id" integer NOT NULL,
    "ClassId" integer NOT NULL,
    "TabId" integer,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer,
    "PropertyDataTypeId" integer,
    "IsPropertyLocalizable" boolean,
    "IsPropertyVisibleInList" boolean,
    "RelationClassId" integer,
    "IsRelationSingleParent" boolean,
    "MinRelatedObjectsNumber" integer,
    "MaxRelatedObjectsNumber" integer
);


ALTER TABLE public."Members" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 20795)
-- Name: Members_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Members_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Members_Id_seq" OWNER TO postgres;

--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 235
-- Name: Members_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Members_Id_seq" OWNED BY public."Members"."Id";


--
-- TOC entry 248 (class 1259 OID 20927)
-- Name: MenuItems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MenuItems" (
    "Id" integer NOT NULL,
    "MenuId" integer,
    "MenuItemId" integer,
    "NameId" integer NOT NULL,
    "Url" text NOT NULL,
    "Position" integer
);


ALTER TABLE public."MenuItems" OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 20925)
-- Name: MenuItems_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."MenuItems_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."MenuItems_Id_seq" OWNER TO postgres;

--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 247
-- Name: MenuItems_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."MenuItems_Id_seq" OWNED BY public."MenuItems"."Id";


--
-- TOC entry 246 (class 1259 OID 20911)
-- Name: Menus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Menus" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL
);


ALTER TABLE public."Menus" OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 20909)
-- Name: Menus_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Menus_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Menus_Id_seq" OWNER TO postgres;

--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 245
-- Name: Menus_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Menus_Id_seq" OWNED BY public."Menus"."Id";


--
-- TOC entry 200 (class 1259 OID 20527)
-- Name: ModelStates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ModelStates" (
    "Id" text NOT NULL,
    "Value" text NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE public."ModelStates" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 20849)
-- Name: Objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Objects" (
    "Id" integer NOT NULL,
    "ClassId" integer NOT NULL
);


ALTER TABLE public."Objects" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 20847)
-- Name: Objects_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Objects_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Objects_Id_seq" OWNER TO postgres;

--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 239
-- Name: Objects_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Objects_Id_seq" OWNED BY public."Objects"."Id";


--
-- TOC entry 270 (class 1259 OID 21177)
-- Name: OrderStates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OrderStates" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE public."OrderStates" OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 21175)
-- Name: OrderStates_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OrderStates_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."OrderStates_Id_seq" OWNER TO postgres;

--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 269
-- Name: OrderStates_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OrderStates_Id_seq" OWNED BY public."OrderStates"."Id";


--
-- TOC entry 278 (class 1259 OID 21236)
-- Name: Orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Orders" (
    "Id" integer NOT NULL,
    "OrderStateId" integer NOT NULL,
    "PaymentMethodId" integer NOT NULL,
    "DeliveryMethodId" integer NOT NULL,
    "CustomerFirstName" text NOT NULL,
    "CustomerLastName" text,
    "CustomerPhone" text NOT NULL,
    "CustomerEmail" text,
    "CustomerAddress" text,
    "Note" text,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE public."Orders" OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 21234)
-- Name: Orders_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Orders_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Orders_Id_seq" OWNER TO postgres;

--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 277
-- Name: Orders_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Orders_Id_seq" OWNED BY public."Orders"."Id";


--
-- TOC entry 272 (class 1259 OID 21193)
-- Name: PaymentMethods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PaymentMethods" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE public."PaymentMethods" OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 21191)
-- Name: PaymentMethods_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."PaymentMethods_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."PaymentMethods_Id_seq" OWNER TO postgres;

--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 271
-- Name: PaymentMethods_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."PaymentMethods_Id_seq" OWNED BY public."PaymentMethods"."Id";


--
-- TOC entry 211 (class 1259 OID 20606)
-- Name: Permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Permissions" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE public."Permissions" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 20604)
-- Name: Permissions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Permissions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Permissions_Id_seq" OWNER TO postgres;

--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 210
-- Name: Permissions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Permissions_Id_seq" OWNED BY public."Permissions"."Id";


--
-- TOC entry 268 (class 1259 OID 21161)
-- Name: Photos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Photos" (
    "Id" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "Filename" text NOT NULL,
    "IsCover" boolean NOT NULL,
    "Position" integer
);


ALTER TABLE public."Photos" OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 21159)
-- Name: Photos_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Photos_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Photos_Id_seq" OWNER TO postgres;

--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 267
-- Name: Photos_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Photos_Id_seq" OWNED BY public."Photos"."Id";


--
-- TOC entry 280 (class 1259 OID 21262)
-- Name: Positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Positions" (
    "Id" integer NOT NULL,
    "CartId" integer,
    "OrderId" integer,
    "ProductId" integer NOT NULL,
    "Price" numeric NOT NULL,
    "Quantity" numeric NOT NULL,
    "Subtotal" numeric NOT NULL
);


ALTER TABLE public."Positions" OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 21260)
-- Name: Positions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Positions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Positions_Id_seq" OWNER TO postgres;

--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 279
-- Name: Positions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Positions_Id_seq" OWNED BY public."Positions"."Id";


--
-- TOC entry 266 (class 1259 OID 21115)
-- Name: Products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Products" (
    "Id" integer NOT NULL,
    "CategoryId" integer NOT NULL,
    "Url" text NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "DescriptionId" integer NOT NULL,
    "UnitsId" integer NOT NULL,
    "Price" numeric NOT NULL,
    "TitleId" integer NOT NULL,
    "MetaDescriptionId" integer NOT NULL,
    "MetaKeywordsId" integer NOT NULL
);


ALTER TABLE public."Products" OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 21113)
-- Name: Products_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Products_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Products_Id_seq" OWNER TO postgres;

--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 265
-- Name: Products_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Products_Id_seq" OWNED BY public."Products"."Id";


--
-- TOC entry 242 (class 1259 OID 20862)
-- Name: Properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Properties" (
    "Id" integer NOT NULL,
    "ObjectId" integer NOT NULL,
    "MemberId" integer NOT NULL,
    "IntegerValue" integer,
    "DecimalValue" numeric,
    "StringValueId" integer,
    "DateTimeValue" timestamp without time zone
);


ALTER TABLE public."Properties" OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 20860)
-- Name: Properties_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Properties_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Properties_Id_seq" OWNER TO postgres;

--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 241
-- Name: Properties_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Properties_Id_seq" OWNED BY public."Properties"."Id";


--
-- TOC entry 244 (class 1259 OID 20888)
-- Name: Relations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Relations" (
    "Id" integer NOT NULL,
    "MemberId" integer NOT NULL,
    "PrimaryId" integer NOT NULL,
    "ForeignId" integer NOT NULL
);


ALTER TABLE public."Relations" OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 20886)
-- Name: Relations_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Relations_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Relations_Id_seq" OWNER TO postgres;

--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 243
-- Name: Relations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Relations_Id_seq" OWNED BY public."Relations"."Id";


--
-- TOC entry 212 (class 1259 OID 20615)
-- Name: RolePermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RolePermissions" (
    "RoleId" integer NOT NULL,
    "PermissionId" integer NOT NULL
);


ALTER TABLE public."RolePermissions" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 20580)
-- Name: Roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Roles" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE public."Roles" OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 20578)
-- Name: Roles_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Roles_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Roles_Id_seq" OWNER TO postgres;

--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 207
-- Name: Roles_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Roles_Id_seq" OWNED BY public."Roles"."Id";


--
-- TOC entry 230 (class 1259 OID 20754)
-- Name: Tabs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tabs" (
    "Id" integer NOT NULL,
    "ClassId" integer NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE public."Tabs" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 20752)
-- Name: Tabs_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tabs_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tabs_Id_seq" OWNER TO postgres;

--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 229
-- Name: Tabs_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tabs_Id_seq" OWNED BY public."Tabs"."Id";


--
-- TOC entry 209 (class 1259 OID 20589)
-- Name: UserRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserRoles" (
    "UserId" integer NOT NULL,
    "RoleId" integer NOT NULL
);


ALTER TABLE public."UserRoles" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 20537)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 20535)
-- Name: Users_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_Id_seq" OWNER TO postgres;

--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 201
-- Name: Users_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_Id_seq" OWNED BY public."Users"."Id";


--
-- TOC entry 216 (class 1259 OID 20643)
-- Name: Variables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Variables" (
    "Id" integer NOT NULL,
    "ConfigurationId" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text NOT NULL,
    "Position" integer
);


ALTER TABLE public."Variables" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 20641)
-- Name: Variables_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Variables_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Variables_Id_seq" OWNER TO postgres;

--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 215
-- Name: Variables_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Variables_Id_seq" OWNED BY public."Variables"."Id";


--
-- TOC entry 3162 (class 2604 OID 21228)
-- Name: Carts Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carts" ALTER COLUMN "Id" SET DEFAULT nextval('public."Carts_Id_seq"'::regclass);


--
-- TOC entry 3156 (class 2604 OID 21077)
-- Name: Categories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories" ALTER COLUMN "Id" SET DEFAULT nextval('public."Categories_Id_seq"'::regclass);


--
-- TOC entry 3138 (class 2604 OID 20741)
-- Name: Classes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classes" ALTER COLUMN "Id" SET DEFAULT nextval('public."Classes_Id_seq"'::regclass);


--
-- TOC entry 3154 (class 2604 OID 21045)
-- Name: CompletedFields Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedFields" ALTER COLUMN "Id" SET DEFAULT nextval('public."CompletedFields_Id_seq"'::regclass);


--
-- TOC entry 3153 (class 2604 OID 21032)
-- Name: CompletedForms Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedForms" ALTER COLUMN "Id" SET DEFAULT nextval('public."CompletedForms_Id_seq"'::regclass);


--
-- TOC entry 3132 (class 2604 OID 20635)
-- Name: Configurations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Configurations" ALTER COLUMN "Id" SET DEFAULT nextval('public."Configurations_Id_seq"'::regclass);


--
-- TOC entry 3128 (class 2604 OID 20551)
-- Name: CredentialTypes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CredentialTypes" ALTER COLUMN "Id" SET DEFAULT nextval('public."CredentialTypes_Id_seq"'::regclass);


--
-- TOC entry 3129 (class 2604 OID 20562)
-- Name: Credentials Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credentials" ALTER COLUMN "Id" SET DEFAULT nextval('public."Credentials_Id_seq"'::regclass);


--
-- TOC entry 3137 (class 2604 OID 20725)
-- Name: DataSources Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataSources" ALTER COLUMN "Id" SET DEFAULT nextval('public."DataSources_Id_seq"'::regclass);


--
-- TOC entry 3143 (class 2604 OID 20831)
-- Name: DataTypeParameterValues Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameterValues" ALTER COLUMN "Id" SET DEFAULT nextval('public."DataTypeParameterValues_Id_seq"'::regclass);


--
-- TOC entry 3141 (class 2604 OID 20784)
-- Name: DataTypeParameters Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameters" ALTER COLUMN "Id" SET DEFAULT nextval('public."DataTypeParameters_Id_seq"'::regclass);


--
-- TOC entry 3140 (class 2604 OID 20773)
-- Name: DataTypes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypes" ALTER COLUMN "Id" SET DEFAULT nextval('public."DataTypes_Id_seq"'::regclass);


--
-- TOC entry 3161 (class 2604 OID 21212)
-- Name: DeliveryMethods Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeliveryMethods" ALTER COLUMN "Id" SET DEFAULT nextval('public."DeliveryMethods_Id_seq"'::regclass);


--
-- TOC entry 3134 (class 2604 OID 20670)
-- Name: Dictionaries Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dictionaries" ALTER COLUMN "Id" SET DEFAULT nextval('public."Dictionaries_Id_seq"'::regclass);


--
-- TOC entry 3136 (class 2604 OID 20699)
-- Name: Endpoints Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Endpoints" ALTER COLUMN "Id" SET DEFAULT nextval('public."Endpoints_Id_seq"'::regclass);


--
-- TOC entry 3152 (class 2604 OID 21014)
-- Name: FieldOptions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldOptions" ALTER COLUMN "Id" SET DEFAULT nextval('public."FieldOptions_Id_seq"'::regclass);


--
-- TOC entry 3150 (class 2604 OID 20977)
-- Name: FieldTypes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldTypes" ALTER COLUMN "Id" SET DEFAULT nextval('public."FieldTypes_Id_seq"'::regclass);


--
-- TOC entry 3151 (class 2604 OID 20988)
-- Name: Fields Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields" ALTER COLUMN "Id" SET DEFAULT nextval('public."Fields_Id_seq"'::regclass);


--
-- TOC entry 3155 (class 2604 OID 21066)
-- Name: Files Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Files" ALTER COLUMN "Id" SET DEFAULT nextval('public."Files_Id_seq"'::regclass);


--
-- TOC entry 3149 (class 2604 OID 20956)
-- Name: Forms Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forms" ALTER COLUMN "Id" SET DEFAULT nextval('public."Forms_Id_seq"'::regclass);


--
-- TOC entry 3135 (class 2604 OID 20678)
-- Name: Localizations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Localizations" ALTER COLUMN "Id" SET DEFAULT nextval('public."Localizations_Id_seq"'::regclass);


--
-- TOC entry 3142 (class 2604 OID 20800)
-- Name: Members Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members" ALTER COLUMN "Id" SET DEFAULT nextval('public."Members_Id_seq"'::regclass);


--
-- TOC entry 3148 (class 2604 OID 20930)
-- Name: MenuItems Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems" ALTER COLUMN "Id" SET DEFAULT nextval('public."MenuItems_Id_seq"'::regclass);


--
-- TOC entry 3147 (class 2604 OID 20914)
-- Name: Menus Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menus" ALTER COLUMN "Id" SET DEFAULT nextval('public."Menus_Id_seq"'::regclass);


--
-- TOC entry 3144 (class 2604 OID 20852)
-- Name: Objects Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Objects" ALTER COLUMN "Id" SET DEFAULT nextval('public."Objects_Id_seq"'::regclass);


--
-- TOC entry 3159 (class 2604 OID 21180)
-- Name: OrderStates Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderStates" ALTER COLUMN "Id" SET DEFAULT nextval('public."OrderStates_Id_seq"'::regclass);


--
-- TOC entry 3163 (class 2604 OID 21239)
-- Name: Orders Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders" ALTER COLUMN "Id" SET DEFAULT nextval('public."Orders_Id_seq"'::regclass);


--
-- TOC entry 3160 (class 2604 OID 21196)
-- Name: PaymentMethods Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PaymentMethods" ALTER COLUMN "Id" SET DEFAULT nextval('public."PaymentMethods_Id_seq"'::regclass);


--
-- TOC entry 3131 (class 2604 OID 20609)
-- Name: Permissions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Permissions" ALTER COLUMN "Id" SET DEFAULT nextval('public."Permissions_Id_seq"'::regclass);


--
-- TOC entry 3158 (class 2604 OID 21164)
-- Name: Photos Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Photos" ALTER COLUMN "Id" SET DEFAULT nextval('public."Photos_Id_seq"'::regclass);


--
-- TOC entry 3164 (class 2604 OID 21265)
-- Name: Positions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Positions" ALTER COLUMN "Id" SET DEFAULT nextval('public."Positions_Id_seq"'::regclass);


--
-- TOC entry 3157 (class 2604 OID 21118)
-- Name: Products Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products" ALTER COLUMN "Id" SET DEFAULT nextval('public."Products_Id_seq"'::regclass);


--
-- TOC entry 3145 (class 2604 OID 20865)
-- Name: Properties Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties" ALTER COLUMN "Id" SET DEFAULT nextval('public."Properties_Id_seq"'::regclass);


--
-- TOC entry 3146 (class 2604 OID 20891)
-- Name: Relations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations" ALTER COLUMN "Id" SET DEFAULT nextval('public."Relations_Id_seq"'::regclass);


--
-- TOC entry 3130 (class 2604 OID 20583)
-- Name: Roles Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles" ALTER COLUMN "Id" SET DEFAULT nextval('public."Roles_Id_seq"'::regclass);


--
-- TOC entry 3139 (class 2604 OID 20757)
-- Name: Tabs Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tabs" ALTER COLUMN "Id" SET DEFAULT nextval('public."Tabs_Id_seq"'::regclass);


--
-- TOC entry 3127 (class 2604 OID 20540)
-- Name: Users Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN "Id" SET DEFAULT nextval('public."Users_Id_seq"'::regclass);


--
-- TOC entry 3133 (class 2604 OID 20646)
-- Name: Variables Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Variables" ALTER COLUMN "Id" SET DEFAULT nextval('public."Variables_Id_seq"'::regclass);


--
-- TOC entry 3522 (class 0 OID 21225)
-- Dependencies: 276
-- Data for Name: Carts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3510 (class 0 OID 21074)
-- Dependencies: 264
-- Data for Name: Categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3474 (class 0 OID 20738)
-- Dependencies: 228
-- Data for Name: Classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (1, NULL, 'Page', 'Page', 'Pages', true);
INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (2, 1, 'RegularPage', 'Regular Page', 'Regular Pages', false);
INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (3, NULL, 'Tag', 'Tag', 'Tags', false);
INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (4, NULL, 'Comment', 'Comment', 'Comments', false);
INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (5, 1, 'PostPage', 'Post Page', 'Post Pages', false);


--
-- TOC entry 3506 (class 0 OID 21042)
-- Dependencies: 260
-- Data for Name: CompletedFields; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3504 (class 0 OID 21029)
-- Dependencies: 258
-- Data for Name: CompletedForms; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3460 (class 0 OID 20632)
-- Dependencies: 214
-- Data for Name: Configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Configurations" ("Id", "Code", "Name") VALUES (1, 'Email', 'Email');
INSERT INTO public."Configurations" ("Id", "Code", "Name") VALUES (2, 'Globalization', 'Globalization');


--
-- TOC entry 3450 (class 0 OID 20548)
-- Dependencies: 204
-- Data for Name: CredentialTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."CredentialTypes" ("Id", "Code", "Name", "Position") VALUES (1, 'Email', 'Email', 1);


--
-- TOC entry 3452 (class 0 OID 20559)
-- Dependencies: 206
-- Data for Name: Credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Credentials" ("Id", "UserId", "CredentialTypeId", "Identifier", "Secret", "Extra") VALUES (1, 1, 1, 'admin@platformus.net', '8lE3xN2Ijiv/Y/aIGwaZLrbcqrt/1jDmzPTdudKbVD0=', '0O/ZGwhScZRGbsmiUEckOg==');


--
-- TOC entry 3463 (class 0 OID 20657)
-- Dependencies: 217
-- Data for Name: Cultures; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Cultures" ("Id", "Name", "IsNeutral", "IsFrontendDefault", "IsBackendDefault") VALUES ('__', 'Neutral', true, false, false);
INSERT INTO public."Cultures" ("Id", "Name", "IsNeutral", "IsFrontendDefault", "IsBackendDefault") VALUES ('en', 'English', false, true, true);
INSERT INTO public."Cultures" ("Id", "Name", "IsNeutral", "IsFrontendDefault", "IsBackendDefault") VALUES ('ru', 'Русский', false, false, false);
INSERT INTO public."Cultures" ("Id", "Name", "IsNeutral", "IsFrontendDefault", "IsBackendDefault") VALUES ('uk', 'Українська', false, false, false);


--
-- TOC entry 3472 (class 0 OID 20722)
-- Dependencies: 226
-- Data for Name: DataSources; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DataSources" ("Id", "EndpointId", "Code", "DataProviderCSharpClassName", "DataProviderParameters") VALUES (1, 1, 'Page', 'Platformus.Website.Frontend.DataProviders.PageObjectDataProvider', NULL);
INSERT INTO public."DataSources" ("Id", "EndpointId", "Code", "DataProviderCSharpClassName", "DataProviderParameters") VALUES (2, 2, 'Page', 'Platformus.Website.Frontend.DataProviders.PageObjectDataProvider', NULL);
INSERT INTO public."DataSources" ("Id", "EndpointId", "Code", "DataProviderCSharpClassName", "DataProviderParameters") VALUES (3, 2, 'Posts', 'Platformus.Website.Frontend.DataProviders.ObjectsDataProvider', 'ClassId=5');
INSERT INTO public."DataSources" ("Id", "EndpointId", "Code", "DataProviderCSharpClassName", "DataProviderParameters") VALUES (4, 3, 'Page', 'Platformus.Website.Frontend.DataProviders.PageObjectDataProvider', NULL);
INSERT INTO public."DataSources" ("Id", "EndpointId", "Code", "DataProviderCSharpClassName", "DataProviderParameters") VALUES (5, 3, 'Tags', 'Platformus.Website.Frontend.DataProviders.RelatedObjectsDataProvider', 'RelationMemberId=11;RelationType=Primary');
INSERT INTO public."DataSources" ("Id", "EndpointId", "Code", "DataProviderCSharpClassName", "DataProviderParameters") VALUES (6, 3, 'Comments', 'Platformus.Website.Frontend.DataProviders.RelatedObjectsDataProvider', 'RelationMemberId=15;RelationType=Primary');
INSERT INTO public."DataSources" ("Id", "EndpointId", "Code", "DataProviderCSharpClassName", "DataProviderParameters") VALUES (7, 4, 'Page', 'Platformus.Website.Frontend.DataProviders.PageObjectDataProvider', NULL);


--
-- TOC entry 3484 (class 0 OID 20828)
-- Dependencies: 238
-- Data for Name: DataTypeParameterValues; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (1, 1, 1, 'true');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (2, 2, 1, '128');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (3, 1, 3, 'false');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (4, 2, 3, '128');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (5, 1, 4, 'false');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (6, 2, 4, '512');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (7, 1, 5, 'false');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (8, 2, 5, '256');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (9, 1, 6, 'true');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (10, 2, 6, '48');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (11, 1, 7, 'true');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (12, 2, 7, '64');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (13, 3, 8, 'true');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (14, 7, 9, 'true');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (15, 1, 10, 'true');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (16, 2, 10, '128');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (17, 5, 12, '1024');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (18, 6, 12, '256');
INSERT INTO public."DataTypeParameterValues" ("Id", "DataTypeParameterId", "MemberId", "Value") VALUES (19, 7, 14, 'true');


--
-- TOC entry 3480 (class 0 OID 20781)
-- Dependencies: 234
-- Data for Name: DataTypeParameters; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (1, 1, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (2, 1, 'numericTextBox', 'MaxLength', 'Max length');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (3, 2, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (4, 2, 'numericTextBox', 'MaxLength', 'Max length');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (5, 4, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (6, 4, 'numericTextBox', 'MinValue', 'Min value');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (7, 4, 'numericTextBox', 'MaxValue', 'Max value');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (8, 5, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (9, 5, 'numericTextBox', 'MinValue', 'Min value');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (10, 5, 'numericTextBox', 'MaxValue', 'Max value');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (11, 7, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (12, 8, 'numericTextBox', 'Width', 'Width');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (13, 8, 'numericTextBox', 'Height', 'Height');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "JavaScriptEditorClassName", "Code", "Name") VALUES (14, 9, 'textBox', 'Mode', 'Mode');


--
-- TOC entry 3478 (class 0 OID 20770)
-- Dependencies: 232
-- Data for Name: DataTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (1, 'string', 'singleLinePlainText', 'Single line plain text', 1);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (2, 'string', 'multilinePlainText', 'Multiline plain text', 2);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (3, 'string', 'html', 'Html', 3);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (4, 'integer', 'integerNumber', 'Integer number', 4);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (5, 'decimal', 'decimalNumber', 'Decimal number', 5);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (6, 'integer', 'booleanFlag', 'Boolean flag', 6);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (7, 'datetime', 'date', 'Date', 7);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (8, 'datetime', 'dateTime', 'DateTime', 8);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (9, 'string', 'image', 'Image', 9);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "JavaScriptEditorClassName", "Name", "Position") VALUES (10, 'string', 'sourceCode', 'Source code', 10);


--
-- TOC entry 3520 (class 0 OID 21209)
-- Dependencies: 274
-- Data for Name: DeliveryMethods; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3465 (class 0 OID 20667)
-- Dependencies: 219
-- Data for Name: Dictionaries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Dictionaries" ("Id") VALUES (1);
INSERT INTO public."Dictionaries" ("Id") VALUES (2);
INSERT INTO public."Dictionaries" ("Id") VALUES (3);
INSERT INTO public."Dictionaries" ("Id") VALUES (4);
INSERT INTO public."Dictionaries" ("Id") VALUES (5);
INSERT INTO public."Dictionaries" ("Id") VALUES (6);
INSERT INTO public."Dictionaries" ("Id") VALUES (7);
INSERT INTO public."Dictionaries" ("Id") VALUES (8);
INSERT INTO public."Dictionaries" ("Id") VALUES (9);
INSERT INTO public."Dictionaries" ("Id") VALUES (10);
INSERT INTO public."Dictionaries" ("Id") VALUES (11);
INSERT INTO public."Dictionaries" ("Id") VALUES (12);
INSERT INTO public."Dictionaries" ("Id") VALUES (13);
INSERT INTO public."Dictionaries" ("Id") VALUES (14);
INSERT INTO public."Dictionaries" ("Id") VALUES (15);
INSERT INTO public."Dictionaries" ("Id") VALUES (16);
INSERT INTO public."Dictionaries" ("Id") VALUES (17);
INSERT INTO public."Dictionaries" ("Id") VALUES (18);
INSERT INTO public."Dictionaries" ("Id") VALUES (19);
INSERT INTO public."Dictionaries" ("Id") VALUES (20);
INSERT INTO public."Dictionaries" ("Id") VALUES (21);
INSERT INTO public."Dictionaries" ("Id") VALUES (22);
INSERT INTO public."Dictionaries" ("Id") VALUES (23);
INSERT INTO public."Dictionaries" ("Id") VALUES (24);
INSERT INTO public."Dictionaries" ("Id") VALUES (25);
INSERT INTO public."Dictionaries" ("Id") VALUES (26);
INSERT INTO public."Dictionaries" ("Id") VALUES (27);
INSERT INTO public."Dictionaries" ("Id") VALUES (28);
INSERT INTO public."Dictionaries" ("Id") VALUES (29);
INSERT INTO public."Dictionaries" ("Id") VALUES (30);
INSERT INTO public."Dictionaries" ("Id") VALUES (31);
INSERT INTO public."Dictionaries" ("Id") VALUES (32);
INSERT INTO public."Dictionaries" ("Id") VALUES (33);
INSERT INTO public."Dictionaries" ("Id") VALUES (34);
INSERT INTO public."Dictionaries" ("Id") VALUES (35);
INSERT INTO public."Dictionaries" ("Id") VALUES (36);
INSERT INTO public."Dictionaries" ("Id") VALUES (37);
INSERT INTO public."Dictionaries" ("Id") VALUES (38);
INSERT INTO public."Dictionaries" ("Id") VALUES (39);
INSERT INTO public."Dictionaries" ("Id") VALUES (40);
INSERT INTO public."Dictionaries" ("Id") VALUES (41);
INSERT INTO public."Dictionaries" ("Id") VALUES (42);
INSERT INTO public."Dictionaries" ("Id") VALUES (43);
INSERT INTO public."Dictionaries" ("Id") VALUES (44);
INSERT INTO public."Dictionaries" ("Id") VALUES (45);
INSERT INTO public."Dictionaries" ("Id") VALUES (46);
INSERT INTO public."Dictionaries" ("Id") VALUES (47);
INSERT INTO public."Dictionaries" ("Id") VALUES (48);
INSERT INTO public."Dictionaries" ("Id") VALUES (49);
INSERT INTO public."Dictionaries" ("Id") VALUES (50);
INSERT INTO public."Dictionaries" ("Id") VALUES (51);
INSERT INTO public."Dictionaries" ("Id") VALUES (52);
INSERT INTO public."Dictionaries" ("Id") VALUES (53);
INSERT INTO public."Dictionaries" ("Id") VALUES (54);
INSERT INTO public."Dictionaries" ("Id") VALUES (55);
INSERT INTO public."Dictionaries" ("Id") VALUES (56);
INSERT INTO public."Dictionaries" ("Id") VALUES (57);
INSERT INTO public."Dictionaries" ("Id") VALUES (58);
INSERT INTO public."Dictionaries" ("Id") VALUES (59);
INSERT INTO public."Dictionaries" ("Id") VALUES (60);
INSERT INTO public."Dictionaries" ("Id") VALUES (61);
INSERT INTO public."Dictionaries" ("Id") VALUES (62);
INSERT INTO public."Dictionaries" ("Id") VALUES (63);
INSERT INTO public."Dictionaries" ("Id") VALUES (64);
INSERT INTO public."Dictionaries" ("Id") VALUES (65);
INSERT INTO public."Dictionaries" ("Id") VALUES (66);
INSERT INTO public."Dictionaries" ("Id") VALUES (67);
INSERT INTO public."Dictionaries" ("Id") VALUES (68);
INSERT INTO public."Dictionaries" ("Id") VALUES (69);
INSERT INTO public."Dictionaries" ("Id") VALUES (70);
INSERT INTO public."Dictionaries" ("Id") VALUES (71);
INSERT INTO public."Dictionaries" ("Id") VALUES (72);
INSERT INTO public."Dictionaries" ("Id") VALUES (73);
INSERT INTO public."Dictionaries" ("Id") VALUES (74);
INSERT INTO public."Dictionaries" ("Id") VALUES (75);
INSERT INTO public."Dictionaries" ("Id") VALUES (76);
INSERT INTO public."Dictionaries" ("Id") VALUES (77);
INSERT INTO public."Dictionaries" ("Id") VALUES (78);
INSERT INTO public."Dictionaries" ("Id") VALUES (79);


--
-- TOC entry 3470 (class 0 OID 20705)
-- Dependencies: 224
-- Data for Name: EndpointPermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3469 (class 0 OID 20696)
-- Dependencies: 223
-- Data for Name: Endpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Endpoints" ("Id", "Name", "UrlTemplate", "Position", "DisallowAnonymous", "SignInUrl", "RequestProcessorCSharpClassName", "RequestProcessorParameters", "ResponseCacheCSharpClassName", "ResponseCacheParameters") VALUES (1, 'Default', '{*url}', 1000, false, NULL, 'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', 'ViewName=RegularPage', NULL, NULL);
INSERT INTO public."Endpoints" ("Id", "Name", "UrlTemplate", "Position", "DisallowAnonymous", "SignInUrl", "RequestProcessorCSharpClassName", "RequestProcessorParameters", "ResponseCacheCSharpClassName", "ResponseCacheParameters") VALUES (2, 'Blog', 'blog', 10, false, NULL, 'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', 'ViewName=BlogPage', NULL, NULL);
INSERT INTO public."Endpoints" ("Id", "Name", "UrlTemplate", "Position", "DisallowAnonymous", "SignInUrl", "RequestProcessorCSharpClassName", "RequestProcessorParameters", "ResponseCacheCSharpClassName", "ResponseCacheParameters") VALUES (3, 'Post', 'blog/{segment}', 20, false, NULL, 'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', 'ViewName=PostPage', NULL, NULL);
INSERT INTO public."Endpoints" ("Id", "Name", "UrlTemplate", "Position", "DisallowAnonymous", "SignInUrl", "RequestProcessorCSharpClassName", "RequestProcessorParameters", "ResponseCacheCSharpClassName", "ResponseCacheParameters") VALUES (4, 'Contacts', 'contacts', 30, false, NULL, 'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', 'ViewName=ContactsPage', NULL, NULL);


--
-- TOC entry 3502 (class 0 OID 21011)
-- Dependencies: 256
-- Data for Name: FieldOptions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3498 (class 0 OID 20974)
-- Dependencies: 252
-- Data for Name: FieldTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."FieldTypes" ("Id", "Code", "Name", "Position", "ValidatorCSharpClassName") VALUES (1, 'TextBox', 'Text box', 1, NULL);
INSERT INTO public."FieldTypes" ("Id", "Code", "Name", "Position", "ValidatorCSharpClassName") VALUES (2, 'TextArea', 'Text area', 2, NULL);
INSERT INTO public."FieldTypes" ("Id", "Code", "Name", "Position", "ValidatorCSharpClassName") VALUES (3, 'Checkbox', 'Checkbox', 3, NULL);
INSERT INTO public."FieldTypes" ("Id", "Code", "Name", "Position", "ValidatorCSharpClassName") VALUES (4, 'RadioButtonList', 'Radio button list', 4, NULL);
INSERT INTO public."FieldTypes" ("Id", "Code", "Name", "Position", "ValidatorCSharpClassName") VALUES (5, 'DropDownList', 'Drop down list', 5, NULL);
INSERT INTO public."FieldTypes" ("Id", "Code", "Name", "Position", "ValidatorCSharpClassName") VALUES (6, 'FileUpload', 'File upload', 6, NULL);
INSERT INTO public."FieldTypes" ("Id", "Code", "Name", "Position", "ValidatorCSharpClassName") VALUES (7, 'ReCAPTCHA', 'ReCAPTCHA', 7, 'Platformus.Website.Frontend.FieldValidators.ReCaptchaFieldValidator');


--
-- TOC entry 3500 (class 0 OID 20985)
-- Dependencies: 254
-- Data for Name: Fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (1, 1, 1, 'Name', 8, true, NULL, 10);
INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (2, 1, 1, 'Email', 9, true, NULL, 20);
INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (3, 1, 2, 'Message', 10, true, NULL, 30);
INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (4, 2, 1, 'Name', 13, true, NULL, 10);
INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (5, 2, 2, 'Comment', 14, true, NULL, 20);


--
-- TOC entry 3508 (class 0 OID 21063)
-- Dependencies: 262
-- Data for Name: Files; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3496 (class 0 OID 20953)
-- Dependencies: 250
-- Data for Name: Forms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Forms" ("Id", "Code", "NameId", "SubmitButtonTitleId", "ProduceCompletedForms", "FormHandlerCSharpClassName", "FormHandlerParameters") VALUES (1, 'Feedback', 6, 7, true, 'Platformus.Website.Frontend.FormHandlers.EmailFormHandler', 'RecipientEmails=test@test.com;RedirectUrl=/contacts');
INSERT INTO public."Forms" ("Id", "Code", "NameId", "SubmitButtonTitleId", "ProduceCompletedForms", "FormHandlerCSharpClassName", "FormHandlerParameters") VALUES (2, 'WriteComment', 12, 11, true, 'WebApplication.FormHandlers.WriteCommentFormHandler', NULL);


--
-- TOC entry 3467 (class 0 OID 20675)
-- Dependencies: 221
-- Data for Name: Localizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (1, 1, 'en', 'Main');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (2, 1, 'ru', 'Главное');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (3, 1, 'uk', 'Головне');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (4, 2, 'uk', 'Головна');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (5, 2, 'ru', 'Главная');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (6, 2, 'en', 'Home');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (7, 3, 'uk', 'Про мене');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (8, 3, 'ru', 'Обо мне');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (9, 3, 'en', 'About me');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (10, 4, 'uk', 'Блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (11, 4, 'ru', 'Блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (12, 4, 'en', 'Blog');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (13, 5, 'uk', 'Контакти');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (14, 5, 'ru', 'Контакты');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (15, 5, 'en', 'Contacts');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (16, 6, 'uk', 'Зворотний зв’язок');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (17, 6, 'ru', 'Обратная связь');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (18, 6, 'en', 'Feedback');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (19, 7, 'en', 'Submit');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (20, 7, 'ru', 'Отправить');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (21, 7, 'uk', 'Надіслати');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (22, 8, 'uk', 'Ваше ім’я');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (23, 8, 'ru', 'Ваше имя');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (24, 8, 'en', 'Your name');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (25, 9, 'uk', 'Ваша електронна пошта');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (26, 9, 'ru', 'Ваша электронная почта');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (27, 9, 'en', 'Your email');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (28, 10, 'uk', 'Ваше повідомлення');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (29, 10, 'ru', 'Ваше сообщение');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (30, 10, 'en', 'Your message');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (31, 11, 'uk', 'Надіслати');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (32, 11, 'ru', 'Отправить');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (33, 11, 'en', 'Submit');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (34, 12, 'uk', 'Напишіть коментар');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (35, 12, 'ru', 'Напишите комментарий');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (36, 12, 'en', 'Write comment');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (37, 13, 'uk', 'Ваше ім’я');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (38, 13, 'ru', 'Ваше имя');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (39, 13, 'en', 'Your name');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (40, 14, 'uk', 'Ваше повідомлення');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (41, 14, 'ru', 'Ваш ');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (42, 14, 'en', 'Your comment');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (43, 15, '__', '/');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (44, 16, 'uk', '<h1>Ваш персональний блог</h1><p>Вітаємо! Це ваш персональний блог, він працює на базі системи керування вмістом &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href="/backend">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (45, 16, 'ru', '<h1>Ваш персональный блог</h1><p>Здравствуйте! Это ваш персональный блог, он работает на базе системы управления содержимым &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href="/backend">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (46, 16, 'en', '<h1>Your Personal Blog</h1><p>Hello! This is your personal blog, it is based on the <a href="http://platformus.net/" target="_blank" rel="noopener">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href="/backend">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href="http://docs.platformus.net/" target="_blank" rel="noopener">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">chat</a>.</p><p>Have a nice work!</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (47, 17, 'uk', 'Ваш персональний блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (48, 17, 'ru', 'Ваш персональный блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (49, 17, 'en', 'Your Personal Blog');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (50, 18, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (51, 18, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (52, 18, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (53, 19, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (54, 19, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (55, 19, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (56, 20, '__', '/about-me');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (57, 21, 'uk', '<h1>Про мене</h1><p>Розкажіть про себе в кількох словах. Ви можете додати сюди фотографії або відео.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (58, 21, 'ru', '<h1>Обо мне</h1><p>Расскажите о себе в нескольких словах. Вы можете добавить сюда фотографии или видео.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (59, 21, 'en', '<h1>About Me</h1><p>Tell us about yourself in a few words. You can add photos or videos here.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (60, 22, 'uk', 'Про мене');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (61, 22, 'ru', 'Обо мне');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (62, 22, 'en', 'About Me');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (63, 23, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (64, 23, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (65, 23, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (66, 24, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (67, 24, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (68, 24, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (69, 25, '__', '/blog');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (70, 26, 'uk', '<h1>Блог</h1>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (71, 26, 'ru', '<h1>Блог</h1>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (72, 26, 'en', '<h1>Blog</h1>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (73, 27, 'uk', 'Блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (74, 27, 'ru', 'Блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (75, 27, 'en', 'Blog');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (76, 28, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (77, 28, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (78, 28, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (79, 29, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (80, 29, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (81, 29, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (95, 35, 'uk', 'Тег1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (96, 35, 'ru', 'Тэг1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (97, 35, 'en', 'Tag1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (101, 37, 'uk', 'Тег3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (102, 37, 'ru', 'Тэг3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (103, 37, 'en', 'Tag3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (107, 39, 'uk', 'Тег5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (108, 39, 'ru', 'Тэг5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (109, 39, 'en', 'Tag5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (130, 48, '__', '/blog/post-2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (131, 49, '__', '/images/objects/11/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (132, 50, 'uk', 'Пост 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (133, 50, 'ru', 'Пост 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (134, 50, 'en', 'Post 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (135, 51, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (136, 51, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (137, 51, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (138, 52, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (139, 52, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (140, 52, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (141, 53, 'uk', 'Пост 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (142, 53, 'ru', 'Пост 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (143, 53, 'en', 'Post 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (144, 54, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (145, 54, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (146, 54, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (147, 55, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (148, 55, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (149, 55, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (170, 64, '__', '/blog/post-4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (171, 65, '__', '/images/objects/13/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (172, 66, 'uk', 'Пост 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (173, 66, 'ru', 'Пост 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (174, 66, 'en', 'Post 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (175, 67, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (176, 67, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (177, 67, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (178, 68, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (179, 68, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (180, 68, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (181, 69, 'uk', 'Пост 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (182, 69, 'ru', 'Пост 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (183, 69, 'en', 'Post 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (82, 30, '__', '/contacts');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (83, 31, 'uk', '<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (84, 31, 'ru', '<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (85, 31, 'en', '<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (86, 32, 'uk', 'Контакти');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (87, 32, 'ru', 'Контакты');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (88, 32, 'en', 'Contacts');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (89, 33, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (90, 33, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (91, 33, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (92, 34, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (93, 34, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (94, 34, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (98, 36, 'uk', 'Тег2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (99, 36, 'ru', 'Тэг2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (100, 36, 'en', 'Tag2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (104, 38, 'uk', 'Тег4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (105, 38, 'ru', 'Тэг4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (106, 38, 'en', 'Tag4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (110, 40, '__', '/blog/post-1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (111, 41, '__', '/images/objects/10/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (112, 42, 'uk', 'Пост 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (113, 42, 'ru', 'Пост 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (114, 42, 'en', 'Post 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (115, 43, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (116, 43, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (117, 43, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (118, 44, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (119, 44, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (120, 44, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (121, 45, 'uk', 'Пост 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (122, 45, 'ru', 'Пост 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (123, 45, 'en', 'Post 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (124, 46, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (125, 46, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (126, 46, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (127, 47, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (128, 47, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (129, 47, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (150, 56, '__', '/blog/post-3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (151, 57, '__', '/images/objects/12/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (152, 58, 'uk', 'Пост 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (153, 58, 'ru', 'Пост 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (154, 58, 'en', 'Post 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (155, 59, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (156, 59, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (157, 59, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (158, 60, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (159, 60, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (160, 60, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (161, 61, 'uk', 'Пост 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (162, 61, 'ru', 'Пост 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (163, 61, 'en', 'Post 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (164, 62, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (165, 62, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (166, 62, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (167, 63, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (168, 63, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (169, 63, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (190, 72, '__', '/blog/post-5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (191, 73, '__', '/images/objects/14/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (192, 74, 'uk', 'Пост 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (193, 74, 'ru', 'Пост 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (194, 74, 'en', 'Post 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (195, 75, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (196, 75, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (197, 75, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (198, 76, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (199, 76, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (200, 76, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (201, 77, 'uk', 'Пост 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (202, 77, 'ru', 'Пост 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (203, 77, 'en', 'Post 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (204, 78, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (205, 78, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (206, 78, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (207, 79, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (208, 79, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (209, 79, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (184, 70, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (185, 70, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (186, 70, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (187, 71, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (188, 71, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (189, 71, 'en', '');


--
-- TOC entry 3482 (class 0 OID 20797)
-- Dependencies: 236
-- Data for Name: Members; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (1, 1, NULL, 'Url', 'URL', 1, 1, false, true, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (2, 1, NULL, 'Content', 'Content', 100, 3, true, false, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (3, 1, 1, 'Title', 'Title', 1000, 1, true, false, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (4, 1, 1, 'MetaDescription', 'META description', 1010, 1, true, false, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (5, 1, 1, 'MetaKeywords', 'META keywords', 1020, 1, true, false, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (6, 3, NULL, 'Text', 'Text', 10, 1, true, true, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (7, 4, NULL, 'Author', 'Author', 10, 1, false, true, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (8, 4, NULL, 'Text', 'Text', 20, 2, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (9, 4, NULL, 'Created', 'Created', 30, 7, false, true, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (10, 5, NULL, 'Name', 'Name', 10, 1, true, true, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (11, 5, NULL, 'Tags', 'Tags', 20, NULL, NULL, NULL, 3, false, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (12, 5, NULL, 'Cover', 'Cover', 30, 8, false, false, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (13, 5, NULL, 'Preview', 'Preview', 40, 3, true, false, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (14, 5, NULL, 'Created', 'Created', 200, 7, false, true, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (15, 5, NULL, 'Comments', 'Comments', 0, NULL, NULL, NULL, 4, true, NULL, NULL);


--
-- TOC entry 3494 (class 0 OID 20927)
-- Dependencies: 248
-- Data for Name: MenuItems; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."MenuItems" ("Id", "MenuId", "MenuItemId", "NameId", "Url", "Position") VALUES (1, 1, NULL, 2, '/', 10);
INSERT INTO public."MenuItems" ("Id", "MenuId", "MenuItemId", "NameId", "Url", "Position") VALUES (2, 1, NULL, 3, '/about-me', 20);
INSERT INTO public."MenuItems" ("Id", "MenuId", "MenuItemId", "NameId", "Url", "Position") VALUES (3, 1, NULL, 4, '/blog', 30);
INSERT INTO public."MenuItems" ("Id", "MenuId", "MenuItemId", "NameId", "Url", "Position") VALUES (4, 1, NULL, 5, '/contacts', 40);


--
-- TOC entry 3492 (class 0 OID 20911)
-- Dependencies: 246
-- Data for Name: Menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Menus" ("Id", "Code", "NameId") VALUES (1, 'Main', 1);


--
-- TOC entry 3446 (class 0 OID 20527)
-- Dependencies: 200
-- Data for Name: ModelStates; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3486 (class 0 OID 20849)
-- Dependencies: 240
-- Data for Name: Objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Objects" ("Id", "ClassId") VALUES (1, 2);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (2, 2);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (3, 2);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (4, 2);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (5, 3);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (6, 3);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (7, 3);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (8, 3);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (9, 3);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (10, 5);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (11, 5);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (12, 5);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (13, 5);
INSERT INTO public."Objects" ("Id", "ClassId") VALUES (14, 5);


--
-- TOC entry 3516 (class 0 OID 21177)
-- Dependencies: 270
-- Data for Name: OrderStates; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3524 (class 0 OID 21236)
-- Dependencies: 278
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3518 (class 0 OID 21193)
-- Dependencies: 272
-- Data for Name: PaymentMethods; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3457 (class 0 OID 20606)
-- Dependencies: 211
-- Data for Name: Permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (1, 'DoAnything', 'Do anything', 100);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (2, 'ManagePermissions', 'Manage permissions', 200);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (3, 'ManageRoles', 'Manage roles', 300);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (4, 'ManageUsers', 'Manage users', 400);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (5, 'ManageConfigurations', 'Manage configurations', 500);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (6, 'ManageCultures', 'Manage cultures', 600);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (7, 'ManageEndpoints', 'Manage endpoints', 700);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (8, 'ManageObjects', 'Manage objects', 800);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (9, 'ManageDataTypes', 'Manage data types', 900);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (10, 'ManageClasses', 'Manage classes', 1000);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (11, 'ManageMenus', 'Manage menus', 1100);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (12, 'ManageForms', 'Manage forms', 1200);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (13, 'ManageFileManager', 'Manage file manager', 1300);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (14, 'ManageCategories', 'Manage categories', 1400);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (15, 'ManageProducts', 'Manage products', 1500);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (16, 'ManageOrderStates', 'Manage order states', 1600);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (17, 'ManagePaymentMethods', 'Manage payment methods', 1700);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (18, 'ManageDeliveryMethods', 'Manage delivery methods', 1800);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (19, 'ManageCarts', 'Manage carts', 1900);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (20, 'ManageOrders', 'Manage orders', 2000);


--
-- TOC entry 3514 (class 0 OID 21161)
-- Dependencies: 268
-- Data for Name: Photos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3526 (class 0 OID 21262)
-- Dependencies: 280
-- Data for Name: Positions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3512 (class 0 OID 21115)
-- Dependencies: 266
-- Data for Name: Products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3488 (class 0 OID 20862)
-- Dependencies: 242
-- Data for Name: Properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (1, 1, 1, NULL, NULL, 15, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (2, 1, 2, NULL, NULL, 16, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (3, 1, 3, NULL, NULL, 17, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (4, 1, 4, NULL, NULL, 18, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (5, 1, 5, NULL, NULL, 19, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (6, 2, 1, NULL, NULL, 20, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (7, 2, 2, NULL, NULL, 21, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (8, 2, 3, NULL, NULL, 22, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (9, 2, 4, NULL, NULL, 23, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (10, 2, 5, NULL, NULL, 24, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (11, 3, 1, NULL, NULL, 25, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (12, 3, 2, NULL, NULL, 26, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (13, 3, 3, NULL, NULL, 27, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (14, 3, 4, NULL, NULL, 28, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (15, 3, 5, NULL, NULL, 29, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (16, 4, 1, NULL, NULL, 30, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (17, 4, 2, NULL, NULL, 31, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (18, 4, 3, NULL, NULL, 32, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (19, 4, 4, NULL, NULL, 33, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (20, 4, 5, NULL, NULL, 34, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (21, 5, 6, NULL, NULL, 35, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (22, 6, 6, NULL, NULL, 36, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (23, 7, 6, NULL, NULL, 37, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (24, 8, 6, NULL, NULL, 38, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (25, 9, 6, NULL, NULL, 39, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (26, 10, 1, NULL, NULL, 40, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (27, 10, 12, NULL, NULL, 41, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (28, 10, 10, NULL, NULL, 42, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (29, 10, 13, NULL, NULL, 43, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (30, 10, 2, NULL, NULL, 44, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (31, 10, 14, NULL, NULL, NULL, '2021-09-09 18:25:46.085427');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (32, 10, 3, NULL, NULL, 45, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (33, 10, 4, NULL, NULL, 46, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (34, 10, 5, NULL, NULL, 47, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (35, 11, 1, NULL, NULL, 48, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (36, 11, 12, NULL, NULL, 49, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (37, 11, 10, NULL, NULL, 50, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (38, 11, 13, NULL, NULL, 51, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (39, 11, 2, NULL, NULL, 52, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (40, 11, 14, NULL, NULL, NULL, '2021-09-09 18:25:46.196782');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (41, 11, 3, NULL, NULL, 53, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (42, 11, 4, NULL, NULL, 54, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (43, 11, 5, NULL, NULL, 55, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (44, 12, 1, NULL, NULL, 56, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (45, 12, 12, NULL, NULL, 57, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (46, 12, 10, NULL, NULL, 58, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (47, 12, 13, NULL, NULL, 59, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (48, 12, 2, NULL, NULL, 60, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (49, 12, 14, NULL, NULL, NULL, '2021-09-09 18:25:46.303479');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (50, 12, 3, NULL, NULL, 61, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (51, 12, 4, NULL, NULL, 62, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (52, 12, 5, NULL, NULL, 63, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (53, 13, 1, NULL, NULL, 64, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (54, 13, 12, NULL, NULL, 65, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (55, 13, 10, NULL, NULL, 66, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (56, 13, 13, NULL, NULL, 67, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (57, 13, 2, NULL, NULL, 68, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (58, 13, 14, NULL, NULL, NULL, '2021-09-09 18:25:46.432892');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (59, 13, 3, NULL, NULL, 69, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (60, 13, 4, NULL, NULL, 70, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (61, 13, 5, NULL, NULL, 71, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (62, 14, 1, NULL, NULL, 72, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (63, 14, 12, NULL, NULL, 73, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (64, 14, 10, NULL, NULL, 74, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (65, 14, 13, NULL, NULL, 75, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (66, 14, 2, NULL, NULL, 76, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (67, 14, 14, NULL, NULL, NULL, '2021-09-09 18:25:46.543513');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (68, 14, 3, NULL, NULL, 77, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (69, 14, 4, NULL, NULL, 78, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (70, 14, 5, NULL, NULL, 79, NULL);


--
-- TOC entry 3490 (class 0 OID 20888)
-- Dependencies: 244
-- Data for Name: Relations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (1, 11, 8, 10);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (2, 11, 7, 10);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (3, 11, 6, 11);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (4, 11, 9, 11);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (5, 11, 7, 11);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (6, 11, 5, 12);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (7, 11, 6, 12);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (8, 11, 8, 12);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (9, 11, 6, 13);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (10, 11, 8, 13);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (11, 11, 9, 14);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (12, 11, 5, 14);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (13, 11, 6, 14);


--
-- TOC entry 3458 (class 0 OID 20615)
-- Dependencies: 212
-- Data for Name: RolePermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (1, 1);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (2, 1);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (3, 8);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (3, 11);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (3, 12);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (3, 13);


--
-- TOC entry 3454 (class 0 OID 20580)
-- Dependencies: 208
-- Data for Name: Roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Roles" ("Id", "Code", "Name", "Position") VALUES (1, 'Developer', 'Developer', 100);
INSERT INTO public."Roles" ("Id", "Code", "Name", "Position") VALUES (2, 'Administrator', 'Administrator', 200);
INSERT INTO public."Roles" ("Id", "Code", "Name", "Position") VALUES (3, 'ContentManager', 'Content manager', 300);


--
-- TOC entry 3476 (class 0 OID 20754)
-- Dependencies: 230
-- Data for Name: Tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Tabs" ("Id", "ClassId", "Name", "Position") VALUES (1, 1, 'SEO', 100);


--
-- TOC entry 3455 (class 0 OID 20589)
-- Dependencies: 209
-- Data for Name: UserRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."UserRoles" ("UserId", "RoleId") VALUES (1, 1);
INSERT INTO public."UserRoles" ("UserId", "RoleId") VALUES (1, 2);


--
-- TOC entry 3448 (class 0 OID 20537)
-- Dependencies: 202
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Users" ("Id", "Name", "Created") VALUES (1, 'Administrator', '2017-01-01 00:00:00');


--
-- TOC entry 3462 (class 0 OID 20643)
-- Dependencies: 216
-- Data for Name: Variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Variables" ("Id", "ConfigurationId", "Code", "Name", "Value", "Position") VALUES (1, 1, 'SmtpServer', 'SMTP server', 'test', 1);
INSERT INTO public."Variables" ("Id", "ConfigurationId", "Code", "Name", "Value", "Position") VALUES (2, 1, 'SmtpPort', 'SMTP port', '25', 2);
INSERT INTO public."Variables" ("Id", "ConfigurationId", "Code", "Name", "Value", "Position") VALUES (3, 1, 'SmtpUseSsl', 'SMTP use SSL', 'no', 3);
INSERT INTO public."Variables" ("Id", "ConfigurationId", "Code", "Name", "Value", "Position") VALUES (4, 1, 'SmtpLogin', 'SMTP login', 'test', 4);
INSERT INTO public."Variables" ("Id", "ConfigurationId", "Code", "Name", "Value", "Position") VALUES (5, 1, 'SmtpPassword', 'SMTP password', 'test', 5);
INSERT INTO public."Variables" ("Id", "ConfigurationId", "Code", "Name", "Value", "Position") VALUES (6, 1, 'SmtpSenderEmail', 'SMTP sender email', 'test', 6);
INSERT INTO public."Variables" ("Id", "ConfigurationId", "Code", "Name", "Value", "Position") VALUES (7, 1, 'SmtpSenderName', 'SMTP sender name', 'test', 7);
INSERT INTO public."Variables" ("Id", "ConfigurationId", "Code", "Name", "Value", "Position") VALUES (8, 2, 'SpecifyCultureInUrl', 'Specify culture in URL', 'yes', 1);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 275
-- Name: Carts_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Carts_Id_seq"', 1, false);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 263
-- Name: Categories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Categories_Id_seq"', 1, false);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 227
-- Name: Classes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Classes_Id_seq"', 5, true);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 259
-- Name: CompletedFields_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CompletedFields_Id_seq"', 1, false);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 257
-- Name: CompletedForms_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CompletedForms_Id_seq"', 1, false);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 213
-- Name: Configurations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Configurations_Id_seq"', 3, false);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 203
-- Name: CredentialTypes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CredentialTypes_Id_seq"', 2, false);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 205
-- Name: Credentials_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Credentials_Id_seq"', 2, false);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 225
-- Name: DataSources_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DataSources_Id_seq"', 7, true);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 237
-- Name: DataTypeParameterValues_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DataTypeParameterValues_Id_seq"', 19, true);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 233
-- Name: DataTypeParameters_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DataTypeParameters_Id_seq"', 8, false);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 231
-- Name: DataTypes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DataTypes_Id_seq"', 9, false);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 273
-- Name: DeliveryMethods_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DeliveryMethods_Id_seq"', 1, false);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 218
-- Name: Dictionaries_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Dictionaries_Id_seq"', 79, true);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 222
-- Name: Endpoints_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Endpoints_Id_seq"', 4, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 255
-- Name: FieldOptions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FieldOptions_Id_seq"', 1, false);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 251
-- Name: FieldTypes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FieldTypes_Id_seq"', 8, false);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 253
-- Name: Fields_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Fields_Id_seq"', 5, true);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 261
-- Name: Files_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Files_Id_seq"', 1, false);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 249
-- Name: Forms_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Forms_Id_seq"', 2, true);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 220
-- Name: Localizations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Localizations_Id_seq"', 209, true);


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 235
-- Name: Members_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Members_Id_seq"', 15, true);


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 247
-- Name: MenuItems_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."MenuItems_Id_seq"', 4, true);


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 245
-- Name: Menus_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Menus_Id_seq"', 1, true);


--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 239
-- Name: Objects_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Objects_Id_seq"', 14, true);


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 269
-- Name: OrderStates_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OrderStates_Id_seq"', 1, false);


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 277
-- Name: Orders_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Orders_Id_seq"', 1, false);


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 271
-- Name: PaymentMethods_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."PaymentMethods_Id_seq"', 1, false);


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 210
-- Name: Permissions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Permissions_Id_seq"', 27, false);


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 267
-- Name: Photos_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Photos_Id_seq"', 1, false);


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 279
-- Name: Positions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Positions_Id_seq"', 1, false);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 265
-- Name: Products_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Products_Id_seq"', 1, false);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 241
-- Name: Properties_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Properties_Id_seq"', 70, true);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 243
-- Name: Relations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Relations_Id_seq"', 13, true);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 207
-- Name: Roles_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Roles_Id_seq"', 4, false);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 229
-- Name: Tabs_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tabs_Id_seq"', 1, true);


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 201
-- Name: Users_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_Id_seq"', 2, false);


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 215
-- Name: Variables_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Variables_Id_seq"', 8, false);


--
-- TOC entry 3246 (class 2606 OID 21233)
-- Name: Carts PK_Carts; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carts"
    ADD CONSTRAINT "PK_Carts" PRIMARY KEY ("Id");


--
-- TOC entry 3234 (class 2606 OID 21082)
-- Name: Categories PK_Categories; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "PK_Categories" PRIMARY KEY ("Id");


--
-- TOC entry 3198 (class 2606 OID 20746)
-- Name: Classes PK_Classes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "PK_Classes" PRIMARY KEY ("Id");


--
-- TOC entry 3230 (class 2606 OID 21050)
-- Name: CompletedFields PK_CompletedFields; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedFields"
    ADD CONSTRAINT "PK_CompletedFields" PRIMARY KEY ("Id");


--
-- TOC entry 3228 (class 2606 OID 21034)
-- Name: CompletedForms PK_CompletedForms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedForms"
    ADD CONSTRAINT "PK_CompletedForms" PRIMARY KEY ("Id");


--
-- TOC entry 3182 (class 2606 OID 20640)
-- Name: Configurations PK_Configurations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Configurations"
    ADD CONSTRAINT "PK_Configurations" PRIMARY KEY ("Id");


--
-- TOC entry 3170 (class 2606 OID 20556)
-- Name: CredentialTypes PK_CredentialTypes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CredentialTypes"
    ADD CONSTRAINT "PK_CredentialTypes" PRIMARY KEY ("Id");


--
-- TOC entry 3172 (class 2606 OID 20567)
-- Name: Credentials PK_Credentials; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credentials"
    ADD CONSTRAINT "PK_Credentials" PRIMARY KEY ("Id");


--
-- TOC entry 3186 (class 2606 OID 20664)
-- Name: Cultures PK_Cultures; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cultures"
    ADD CONSTRAINT "PK_Cultures" PRIMARY KEY ("Id");


--
-- TOC entry 3196 (class 2606 OID 20730)
-- Name: DataSources PK_DataSources; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataSources"
    ADD CONSTRAINT "PK_DataSources" PRIMARY KEY ("Id");


--
-- TOC entry 3208 (class 2606 OID 20836)
-- Name: DataTypeParameterValues PK_DataTypeParameterValues; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameterValues"
    ADD CONSTRAINT "PK_DataTypeParameterValues" PRIMARY KEY ("Id");


--
-- TOC entry 3204 (class 2606 OID 20789)
-- Name: DataTypeParameters PK_DataTypeParameters; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameters"
    ADD CONSTRAINT "PK_DataTypeParameters" PRIMARY KEY ("Id");


--
-- TOC entry 3202 (class 2606 OID 20778)
-- Name: DataTypes PK_DataTypes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypes"
    ADD CONSTRAINT "PK_DataTypes" PRIMARY KEY ("Id");


--
-- TOC entry 3244 (class 2606 OID 21217)
-- Name: DeliveryMethods PK_DeliveryMethods; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeliveryMethods"
    ADD CONSTRAINT "PK_DeliveryMethods" PRIMARY KEY ("Id");


--
-- TOC entry 3188 (class 2606 OID 20672)
-- Name: Dictionaries PK_Dictionaries; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dictionaries"
    ADD CONSTRAINT "PK_Dictionaries" PRIMARY KEY ("Id");


--
-- TOC entry 3194 (class 2606 OID 20709)
-- Name: EndpointPermissions PK_EndpointPermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EndpointPermissions"
    ADD CONSTRAINT "PK_EndpointPermissions" PRIMARY KEY ("EndpointId", "PermissionId");


--
-- TOC entry 3192 (class 2606 OID 20704)
-- Name: Endpoints PK_Endpoints; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Endpoints"
    ADD CONSTRAINT "PK_Endpoints" PRIMARY KEY ("Id");


--
-- TOC entry 3226 (class 2606 OID 21016)
-- Name: FieldOptions PK_FieldOptions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldOptions"
    ADD CONSTRAINT "PK_FieldOptions" PRIMARY KEY ("Id");


--
-- TOC entry 3222 (class 2606 OID 20982)
-- Name: FieldTypes PK_FieldTypes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldTypes"
    ADD CONSTRAINT "PK_FieldTypes" PRIMARY KEY ("Id");


--
-- TOC entry 3224 (class 2606 OID 20993)
-- Name: Fields PK_Fields; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields"
    ADD CONSTRAINT "PK_Fields" PRIMARY KEY ("Id");


--
-- TOC entry 3232 (class 2606 OID 21071)
-- Name: Files PK_Files; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "PK_Files" PRIMARY KEY ("Id");


--
-- TOC entry 3220 (class 2606 OID 20961)
-- Name: Forms PK_Forms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forms"
    ADD CONSTRAINT "PK_Forms" PRIMARY KEY ("Id");


--
-- TOC entry 3190 (class 2606 OID 20683)
-- Name: Localizations PK_Localizations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Localizations"
    ADD CONSTRAINT "PK_Localizations" PRIMARY KEY ("Id");


--
-- TOC entry 3206 (class 2606 OID 20805)
-- Name: Members PK_Members; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "PK_Members" PRIMARY KEY ("Id");


--
-- TOC entry 3218 (class 2606 OID 20935)
-- Name: MenuItems PK_MenuItems; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "PK_MenuItems" PRIMARY KEY ("Id");


--
-- TOC entry 3216 (class 2606 OID 20919)
-- Name: Menus PK_Menus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menus"
    ADD CONSTRAINT "PK_Menus" PRIMARY KEY ("Id");


--
-- TOC entry 3166 (class 2606 OID 20534)
-- Name: ModelStates PK_ModelStates; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ModelStates"
    ADD CONSTRAINT "PK_ModelStates" PRIMARY KEY ("Id");


--
-- TOC entry 3210 (class 2606 OID 20854)
-- Name: Objects PK_Objects; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "PK_Objects" PRIMARY KEY ("Id");


--
-- TOC entry 3240 (class 2606 OID 21185)
-- Name: OrderStates PK_OrderStates; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderStates"
    ADD CONSTRAINT "PK_OrderStates" PRIMARY KEY ("Id");


--
-- TOC entry 3248 (class 2606 OID 21244)
-- Name: Orders PK_Orders; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "PK_Orders" PRIMARY KEY ("Id");


--
-- TOC entry 3242 (class 2606 OID 21201)
-- Name: PaymentMethods PK_PaymentMethods; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PaymentMethods"
    ADD CONSTRAINT "PK_PaymentMethods" PRIMARY KEY ("Id");


--
-- TOC entry 3178 (class 2606 OID 20614)
-- Name: Permissions PK_Permissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Permissions"
    ADD CONSTRAINT "PK_Permissions" PRIMARY KEY ("Id");


--
-- TOC entry 3238 (class 2606 OID 21169)
-- Name: Photos PK_Photos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Photos"
    ADD CONSTRAINT "PK_Photos" PRIMARY KEY ("Id");


--
-- TOC entry 3250 (class 2606 OID 21270)
-- Name: Positions PK_Positions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Positions"
    ADD CONSTRAINT "PK_Positions" PRIMARY KEY ("Id");


--
-- TOC entry 3236 (class 2606 OID 21123)
-- Name: Products PK_Products; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "PK_Products" PRIMARY KEY ("Id");


--
-- TOC entry 3212 (class 2606 OID 20870)
-- Name: Properties PK_Properties; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties"
    ADD CONSTRAINT "PK_Properties" PRIMARY KEY ("Id");


--
-- TOC entry 3214 (class 2606 OID 20893)
-- Name: Relations PK_Relations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations"
    ADD CONSTRAINT "PK_Relations" PRIMARY KEY ("Id");


--
-- TOC entry 3180 (class 2606 OID 20619)
-- Name: RolePermissions PK_RolePermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RolePermissions"
    ADD CONSTRAINT "PK_RolePermissions" PRIMARY KEY ("RoleId", "PermissionId");


--
-- TOC entry 3174 (class 2606 OID 20588)
-- Name: Roles PK_Roles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "PK_Roles" PRIMARY KEY ("Id");


--
-- TOC entry 3200 (class 2606 OID 20762)
-- Name: Tabs PK_Tabs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tabs"
    ADD CONSTRAINT "PK_Tabs" PRIMARY KEY ("Id");


--
-- TOC entry 3176 (class 2606 OID 20593)
-- Name: UserRoles PK_UserRoles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "PK_UserRoles" PRIMARY KEY ("UserId", "RoleId");


--
-- TOC entry 3168 (class 2606 OID 20545)
-- Name: Users PK_Users; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("Id");


--
-- TOC entry 3184 (class 2606 OID 20651)
-- Name: Variables PK_Variable; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Variables"
    ADD CONSTRAINT "PK_Variable" PRIMARY KEY ("Id");


--
-- TOC entry 3293 (class 2606 OID 21083)
-- Name: Categories FK_Categories_Categories; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "FK_Categories_Categories" FOREIGN KEY ("CategoryId") REFERENCES public."Categories"("Id") ON DELETE CASCADE;


--
-- TOC entry 3294 (class 2606 OID 21088)
-- Name: Categories FK_Categories_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "FK_Categories_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3295 (class 2606 OID 21093)
-- Name: Categories FK_Categories_Dictionaries_DescriptionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "FK_Categories_Dictionaries_DescriptionId" FOREIGN KEY ("DescriptionId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3297 (class 2606 OID 21103)
-- Name: Categories FK_Categories_Dictionaries_MetaDescriptionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "FK_Categories_Dictionaries_MetaDescriptionId" FOREIGN KEY ("MetaDescriptionId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3298 (class 2606 OID 21108)
-- Name: Categories FK_Categories_Dictionaries_MetaKeywordsId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "FK_Categories_Dictionaries_MetaKeywordsId" FOREIGN KEY ("MetaKeywordsId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3296 (class 2606 OID 21098)
-- Name: Categories FK_Categories_Dictionaries_TitleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "FK_Categories_Dictionaries_TitleId" FOREIGN KEY ("TitleId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3263 (class 2606 OID 20747)
-- Name: Classes FK_Classes_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "FK_Classes_Classes" FOREIGN KEY ("ClassId") REFERENCES public."Classes"("Id") ON DELETE SET NULL;


--
-- TOC entry 3291 (class 2606 OID 21051)
-- Name: CompletedFields FK_CompletedFields_CompletedForms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedFields"
    ADD CONSTRAINT "FK_CompletedFields_CompletedForms" FOREIGN KEY ("CompletedFormId") REFERENCES public."CompletedForms"("Id") ON DELETE CASCADE;


--
-- TOC entry 3292 (class 2606 OID 21056)
-- Name: CompletedFields FK_CompletedFields_Fields; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedFields"
    ADD CONSTRAINT "FK_CompletedFields_Fields" FOREIGN KEY ("FieldId") REFERENCES public."Fields"("Id") ON DELETE CASCADE;


--
-- TOC entry 3290 (class 2606 OID 21035)
-- Name: CompletedForms FK_CompletedForms_Forms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedForms"
    ADD CONSTRAINT "FK_CompletedForms_Forms" FOREIGN KEY ("FormId") REFERENCES public."Forms"("Id") ON DELETE CASCADE;


--
-- TOC entry 3252 (class 2606 OID 20573)
-- Name: Credentials FK_Credentials_CredentialTypes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credentials"
    ADD CONSTRAINT "FK_Credentials_CredentialTypes" FOREIGN KEY ("CredentialTypeId") REFERENCES public."CredentialTypes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3251 (class 2606 OID 20568)
-- Name: Credentials FK_Credentials_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credentials"
    ADD CONSTRAINT "FK_Credentials_Users" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 3262 (class 2606 OID 20731)
-- Name: DataSources FK_DataSources_Endpoints; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataSources"
    ADD CONSTRAINT "FK_DataSources_Endpoints" FOREIGN KEY ("EndpointId") REFERENCES public."Endpoints"("Id") ON DELETE CASCADE;


--
-- TOC entry 3270 (class 2606 OID 20837)
-- Name: DataTypeParameterValues FK_DataTypeParameterValues_DataTypeParameters_DataTypeParameter; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameterValues"
    ADD CONSTRAINT "FK_DataTypeParameterValues_DataTypeParameters_DataTypeParameter" FOREIGN KEY ("DataTypeParameterId") REFERENCES public."DataTypeParameters"("Id") ON DELETE CASCADE;


--
-- TOC entry 3271 (class 2606 OID 20842)
-- Name: DataTypeParameterValues FK_DataTypeParameterValues_Members_MemberId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameterValues"
    ADD CONSTRAINT "FK_DataTypeParameterValues_Members_MemberId" FOREIGN KEY ("MemberId") REFERENCES public."Members"("Id") ON DELETE CASCADE;


--
-- TOC entry 3265 (class 2606 OID 20790)
-- Name: DataTypeParameters FK_DataTypeParameters_DataTypes_DataTypeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameters"
    ADD CONSTRAINT "FK_DataTypeParameters_DataTypes_DataTypeId" FOREIGN KEY ("DataTypeId") REFERENCES public."DataTypes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3309 (class 2606 OID 21218)
-- Name: DeliveryMethods FK_DeliveryMethods_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeliveryMethods"
    ADD CONSTRAINT "FK_DeliveryMethods_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3260 (class 2606 OID 20710)
-- Name: EndpointPermissions FK_EndpointPermissions_Roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EndpointPermissions"
    ADD CONSTRAINT "FK_EndpointPermissions_Roles" FOREIGN KEY ("EndpointId") REFERENCES public."Endpoints"("Id") ON DELETE CASCADE;


--
-- TOC entry 3289 (class 2606 OID 21022)
-- Name: FieldOptions FK_FieldOptions_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldOptions"
    ADD CONSTRAINT "FK_FieldOptions_Dictionaries" FOREIGN KEY ("ValueId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3288 (class 2606 OID 21017)
-- Name: FieldOptions FK_FieldOptions_Fields; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldOptions"
    ADD CONSTRAINT "FK_FieldOptions_Fields" FOREIGN KEY ("FieldId") REFERENCES public."Fields"("Id") ON DELETE CASCADE;


--
-- TOC entry 3287 (class 2606 OID 21004)
-- Name: Fields FK_Fields_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields"
    ADD CONSTRAINT "FK_Fields_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3286 (class 2606 OID 20999)
-- Name: Fields FK_Fields_FieldTypes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields"
    ADD CONSTRAINT "FK_Fields_FieldTypes" FOREIGN KEY ("FieldTypeId") REFERENCES public."FieldTypes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3285 (class 2606 OID 20994)
-- Name: Fields FK_Fields_Forms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields"
    ADD CONSTRAINT "FK_Fields_Forms" FOREIGN KEY ("FormId") REFERENCES public."Forms"("Id") ON DELETE CASCADE;


--
-- TOC entry 3283 (class 2606 OID 20962)
-- Name: Forms FK_Forms_Dictionaries_NameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forms"
    ADD CONSTRAINT "FK_Forms_Dictionaries_NameId" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3284 (class 2606 OID 20967)
-- Name: Forms FK_Forms_Dictionaries_SubmitButtonTitleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forms"
    ADD CONSTRAINT "FK_Forms_Dictionaries_SubmitButtonTitleId" FOREIGN KEY ("SubmitButtonTitleId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3259 (class 2606 OID 20689)
-- Name: Localizations FK_Localizations_Cultures; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Localizations"
    ADD CONSTRAINT "FK_Localizations_Cultures" FOREIGN KEY ("CultureId") REFERENCES public."Cultures"("Id") ON DELETE CASCADE;


--
-- TOC entry 3258 (class 2606 OID 20684)
-- Name: Localizations FK_Localizations_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Localizations"
    ADD CONSTRAINT "FK_Localizations_Dictionaries" FOREIGN KEY ("DictionaryId") REFERENCES public."Dictionaries"("Id") ON DELETE CASCADE;


--
-- TOC entry 3266 (class 2606 OID 20806)
-- Name: Members FK_Members_Classes_ClassId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "FK_Members_Classes_ClassId" FOREIGN KEY ("ClassId") REFERENCES public."Classes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3269 (class 2606 OID 20821)
-- Name: Members FK_Members_Classes_RelationClassId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "FK_Members_Classes_RelationClassId" FOREIGN KEY ("RelationClassId") REFERENCES public."Classes"("Id") ON DELETE SET NULL;


--
-- TOC entry 3268 (class 2606 OID 20816)
-- Name: Members FK_Members_DataTypes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "FK_Members_DataTypes" FOREIGN KEY ("PropertyDataTypeId") REFERENCES public."DataTypes"("Id") ON DELETE SET NULL;


--
-- TOC entry 3267 (class 2606 OID 20811)
-- Name: Members FK_Members_Tabs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "FK_Members_Tabs" FOREIGN KEY ("TabId") REFERENCES public."Tabs"("Id") ON DELETE SET NULL;


--
-- TOC entry 3282 (class 2606 OID 20946)
-- Name: MenuItems FK_MenuItems_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "FK_MenuItems_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3281 (class 2606 OID 20941)
-- Name: MenuItems FK_MenuItems_MenuItems; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "FK_MenuItems_MenuItems" FOREIGN KEY ("MenuItemId") REFERENCES public."MenuItems"("Id") ON DELETE CASCADE;


--
-- TOC entry 3280 (class 2606 OID 20936)
-- Name: MenuItems FK_MenuItems_Menus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "FK_MenuItems_Menus" FOREIGN KEY ("MenuId") REFERENCES public."Menus"("Id") ON DELETE CASCADE;


--
-- TOC entry 3279 (class 2606 OID 20920)
-- Name: Menus FK_Menus_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menus"
    ADD CONSTRAINT "FK_Menus_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3272 (class 2606 OID 20855)
-- Name: Objects FK_Objects_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "FK_Objects_Classes" FOREIGN KEY ("ClassId") REFERENCES public."Classes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3307 (class 2606 OID 21186)
-- Name: OrderStates FK_OrderStates_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OrderStates"
    ADD CONSTRAINT "FK_OrderStates_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3312 (class 2606 OID 21255)
-- Name: Orders FK_Orders_DeliveryMethods; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "FK_Orders_DeliveryMethods" FOREIGN KEY ("DeliveryMethodId") REFERENCES public."DeliveryMethods"("Id") ON DELETE CASCADE;


--
-- TOC entry 3310 (class 2606 OID 21245)
-- Name: Orders FK_Orders_OrderStates; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "FK_Orders_OrderStates" FOREIGN KEY ("OrderStateId") REFERENCES public."OrderStates"("Id") ON DELETE CASCADE;


--
-- TOC entry 3311 (class 2606 OID 21250)
-- Name: Orders FK_Orders_PaymentMethods; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "FK_Orders_PaymentMethods" FOREIGN KEY ("PaymentMethodId") REFERENCES public."PaymentMethods"("Id") ON DELETE CASCADE;


--
-- TOC entry 3308 (class 2606 OID 21202)
-- Name: PaymentMethods FK_PaymentMethods_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PaymentMethods"
    ADD CONSTRAINT "FK_PaymentMethods_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3306 (class 2606 OID 21170)
-- Name: Photos FK_Photos_Products; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Photos"
    ADD CONSTRAINT "FK_Photos_Products" FOREIGN KEY ("ProductId") REFERENCES public."Products"("Id") ON DELETE CASCADE;


--
-- TOC entry 3313 (class 2606 OID 21271)
-- Name: Positions FK_Positions_Carts; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Positions"
    ADD CONSTRAINT "FK_Positions_Carts" FOREIGN KEY ("CartId") REFERENCES public."Carts"("Id") ON DELETE CASCADE;


--
-- TOC entry 3314 (class 2606 OID 21276)
-- Name: Positions FK_Positions_Orders; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Positions"
    ADD CONSTRAINT "FK_Positions_Orders" FOREIGN KEY ("OrderId") REFERENCES public."Orders"("Id") ON DELETE CASCADE;


--
-- TOC entry 3315 (class 2606 OID 21281)
-- Name: Positions FK_Positions_Products; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Positions"
    ADD CONSTRAINT "FK_Positions_Products" FOREIGN KEY ("ProductId") REFERENCES public."Products"("Id") ON DELETE CASCADE;


--
-- TOC entry 3299 (class 2606 OID 21124)
-- Name: Products FK_Products_Categories; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "FK_Products_Categories" FOREIGN KEY ("CategoryId") REFERENCES public."Categories"("Id") ON DELETE CASCADE;


--
-- TOC entry 3301 (class 2606 OID 21134)
-- Name: Products FK_Products_Dictionaries_DescriptionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_DescriptionId" FOREIGN KEY ("DescriptionId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3304 (class 2606 OID 21149)
-- Name: Products FK_Products_Dictionaries_MetaDescriptionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_MetaDescriptionId" FOREIGN KEY ("MetaDescriptionId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3305 (class 2606 OID 21154)
-- Name: Products FK_Products_Dictionaries_MetaKeywordsId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_MetaKeywordsId" FOREIGN KEY ("MetaKeywordsId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3300 (class 2606 OID 21129)
-- Name: Products FK_Products_Dictionaries_NameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_NameId" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3303 (class 2606 OID 21144)
-- Name: Products FK_Products_Dictionaries_TitleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_TitleId" FOREIGN KEY ("TitleId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3302 (class 2606 OID 21139)
-- Name: Products FK_Products_Dictionaries_UnitsId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_UnitsId" FOREIGN KEY ("UnitsId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3275 (class 2606 OID 20881)
-- Name: Properties FK_Properties_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties"
    ADD CONSTRAINT "FK_Properties_Dictionaries" FOREIGN KEY ("StringValueId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3274 (class 2606 OID 20876)
-- Name: Properties FK_Properties_Members; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties"
    ADD CONSTRAINT "FK_Properties_Members" FOREIGN KEY ("MemberId") REFERENCES public."Members"("Id") ON DELETE CASCADE;


--
-- TOC entry 3273 (class 2606 OID 20871)
-- Name: Properties FK_Properties_Objects; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties"
    ADD CONSTRAINT "FK_Properties_Objects" FOREIGN KEY ("ObjectId") REFERENCES public."Objects"("Id") ON DELETE CASCADE;


--
-- TOC entry 3276 (class 2606 OID 20894)
-- Name: Relations FK_Relations_Members; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations"
    ADD CONSTRAINT "FK_Relations_Members" FOREIGN KEY ("MemberId") REFERENCES public."Members"("Id") ON DELETE CASCADE;


--
-- TOC entry 3278 (class 2606 OID 20904)
-- Name: Relations FK_Relations_Objects_ForeignId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations"
    ADD CONSTRAINT "FK_Relations_Objects_ForeignId" FOREIGN KEY ("ForeignId") REFERENCES public."Objects"("Id") ON DELETE CASCADE;


--
-- TOC entry 3277 (class 2606 OID 20899)
-- Name: Relations FK_Relations_Objects_PrimaryId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations"
    ADD CONSTRAINT "FK_Relations_Objects_PrimaryId" FOREIGN KEY ("PrimaryId") REFERENCES public."Objects"("Id") ON DELETE CASCADE;


--
-- TOC entry 3256 (class 2606 OID 20625)
-- Name: RolePermissions FK_RolePermissions_Permissions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RolePermissions"
    ADD CONSTRAINT "FK_RolePermissions_Permissions" FOREIGN KEY ("PermissionId") REFERENCES public."Permissions"("Id") ON DELETE CASCADE;


--
-- TOC entry 3261 (class 2606 OID 20715)
-- Name: EndpointPermissions FK_RolePermissions_Permissions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EndpointPermissions"
    ADD CONSTRAINT "FK_RolePermissions_Permissions" FOREIGN KEY ("PermissionId") REFERENCES public."Permissions"("Id") ON DELETE CASCADE;


--
-- TOC entry 3255 (class 2606 OID 20620)
-- Name: RolePermissions FK_RolePermissions_Roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RolePermissions"
    ADD CONSTRAINT "FK_RolePermissions_Roles" FOREIGN KEY ("RoleId") REFERENCES public."Roles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3264 (class 2606 OID 20763)
-- Name: Tabs FK_Tabs_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tabs"
    ADD CONSTRAINT "FK_Tabs_Classes" FOREIGN KEY ("ClassId") REFERENCES public."Classes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3254 (class 2606 OID 20599)
-- Name: UserRoles FK_UserRoles_Roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Roles" FOREIGN KEY ("RoleId") REFERENCES public."Roles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3253 (class 2606 OID 20594)
-- Name: UserRoles FK_UserRoles_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Users" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 3257 (class 2606 OID 20652)
-- Name: Variables FK_Variables_Configurations; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Variables"
    ADD CONSTRAINT "FK_Variables_Configurations" FOREIGN KEY ("ConfigurationId") REFERENCES public."Configurations"("Id") ON DELETE CASCADE;


-- Completed on 2021-09-09 18:29:29

--
-- PostgreSQL database dump complete
--

