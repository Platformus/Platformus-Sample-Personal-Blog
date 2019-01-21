--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

-- Started on 2019-01-21 17:00:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 269 (class 1259 OID 31772)
-- Name: Attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Attributes" (
    "Id" integer NOT NULL,
    "FeatureId" integer NOT NULL,
    "ValueId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE "Attributes" OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 31770)
-- Name: Attributes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Attributes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Attributes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 268
-- Name: Attributes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Attributes_Id_seq" OWNED BY "Attributes"."Id";


--
-- TOC entry 284 (class 1259 OID 31936)
-- Name: Carts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Carts" (
    "Id" integer NOT NULL,
    "OrderId" integer,
    "ClientSideId" text NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE "Carts" OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 31934)
-- Name: Carts_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Carts_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Carts_Id_seq" OWNER TO postgres;

--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 283
-- Name: Carts_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Carts_Id_seq" OWNED BY "Carts"."Id";


--
-- TOC entry 263 (class 1259 OID 31717)
-- Name: Catalogs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Catalogs" (
    "Id" integer NOT NULL,
    "CatalogId" integer,
    "Url" text NOT NULL,
    "NameId" integer NOT NULL,
    "CSharpClassName" text NOT NULL,
    "Parameters" text,
    "Position" integer
);


ALTER TABLE "Catalogs" OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 31715)
-- Name: Catalogs_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Catalogs_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Catalogs_Id_seq" OWNER TO postgres;

--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 262
-- Name: Catalogs_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Catalogs_Id_seq" OWNED BY "Catalogs"."Id";


--
-- TOC entry 265 (class 1259 OID 31738)
-- Name: Categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Categories" (
    "Id" integer NOT NULL,
    "CategoryId" integer,
    "NameId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE "Categories" OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 31736)
-- Name: Categories_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Categories_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Categories_Id_seq" OWNER TO postgres;

--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 264
-- Name: Categories_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Categories_Id_seq" OWNED BY "Categories"."Id";


--
-- TOC entry 224 (class 1259 OID 31327)
-- Name: Classes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Classes" (
    "Id" integer NOT NULL,
    "ClassId" integer,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "PluralizedName" text NOT NULL,
    "IsAbstract" boolean NOT NULL
);


ALTER TABLE "Classes" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 31325)
-- Name: Classes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Classes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Classes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 223
-- Name: Classes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Classes_Id_seq" OWNED BY "Classes"."Id";


--
-- TOC entry 258 (class 1259 OID 31667)
-- Name: CompletedFields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "CompletedFields" (
    "Id" integer NOT NULL,
    "CompletedFormId" integer NOT NULL,
    "FieldId" integer NOT NULL,
    "Value" text
);


ALTER TABLE "CompletedFields" OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 31665)
-- Name: CompletedFields_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "CompletedFields_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "CompletedFields_Id_seq" OWNER TO postgres;

--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 257
-- Name: CompletedFields_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CompletedFields_Id_seq" OWNED BY "CompletedFields"."Id";


--
-- TOC entry 256 (class 1259 OID 31654)
-- Name: CompletedForms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "CompletedForms" (
    "Id" integer NOT NULL,
    "FormId" integer NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE "CompletedForms" OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 31652)
-- Name: CompletedForms_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "CompletedForms_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "CompletedForms_Id_seq" OWNER TO postgres;

--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 255
-- Name: CompletedForms_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CompletedForms_Id_seq" OWNED BY "CompletedForms"."Id";


--
-- TOC entry 209 (class 1259 OID 31218)
-- Name: Configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Configurations" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL
);


ALTER TABLE "Configurations" OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 31216)
-- Name: Configurations_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Configurations_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Configurations_Id_seq" OWNER TO postgres;

--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 208
-- Name: Configurations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Configurations_Id_seq" OWNED BY "Configurations"."Id";


--
-- TOC entry 199 (class 1259 OID 31134)
-- Name: CredentialTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "CredentialTypes" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE "CredentialTypes" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 31132)
-- Name: CredentialTypes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "CredentialTypes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "CredentialTypes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 198
-- Name: CredentialTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "CredentialTypes_Id_seq" OWNED BY "CredentialTypes"."Id";


--
-- TOC entry 201 (class 1259 OID 31145)
-- Name: Credentials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Credentials" (
    "Id" integer NOT NULL,
    "UserId" integer NOT NULL,
    "CredentialTypeId" integer NOT NULL,
    "Identifier" text NOT NULL,
    "Secret" text,
    "Extra" text
);


ALTER TABLE "Credentials" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 31143)
-- Name: Credentials_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Credentials_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Credentials_Id_seq" OWNER TO postgres;

--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 200
-- Name: Credentials_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Credentials_Id_seq" OWNED BY "Credentials"."Id";


--
-- TOC entry 213 (class 1259 OID 31245)
-- Name: Cultures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Cultures" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "IsNeutral" boolean NOT NULL,
    "IsFrontendDefault" boolean NOT NULL,
    "IsBackendDefault" boolean NOT NULL
);


ALTER TABLE "Cultures" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 31243)
-- Name: Cultures_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Cultures_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Cultures_Id_seq" OWNER TO postgres;

--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 212
-- Name: Cultures_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Cultures_Id_seq" OWNED BY "Cultures"."Id";


--
-- TOC entry 222 (class 1259 OID 31311)
-- Name: DataSources; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "DataSources" (
    "Id" integer NOT NULL,
    "EndpointId" integer NOT NULL,
    "Code" text NOT NULL,
    "CSharpClassName" text NOT NULL,
    "Parameters" text
);


ALTER TABLE "DataSources" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 31309)
-- Name: DataSources_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DataSources_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "DataSources_Id_seq" OWNER TO postgres;

--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 221
-- Name: DataSources_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DataSources_Id_seq" OWNED BY "DataSources"."Id";


--
-- TOC entry 234 (class 1259 OID 31417)
-- Name: DataTypeParameterValues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "DataTypeParameterValues" (
    "Id" integer NOT NULL,
    "DataTypeParameterId" integer NOT NULL,
    "MemberId" integer NOT NULL,
    "Value" text NOT NULL
);


ALTER TABLE "DataTypeParameterValues" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 31415)
-- Name: DataTypeParameterValues_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DataTypeParameterValues_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "DataTypeParameterValues_Id_seq" OWNER TO postgres;

--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 233
-- Name: DataTypeParameterValues_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DataTypeParameterValues_Id_seq" OWNED BY "DataTypeParameterValues"."Id";


--
-- TOC entry 230 (class 1259 OID 31370)
-- Name: DataTypeParameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "DataTypeParameters" (
    "Id" integer NOT NULL,
    "DataTypeId" integer NOT NULL,
    "JavaScriptEditorClassName" text NOT NULL,
    "Code" text NOT NULL,
    "Name" text
);


ALTER TABLE "DataTypeParameters" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 31368)
-- Name: DataTypeParameters_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DataTypeParameters_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "DataTypeParameters_Id_seq" OWNER TO postgres;

--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 229
-- Name: DataTypeParameters_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DataTypeParameters_Id_seq" OWNED BY "DataTypeParameters"."Id";


--
-- TOC entry 228 (class 1259 OID 31359)
-- Name: DataTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "DataTypes" (
    "Id" integer NOT NULL,
    "StorageDataType" text NOT NULL,
    "JavaScriptEditorClassName" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE "DataTypes" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 31357)
-- Name: DataTypes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DataTypes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "DataTypes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 227
-- Name: DataTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DataTypes_Id_seq" OWNED BY "DataTypes"."Id";


--
-- TOC entry 280 (class 1259 OID 31894)
-- Name: DeliveryMethods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "DeliveryMethods" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE "DeliveryMethods" OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 31892)
-- Name: DeliveryMethods_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DeliveryMethods_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "DeliveryMethods_Id_seq" OWNER TO postgres;

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 279
-- Name: DeliveryMethods_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DeliveryMethods_Id_seq" OWNED BY "DeliveryMethods"."Id";


--
-- TOC entry 215 (class 1259 OID 31256)
-- Name: Dictionaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Dictionaries" (
    "Id" integer NOT NULL
);


ALTER TABLE "Dictionaries" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 31254)
-- Name: Dictionaries_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Dictionaries_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Dictionaries_Id_seq" OWNER TO postgres;

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 214
-- Name: Dictionaries_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Dictionaries_Id_seq" OWNED BY "Dictionaries"."Id";


--
-- TOC entry 220 (class 1259 OID 31294)
-- Name: EndpointPermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "EndpointPermissions" (
    "EndpointId" integer NOT NULL,
    "PermissionId" integer NOT NULL
);


ALTER TABLE "EndpointPermissions" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 31285)
-- Name: Endpoints; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Endpoints" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "UrlTemplate" text,
    "Position" integer,
    "DisallowAnonymous" boolean NOT NULL,
    "SignInUrl" text,
    "CSharpClassName" text NOT NULL,
    "Parameters" text
);


ALTER TABLE "Endpoints" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 31283)
-- Name: Endpoints_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Endpoints_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Endpoints_Id_seq" OWNER TO postgres;

--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 218
-- Name: Endpoints_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Endpoints_Id_seq" OWNED BY "Endpoints"."Id";


--
-- TOC entry 267 (class 1259 OID 31756)
-- Name: Features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Features" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE "Features" OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 31754)
-- Name: Features_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Features_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Features_Id_seq" OWNER TO postgres;

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 266
-- Name: Features_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Features_Id_seq" OWNED BY "Features"."Id";


--
-- TOC entry 254 (class 1259 OID 31636)
-- Name: FieldOptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "FieldOptions" (
    "Id" integer NOT NULL,
    "FieldId" integer NOT NULL,
    "ValueId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE "FieldOptions" OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 31634)
-- Name: FieldOptions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "FieldOptions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "FieldOptions_Id_seq" OWNER TO postgres;

--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 253
-- Name: FieldOptions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "FieldOptions_Id_seq" OWNED BY "FieldOptions"."Id";


--
-- TOC entry 250 (class 1259 OID 31599)
-- Name: FieldTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "FieldTypes" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE "FieldTypes" OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 31597)
-- Name: FieldTypes_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "FieldTypes_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "FieldTypes_Id_seq" OWNER TO postgres;

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 249
-- Name: FieldTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "FieldTypes_Id_seq" OWNED BY "FieldTypes"."Id";


--
-- TOC entry 252 (class 1259 OID 31610)
-- Name: Fields; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Fields" (
    "Id" integer NOT NULL,
    "FormId" integer NOT NULL,
    "FieldTypeId" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "IsRequired" boolean NOT NULL,
    "MaxLength" integer,
    "Position" integer
);


ALTER TABLE "Fields" OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 31608)
-- Name: Fields_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Fields_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Fields_Id_seq" OWNER TO postgres;

--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 251
-- Name: Fields_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Fields_Id_seq" OWNED BY "Fields"."Id";


--
-- TOC entry 261 (class 1259 OID 31706)
-- Name: Files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Files" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Size" bigint NOT NULL
);


ALTER TABLE "Files" OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 31704)
-- Name: Files_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Files_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Files_Id_seq" OWNER TO postgres;

--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 260
-- Name: Files_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Files_Id_seq" OWNED BY "Files"."Id";


--
-- TOC entry 248 (class 1259 OID 31578)
-- Name: Forms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Forms" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "SubmitButtonTitleId" integer NOT NULL,
    "ProduceCompletedForms" boolean NOT NULL,
    "CSharpClassName" text NOT NULL,
    "Parameters" text
);


ALTER TABLE "Forms" OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 31576)
-- Name: Forms_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Forms_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Forms_Id_seq" OWNER TO postgres;

--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 247
-- Name: Forms_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Forms_Id_seq" OWNED BY "Forms"."Id";


--
-- TOC entry 217 (class 1259 OID 31264)
-- Name: Localizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Localizations" (
    "Id" integer NOT NULL,
    "DictionaryId" integer NOT NULL,
    "CultureId" integer NOT NULL,
    "Value" text
);


ALTER TABLE "Localizations" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 31262)
-- Name: Localizations_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Localizations_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Localizations_Id_seq" OWNER TO postgres;

--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 216
-- Name: Localizations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Localizations_Id_seq" OWNED BY "Localizations"."Id";


--
-- TOC entry 232 (class 1259 OID 31386)
-- Name: Members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Members" (
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


ALTER TABLE "Members" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 31384)
-- Name: Members_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Members_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Members_Id_seq" OWNER TO postgres;

--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 231
-- Name: Members_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Members_Id_seq" OWNED BY "Members"."Id";


--
-- TOC entry 245 (class 1259 OID 31534)
-- Name: MenuItems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "MenuItems" (
    "Id" integer NOT NULL,
    "MenuId" integer,
    "MenuItemId" integer,
    "NameId" integer NOT NULL,
    "Url" text NOT NULL,
    "Position" integer
);


ALTER TABLE "MenuItems" OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 31532)
-- Name: MenuItems_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "MenuItems_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "MenuItems_Id_seq" OWNER TO postgres;

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 244
-- Name: MenuItems_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "MenuItems_Id_seq" OWNED BY "MenuItems"."Id";


--
-- TOC entry 243 (class 1259 OID 31523)
-- Name: Menus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Menus" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL
);


ALTER TABLE "Menus" OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 31521)
-- Name: Menus_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Menus_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Menus_Id_seq" OWNER TO postgres;

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 242
-- Name: Menus_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Menus_Id_seq" OWNED BY "Menus"."Id";


--
-- TOC entry 236 (class 1259 OID 31438)
-- Name: Objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Objects" (
    "Id" integer NOT NULL,
    "ClassId" integer NOT NULL
);


ALTER TABLE "Objects" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 31436)
-- Name: Objects_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Objects_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Objects_Id_seq" OWNER TO postgres;

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 235
-- Name: Objects_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Objects_Id_seq" OWNED BY "Objects"."Id";


--
-- TOC entry 276 (class 1259 OID 31862)
-- Name: OrderStates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "OrderStates" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE "OrderStates" OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 31860)
-- Name: OrderStates_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "OrderStates_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "OrderStates_Id_seq" OWNER TO postgres;

--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 275
-- Name: OrderStates_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "OrderStates_Id_seq" OWNED BY "OrderStates"."Id";


--
-- TOC entry 282 (class 1259 OID 31910)
-- Name: Orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Orders" (
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


ALTER TABLE "Orders" OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 31908)
-- Name: Orders_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Orders_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Orders_Id_seq" OWNER TO postgres;

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 281
-- Name: Orders_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Orders_Id_seq" OWNED BY "Orders"."Id";


--
-- TOC entry 278 (class 1259 OID 31878)
-- Name: PaymentMethods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "PaymentMethods" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "Position" integer
);


ALTER TABLE "PaymentMethods" OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 31876)
-- Name: PaymentMethods_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "PaymentMethods_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PaymentMethods_Id_seq" OWNER TO postgres;

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 277
-- Name: PaymentMethods_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "PaymentMethods_Id_seq" OWNED BY "PaymentMethods"."Id";


--
-- TOC entry 206 (class 1259 OID 31192)
-- Name: Permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Permissions" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE "Permissions" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 31190)
-- Name: Permissions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Permissions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Permissions_Id_seq" OWNER TO postgres;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 205
-- Name: Permissions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Permissions_Id_seq" OWNED BY "Permissions"."Id";


--
-- TOC entry 274 (class 1259 OID 31846)
-- Name: Photos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Photos" (
    "Id" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "Filename" text NOT NULL,
    "IsCover" boolean NOT NULL,
    "Position" integer
);


ALTER TABLE "Photos" OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 31844)
-- Name: Photos_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Photos_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Photos_Id_seq" OWNER TO postgres;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 273
-- Name: Photos_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Photos_Id_seq" OWNED BY "Photos"."Id";


--
-- TOC entry 286 (class 1259 OID 31952)
-- Name: Positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Positions" (
    "Id" integer NOT NULL,
    "CartId" integer NOT NULL,
    "ProductId" integer NOT NULL
);


ALTER TABLE "Positions" OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 31950)
-- Name: Positions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Positions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Positions_Id_seq" OWNER TO postgres;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 285
-- Name: Positions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Positions_Id_seq" OWNED BY "Positions"."Id";


--
-- TOC entry 272 (class 1259 OID 31829)
-- Name: ProductAttributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "ProductAttributes" (
    "ProductId" integer NOT NULL,
    "AttributeId" integer NOT NULL
);


ALTER TABLE "ProductAttributes" OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 31790)
-- Name: Products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Products" (
    "Id" integer NOT NULL,
    "CategoryId" integer NOT NULL,
    "Url" text NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL,
    "DescriptionId" integer NOT NULL,
    "Price" numeric NOT NULL,
    "TitleId" integer NOT NULL,
    "MetaDescriptionId" integer NOT NULL,
    "MetaKeywordsId" integer NOT NULL
);


ALTER TABLE "Products" OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 31788)
-- Name: Products_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Products_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Products_Id_seq" OWNER TO postgres;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 270
-- Name: Products_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Products_Id_seq" OWNED BY "Products"."Id";


--
-- TOC entry 238 (class 1259 OID 31451)
-- Name: Properties; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Properties" (
    "Id" integer NOT NULL,
    "ObjectId" integer NOT NULL,
    "MemberId" integer NOT NULL,
    "IntegerValue" integer,
    "DecimalValue" numeric,
    "StringValueId" integer,
    "DateTimeValue" timestamp without time zone
);


ALTER TABLE "Properties" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 31449)
-- Name: Properties_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Properties_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Properties_Id_seq" OWNER TO postgres;

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 237
-- Name: Properties_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Properties_Id_seq" OWNED BY "Properties"."Id";


--
-- TOC entry 240 (class 1259 OID 31477)
-- Name: Relations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Relations" (
    "Id" integer NOT NULL,
    "MemberId" integer NOT NULL,
    "PrimaryId" integer NOT NULL,
    "ForeignId" integer NOT NULL
);


ALTER TABLE "Relations" OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 31475)
-- Name: Relations_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Relations_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Relations_Id_seq" OWNER TO postgres;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 239
-- Name: Relations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Relations_Id_seq" OWNED BY "Relations"."Id";


--
-- TOC entry 207 (class 1259 OID 31201)
-- Name: RolePermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "RolePermissions" (
    "RoleId" integer NOT NULL,
    "PermissionId" integer NOT NULL
);


ALTER TABLE "RolePermissions" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 31166)
-- Name: Roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Roles" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE "Roles" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 31164)
-- Name: Roles_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Roles_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Roles_Id_seq" OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 202
-- Name: Roles_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Roles_Id_seq" OWNED BY "Roles"."Id";


--
-- TOC entry 259 (class 1259 OID 31686)
-- Name: SerializedForms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "SerializedForms" (
    "CultureId" integer NOT NULL,
    "FormId" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "SubmitButtonTitle" text NOT NULL,
    "SerializedFields" text
);


ALTER TABLE "SerializedForms" OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 31558)
-- Name: SerializedMenus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "SerializedMenus" (
    "CultureId" integer NOT NULL,
    "MenuId" integer NOT NULL,
    "Code" text NOT NULL,
    "SerializedMenuItems" text
);


ALTER TABLE "SerializedMenus" OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 31498)
-- Name: SerializedObjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "SerializedObjects" (
    "CultureId" integer NOT NULL,
    "ObjectId" integer NOT NULL,
    "ClassId" integer NOT NULL,
    "UrlPropertyStringValue" text,
    "SerializedProperties" text
);


ALTER TABLE "SerializedObjects" OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 31968)
-- Name: SerializedProducts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "SerializedProducts" (
    "CultureId" integer NOT NULL,
    "ProductId" integer NOT NULL,
    "CategoryId" integer NOT NULL,
    "Url" text NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Description" text,
    "Price" numeric NOT NULL,
    "Title" text,
    "MetaDescription" text,
    "MetaKeywords" text,
    "SerializedAttributes" text,
    "SerializedPhotos" text
);


ALTER TABLE "SerializedProducts" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 31343)
-- Name: Tabs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Tabs" (
    "Id" integer NOT NULL,
    "ClassId" integer NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE "Tabs" OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 31341)
-- Name: Tabs_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Tabs_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Tabs_Id_seq" OWNER TO postgres;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 225
-- Name: Tabs_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Tabs_Id_seq" OWNED BY "Tabs"."Id";


--
-- TOC entry 204 (class 1259 OID 31175)
-- Name: UserRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "UserRoles" (
    "UserId" integer NOT NULL,
    "RoleId" integer NOT NULL
);


ALTER TABLE "UserRoles" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 31123)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Users" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE "Users" OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 31121)
-- Name: Users_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Users_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Users_Id_seq" OWNER TO postgres;

--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 196
-- Name: Users_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Users_Id_seq" OWNED BY "Users"."Id";


--
-- TOC entry 211 (class 1259 OID 31229)
-- Name: Variables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Variables" (
    "Id" integer NOT NULL,
    "ConfigurationId" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text NOT NULL,
    "Position" integer
);


ALTER TABLE "Variables" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 31227)
-- Name: Variables_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Variables_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Variables_Id_seq" OWNER TO postgres;

--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 210
-- Name: Variables_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Variables_Id_seq" OWNED BY "Variables"."Id";


--
-- TOC entry 3019 (class 2604 OID 31775)
-- Name: Attributes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Attributes" ALTER COLUMN "Id" SET DEFAULT nextval('"Attributes_Id_seq"'::regclass);


--
-- TOC entry 3026 (class 2604 OID 31939)
-- Name: Carts Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Carts" ALTER COLUMN "Id" SET DEFAULT nextval('"Carts_Id_seq"'::regclass);


--
-- TOC entry 3016 (class 2604 OID 31720)
-- Name: Catalogs Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Catalogs" ALTER COLUMN "Id" SET DEFAULT nextval('"Catalogs_Id_seq"'::regclass);


--
-- TOC entry 3017 (class 2604 OID 31741)
-- Name: Categories Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Categories" ALTER COLUMN "Id" SET DEFAULT nextval('"Categories_Id_seq"'::regclass);


--
-- TOC entry 2998 (class 2604 OID 31330)
-- Name: Classes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Classes" ALTER COLUMN "Id" SET DEFAULT nextval('"Classes_Id_seq"'::regclass);


--
-- TOC entry 3014 (class 2604 OID 31670)
-- Name: CompletedFields Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CompletedFields" ALTER COLUMN "Id" SET DEFAULT nextval('"CompletedFields_Id_seq"'::regclass);


--
-- TOC entry 3013 (class 2604 OID 31657)
-- Name: CompletedForms Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CompletedForms" ALTER COLUMN "Id" SET DEFAULT nextval('"CompletedForms_Id_seq"'::regclass);


--
-- TOC entry 2991 (class 2604 OID 31221)
-- Name: Configurations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Configurations" ALTER COLUMN "Id" SET DEFAULT nextval('"Configurations_Id_seq"'::regclass);


--
-- TOC entry 2987 (class 2604 OID 31137)
-- Name: CredentialTypes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CredentialTypes" ALTER COLUMN "Id" SET DEFAULT nextval('"CredentialTypes_Id_seq"'::regclass);


--
-- TOC entry 2988 (class 2604 OID 31148)
-- Name: Credentials Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Credentials" ALTER COLUMN "Id" SET DEFAULT nextval('"Credentials_Id_seq"'::regclass);


--
-- TOC entry 2993 (class 2604 OID 31248)
-- Name: Cultures Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Cultures" ALTER COLUMN "Id" SET DEFAULT nextval('"Cultures_Id_seq"'::regclass);


--
-- TOC entry 2997 (class 2604 OID 31314)
-- Name: DataSources Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataSources" ALTER COLUMN "Id" SET DEFAULT nextval('"DataSources_Id_seq"'::regclass);


--
-- TOC entry 3003 (class 2604 OID 31420)
-- Name: DataTypeParameterValues Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataTypeParameterValues" ALTER COLUMN "Id" SET DEFAULT nextval('"DataTypeParameterValues_Id_seq"'::regclass);


--
-- TOC entry 3001 (class 2604 OID 31373)
-- Name: DataTypeParameters Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataTypeParameters" ALTER COLUMN "Id" SET DEFAULT nextval('"DataTypeParameters_Id_seq"'::regclass);


--
-- TOC entry 3000 (class 2604 OID 31362)
-- Name: DataTypes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataTypes" ALTER COLUMN "Id" SET DEFAULT nextval('"DataTypes_Id_seq"'::regclass);


--
-- TOC entry 3024 (class 2604 OID 31897)
-- Name: DeliveryMethods Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DeliveryMethods" ALTER COLUMN "Id" SET DEFAULT nextval('"DeliveryMethods_Id_seq"'::regclass);


--
-- TOC entry 2994 (class 2604 OID 31259)
-- Name: Dictionaries Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Dictionaries" ALTER COLUMN "Id" SET DEFAULT nextval('"Dictionaries_Id_seq"'::regclass);


--
-- TOC entry 2996 (class 2604 OID 31288)
-- Name: Endpoints Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Endpoints" ALTER COLUMN "Id" SET DEFAULT nextval('"Endpoints_Id_seq"'::regclass);


--
-- TOC entry 3018 (class 2604 OID 31759)
-- Name: Features Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Features" ALTER COLUMN "Id" SET DEFAULT nextval('"Features_Id_seq"'::regclass);


--
-- TOC entry 3012 (class 2604 OID 31639)
-- Name: FieldOptions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "FieldOptions" ALTER COLUMN "Id" SET DEFAULT nextval('"FieldOptions_Id_seq"'::regclass);


--
-- TOC entry 3010 (class 2604 OID 31602)
-- Name: FieldTypes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "FieldTypes" ALTER COLUMN "Id" SET DEFAULT nextval('"FieldTypes_Id_seq"'::regclass);


--
-- TOC entry 3011 (class 2604 OID 31613)
-- Name: Fields Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Fields" ALTER COLUMN "Id" SET DEFAULT nextval('"Fields_Id_seq"'::regclass);


--
-- TOC entry 3015 (class 2604 OID 31709)
-- Name: Files Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Files" ALTER COLUMN "Id" SET DEFAULT nextval('"Files_Id_seq"'::regclass);


--
-- TOC entry 3009 (class 2604 OID 31581)
-- Name: Forms Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Forms" ALTER COLUMN "Id" SET DEFAULT nextval('"Forms_Id_seq"'::regclass);


--
-- TOC entry 2995 (class 2604 OID 31267)
-- Name: Localizations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Localizations" ALTER COLUMN "Id" SET DEFAULT nextval('"Localizations_Id_seq"'::regclass);


--
-- TOC entry 3002 (class 2604 OID 31389)
-- Name: Members Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Members" ALTER COLUMN "Id" SET DEFAULT nextval('"Members_Id_seq"'::regclass);


--
-- TOC entry 3008 (class 2604 OID 31537)
-- Name: MenuItems Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "MenuItems" ALTER COLUMN "Id" SET DEFAULT nextval('"MenuItems_Id_seq"'::regclass);


--
-- TOC entry 3007 (class 2604 OID 31526)
-- Name: Menus Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Menus" ALTER COLUMN "Id" SET DEFAULT nextval('"Menus_Id_seq"'::regclass);


--
-- TOC entry 3004 (class 2604 OID 31441)
-- Name: Objects Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Objects" ALTER COLUMN "Id" SET DEFAULT nextval('"Objects_Id_seq"'::regclass);


--
-- TOC entry 3022 (class 2604 OID 31865)
-- Name: OrderStates Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OrderStates" ALTER COLUMN "Id" SET DEFAULT nextval('"OrderStates_Id_seq"'::regclass);


--
-- TOC entry 3025 (class 2604 OID 31913)
-- Name: Orders Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Orders" ALTER COLUMN "Id" SET DEFAULT nextval('"Orders_Id_seq"'::regclass);


--
-- TOC entry 3023 (class 2604 OID 31881)
-- Name: PaymentMethods Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PaymentMethods" ALTER COLUMN "Id" SET DEFAULT nextval('"PaymentMethods_Id_seq"'::regclass);


--
-- TOC entry 2990 (class 2604 OID 31195)
-- Name: Permissions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Permissions" ALTER COLUMN "Id" SET DEFAULT nextval('"Permissions_Id_seq"'::regclass);


--
-- TOC entry 3021 (class 2604 OID 31849)
-- Name: Photos Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Photos" ALTER COLUMN "Id" SET DEFAULT nextval('"Photos_Id_seq"'::regclass);


--
-- TOC entry 3027 (class 2604 OID 31955)
-- Name: Positions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Positions" ALTER COLUMN "Id" SET DEFAULT nextval('"Positions_Id_seq"'::regclass);


--
-- TOC entry 3020 (class 2604 OID 31793)
-- Name: Products Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Products" ALTER COLUMN "Id" SET DEFAULT nextval('"Products_Id_seq"'::regclass);


--
-- TOC entry 3005 (class 2604 OID 31454)
-- Name: Properties Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Properties" ALTER COLUMN "Id" SET DEFAULT nextval('"Properties_Id_seq"'::regclass);


--
-- TOC entry 3006 (class 2604 OID 31480)
-- Name: Relations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Relations" ALTER COLUMN "Id" SET DEFAULT nextval('"Relations_Id_seq"'::regclass);


--
-- TOC entry 2989 (class 2604 OID 31169)
-- Name: Roles Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Roles" ALTER COLUMN "Id" SET DEFAULT nextval('"Roles_Id_seq"'::regclass);


--
-- TOC entry 2999 (class 2604 OID 31346)
-- Name: Tabs Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tabs" ALTER COLUMN "Id" SET DEFAULT nextval('"Tabs_Id_seq"'::regclass);


--
-- TOC entry 2986 (class 2604 OID 31126)
-- Name: Users Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Users" ALTER COLUMN "Id" SET DEFAULT nextval('"Users_Id_seq"'::regclass);


--
-- TOC entry 2992 (class 2604 OID 31232)
-- Name: Variables Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Variables" ALTER COLUMN "Id" SET DEFAULT nextval('"Variables_Id_seq"'::regclass);


--
-- TOC entry 3398 (class 0 OID 31772)
-- Dependencies: 269
-- Data for Name: Attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3413 (class 0 OID 31936)
-- Dependencies: 284
-- Data for Name: Carts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3392 (class 0 OID 31717)
-- Dependencies: 263
-- Data for Name: Catalogs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3394 (class 0 OID 31738)
-- Dependencies: 265
-- Data for Name: Categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3353 (class 0 OID 31327)
-- Dependencies: 224
-- Data for Name: Classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Classes" VALUES (1, NULL, 'Page', 'Page', 'Pages', true);
INSERT INTO "Classes" VALUES (2, 1, 'RegularPage', 'Regular Page', 'Regular Pages', false);
INSERT INTO "Classes" VALUES (3, NULL, 'Tag', 'Tag', 'Tags', false);
INSERT INTO "Classes" VALUES (4, NULL, 'Comment', 'Comment', 'Comments', false);
INSERT INTO "Classes" VALUES (5, 1, 'PostPage', 'Post Page', 'Post Pages', false);


--
-- TOC entry 3387 (class 0 OID 31667)
-- Dependencies: 258
-- Data for Name: CompletedFields; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3385 (class 0 OID 31654)
-- Dependencies: 256
-- Data for Name: CompletedForms; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3338 (class 0 OID 31218)
-- Dependencies: 209
-- Data for Name: Configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Configurations" VALUES (1, 'Email', 'Email');
INSERT INTO "Configurations" VALUES (2, 'Globalization', 'Globalization');


--
-- TOC entry 3328 (class 0 OID 31134)
-- Dependencies: 199
-- Data for Name: CredentialTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "CredentialTypes" VALUES (1, 'Email', 'Email', 1);


--
-- TOC entry 3330 (class 0 OID 31145)
-- Dependencies: 201
-- Data for Name: Credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Credentials" VALUES (1, 1, 1, 'admin@platformus.net', '8lE3xN2Ijiv/Y/aIGwaZLrbcqrt/1jDmzPTdudKbVD0=', '0O/ZGwhScZRGbsmiUEckOg==');


--
-- TOC entry 3342 (class 0 OID 31245)
-- Dependencies: 213
-- Data for Name: Cultures; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Cultures" VALUES (1, '__', 'Neutral', true, false, false);
INSERT INTO "Cultures" VALUES (2, 'en', 'English', false, true, true);
INSERT INTO "Cultures" VALUES (3, 'ru', 'Русский', false, false, false);
INSERT INTO "Cultures" VALUES (4, 'uk', 'Українська', false, false, false);


--
-- TOC entry 3351 (class 0 OID 31311)
-- Dependencies: 222
-- Data for Name: DataSources; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "DataSources" VALUES (1, 1, 'Page', 'Platformus.Domain.Frontend.DataSources.PageObjectDataSource', NULL);
INSERT INTO "DataSources" VALUES (2, 2, 'Page', 'Platformus.Domain.Frontend.DataSources.PageObjectDataSource', NULL);
INSERT INTO "DataSources" VALUES (3, 2, 'Posts', 'Platformus.Domain.Frontend.DataSources.ObjectsDataSource', 'ClassId=5;NestedXPaths=/Tags;EnableFiltering=false;QueryUrlParameterName=q;SortingMemberId=14;SortingDirection=DESC;EnablePaging=false;SkipUrlParameterName=skip;TakeUrlParameterName=take;DefaultTake=10');
INSERT INTO "DataSources" VALUES (4, 3, 'Page', 'Platformus.Domain.Frontend.DataSources.PageObjectDataSource', NULL);
INSERT INTO "DataSources" VALUES (5, 3, 'Tags', 'Platformus.Domain.Frontend.DataSources.RelatedObjectsDataSource', 'RelationMemberId=11;RelationType=Primary;EnableFiltering=false;QueryUrlParameterName=q;SortingDirection=ASC;EnablePaging=false;SkipUrlParameterName=skip;TakeUrlParameterName=take;DefaultTake=10');
INSERT INTO "DataSources" VALUES (6, 3, 'Comments', 'Platformus.Domain.Frontend.DataSources.RelatedObjectsDataSource', 'RelationMemberId=15;RelationType=Primary;EnableFiltering=false;QueryUrlParameterName=q;SortingMemberId=9;SortingDirection=ASC;EnablePaging=false;SkipUrlParameterName=skip;TakeUrlParameterName=take;DefaultTake=10');
INSERT INTO "DataSources" VALUES (7, 4, 'Page', 'Platformus.Domain.Frontend.DataSources.PageObjectDataSource', NULL);


--
-- TOC entry 3363 (class 0 OID 31417)
-- Dependencies: 234
-- Data for Name: DataTypeParameterValues; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "DataTypeParameterValues" VALUES (1, 1, 1, 'true');
INSERT INTO "DataTypeParameterValues" VALUES (2, 2, 1, '128');
INSERT INTO "DataTypeParameterValues" VALUES (3, 1, 3, 'false');
INSERT INTO "DataTypeParameterValues" VALUES (4, 2, 3, '128');
INSERT INTO "DataTypeParameterValues" VALUES (5, 1, 4, 'false');
INSERT INTO "DataTypeParameterValues" VALUES (6, 2, 4, '512');
INSERT INTO "DataTypeParameterValues" VALUES (7, 1, 5, 'false');
INSERT INTO "DataTypeParameterValues" VALUES (8, 2, 5, '256');
INSERT INTO "DataTypeParameterValues" VALUES (9, 1, 6, 'true');
INSERT INTO "DataTypeParameterValues" VALUES (10, 2, 6, '48');
INSERT INTO "DataTypeParameterValues" VALUES (11, 1, 7, 'true');
INSERT INTO "DataTypeParameterValues" VALUES (12, 2, 7, '64');
INSERT INTO "DataTypeParameterValues" VALUES (13, 3, 8, 'true');
INSERT INTO "DataTypeParameterValues" VALUES (14, 7, 9, 'true');
INSERT INTO "DataTypeParameterValues" VALUES (15, 1, 10, 'true');
INSERT INTO "DataTypeParameterValues" VALUES (16, 2, 10, '128');
INSERT INTO "DataTypeParameterValues" VALUES (17, 5, 12, '1024');
INSERT INTO "DataTypeParameterValues" VALUES (18, 6, 12, '256');
INSERT INTO "DataTypeParameterValues" VALUES (19, 7, 14, 'true');


--
-- TOC entry 3359 (class 0 OID 31370)
-- Dependencies: 230
-- Data for Name: DataTypeParameters; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "DataTypeParameters" VALUES (1, 1, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO "DataTypeParameters" VALUES (2, 1, 'numericTextBox', 'MaxLength', 'Max length');
INSERT INTO "DataTypeParameters" VALUES (3, 2, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO "DataTypeParameters" VALUES (4, 2, 'numericTextBox', 'MaxLength', 'Max length');
INSERT INTO "DataTypeParameters" VALUES (5, 7, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO "DataTypeParameters" VALUES (6, 8, 'numericTextBox', 'Width', 'Width');
INSERT INTO "DataTypeParameters" VALUES (7, 8, 'numericTextBox', 'Height', 'Height');
INSERT INTO "DataTypeParameters" VALUES (8, 9, 'textBox', 'Mode', 'Mode');


--
-- TOC entry 3357 (class 0 OID 31359)
-- Dependencies: 228
-- Data for Name: DataTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "DataTypes" VALUES (1, 'string', 'singleLinePlainText', 'Single line plain text', 1);
INSERT INTO "DataTypes" VALUES (2, 'string', 'multilinePlainText', 'Multiline plain text', 2);
INSERT INTO "DataTypes" VALUES (3, 'string', 'html', 'Html', 3);
INSERT INTO "DataTypes" VALUES (4, 'integer', 'integerNumber', 'Integer number', 4);
INSERT INTO "DataTypes" VALUES (5, 'decimal', 'decimalNumber', 'Decimal number', 5);
INSERT INTO "DataTypes" VALUES (6, 'integer', 'booleanFlag', 'Boolean flag', 6);
INSERT INTO "DataTypes" VALUES (7, 'datetime', 'date', 'Date', 7);
INSERT INTO "DataTypes" VALUES (8, 'string', 'image', 'Image', 8);
INSERT INTO "DataTypes" VALUES (9, 'string', 'sourceCode', 'Source code', 9);


--
-- TOC entry 3409 (class 0 OID 31894)
-- Dependencies: 280
-- Data for Name: DeliveryMethods; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3344 (class 0 OID 31256)
-- Dependencies: 215
-- Data for Name: Dictionaries; Type: TABLE DATA; Schema: public; Owner: postgres
--

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


--
-- TOC entry 3349 (class 0 OID 31294)
-- Dependencies: 220
-- Data for Name: EndpointPermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3348 (class 0 OID 31285)
-- Dependencies: 219
-- Data for Name: Endpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Endpoints" VALUES (1, 'Default', '{*url}', 1000, false, NULL, 'Platformus.Domain.Frontend.DefaultEndpoint', 'ViewName=RegularPage;UseCaching=true');
INSERT INTO "Endpoints" VALUES (2, 'Blog', 'blog', 10, false, NULL, 'Platformus.Domain.Frontend.DefaultEndpoint', 'ViewName=BlogPage;UseCaching=true');
INSERT INTO "Endpoints" VALUES (3, 'Post', 'blog/{segment}', 20, false, NULL, 'Platformus.Domain.Frontend.DefaultEndpoint', 'ViewName=PostPage;UseCaching=true');
INSERT INTO "Endpoints" VALUES (4, 'Contacts', 'contacts', 30, false, NULL, 'Platformus.Domain.Frontend.DefaultEndpoint', 'ViewName=ContactsPage;UseCaching=true');


--
-- TOC entry 3396 (class 0 OID 31756)
-- Dependencies: 267
-- Data for Name: Features; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3383 (class 0 OID 31636)
-- Dependencies: 254
-- Data for Name: FieldOptions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3379 (class 0 OID 31599)
-- Dependencies: 250
-- Data for Name: FieldTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "FieldTypes" VALUES (1, 'TextBox', 'Text box', 1);
INSERT INTO "FieldTypes" VALUES (2, 'TextArea', 'Text area', 2);
INSERT INTO "FieldTypes" VALUES (3, 'Checkbox', 'Checkbox', 3);
INSERT INTO "FieldTypes" VALUES (4, 'RadioButtonList', 'Radio button list', 4);
INSERT INTO "FieldTypes" VALUES (5, 'DropDownList', 'Drop down list', 5);
INSERT INTO "FieldTypes" VALUES (6, 'FileUpload', 'File upload', 6);


--
-- TOC entry 3381 (class 0 OID 31610)
-- Dependencies: 252
-- Data for Name: Fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Fields" VALUES (1, 1, 1, 'Name', 8, true, NULL, 10);
INSERT INTO "Fields" VALUES (2, 1, 1, 'Email', 9, true, NULL, 20);
INSERT INTO "Fields" VALUES (3, 1, 2, 'Message', 10, true, NULL, 30);
INSERT INTO "Fields" VALUES (4, 2, 1, 'Name', 13, true, NULL, 10);
INSERT INTO "Fields" VALUES (5, 2, 2, 'Comment', 14, true, NULL, 20);


--
-- TOC entry 3390 (class 0 OID 31706)
-- Dependencies: 261
-- Data for Name: Files; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3377 (class 0 OID 31578)
-- Dependencies: 248
-- Data for Name: Forms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Forms" VALUES (1, 'Feedback', 6, 7, true, 'Platformus.Forms.Frontend.FormHandlers.EmailFormHandler', 'RecipientEmails=test@test.com;RedirectUrl=/contacts');
INSERT INTO "Forms" VALUES (2, 'WriteComment', 11, 12, true, 'WebApplication.FormHandlers.WriteCommentFormHandler', NULL);


--
-- TOC entry 3346 (class 0 OID 31264)
-- Dependencies: 217
-- Data for Name: Localizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Localizations" VALUES (1, 1, 2, 'Main');
INSERT INTO "Localizations" VALUES (2, 1, 3, 'Главное');
INSERT INTO "Localizations" VALUES (3, 1, 4, 'Головне');
INSERT INTO "Localizations" VALUES (4, 2, 2, 'Home');
INSERT INTO "Localizations" VALUES (5, 2, 3, 'Главная');
INSERT INTO "Localizations" VALUES (6, 2, 4, 'Головна');
INSERT INTO "Localizations" VALUES (7, 3, 2, 'About me');
INSERT INTO "Localizations" VALUES (8, 3, 3, 'Обо мне');
INSERT INTO "Localizations" VALUES (9, 3, 4, 'Про мене');
INSERT INTO "Localizations" VALUES (10, 4, 2, 'Blog');
INSERT INTO "Localizations" VALUES (11, 4, 3, 'Блог');
INSERT INTO "Localizations" VALUES (12, 4, 4, 'Блог');
INSERT INTO "Localizations" VALUES (13, 5, 2, 'Contacts');
INSERT INTO "Localizations" VALUES (14, 5, 3, 'Контакты');
INSERT INTO "Localizations" VALUES (15, 5, 4, 'Контакти');
INSERT INTO "Localizations" VALUES (16, 6, 2, 'Feedback');
INSERT INTO "Localizations" VALUES (17, 6, 3, 'Обратная связь');
INSERT INTO "Localizations" VALUES (18, 6, 4, 'Зворотний зв’язок');
INSERT INTO "Localizations" VALUES (19, 7, 2, 'Submit');
INSERT INTO "Localizations" VALUES (20, 7, 3, 'Отправить');
INSERT INTO "Localizations" VALUES (21, 7, 4, 'Надіслати');
INSERT INTO "Localizations" VALUES (22, 8, 2, 'Your name');
INSERT INTO "Localizations" VALUES (23, 8, 3, 'Ваше имя');
INSERT INTO "Localizations" VALUES (24, 8, 4, 'Ваше ім’я');
INSERT INTO "Localizations" VALUES (25, 9, 2, 'Your email');
INSERT INTO "Localizations" VALUES (26, 9, 3, 'Ваша электронная почта');
INSERT INTO "Localizations" VALUES (27, 9, 4, 'Ваша електронна пошта');
INSERT INTO "Localizations" VALUES (28, 10, 2, 'Your message');
INSERT INTO "Localizations" VALUES (29, 10, 3, 'Ваше сообщение');
INSERT INTO "Localizations" VALUES (30, 10, 4, 'Ваше повідомлення');
INSERT INTO "Localizations" VALUES (31, 11, 2, 'Write comment');
INSERT INTO "Localizations" VALUES (32, 11, 3, 'Напишите комментарий');
INSERT INTO "Localizations" VALUES (33, 11, 4, 'Напишіть коментар');
INSERT INTO "Localizations" VALUES (34, 12, 2, 'Submit');
INSERT INTO "Localizations" VALUES (35, 12, 3, 'Отправить');
INSERT INTO "Localizations" VALUES (36, 12, 4, 'Надіслати');
INSERT INTO "Localizations" VALUES (37, 13, 2, 'Your name');
INSERT INTO "Localizations" VALUES (38, 13, 3, 'Ваше имя');
INSERT INTO "Localizations" VALUES (39, 13, 4, 'Ваше ім’я');
INSERT INTO "Localizations" VALUES (40, 14, 2, 'Your comment');
INSERT INTO "Localizations" VALUES (41, 14, 3, 'Ваш ');
INSERT INTO "Localizations" VALUES (42, 14, 4, 'Ваше повідомлення');
INSERT INTO "Localizations" VALUES (43, 15, 1, '/');
INSERT INTO "Localizations" VALUES (44, 16, 2, '<h1>Your Personal Blog</h1><p>Hello! This is your personal blog, it is based on the <a href="http://platformus.net/" target="_blank" rel="noopener">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href="/backend">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href="http://docs.platformus.net/" target="_blank" rel="noopener">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">chat</a>.</p><p>Have a nice work!</p>');
INSERT INTO "Localizations" VALUES (45, 16, 3, '<h1>Ваш персональный блог</h1><p>Здравствуйте! Это ваш персональный блог, он работает на базе системы управления содержимым &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href="/backend">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>');
INSERT INTO "Localizations" VALUES (46, 16, 4, '<h1>Ваш персональний блог</h1><p>Вітаємо! Це ваш персональний блог, він працює на базі системи керування вмістом &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href="/backend">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>');
INSERT INTO "Localizations" VALUES (47, 17, 2, 'Your Personal Blog');
INSERT INTO "Localizations" VALUES (48, 17, 3, 'Ваш персональный блог');
INSERT INTO "Localizations" VALUES (49, 17, 4, 'Ваш персональний блог');
INSERT INTO "Localizations" VALUES (50, 18, 2, '');
INSERT INTO "Localizations" VALUES (51, 18, 3, '');
INSERT INTO "Localizations" VALUES (52, 18, 4, '');
INSERT INTO "Localizations" VALUES (53, 19, 2, '');
INSERT INTO "Localizations" VALUES (54, 19, 3, '');
INSERT INTO "Localizations" VALUES (55, 19, 4, '');
INSERT INTO "Localizations" VALUES (56, 20, 1, '/about-me');
INSERT INTO "Localizations" VALUES (57, 21, 2, '<h1>About Me</h1><p>Tell us about yourself in a few words. You can add photos or videos here.</p>');
INSERT INTO "Localizations" VALUES (58, 21, 3, '<h1>Обо мне</h1><p>Расскажите о себе в нескольких словах. Вы можете добавить сюда фотографии или видео.</p>');
INSERT INTO "Localizations" VALUES (59, 21, 4, '<h1>Про мене</h1><p>Розкажіть про себе в кількох словах. Ви можете додати сюди фотографії або відео.</p>');
INSERT INTO "Localizations" VALUES (60, 22, 2, 'About Me');
INSERT INTO "Localizations" VALUES (61, 22, 3, 'Обо мне');
INSERT INTO "Localizations" VALUES (62, 22, 4, 'Про мене');
INSERT INTO "Localizations" VALUES (63, 23, 2, '');
INSERT INTO "Localizations" VALUES (64, 23, 3, '');
INSERT INTO "Localizations" VALUES (65, 23, 4, '');
INSERT INTO "Localizations" VALUES (66, 24, 2, '');
INSERT INTO "Localizations" VALUES (67, 24, 3, '');
INSERT INTO "Localizations" VALUES (68, 24, 4, '');
INSERT INTO "Localizations" VALUES (69, 25, 1, '/blog');
INSERT INTO "Localizations" VALUES (70, 26, 2, '<h1>Blog</h1>');
INSERT INTO "Localizations" VALUES (71, 26, 3, '<h1>Блог</h1>');
INSERT INTO "Localizations" VALUES (72, 26, 4, '<h1>Блог</h1>');
INSERT INTO "Localizations" VALUES (73, 27, 2, 'Blog');
INSERT INTO "Localizations" VALUES (74, 27, 3, 'Блог');
INSERT INTO "Localizations" VALUES (75, 27, 4, 'Блог');
INSERT INTO "Localizations" VALUES (76, 28, 2, '');
INSERT INTO "Localizations" VALUES (77, 28, 3, '');
INSERT INTO "Localizations" VALUES (78, 28, 4, '');
INSERT INTO "Localizations" VALUES (79, 29, 2, '');
INSERT INTO "Localizations" VALUES (80, 29, 3, '');
INSERT INTO "Localizations" VALUES (81, 29, 4, '');
INSERT INTO "Localizations" VALUES (82, 30, 1, '/contacts');
INSERT INTO "Localizations" VALUES (83, 31, 2, '<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>');
INSERT INTO "Localizations" VALUES (84, 31, 3, '<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>');
INSERT INTO "Localizations" VALUES (85, 31, 4, '<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>');
INSERT INTO "Localizations" VALUES (86, 32, 2, 'Contacts');
INSERT INTO "Localizations" VALUES (87, 32, 3, 'Контакты');
INSERT INTO "Localizations" VALUES (88, 32, 4, 'Контакти');
INSERT INTO "Localizations" VALUES (89, 33, 2, '');
INSERT INTO "Localizations" VALUES (90, 33, 3, '');
INSERT INTO "Localizations" VALUES (91, 33, 4, '');
INSERT INTO "Localizations" VALUES (92, 34, 2, '');
INSERT INTO "Localizations" VALUES (93, 34, 3, '');
INSERT INTO "Localizations" VALUES (94, 34, 4, '');
INSERT INTO "Localizations" VALUES (95, 35, 1, 'Tag1');
INSERT INTO "Localizations" VALUES (96, 36, 1, 'Tag2');
INSERT INTO "Localizations" VALUES (97, 37, 1, 'Tag3');
INSERT INTO "Localizations" VALUES (98, 38, 1, 'Tag4');
INSERT INTO "Localizations" VALUES (99, 39, 1, 'Tag5');
INSERT INTO "Localizations" VALUES (100, 40, 2, 'Post 1');
INSERT INTO "Localizations" VALUES (101, 40, 3, 'Пост 1');
INSERT INTO "Localizations" VALUES (102, 40, 4, 'Пост 1');
INSERT INTO "Localizations" VALUES (103, 41, 1, '/images/objects/10/cover.jpg');
INSERT INTO "Localizations" VALUES (104, 42, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (105, 42, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (106, 42, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (107, 43, 1, '/blog/post-1');
INSERT INTO "Localizations" VALUES (108, 44, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (109, 44, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (138, 55, 3, '');
INSERT INTO "Localizations" VALUES (139, 55, 4, '');
INSERT INTO "Localizations" VALUES (140, 56, 2, 'Post 3');
INSERT INTO "Localizations" VALUES (141, 56, 3, 'Пост 3');
INSERT INTO "Localizations" VALUES (142, 56, 4, 'Пост 3');
INSERT INTO "Localizations" VALUES (143, 57, 1, '/images/objects/12/cover.jpg');
INSERT INTO "Localizations" VALUES (110, 44, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (111, 45, 2, 'Post 1');
INSERT INTO "Localizations" VALUES (112, 45, 3, 'Пост 1');
INSERT INTO "Localizations" VALUES (113, 45, 4, 'Пост 1');
INSERT INTO "Localizations" VALUES (114, 46, 2, '');
INSERT INTO "Localizations" VALUES (115, 46, 3, '');
INSERT INTO "Localizations" VALUES (116, 46, 4, '');
INSERT INTO "Localizations" VALUES (117, 47, 2, '');
INSERT INTO "Localizations" VALUES (118, 47, 3, '');
INSERT INTO "Localizations" VALUES (119, 47, 4, '');
INSERT INTO "Localizations" VALUES (120, 48, 2, 'Post 2');
INSERT INTO "Localizations" VALUES (121, 48, 3, 'Пост 2');
INSERT INTO "Localizations" VALUES (122, 48, 4, 'Пост 2');
INSERT INTO "Localizations" VALUES (123, 49, 1, '/images/objects/11/cover.jpg');
INSERT INTO "Localizations" VALUES (124, 50, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (125, 50, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (126, 50, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (127, 51, 1, '/blog/post-2');
INSERT INTO "Localizations" VALUES (128, 52, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (129, 52, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (130, 52, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (131, 53, 2, 'Post 2');
INSERT INTO "Localizations" VALUES (132, 53, 3, 'Пост 2');
INSERT INTO "Localizations" VALUES (133, 53, 4, 'Пост 2');
INSERT INTO "Localizations" VALUES (134, 54, 2, '');
INSERT INTO "Localizations" VALUES (135, 54, 3, '');
INSERT INTO "Localizations" VALUES (136, 54, 4, '');
INSERT INTO "Localizations" VALUES (137, 55, 2, '');
INSERT INTO "Localizations" VALUES (144, 58, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (145, 58, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (146, 58, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (147, 59, 1, '/blog/post-3');
INSERT INTO "Localizations" VALUES (148, 60, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (149, 60, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (150, 60, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (151, 61, 2, 'Post 3');
INSERT INTO "Localizations" VALUES (152, 61, 3, 'Пост 3');
INSERT INTO "Localizations" VALUES (153, 61, 4, 'Пост 3');
INSERT INTO "Localizations" VALUES (154, 62, 2, '');
INSERT INTO "Localizations" VALUES (155, 62, 3, '');
INSERT INTO "Localizations" VALUES (156, 62, 4, '');
INSERT INTO "Localizations" VALUES (157, 63, 2, '');
INSERT INTO "Localizations" VALUES (158, 63, 3, '');
INSERT INTO "Localizations" VALUES (159, 63, 4, '');
INSERT INTO "Localizations" VALUES (160, 64, 2, 'Post 4');
INSERT INTO "Localizations" VALUES (161, 64, 3, 'Пост 4');
INSERT INTO "Localizations" VALUES (162, 64, 4, 'Пост 4');
INSERT INTO "Localizations" VALUES (163, 65, 1, '/images/objects/13/cover.jpg');
INSERT INTO "Localizations" VALUES (164, 66, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (165, 66, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (166, 66, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (167, 67, 1, '/blog/post-4');
INSERT INTO "Localizations" VALUES (168, 68, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (169, 68, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (170, 68, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (171, 69, 2, 'Post 4');
INSERT INTO "Localizations" VALUES (172, 69, 3, 'Пост 4');
INSERT INTO "Localizations" VALUES (173, 69, 4, 'Пост 4');
INSERT INTO "Localizations" VALUES (174, 70, 2, '');
INSERT INTO "Localizations" VALUES (175, 70, 3, '');
INSERT INTO "Localizations" VALUES (176, 70, 4, '');
INSERT INTO "Localizations" VALUES (177, 71, 2, '');
INSERT INTO "Localizations" VALUES (178, 71, 3, '');
INSERT INTO "Localizations" VALUES (179, 71, 4, '');
INSERT INTO "Localizations" VALUES (180, 72, 2, 'Post 5');
INSERT INTO "Localizations" VALUES (181, 72, 3, 'Пост 5');
INSERT INTO "Localizations" VALUES (182, 72, 4, 'Пост 5');
INSERT INTO "Localizations" VALUES (183, 73, 1, '/images/objects/14/cover.jpg');
INSERT INTO "Localizations" VALUES (184, 74, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (185, 74, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (186, 74, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (187, 75, 1, '/blog/post-5');
INSERT INTO "Localizations" VALUES (188, 76, 2, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (189, 76, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (190, 76, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO "Localizations" VALUES (191, 77, 2, 'Post 5');
INSERT INTO "Localizations" VALUES (192, 77, 3, 'Пост 5');
INSERT INTO "Localizations" VALUES (193, 77, 4, 'Пост 5');
INSERT INTO "Localizations" VALUES (194, 78, 2, '');
INSERT INTO "Localizations" VALUES (195, 78, 3, '');
INSERT INTO "Localizations" VALUES (196, 78, 4, '');
INSERT INTO "Localizations" VALUES (197, 79, 2, '');
INSERT INTO "Localizations" VALUES (198, 79, 3, '');
INSERT INTO "Localizations" VALUES (199, 79, 4, '');


--
-- TOC entry 3361 (class 0 OID 31386)
-- Dependencies: 232
-- Data for Name: Members; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Members" VALUES (1, 1, NULL, 'Url', 'URL', 1, 1, false, true, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (2, 1, NULL, 'Content', 'Content', 100, 3, true, false, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (3, 1, 1, 'Title', 'Title', 1000, 1, true, false, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (4, 1, 1, 'MetaDescription', 'META description', 1010, 1, true, false, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (5, 1, 1, 'MetaKeywords', 'META keywords', 1020, 1, true, false, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (6, 3, NULL, 'Text', 'Text', 10, 1, false, true, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (7, 4, NULL, 'Author', 'Author', 10, 1, false, true, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (8, 4, NULL, 'Text', 'Text', 20, 2, false, false, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (9, 4, NULL, 'Created', 'Created', 30, 7, false, true, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (10, 5, NULL, 'Name', 'Name', 10, 1, true, true, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (11, 5, NULL, 'Tags', 'Tags', 20, NULL, NULL, NULL, 3, false, NULL, NULL);
INSERT INTO "Members" VALUES (12, 5, NULL, 'Cover', 'Cover', 30, 8, false, false, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (13, 5, NULL, 'Preview', 'Preview', 40, 3, true, false, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (14, 5, NULL, 'Created', 'Created', 200, 7, false, true, NULL, NULL, NULL, NULL);
INSERT INTO "Members" VALUES (15, 5, NULL, 'Comments', 'Comments', 0, NULL, NULL, NULL, 4, true, NULL, NULL);


--
-- TOC entry 3374 (class 0 OID 31534)
-- Dependencies: 245
-- Data for Name: MenuItems; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "MenuItems" VALUES (1, 1, NULL, 2, '/', 10);
INSERT INTO "MenuItems" VALUES (2, 1, NULL, 3, '/about-me', 20);
INSERT INTO "MenuItems" VALUES (3, 1, NULL, 4, '/blog', 30);
INSERT INTO "MenuItems" VALUES (4, 1, NULL, 5, '/contacts', 40);


--
-- TOC entry 3372 (class 0 OID 31523)
-- Dependencies: 243
-- Data for Name: Menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Menus" VALUES (1, 'Main', 1);


--
-- TOC entry 3365 (class 0 OID 31438)
-- Dependencies: 236
-- Data for Name: Objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Objects" VALUES (1, 2);
INSERT INTO "Objects" VALUES (2, 2);
INSERT INTO "Objects" VALUES (3, 2);
INSERT INTO "Objects" VALUES (4, 2);
INSERT INTO "Objects" VALUES (5, 3);
INSERT INTO "Objects" VALUES (6, 3);
INSERT INTO "Objects" VALUES (7, 3);
INSERT INTO "Objects" VALUES (8, 3);
INSERT INTO "Objects" VALUES (9, 3);
INSERT INTO "Objects" VALUES (10, 5);
INSERT INTO "Objects" VALUES (11, 5);
INSERT INTO "Objects" VALUES (12, 5);
INSERT INTO "Objects" VALUES (13, 5);
INSERT INTO "Objects" VALUES (14, 5);


--
-- TOC entry 3405 (class 0 OID 31862)
-- Dependencies: 276
-- Data for Name: OrderStates; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3411 (class 0 OID 31910)
-- Dependencies: 282
-- Data for Name: Orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3407 (class 0 OID 31878)
-- Dependencies: 278
-- Data for Name: PaymentMethods; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3335 (class 0 OID 31192)
-- Dependencies: 206
-- Data for Name: Permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Permissions" VALUES (1, 'BrowseBackend', 'Browse backend', 1);
INSERT INTO "Permissions" VALUES (2, 'DoEverything', 'Do everything', 100);
INSERT INTO "Permissions" VALUES (3, 'BrowsePermissions', 'Browse permissions', 200);
INSERT INTO "Permissions" VALUES (4, 'BrowseRoles', 'Browse roles', 210);
INSERT INTO "Permissions" VALUES (5, 'BrowseUsers', 'Browse users', 220);
INSERT INTO "Permissions" VALUES (6, 'BrowseConfigurations', 'Browse configurations', 300);
INSERT INTO "Permissions" VALUES (7, 'BrowseCultures', 'Browse cultures', 400);
INSERT INTO "Permissions" VALUES (8, 'BrowseEndpoints', 'Browse endpoints', 500);
INSERT INTO "Permissions" VALUES (9, 'BrowseObjects', 'Browse objects', 600);
INSERT INTO "Permissions" VALUES (10, 'BrowseDataTypes', 'Browse data types', 610);
INSERT INTO "Permissions" VALUES (11, 'BrowseClasses', 'Browse classes', 620);
INSERT INTO "Permissions" VALUES (12, 'BrowseMenus', 'Browse menus', 700);
INSERT INTO "Permissions" VALUES (13, 'BrowseForms', 'Browse forms', 800);
INSERT INTO "Permissions" VALUES (14, 'BrowseFileManager', 'Browse file manager', 900);
INSERT INTO "Permissions" VALUES (15, 'BrowseViews', 'Browse views', 1000);
INSERT INTO "Permissions" VALUES (16, 'BrowseStyles', 'Browse styles', 1010);
INSERT INTO "Permissions" VALUES (17, 'BrowseScripts', 'Browse scripts', 1020);
INSERT INTO "Permissions" VALUES (18, 'BrowseBundles', 'Browse bundles', 1030);
INSERT INTO "Permissions" VALUES (19, 'BrowseCatalogs', 'Browse catalogs', 1100);
INSERT INTO "Permissions" VALUES (20, 'BrowseCategories', 'Browse categories', 1110);
INSERT INTO "Permissions" VALUES (21, 'BrowseProducts', 'Browse products', 1120);
INSERT INTO "Permissions" VALUES (22, 'BrowseCarts', 'Browse carts', 1130);
INSERT INTO "Permissions" VALUES (23, 'BrowseOrderStates', 'Browse order states', 1140);
INSERT INTO "Permissions" VALUES (24, 'BrowsePaymentMethods', 'Browse payment methods', 1150);
INSERT INTO "Permissions" VALUES (25, 'BrowseDeliveryMethods', 'Browse delivery methods', 1160);
INSERT INTO "Permissions" VALUES (26, 'BrowseOrders', 'Browse orders', 1170);


--
-- TOC entry 3403 (class 0 OID 31846)
-- Dependencies: 274
-- Data for Name: Photos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3415 (class 0 OID 31952)
-- Dependencies: 286
-- Data for Name: Positions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3401 (class 0 OID 31829)
-- Dependencies: 272
-- Data for Name: ProductAttributes; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3400 (class 0 OID 31790)
-- Dependencies: 271
-- Data for Name: Products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3367 (class 0 OID 31451)
-- Dependencies: 238
-- Data for Name: Properties; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Properties" VALUES (1, 1, 1, NULL, NULL, 15, NULL);
INSERT INTO "Properties" VALUES (2, 1, 2, NULL, NULL, 16, NULL);
INSERT INTO "Properties" VALUES (3, 1, 3, NULL, NULL, 17, NULL);
INSERT INTO "Properties" VALUES (4, 1, 4, NULL, NULL, 18, NULL);
INSERT INTO "Properties" VALUES (5, 1, 5, NULL, NULL, 19, NULL);
INSERT INTO "Properties" VALUES (6, 2, 1, NULL, NULL, 20, NULL);
INSERT INTO "Properties" VALUES (7, 2, 2, NULL, NULL, 21, NULL);
INSERT INTO "Properties" VALUES (8, 2, 3, NULL, NULL, 22, NULL);
INSERT INTO "Properties" VALUES (9, 2, 4, NULL, NULL, 23, NULL);
INSERT INTO "Properties" VALUES (10, 2, 5, NULL, NULL, 24, NULL);
INSERT INTO "Properties" VALUES (11, 3, 1, NULL, NULL, 25, NULL);
INSERT INTO "Properties" VALUES (12, 3, 2, NULL, NULL, 26, NULL);
INSERT INTO "Properties" VALUES (13, 3, 3, NULL, NULL, 27, NULL);
INSERT INTO "Properties" VALUES (14, 3, 4, NULL, NULL, 28, NULL);
INSERT INTO "Properties" VALUES (15, 3, 5, NULL, NULL, 29, NULL);
INSERT INTO "Properties" VALUES (16, 4, 1, NULL, NULL, 30, NULL);
INSERT INTO "Properties" VALUES (17, 4, 2, NULL, NULL, 31, NULL);
INSERT INTO "Properties" VALUES (18, 4, 3, NULL, NULL, 32, NULL);
INSERT INTO "Properties" VALUES (19, 4, 4, NULL, NULL, 33, NULL);
INSERT INTO "Properties" VALUES (20, 4, 5, NULL, NULL, 34, NULL);
INSERT INTO "Properties" VALUES (21, 5, 6, NULL, NULL, 35, NULL);
INSERT INTO "Properties" VALUES (22, 6, 6, NULL, NULL, 36, NULL);
INSERT INTO "Properties" VALUES (23, 7, 6, NULL, NULL, 37, NULL);
INSERT INTO "Properties" VALUES (24, 8, 6, NULL, NULL, 38, NULL);
INSERT INTO "Properties" VALUES (25, 9, 6, NULL, NULL, 39, NULL);
INSERT INTO "Properties" VALUES (26, 10, 10, NULL, NULL, 40, NULL);
INSERT INTO "Properties" VALUES (27, 10, 12, NULL, NULL, 41, NULL);
INSERT INTO "Properties" VALUES (28, 10, 13, NULL, NULL, 42, NULL);
INSERT INTO "Properties" VALUES (29, 10, 14, NULL, NULL, NULL, '2019-01-21 17:00:07.463682');
INSERT INTO "Properties" VALUES (30, 10, 1, NULL, NULL, 43, NULL);
INSERT INTO "Properties" VALUES (31, 10, 2, NULL, NULL, 44, NULL);
INSERT INTO "Properties" VALUES (32, 10, 3, NULL, NULL, 45, NULL);
INSERT INTO "Properties" VALUES (33, 10, 4, NULL, NULL, 46, NULL);
INSERT INTO "Properties" VALUES (34, 10, 5, NULL, NULL, 47, NULL);
INSERT INTO "Properties" VALUES (35, 11, 10, NULL, NULL, 48, NULL);
INSERT INTO "Properties" VALUES (36, 11, 12, NULL, NULL, 49, NULL);
INSERT INTO "Properties" VALUES (37, 11, 13, NULL, NULL, 50, NULL);
INSERT INTO "Properties" VALUES (38, 11, 14, NULL, NULL, NULL, '2019-01-21 17:00:07.725348');
INSERT INTO "Properties" VALUES (39, 11, 1, NULL, NULL, 51, NULL);
INSERT INTO "Properties" VALUES (40, 11, 2, NULL, NULL, 52, NULL);
INSERT INTO "Properties" VALUES (41, 11, 3, NULL, NULL, 53, NULL);
INSERT INTO "Properties" VALUES (42, 11, 4, NULL, NULL, 54, NULL);
INSERT INTO "Properties" VALUES (43, 11, 5, NULL, NULL, 55, NULL);
INSERT INTO "Properties" VALUES (44, 12, 10, NULL, NULL, 56, NULL);
INSERT INTO "Properties" VALUES (45, 12, 12, NULL, NULL, 57, NULL);
INSERT INTO "Properties" VALUES (46, 12, 13, NULL, NULL, 58, NULL);
INSERT INTO "Properties" VALUES (47, 12, 14, NULL, NULL, NULL, '2019-01-21 17:00:07.948474');
INSERT INTO "Properties" VALUES (48, 12, 1, NULL, NULL, 59, NULL);
INSERT INTO "Properties" VALUES (49, 12, 2, NULL, NULL, 60, NULL);
INSERT INTO "Properties" VALUES (50, 12, 3, NULL, NULL, 61, NULL);
INSERT INTO "Properties" VALUES (51, 12, 4, NULL, NULL, 62, NULL);
INSERT INTO "Properties" VALUES (52, 12, 5, NULL, NULL, 63, NULL);
INSERT INTO "Properties" VALUES (53, 13, 10, NULL, NULL, 64, NULL);
INSERT INTO "Properties" VALUES (54, 13, 12, NULL, NULL, 65, NULL);
INSERT INTO "Properties" VALUES (55, 13, 13, NULL, NULL, 66, NULL);
INSERT INTO "Properties" VALUES (56, 13, 14, NULL, NULL, NULL, '2019-01-21 17:00:08.202743');
INSERT INTO "Properties" VALUES (57, 13, 1, NULL, NULL, 67, NULL);
INSERT INTO "Properties" VALUES (58, 13, 2, NULL, NULL, 68, NULL);
INSERT INTO "Properties" VALUES (59, 13, 3, NULL, NULL, 69, NULL);
INSERT INTO "Properties" VALUES (60, 13, 4, NULL, NULL, 70, NULL);
INSERT INTO "Properties" VALUES (61, 13, 5, NULL, NULL, 71, NULL);
INSERT INTO "Properties" VALUES (62, 14, 10, NULL, NULL, 72, NULL);
INSERT INTO "Properties" VALUES (63, 14, 12, NULL, NULL, 73, NULL);
INSERT INTO "Properties" VALUES (64, 14, 13, NULL, NULL, 74, NULL);
INSERT INTO "Properties" VALUES (65, 14, 14, NULL, NULL, NULL, '2019-01-21 17:00:08.435099');
INSERT INTO "Properties" VALUES (66, 14, 1, NULL, NULL, 75, NULL);
INSERT INTO "Properties" VALUES (67, 14, 2, NULL, NULL, 76, NULL);
INSERT INTO "Properties" VALUES (68, 14, 3, NULL, NULL, 77, NULL);
INSERT INTO "Properties" VALUES (69, 14, 4, NULL, NULL, 78, NULL);
INSERT INTO "Properties" VALUES (70, 14, 5, NULL, NULL, 79, NULL);


--
-- TOC entry 3369 (class 0 OID 31477)
-- Dependencies: 240
-- Data for Name: Relations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Relations" VALUES (1, 11, 6, 10);
INSERT INTO "Relations" VALUES (2, 11, 9, 10);
INSERT INTO "Relations" VALUES (3, 11, 5, 11);
INSERT INTO "Relations" VALUES (4, 11, 7, 11);
INSERT INTO "Relations" VALUES (5, 11, 9, 12);
INSERT INTO "Relations" VALUES (6, 11, 8, 12);
INSERT INTO "Relations" VALUES (7, 11, 5, 12);
INSERT INTO "Relations" VALUES (8, 11, 9, 13);
INSERT INTO "Relations" VALUES (9, 11, 5, 13);
INSERT INTO "Relations" VALUES (10, 11, 7, 14);
INSERT INTO "Relations" VALUES (11, 11, 5, 14);
INSERT INTO "Relations" VALUES (12, 11, 6, 14);


--
-- TOC entry 3336 (class 0 OID 31201)
-- Dependencies: 207
-- Data for Name: RolePermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "RolePermissions" VALUES (1, 1);
INSERT INTO "RolePermissions" VALUES (2, 2);
INSERT INTO "RolePermissions" VALUES (3, 9);
INSERT INTO "RolePermissions" VALUES (3, 12);
INSERT INTO "RolePermissions" VALUES (3, 13);
INSERT INTO "RolePermissions" VALUES (3, 14);


--
-- TOC entry 3332 (class 0 OID 31166)
-- Dependencies: 203
-- Data for Name: Roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Roles" VALUES (1, 'Administrator', 'Administrator', 100);
INSERT INTO "Roles" VALUES (2, 'ApplicationOwner', 'Application owner', 200);
INSERT INTO "Roles" VALUES (3, 'ContentManager', 'Content manager', 300);


--
-- TOC entry 3388 (class 0 OID 31686)
-- Dependencies: 259
-- Data for Name: SerializedForms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "SerializedForms" VALUES (2, 1, 'Feedback', 'Feedback', 'Submit', '[{"FieldId":1,"FieldTypeCode":"TextBox","Code":"Name","Name":"Your name","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":2,"FieldTypeCode":"TextBox","Code":"Email","Name":"Your email","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null},{"FieldId":3,"FieldTypeCode":"TextArea","Code":"Message","Name":"Your message","IsRequired":true,"MaxLength":null,"Position":30,"SerializedFieldOptions":null}]');
INSERT INTO "SerializedForms" VALUES (3, 1, 'Feedback', 'Обратная связь', 'Отправить', '[{"FieldId":1,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше имя","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":2,"FieldTypeCode":"TextBox","Code":"Email","Name":"Ваша электронная почта","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null},{"FieldId":3,"FieldTypeCode":"TextArea","Code":"Message","Name":"Ваше сообщение","IsRequired":true,"MaxLength":null,"Position":30,"SerializedFieldOptions":null}]');
INSERT INTO "SerializedForms" VALUES (4, 1, 'Feedback', 'Зворотний зв’язок', 'Надіслати', '[{"FieldId":1,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше ім’я","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":2,"FieldTypeCode":"TextBox","Code":"Email","Name":"Ваша електронна пошта","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null},{"FieldId":3,"FieldTypeCode":"TextArea","Code":"Message","Name":"Ваше повідомлення","IsRequired":true,"MaxLength":null,"Position":30,"SerializedFieldOptions":null}]');
INSERT INTO "SerializedForms" VALUES (2, 2, 'WriteComment', 'Write comment', 'Submit', '[{"FieldId":4,"FieldTypeCode":"TextBox","Code":"Name","Name":"Your name","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":5,"FieldTypeCode":"TextArea","Code":"Comment","Name":"Your comment","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null}]');
INSERT INTO "SerializedForms" VALUES (3, 2, 'WriteComment', 'Напишите комментарий', 'Отправить', '[{"FieldId":4,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше имя","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":5,"FieldTypeCode":"TextArea","Code":"Comment","Name":"Ваш ","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null}]');
INSERT INTO "SerializedForms" VALUES (4, 2, 'WriteComment', 'Напишіть коментар', 'Надіслати', '[{"FieldId":4,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше ім’я","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":5,"FieldTypeCode":"TextArea","Code":"Comment","Name":"Ваше повідомлення","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null}]');


--
-- TOC entry 3375 (class 0 OID 31558)
-- Dependencies: 246
-- Data for Name: SerializedMenus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "SerializedMenus" VALUES (2, 1, 'Main', '[{"MenuItemId":1,"Name":"Home","Url":"/","Position":10,"SerializedMenuItems":null},{"MenuItemId":2,"Name":"About me","Url":"/about-me","Position":20,"SerializedMenuItems":null},{"MenuItemId":3,"Name":"Blog","Url":"/blog","Position":30,"SerializedMenuItems":null},{"MenuItemId":4,"Name":"Contacts","Url":"/contacts","Position":40,"SerializedMenuItems":null}]');
INSERT INTO "SerializedMenus" VALUES (3, 1, 'Main', '[{"MenuItemId":1,"Name":"Главная","Url":"/","Position":10,"SerializedMenuItems":null},{"MenuItemId":2,"Name":"Обо мне","Url":"/about-me","Position":20,"SerializedMenuItems":null},{"MenuItemId":3,"Name":"Блог","Url":"/blog","Position":30,"SerializedMenuItems":null},{"MenuItemId":4,"Name":"Контакты","Url":"/contacts","Position":40,"SerializedMenuItems":null}]');
INSERT INTO "SerializedMenus" VALUES (4, 1, 'Main', '[{"MenuItemId":1,"Name":"Головна","Url":"/","Position":10,"SerializedMenuItems":null},{"MenuItemId":2,"Name":"Про мене","Url":"/about-me","Position":20,"SerializedMenuItems":null},{"MenuItemId":3,"Name":"Блог","Url":"/blog","Position":30,"SerializedMenuItems":null},{"MenuItemId":4,"Name":"Контакти","Url":"/contacts","Position":40,"SerializedMenuItems":null}]');


--
-- TOC entry 3370 (class 0 OID 31498)
-- Dependencies: 241
-- Data for Name: SerializedObjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "SerializedObjects" VALUES (2, 1, 2, '/', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Your Personal Blog</h1><p>Hello! This is your personal blog, it is based on the <a href=\"http://platformus.net/\" target=\"_blank\" rel=\"noopener\">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href=\"/backend\">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href=\"http://docs.platformus.net/\" target=\"_blank\" rel=\"noopener\">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href=\"https://gitter.im/Platformus/Platformus\" target=\"_blank\" rel=\"noopener\">chat</a>.</p><p>Have a nice work!</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Your Personal Blog","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 1, 2, '/', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Ваш персональный блог</h1><p>Здравствуйте! Это ваш персональный блог, он работает на базе системы управления содержимым &laquo;<a href=\"http://platformus.net/\" target=\"_blank\" rel=\"noopener\">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href=\"/backend\">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href=\"http://docs.platformus.net/\" target=\"_blank\" rel=\"noopener\">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href=\"https://gitter.im/Platformus/Platformus\" target=\"_blank\" rel=\"noopener\">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Ваш персональный блог","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 1, 2, '/', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Ваш персональний блог</h1><p>Вітаємо! Це ваш персональний блог, він працює на базі системи керування вмістом &laquo;<a href=\"http://platformus.net/\" target=\"_blank\" rel=\"noopener\">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href=\"/backend\">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href=\"http://docs.platformus.net/\" target=\"_blank\" rel=\"noopener\">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href=\"https://gitter.im/Platformus/Platformus\" target=\"_blank\" rel=\"noopener\">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Ваш персональний блог","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 2, 2, '/about-me', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/about-me","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>About Me</h1><p>Tell us about yourself in a few words. You can add photos or videos here.</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"About Me","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 2, 2, '/about-me', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/about-me","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Обо мне</h1><p>Расскажите о себе в нескольких словах. Вы можете добавить сюда фотографии или видео.</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Обо мне","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 2, 2, '/about-me', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/about-me","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Про мене</h1><p>Розкажіть про себе в кількох словах. Ви можете додати сюди фотографії або відео.</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Про мене","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 3, 2, '/blog', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Blog</h1>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Blog","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 8, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag4","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 3, 2, '/blog', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Блог</h1>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Блог","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 3, 2, '/blog', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Блог</h1>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Блог","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 4, 2, '/contacts', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/contacts","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Contacts","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 4, 2, '/contacts', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/contacts","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Контакты","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 4, 2, '/contacts', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/contacts","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Контакти","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 5, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag1","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 5, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag1","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 5, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag1","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 6, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag2","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 6, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag2","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 6, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag2","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 7, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag3","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 7, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag3","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 7, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag3","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 8, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag4","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 8, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag4","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 9, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag5","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 9, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag5","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 9, 3, NULL, '[{"Member":{"Code":"Text","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Tag5","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 10, 5, '/blog/post-1', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-1","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 1","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/10/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:07.4636827+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 1","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 10, 5, '/blog/post-1', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-1","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 1","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/10/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:07.4636827+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 1","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 10, 5, '/blog/post-1', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-1","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 1","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/10/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:07.4636827+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 1","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 11, 5, '/blog/post-2', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-2","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 2","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/11/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:07.7253489+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 2","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 11, 5, '/blog/post-2', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-2","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 2","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/11/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:07.7253489+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 2","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 11, 5, '/blog/post-2', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-2","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 2","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/11/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:07.7253489+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 2","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 12, 5, '/blog/post-3', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-3","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 3","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/12/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:07.9484745+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 3","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 12, 5, '/blog/post-3', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-3","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 3","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/12/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:07.9484745+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 3","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 12, 5, '/blog/post-3', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-3","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 3","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/12/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:07.9484745+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 3","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 13, 5, '/blog/post-4', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-4","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 4","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/13/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:08.2027438+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 4","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 13, 5, '/blog/post-4', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-4","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 4","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/13/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:08.2027438+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 4","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 13, 5, '/blog/post-4', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-4","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 4","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/13/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:08.2027438+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 4","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (2, 14, 5, '/blog/post-5', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-5","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 5","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/14/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:08.4350994+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Post 5","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (3, 14, 5, '/blog/post-5', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-5","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 5","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/14/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:08.4350994+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 5","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');
INSERT INTO "SerializedObjects" VALUES (4, 14, 5, '/blog/post-5', '[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/blog/post-5","DateTimeValue":null},{"Member":{"Code":"Name","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 5","DateTimeValue":null},{"Member":{"Code":"Cover","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/images/objects/14/cover.jpg","DateTimeValue":null},{"Member":{"Code":"Preview","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>","DateTimeValue":null},{"Member":{"Code":"Created","PropertyDataTypeStorageDataType":"datetime"},"IntegerValue":null,"DecimalValue":null,"StringValue":null,"DateTimeValue":"2019-01-21T17:00:08.4350994+02:00"},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Пост 5","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]');


--
-- TOC entry 3416 (class 0 OID 31968)
-- Dependencies: 287
-- Data for Name: SerializedProducts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3355 (class 0 OID 31343)
-- Dependencies: 226
-- Data for Name: Tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Tabs" VALUES (1, 1, 'SEO', 100);


--
-- TOC entry 3333 (class 0 OID 31175)
-- Dependencies: 204
-- Data for Name: UserRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "UserRoles" VALUES (1, 1);
INSERT INTO "UserRoles" VALUES (1, 2);


--
-- TOC entry 3326 (class 0 OID 31123)
-- Dependencies: 197
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Users" VALUES (1, 'Administrator', '2017-01-01 00:00:00');


--
-- TOC entry 3340 (class 0 OID 31229)
-- Dependencies: 211
-- Data for Name: Variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Variables" VALUES (1, 1, 'SmtpServer', 'SMTP server', 'test', 1);
INSERT INTO "Variables" VALUES (2, 1, 'SmtpPort', 'SMTP port', '25', 2);
INSERT INTO "Variables" VALUES (3, 1, 'SmtpUseSsl', 'SMTP use SSL', 'no', 3);
INSERT INTO "Variables" VALUES (4, 1, 'SmtpLogin', 'SMTP login', 'test', 4);
INSERT INTO "Variables" VALUES (5, 1, 'SmtpPassword', 'SMTP password', 'test', 5);
INSERT INTO "Variables" VALUES (6, 1, 'SmtpSenderEmail', 'SMTP sender email', 'test', 6);
INSERT INTO "Variables" VALUES (7, 1, 'SmtpSenderName', 'SMTP sender name', 'test', 7);
INSERT INTO "Variables" VALUES (8, 2, 'SpecifyCultureInUrl', 'Specify culture in URL', 'yes', 1);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 268
-- Name: Attributes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Attributes_Id_seq"', 1, false);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 283
-- Name: Carts_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Carts_Id_seq"', 1, false);


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 262
-- Name: Catalogs_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Catalogs_Id_seq"', 1, false);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 264
-- Name: Categories_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Categories_Id_seq"', 1, false);


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 223
-- Name: Classes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Classes_Id_seq"', 5, true);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 257
-- Name: CompletedFields_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CompletedFields_Id_seq"', 1, false);


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 255
-- Name: CompletedForms_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CompletedForms_Id_seq"', 1, false);


--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 208
-- Name: Configurations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Configurations_Id_seq"', 3, false);


--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 198
-- Name: CredentialTypes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"CredentialTypes_Id_seq"', 2, false);


--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 200
-- Name: Credentials_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Credentials_Id_seq"', 2, false);


--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 212
-- Name: Cultures_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Cultures_Id_seq"', 4, true);


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 221
-- Name: DataSources_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DataSources_Id_seq"', 7, true);


--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 233
-- Name: DataTypeParameterValues_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DataTypeParameterValues_Id_seq"', 19, true);


--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 229
-- Name: DataTypeParameters_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DataTypeParameters_Id_seq"', 8, false);


--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 227
-- Name: DataTypes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DataTypes_Id_seq"', 9, false);


--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 279
-- Name: DeliveryMethods_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DeliveryMethods_Id_seq"', 1, false);


--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 214
-- Name: Dictionaries_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Dictionaries_Id_seq"', 79, true);


--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 218
-- Name: Endpoints_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Endpoints_Id_seq"', 4, true);


--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 266
-- Name: Features_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Features_Id_seq"', 1, false);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 253
-- Name: FieldOptions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"FieldOptions_Id_seq"', 1, false);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 249
-- Name: FieldTypes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"FieldTypes_Id_seq"', 7, false);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 251
-- Name: Fields_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Fields_Id_seq"', 5, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 260
-- Name: Files_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Files_Id_seq"', 1, false);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 247
-- Name: Forms_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Forms_Id_seq"', 2, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 216
-- Name: Localizations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Localizations_Id_seq"', 199, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 231
-- Name: Members_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Members_Id_seq"', 15, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 244
-- Name: MenuItems_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"MenuItems_Id_seq"', 4, true);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 242
-- Name: Menus_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Menus_Id_seq"', 1, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 235
-- Name: Objects_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Objects_Id_seq"', 14, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 275
-- Name: OrderStates_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"OrderStates_Id_seq"', 1, false);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 281
-- Name: Orders_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Orders_Id_seq"', 1, false);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 277
-- Name: PaymentMethods_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"PaymentMethods_Id_seq"', 1, false);


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 205
-- Name: Permissions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Permissions_Id_seq"', 27, false);


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 273
-- Name: Photos_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Photos_Id_seq"', 1, false);


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 285
-- Name: Positions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Positions_Id_seq"', 1, false);


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 270
-- Name: Products_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Products_Id_seq"', 1, false);


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 237
-- Name: Properties_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Properties_Id_seq"', 70, true);


--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 239
-- Name: Relations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Relations_Id_seq"', 12, true);


--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 202
-- Name: Roles_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Roles_Id_seq"', 4, false);


--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 225
-- Name: Tabs_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Tabs_Id_seq"', 1, true);


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 196
-- Name: Users_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Users_Id_seq"', 2, false);


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 210
-- Name: Variables_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Variables_Id_seq"', 8, false);


--
-- TOC entry 3107 (class 2606 OID 31777)
-- Name: Attributes PK_Attributes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Attributes"
    ADD CONSTRAINT "PK_Attributes" PRIMARY KEY ("Id");


--
-- TOC entry 3123 (class 2606 OID 31944)
-- Name: Carts PK_Carts; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Carts"
    ADD CONSTRAINT "PK_Carts" PRIMARY KEY ("Id");


--
-- TOC entry 3101 (class 2606 OID 31725)
-- Name: Catalogs PK_Catalogs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Catalogs"
    ADD CONSTRAINT "PK_Catalogs" PRIMARY KEY ("Id");


--
-- TOC entry 3103 (class 2606 OID 31743)
-- Name: Categories PK_Categories; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Categories"
    ADD CONSTRAINT "PK_Categories" PRIMARY KEY ("Id");


--
-- TOC entry 3059 (class 2606 OID 31335)
-- Name: Classes PK_Classes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Classes"
    ADD CONSTRAINT "PK_Classes" PRIMARY KEY ("Id");


--
-- TOC entry 3095 (class 2606 OID 31675)
-- Name: CompletedFields PK_CompletedFields; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CompletedFields"
    ADD CONSTRAINT "PK_CompletedFields" PRIMARY KEY ("Id");


--
-- TOC entry 3093 (class 2606 OID 31659)
-- Name: CompletedForms PK_CompletedForms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CompletedForms"
    ADD CONSTRAINT "PK_CompletedForms" PRIMARY KEY ("Id");


--
-- TOC entry 3043 (class 2606 OID 31226)
-- Name: Configurations PK_Configurations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Configurations"
    ADD CONSTRAINT "PK_Configurations" PRIMARY KEY ("Id");


--
-- TOC entry 3031 (class 2606 OID 31142)
-- Name: CredentialTypes PK_CredentialTypes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CredentialTypes"
    ADD CONSTRAINT "PK_CredentialTypes" PRIMARY KEY ("Id");


--
-- TOC entry 3033 (class 2606 OID 31153)
-- Name: Credentials PK_Credentials; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Credentials"
    ADD CONSTRAINT "PK_Credentials" PRIMARY KEY ("Id");


--
-- TOC entry 3047 (class 2606 OID 31253)
-- Name: Cultures PK_Cultures; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Cultures"
    ADD CONSTRAINT "PK_Cultures" PRIMARY KEY ("Id");


--
-- TOC entry 3057 (class 2606 OID 31319)
-- Name: DataSources PK_DataSources; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataSources"
    ADD CONSTRAINT "PK_DataSources" PRIMARY KEY ("Id");


--
-- TOC entry 3069 (class 2606 OID 31425)
-- Name: DataTypeParameterValues PK_DataTypeParameterValues; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataTypeParameterValues"
    ADD CONSTRAINT "PK_DataTypeParameterValues" PRIMARY KEY ("Id");


--
-- TOC entry 3065 (class 2606 OID 31378)
-- Name: DataTypeParameters PK_DataTypeParameters; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataTypeParameters"
    ADD CONSTRAINT "PK_DataTypeParameters" PRIMARY KEY ("Id");


--
-- TOC entry 3063 (class 2606 OID 31367)
-- Name: DataTypes PK_DataTypes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataTypes"
    ADD CONSTRAINT "PK_DataTypes" PRIMARY KEY ("Id");


--
-- TOC entry 3119 (class 2606 OID 31902)
-- Name: DeliveryMethods PK_DeliveryMethods; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DeliveryMethods"
    ADD CONSTRAINT "PK_DeliveryMethods" PRIMARY KEY ("Id");


--
-- TOC entry 3049 (class 2606 OID 31261)
-- Name: Dictionaries PK_Dictionaries; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Dictionaries"
    ADD CONSTRAINT "PK_Dictionaries" PRIMARY KEY ("Id");


--
-- TOC entry 3055 (class 2606 OID 31298)
-- Name: EndpointPermissions PK_EndpointPermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EndpointPermissions"
    ADD CONSTRAINT "PK_EndpointPermissions" PRIMARY KEY ("EndpointId", "PermissionId");


--
-- TOC entry 3053 (class 2606 OID 31293)
-- Name: Endpoints PK_Endpoints; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Endpoints"
    ADD CONSTRAINT "PK_Endpoints" PRIMARY KEY ("Id");


--
-- TOC entry 3105 (class 2606 OID 31764)
-- Name: Features PK_Features; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Features"
    ADD CONSTRAINT "PK_Features" PRIMARY KEY ("Id");


--
-- TOC entry 3091 (class 2606 OID 31641)
-- Name: FieldOptions PK_FieldOptions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "FieldOptions"
    ADD CONSTRAINT "PK_FieldOptions" PRIMARY KEY ("Id");


--
-- TOC entry 3087 (class 2606 OID 31607)
-- Name: FieldTypes PK_FieldTypes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "FieldTypes"
    ADD CONSTRAINT "PK_FieldTypes" PRIMARY KEY ("Id");


--
-- TOC entry 3089 (class 2606 OID 31618)
-- Name: Fields PK_Fields; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Fields"
    ADD CONSTRAINT "PK_Fields" PRIMARY KEY ("Id");


--
-- TOC entry 3099 (class 2606 OID 31714)
-- Name: Files PK_Files; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Files"
    ADD CONSTRAINT "PK_Files" PRIMARY KEY ("Id");


--
-- TOC entry 3085 (class 2606 OID 31586)
-- Name: Forms PK_Forms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Forms"
    ADD CONSTRAINT "PK_Forms" PRIMARY KEY ("Id");


--
-- TOC entry 3051 (class 2606 OID 31272)
-- Name: Localizations PK_Localizations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Localizations"
    ADD CONSTRAINT "PK_Localizations" PRIMARY KEY ("Id");


--
-- TOC entry 3067 (class 2606 OID 31394)
-- Name: Members PK_Members; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Members"
    ADD CONSTRAINT "PK_Members" PRIMARY KEY ("Id");


--
-- TOC entry 3081 (class 2606 OID 31542)
-- Name: MenuItems PK_MenuItems; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "MenuItems"
    ADD CONSTRAINT "PK_MenuItems" PRIMARY KEY ("Id");


--
-- TOC entry 3079 (class 2606 OID 31531)
-- Name: Menus PK_Menus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Menus"
    ADD CONSTRAINT "PK_Menus" PRIMARY KEY ("Id");


--
-- TOC entry 3071 (class 2606 OID 31443)
-- Name: Objects PK_Objects; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Objects"
    ADD CONSTRAINT "PK_Objects" PRIMARY KEY ("Id");


--
-- TOC entry 3115 (class 2606 OID 31870)
-- Name: OrderStates PK_OrderStates; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OrderStates"
    ADD CONSTRAINT "PK_OrderStates" PRIMARY KEY ("Id");


--
-- TOC entry 3121 (class 2606 OID 31918)
-- Name: Orders PK_Orders; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Orders"
    ADD CONSTRAINT "PK_Orders" PRIMARY KEY ("Id");


--
-- TOC entry 3117 (class 2606 OID 31886)
-- Name: PaymentMethods PK_PaymentMethods; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PaymentMethods"
    ADD CONSTRAINT "PK_PaymentMethods" PRIMARY KEY ("Id");


--
-- TOC entry 3039 (class 2606 OID 31200)
-- Name: Permissions PK_Permissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Permissions"
    ADD CONSTRAINT "PK_Permissions" PRIMARY KEY ("Id");


--
-- TOC entry 3113 (class 2606 OID 31854)
-- Name: Photos PK_Photos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Photos"
    ADD CONSTRAINT "PK_Photos" PRIMARY KEY ("Id");


--
-- TOC entry 3125 (class 2606 OID 31957)
-- Name: Positions PK_Positions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Positions"
    ADD CONSTRAINT "PK_Positions" PRIMARY KEY ("Id");


--
-- TOC entry 3111 (class 2606 OID 31833)
-- Name: ProductAttributes PK_ProductAttributes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductAttributes"
    ADD CONSTRAINT "PK_ProductAttributes" PRIMARY KEY ("ProductId", "AttributeId");


--
-- TOC entry 3109 (class 2606 OID 31798)
-- Name: Products PK_Products; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Products"
    ADD CONSTRAINT "PK_Products" PRIMARY KEY ("Id");


--
-- TOC entry 3073 (class 2606 OID 31459)
-- Name: Properties PK_Properties; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Properties"
    ADD CONSTRAINT "PK_Properties" PRIMARY KEY ("Id");


--
-- TOC entry 3075 (class 2606 OID 31482)
-- Name: Relations PK_Relations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Relations"
    ADD CONSTRAINT "PK_Relations" PRIMARY KEY ("Id");


--
-- TOC entry 3041 (class 2606 OID 31205)
-- Name: RolePermissions PK_RolePermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RolePermissions"
    ADD CONSTRAINT "PK_RolePermissions" PRIMARY KEY ("RoleId", "PermissionId");


--
-- TOC entry 3035 (class 2606 OID 31174)
-- Name: Roles PK_Roles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Roles"
    ADD CONSTRAINT "PK_Roles" PRIMARY KEY ("Id");


--
-- TOC entry 3097 (class 2606 OID 31693)
-- Name: SerializedForms PK_SerializedForms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedForms"
    ADD CONSTRAINT "PK_SerializedForms" PRIMARY KEY ("CultureId", "FormId");


--
-- TOC entry 3083 (class 2606 OID 31565)
-- Name: SerializedMenus PK_SerializedMenus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedMenus"
    ADD CONSTRAINT "PK_SerializedMenus" PRIMARY KEY ("CultureId", "MenuId");


--
-- TOC entry 3077 (class 2606 OID 31505)
-- Name: SerializedObjects PK_SerializedObjects; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedObjects"
    ADD CONSTRAINT "PK_SerializedObjects" PRIMARY KEY ("CultureId", "ObjectId");


--
-- TOC entry 3127 (class 2606 OID 31975)
-- Name: SerializedProducts PK_SerializedProducts; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedProducts"
    ADD CONSTRAINT "PK_SerializedProducts" PRIMARY KEY ("CultureId", "ProductId");


--
-- TOC entry 3061 (class 2606 OID 31351)
-- Name: Tabs PK_Tabs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tabs"
    ADD CONSTRAINT "PK_Tabs" PRIMARY KEY ("Id");


--
-- TOC entry 3037 (class 2606 OID 31179)
-- Name: UserRoles PK_UserRoles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "UserRoles"
    ADD CONSTRAINT "PK_UserRoles" PRIMARY KEY ("UserId", "RoleId");


--
-- TOC entry 3029 (class 2606 OID 31131)
-- Name: Users PK_Users; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("Id");


--
-- TOC entry 3045 (class 2606 OID 31237)
-- Name: Variables PK_Variable; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Variables"
    ADD CONSTRAINT "PK_Variable" PRIMARY KEY ("Id");


--
-- TOC entry 3182 (class 2606 OID 31783)
-- Name: Attributes FK_Attributes_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Attributes"
    ADD CONSTRAINT "FK_Attributes_Dictionaries" FOREIGN KEY ("ValueId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3181 (class 2606 OID 31778)
-- Name: Attributes FK_Attributes_Features; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Attributes"
    ADD CONSTRAINT "FK_Attributes_Features" FOREIGN KEY ("FeatureId") REFERENCES "Features"("Id");


--
-- TOC entry 3198 (class 2606 OID 31945)
-- Name: Carts FK_Carts_Orders; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Carts"
    ADD CONSTRAINT "FK_Carts_Orders" FOREIGN KEY ("OrderId") REFERENCES "Orders"("Id");


--
-- TOC entry 3176 (class 2606 OID 31726)
-- Name: Catalogs FK_Catalogs_Catalogs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Catalogs"
    ADD CONSTRAINT "FK_Catalogs_Catalogs" FOREIGN KEY ("CatalogId") REFERENCES "Catalogs"("Id");


--
-- TOC entry 3177 (class 2606 OID 31731)
-- Name: Catalogs FK_Catalogs_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Catalogs"
    ADD CONSTRAINT "FK_Catalogs_Dictionaries" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3178 (class 2606 OID 31744)
-- Name: Categories FK_Categories_Categories; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Categories"
    ADD CONSTRAINT "FK_Categories_Categories" FOREIGN KEY ("CategoryId") REFERENCES "Categories"("Id");


--
-- TOC entry 3179 (class 2606 OID 31749)
-- Name: Categories FK_Categories_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Categories"
    ADD CONSTRAINT "FK_Categories_Dictionaries" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3140 (class 2606 OID 31336)
-- Name: Classes FK_Classes_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Classes"
    ADD CONSTRAINT "FK_Classes_Classes" FOREIGN KEY ("ClassId") REFERENCES "Classes"("Id");


--
-- TOC entry 3172 (class 2606 OID 31676)
-- Name: CompletedFields FK_CompletedFields_CompletedForms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CompletedFields"
    ADD CONSTRAINT "FK_CompletedFields_CompletedForms" FOREIGN KEY ("CompletedFormId") REFERENCES "CompletedForms"("Id");


--
-- TOC entry 3173 (class 2606 OID 31681)
-- Name: CompletedFields FK_CompletedFields_Fields; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CompletedFields"
    ADD CONSTRAINT "FK_CompletedFields_Fields" FOREIGN KEY ("FieldId") REFERENCES "Fields"("Id");


--
-- TOC entry 3171 (class 2606 OID 31660)
-- Name: CompletedForms FK_CompletedForms_Forms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "CompletedForms"
    ADD CONSTRAINT "FK_CompletedForms_Forms" FOREIGN KEY ("FormId") REFERENCES "Forms"("Id");


--
-- TOC entry 3129 (class 2606 OID 31159)
-- Name: Credentials FK_Credentials_CredentialTypes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Credentials"
    ADD CONSTRAINT "FK_Credentials_CredentialTypes" FOREIGN KEY ("CredentialTypeId") REFERENCES "CredentialTypes"("Id");


--
-- TOC entry 3128 (class 2606 OID 31154)
-- Name: Credentials FK_Credentials_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Credentials"
    ADD CONSTRAINT "FK_Credentials_Users" FOREIGN KEY ("UserId") REFERENCES "Users"("Id");


--
-- TOC entry 3139 (class 2606 OID 31320)
-- Name: DataSources FK_DataSources_Endpoints; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataSources"
    ADD CONSTRAINT "FK_DataSources_Endpoints" FOREIGN KEY ("EndpointId") REFERENCES "Endpoints"("Id");


--
-- TOC entry 3147 (class 2606 OID 31426)
-- Name: DataTypeParameterValues FK_DataTypeParameterValues_DataTypeParameters_DataTypeParameter; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataTypeParameterValues"
    ADD CONSTRAINT "FK_DataTypeParameterValues_DataTypeParameters_DataTypeParameter" FOREIGN KEY ("DataTypeParameterId") REFERENCES "DataTypeParameters"("Id");


--
-- TOC entry 3148 (class 2606 OID 31431)
-- Name: DataTypeParameterValues FK_DataTypeParameterValues_Members_MemberId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataTypeParameterValues"
    ADD CONSTRAINT "FK_DataTypeParameterValues_Members_MemberId" FOREIGN KEY ("MemberId") REFERENCES "Members"("Id");


--
-- TOC entry 3142 (class 2606 OID 31379)
-- Name: DataTypeParameters FK_DataTypeParameters_DataTypes_DataTypeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DataTypeParameters"
    ADD CONSTRAINT "FK_DataTypeParameters_DataTypes_DataTypeId" FOREIGN KEY ("DataTypeId") REFERENCES "DataTypes"("Id");


--
-- TOC entry 3194 (class 2606 OID 31903)
-- Name: DeliveryMethods FK_DeliveryMethods_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DeliveryMethods"
    ADD CONSTRAINT "FK_DeliveryMethods_Dictionaries" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3137 (class 2606 OID 31299)
-- Name: EndpointPermissions FK_EndpointPermissions_Roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EndpointPermissions"
    ADD CONSTRAINT "FK_EndpointPermissions_Roles" FOREIGN KEY ("EndpointId") REFERENCES "Endpoints"("Id");


--
-- TOC entry 3180 (class 2606 OID 31765)
-- Name: Features FK_Features_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Features"
    ADD CONSTRAINT "FK_Features_Dictionaries" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3170 (class 2606 OID 31647)
-- Name: FieldOptions FK_FieldOptions_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "FieldOptions"
    ADD CONSTRAINT "FK_FieldOptions_Dictionaries" FOREIGN KEY ("ValueId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3169 (class 2606 OID 31642)
-- Name: FieldOptions FK_FieldOptions_Fields; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "FieldOptions"
    ADD CONSTRAINT "FK_FieldOptions_Fields" FOREIGN KEY ("FieldId") REFERENCES "Fields"("Id");


--
-- TOC entry 3168 (class 2606 OID 31629)
-- Name: Fields FK_Fields_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Fields"
    ADD CONSTRAINT "FK_Fields_Dictionaries" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3167 (class 2606 OID 31624)
-- Name: Fields FK_Fields_FieldTypes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Fields"
    ADD CONSTRAINT "FK_Fields_FieldTypes" FOREIGN KEY ("FieldTypeId") REFERENCES "FieldTypes"("Id");


--
-- TOC entry 3166 (class 2606 OID 31619)
-- Name: Fields FK_Fields_Forms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Fields"
    ADD CONSTRAINT "FK_Fields_Forms" FOREIGN KEY ("FormId") REFERENCES "Forms"("Id");


--
-- TOC entry 3164 (class 2606 OID 31587)
-- Name: Forms FK_Forms_Dictionaries_NameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Forms"
    ADD CONSTRAINT "FK_Forms_Dictionaries_NameId" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3165 (class 2606 OID 31592)
-- Name: Forms FK_Forms_Dictionaries_SubmitButtonTitleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Forms"
    ADD CONSTRAINT "FK_Forms_Dictionaries_SubmitButtonTitleId" FOREIGN KEY ("SubmitButtonTitleId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3136 (class 2606 OID 31278)
-- Name: Localizations FK_Localizations_Cultures; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Localizations"
    ADD CONSTRAINT "FK_Localizations_Cultures" FOREIGN KEY ("CultureId") REFERENCES "Cultures"("Id");


--
-- TOC entry 3135 (class 2606 OID 31273)
-- Name: Localizations FK_Localizations_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Localizations"
    ADD CONSTRAINT "FK_Localizations_Dictionaries" FOREIGN KEY ("DictionaryId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3143 (class 2606 OID 31395)
-- Name: Members FK_Members_Classes_ClassId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Members"
    ADD CONSTRAINT "FK_Members_Classes_ClassId" FOREIGN KEY ("ClassId") REFERENCES "Classes"("Id");


--
-- TOC entry 3146 (class 2606 OID 31410)
-- Name: Members FK_Members_Classes_RelationClassId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Members"
    ADD CONSTRAINT "FK_Members_Classes_RelationClassId" FOREIGN KEY ("RelationClassId") REFERENCES "Classes"("Id");


--
-- TOC entry 3145 (class 2606 OID 31405)
-- Name: Members FK_Members_DataTypes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Members"
    ADD CONSTRAINT "FK_Members_DataTypes" FOREIGN KEY ("PropertyDataTypeId") REFERENCES "DataTypes"("Id");


--
-- TOC entry 3144 (class 2606 OID 31400)
-- Name: Members FK_Members_Tabs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Members"
    ADD CONSTRAINT "FK_Members_Tabs" FOREIGN KEY ("TabId") REFERENCES "Tabs"("Id");


--
-- TOC entry 3161 (class 2606 OID 31553)
-- Name: MenuItems FK_MenuItems_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "MenuItems"
    ADD CONSTRAINT "FK_MenuItems_Dictionaries" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3160 (class 2606 OID 31548)
-- Name: MenuItems FK_MenuItems_MenuItems; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "MenuItems"
    ADD CONSTRAINT "FK_MenuItems_MenuItems" FOREIGN KEY ("MenuItemId") REFERENCES "MenuItems"("Id");


--
-- TOC entry 3159 (class 2606 OID 31543)
-- Name: MenuItems FK_MenuItems_Menus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "MenuItems"
    ADD CONSTRAINT "FK_MenuItems_Menus" FOREIGN KEY ("MenuId") REFERENCES "Menus"("Id");


--
-- TOC entry 3149 (class 2606 OID 31444)
-- Name: Objects FK_Objects_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Objects"
    ADD CONSTRAINT "FK_Objects_Classes" FOREIGN KEY ("ClassId") REFERENCES "Classes"("Id");


--
-- TOC entry 3192 (class 2606 OID 31871)
-- Name: OrderStates FK_OrderStates_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "OrderStates"
    ADD CONSTRAINT "FK_OrderStates_Dictionaries" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3197 (class 2606 OID 31929)
-- Name: Orders FK_Orders_DeliveryMethods; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Orders"
    ADD CONSTRAINT "FK_Orders_DeliveryMethods" FOREIGN KEY ("DeliveryMethodId") REFERENCES "DeliveryMethods"("Id");


--
-- TOC entry 3195 (class 2606 OID 31919)
-- Name: Orders FK_Orders_OrderStates; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Orders"
    ADD CONSTRAINT "FK_Orders_OrderStates" FOREIGN KEY ("OrderStateId") REFERENCES "OrderStates"("Id");


--
-- TOC entry 3196 (class 2606 OID 31924)
-- Name: Orders FK_Orders_PaymentMethods; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Orders"
    ADD CONSTRAINT "FK_Orders_PaymentMethods" FOREIGN KEY ("PaymentMethodId") REFERENCES "PaymentMethods"("Id");


--
-- TOC entry 3193 (class 2606 OID 31887)
-- Name: PaymentMethods FK_PaymentMethods_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PaymentMethods"
    ADD CONSTRAINT "FK_PaymentMethods_Dictionaries" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3191 (class 2606 OID 31855)
-- Name: Photos FK_Photos_Products; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Photos"
    ADD CONSTRAINT "FK_Photos_Products" FOREIGN KEY ("ProductId") REFERENCES "Products"("Id");


--
-- TOC entry 3199 (class 2606 OID 31958)
-- Name: Positions FK_Positions_Carts; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Positions"
    ADD CONSTRAINT "FK_Positions_Carts" FOREIGN KEY ("CartId") REFERENCES "Carts"("Id");


--
-- TOC entry 3200 (class 2606 OID 31963)
-- Name: Positions FK_Positions_Products; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Positions"
    ADD CONSTRAINT "FK_Positions_Products" FOREIGN KEY ("ProductId") REFERENCES "Products"("Id");


--
-- TOC entry 3190 (class 2606 OID 31839)
-- Name: ProductAttributes FK_ProductAttributes_Attributes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductAttributes"
    ADD CONSTRAINT "FK_ProductAttributes_Attributes" FOREIGN KEY ("AttributeId") REFERENCES "Attributes"("Id");


--
-- TOC entry 3189 (class 2606 OID 31834)
-- Name: ProductAttributes FK_ProductAttributes_Products; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "ProductAttributes"
    ADD CONSTRAINT "FK_ProductAttributes_Products" FOREIGN KEY ("ProductId") REFERENCES "Products"("Id");


--
-- TOC entry 3183 (class 2606 OID 31799)
-- Name: Products FK_Products_Categories; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Products"
    ADD CONSTRAINT "FK_Products_Categories" FOREIGN KEY ("CategoryId") REFERENCES "Categories"("Id");


--
-- TOC entry 3185 (class 2606 OID 31809)
-- Name: Products FK_Products_Dictionaries_DescriptionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_DescriptionId" FOREIGN KEY ("DescriptionId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3187 (class 2606 OID 31819)
-- Name: Products FK_Products_Dictionaries_MetaDescriptionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_MetaDescriptionId" FOREIGN KEY ("MetaDescriptionId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3188 (class 2606 OID 31824)
-- Name: Products FK_Products_Dictionaries_MetaKeywordsId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_MetaKeywordsId" FOREIGN KEY ("MetaKeywordsId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3184 (class 2606 OID 31804)
-- Name: Products FK_Products_Dictionaries_NameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_NameId" FOREIGN KEY ("NameId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3186 (class 2606 OID 31814)
-- Name: Products FK_Products_Dictionaries_TitleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Products"
    ADD CONSTRAINT "FK_Products_Dictionaries_TitleId" FOREIGN KEY ("TitleId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3152 (class 2606 OID 31470)
-- Name: Properties FK_Properties_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Properties"
    ADD CONSTRAINT "FK_Properties_Dictionaries" FOREIGN KEY ("StringValueId") REFERENCES "Dictionaries"("Id");


--
-- TOC entry 3151 (class 2606 OID 31465)
-- Name: Properties FK_Properties_Members; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Properties"
    ADD CONSTRAINT "FK_Properties_Members" FOREIGN KEY ("MemberId") REFERENCES "Members"("Id");


--
-- TOC entry 3150 (class 2606 OID 31460)
-- Name: Properties FK_Properties_Objects; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Properties"
    ADD CONSTRAINT "FK_Properties_Objects" FOREIGN KEY ("ObjectId") REFERENCES "Objects"("Id");


--
-- TOC entry 3153 (class 2606 OID 31483)
-- Name: Relations FK_Relations_Members; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Relations"
    ADD CONSTRAINT "FK_Relations_Members" FOREIGN KEY ("MemberId") REFERENCES "Members"("Id");


--
-- TOC entry 3155 (class 2606 OID 31493)
-- Name: Relations FK_Relations_Objects_ForeignId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Relations"
    ADD CONSTRAINT "FK_Relations_Objects_ForeignId" FOREIGN KEY ("ForeignId") REFERENCES "Objects"("Id");


--
-- TOC entry 3154 (class 2606 OID 31488)
-- Name: Relations FK_Relations_Objects_PrimaryId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Relations"
    ADD CONSTRAINT "FK_Relations_Objects_PrimaryId" FOREIGN KEY ("PrimaryId") REFERENCES "Objects"("Id");


--
-- TOC entry 3133 (class 2606 OID 31211)
-- Name: RolePermissions FK_RolePermissions_Permissions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RolePermissions"
    ADD CONSTRAINT "FK_RolePermissions_Permissions" FOREIGN KEY ("PermissionId") REFERENCES "Permissions"("Id");


--
-- TOC entry 3138 (class 2606 OID 31304)
-- Name: EndpointPermissions FK_RolePermissions_Permissions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EndpointPermissions"
    ADD CONSTRAINT "FK_RolePermissions_Permissions" FOREIGN KEY ("PermissionId") REFERENCES "Permissions"("Id");


--
-- TOC entry 3132 (class 2606 OID 31206)
-- Name: RolePermissions FK_RolePermissions_Roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "RolePermissions"
    ADD CONSTRAINT "FK_RolePermissions_Roles" FOREIGN KEY ("RoleId") REFERENCES "Roles"("Id");


--
-- TOC entry 3174 (class 2606 OID 31694)
-- Name: SerializedForms FK_SerializedForms_Cultures; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedForms"
    ADD CONSTRAINT "FK_SerializedForms_Cultures" FOREIGN KEY ("CultureId") REFERENCES "Cultures"("Id");


--
-- TOC entry 3175 (class 2606 OID 31699)
-- Name: SerializedForms FK_SerializedForms_Forms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedForms"
    ADD CONSTRAINT "FK_SerializedForms_Forms" FOREIGN KEY ("FormId") REFERENCES "Forms"("Id");


--
-- TOC entry 3162 (class 2606 OID 31566)
-- Name: SerializedMenus FK_SerializedMenus_Cultures; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedMenus"
    ADD CONSTRAINT "FK_SerializedMenus_Cultures" FOREIGN KEY ("CultureId") REFERENCES "Cultures"("Id");


--
-- TOC entry 3163 (class 2606 OID 31571)
-- Name: SerializedMenus FK_SerializedMenus_Menus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedMenus"
    ADD CONSTRAINT "FK_SerializedMenus_Menus" FOREIGN KEY ("MenuId") REFERENCES "Menus"("Id");


--
-- TOC entry 3158 (class 2606 OID 31516)
-- Name: SerializedObjects FK_SerializedObjects_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedObjects"
    ADD CONSTRAINT "FK_SerializedObjects_Classes" FOREIGN KEY ("ClassId") REFERENCES "Classes"("Id");


--
-- TOC entry 3156 (class 2606 OID 31506)
-- Name: SerializedObjects FK_SerializedObjects_Cultures; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedObjects"
    ADD CONSTRAINT "FK_SerializedObjects_Cultures" FOREIGN KEY ("CultureId") REFERENCES "Cultures"("Id");


--
-- TOC entry 3157 (class 2606 OID 31511)
-- Name: SerializedObjects FK_SerializedObjects_Objects; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedObjects"
    ADD CONSTRAINT "FK_SerializedObjects_Objects" FOREIGN KEY ("ObjectId") REFERENCES "Objects"("Id");


--
-- TOC entry 3203 (class 2606 OID 31986)
-- Name: SerializedProducts FK_SerializedProducts_Categories; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedProducts"
    ADD CONSTRAINT "FK_SerializedProducts_Categories" FOREIGN KEY ("CategoryId") REFERENCES "Categories"("Id");


--
-- TOC entry 3201 (class 2606 OID 31976)
-- Name: SerializedProducts FK_SerializedProducts_Cultures; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedProducts"
    ADD CONSTRAINT "FK_SerializedProducts_Cultures" FOREIGN KEY ("CultureId") REFERENCES "Cultures"("Id");


--
-- TOC entry 3202 (class 2606 OID 31981)
-- Name: SerializedProducts FK_SerializedProducts_Products; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "SerializedProducts"
    ADD CONSTRAINT "FK_SerializedProducts_Products" FOREIGN KEY ("ProductId") REFERENCES "Products"("Id");


--
-- TOC entry 3141 (class 2606 OID 31352)
-- Name: Tabs FK_Tabs_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tabs"
    ADD CONSTRAINT "FK_Tabs_Classes" FOREIGN KEY ("ClassId") REFERENCES "Classes"("Id");


--
-- TOC entry 3131 (class 2606 OID 31185)
-- Name: UserRoles FK_UserRoles_Roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Roles" FOREIGN KEY ("RoleId") REFERENCES "Roles"("Id");


--
-- TOC entry 3130 (class 2606 OID 31180)
-- Name: UserRoles FK_UserRoles_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Users" FOREIGN KEY ("UserId") REFERENCES "Users"("Id");


--
-- TOC entry 3134 (class 2606 OID 31238)
-- Name: Variables FK_Variables_Configurations; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Variables"
    ADD CONSTRAINT "FK_Variables_Configurations" FOREIGN KEY ("ConfigurationId") REFERENCES "Configurations"("Id");


-- Completed on 2019-01-21 17:00:50

--
-- PostgreSQL database dump complete
--

