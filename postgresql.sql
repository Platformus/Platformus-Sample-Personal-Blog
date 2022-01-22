--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

-- Started on 2022-01-22 23:08:48

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
-- TOC entry 237 (class 1259 OID 25268)
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
-- TOC entry 236 (class 1259 OID 25267)
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
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 236
-- Name: Classes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Classes_Id_seq" OWNED BY public."Classes"."Id";


--
-- TOC entry 269 (class 1259 OID 25539)
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
-- TOC entry 268 (class 1259 OID 25538)
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
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 268
-- Name: CompletedFields_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CompletedFields_Id_seq" OWNED BY public."CompletedFields"."Id";


--
-- TOC entry 267 (class 1259 OID 25527)
-- Name: CompletedForms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CompletedForms" (
    "Id" integer NOT NULL,
    "FormId" integer NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE public."CompletedForms" OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 25526)
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
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 266
-- Name: CompletedForms_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CompletedForms_Id_seq" OWNED BY public."CompletedForms"."Id";


--
-- TOC entry 223 (class 1259 OID 25174)
-- Name: Configurations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Configurations" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "Name" text NOT NULL
);


ALTER TABLE public."Configurations" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 25173)
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
-- TOC entry 3672 (class 0 OID 0)
-- Dependencies: 222
-- Name: Configurations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Configurations_Id_seq" OWNED BY public."Configurations"."Id";


--
-- TOC entry 213 (class 1259 OID 25098)
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
-- TOC entry 212 (class 1259 OID 25097)
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
-- TOC entry 3673 (class 0 OID 0)
-- Dependencies: 212
-- Name: CredentialTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."CredentialTypes_Id_seq" OWNED BY public."CredentialTypes"."Id";


--
-- TOC entry 215 (class 1259 OID 25107)
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
-- TOC entry 214 (class 1259 OID 25106)
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
-- TOC entry 3674 (class 0 OID 0)
-- Dependencies: 214
-- Name: Credentials_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Credentials_Id_seq" OWNED BY public."Credentials"."Id";


--
-- TOC entry 226 (class 1259 OID 25196)
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
-- TOC entry 235 (class 1259 OID 25254)
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
-- TOC entry 234 (class 1259 OID 25253)
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
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 234
-- Name: DataSources_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataSources_Id_seq" OWNED BY public."DataSources"."Id";


--
-- TOC entry 245 (class 1259 OID 25319)
-- Name: DataTypeParameterOptions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataTypeParameterOptions" (
    "Id" integer NOT NULL,
    "DataTypeParameterId" integer NOT NULL,
    "Value" text NOT NULL
);


ALTER TABLE public."DataTypeParameterOptions" OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 25318)
-- Name: DataTypeParameterOptions_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DataTypeParameterOptions_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DataTypeParameterOptions_Id_seq" OWNER TO postgres;

--
-- TOC entry 3676 (class 0 OID 0)
-- Dependencies: 244
-- Name: DataTypeParameterOptions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataTypeParameterOptions_Id_seq" OWNED BY public."DataTypeParameterOptions"."Id";


--
-- TOC entry 243 (class 1259 OID 25305)
-- Name: DataTypeParameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataTypeParameters" (
    "Id" integer NOT NULL,
    "DataTypeId" integer NOT NULL,
    "ParameterEditorCode" text NOT NULL,
    "Code" text NOT NULL,
    "Name" text
);


ALTER TABLE public."DataTypeParameters" OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 25304)
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
-- TOC entry 3677 (class 0 OID 0)
-- Dependencies: 242
-- Name: DataTypeParameters_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataTypeParameters_Id_seq" OWNED BY public."DataTypeParameters"."Id";


--
-- TOC entry 241 (class 1259 OID 25296)
-- Name: DataTypes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataTypes" (
    "Id" integer NOT NULL,
    "StorageDataType" text NOT NULL,
    "ParameterEditorCode" text NOT NULL,
    "Name" text NOT NULL,
    "Position" integer
);


ALTER TABLE public."DataTypes" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 25295)
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
-- TOC entry 3678 (class 0 OID 0)
-- Dependencies: 240
-- Name: DataTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataTypes_Id_seq" OWNED BY public."DataTypes"."Id";


--
-- TOC entry 228 (class 1259 OID 25204)
-- Name: Dictionaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Dictionaries" (
    "Id" integer NOT NULL
);


ALTER TABLE public."Dictionaries" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 25203)
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
-- TOC entry 3679 (class 0 OID 0)
-- Dependencies: 227
-- Name: Dictionaries_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Dictionaries_Id_seq" OWNED BY public."Dictionaries"."Id";


--
-- TOC entry 233 (class 1259 OID 25238)
-- Name: EndpointPermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EndpointPermissions" (
    "EndpointId" integer NOT NULL,
    "PermissionId" integer NOT NULL
);


ALTER TABLE public."EndpointPermissions" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 25230)
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
-- TOC entry 231 (class 1259 OID 25229)
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
-- TOC entry 3680 (class 0 OID 0)
-- Dependencies: 231
-- Name: Endpoints_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Endpoints_Id_seq" OWNED BY public."Endpoints"."Id";


--
-- TOC entry 265 (class 1259 OID 25510)
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
-- TOC entry 264 (class 1259 OID 25509)
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
-- TOC entry 3681 (class 0 OID 0)
-- Dependencies: 264
-- Name: FieldOptions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FieldOptions_Id_seq" OWNED BY public."FieldOptions"."Id";


--
-- TOC entry 261 (class 1259 OID 25477)
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
-- TOC entry 260 (class 1259 OID 25476)
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
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 260
-- Name: FieldTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FieldTypes_Id_seq" OWNED BY public."FieldTypes"."Id";


--
-- TOC entry 263 (class 1259 OID 25486)
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
-- TOC entry 262 (class 1259 OID 25485)
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
-- TOC entry 3683 (class 0 OID 0)
-- Dependencies: 262
-- Name: Fields_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Fields_Id_seq" OWNED BY public."Fields"."Id";


--
-- TOC entry 271 (class 1259 OID 25558)
-- Name: Files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Files" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Size" bigint NOT NULL
);


ALTER TABLE public."Files" OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 25557)
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
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 270
-- Name: Files_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Files_Id_seq" OWNED BY public."Files"."Id";


--
-- TOC entry 259 (class 1259 OID 25458)
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
-- TOC entry 258 (class 1259 OID 25457)
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
-- TOC entry 3685 (class 0 OID 0)
-- Dependencies: 258
-- Name: Forms_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Forms_Id_seq" OWNED BY public."Forms"."Id";


--
-- TOC entry 230 (class 1259 OID 25211)
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
-- TOC entry 229 (class 1259 OID 25210)
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
-- TOC entry 3686 (class 0 OID 0)
-- Dependencies: 229
-- Name: Localizations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Localizations_Id_seq" OWNED BY public."Localizations"."Id";


--
-- TOC entry 247 (class 1259 OID 25333)
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
    "PropertyDataTypeParameters" text,
    "RelationClassId" integer,
    "IsRelationSingleParent" boolean,
    "MinRelatedObjectsNumber" integer,
    "MaxRelatedObjectsNumber" integer
);


ALTER TABLE public."Members" OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 25332)
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
-- TOC entry 3687 (class 0 OID 0)
-- Dependencies: 246
-- Name: Members_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Members_Id_seq" OWNED BY public."Members"."Id";


--
-- TOC entry 257 (class 1259 OID 25434)
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
-- TOC entry 256 (class 1259 OID 25433)
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
-- TOC entry 3688 (class 0 OID 0)
-- Dependencies: 256
-- Name: MenuItems_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."MenuItems_Id_seq" OWNED BY public."MenuItems"."Id";


--
-- TOC entry 255 (class 1259 OID 25420)
-- Name: Menus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Menus" (
    "Id" integer NOT NULL,
    "Code" text NOT NULL,
    "NameId" integer NOT NULL
);


ALTER TABLE public."Menus" OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 25419)
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
-- TOC entry 3689 (class 0 OID 0)
-- Dependencies: 254
-- Name: Menus_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Menus_Id_seq" OWNED BY public."Menus"."Id";


--
-- TOC entry 209 (class 1259 OID 25081)
-- Name: ModelStates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ModelStates" (
    "Id" uuid NOT NULL,
    "Value" text NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE public."ModelStates" OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 25362)
-- Name: Objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Objects" (
    "Id" integer NOT NULL,
    "ClassId" integer NOT NULL
);


ALTER TABLE public."Objects" OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 25361)
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
-- TOC entry 3690 (class 0 OID 0)
-- Dependencies: 248
-- Name: Objects_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Objects_Id_seq" OWNED BY public."Objects"."Id";


--
-- TOC entry 220 (class 1259 OID 25150)
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
-- TOC entry 219 (class 1259 OID 25149)
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
-- TOC entry 3691 (class 0 OID 0)
-- Dependencies: 219
-- Name: Permissions_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Permissions_Id_seq" OWNED BY public."Permissions"."Id";


--
-- TOC entry 251 (class 1259 OID 25374)
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
-- TOC entry 250 (class 1259 OID 25373)
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
-- TOC entry 3692 (class 0 OID 0)
-- Dependencies: 250
-- Name: Properties_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Properties_Id_seq" OWNED BY public."Properties"."Id";


--
-- TOC entry 253 (class 1259 OID 25398)
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
-- TOC entry 252 (class 1259 OID 25397)
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
-- TOC entry 3693 (class 0 OID 0)
-- Dependencies: 252
-- Name: Relations_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Relations_Id_seq" OWNED BY public."Relations"."Id";


--
-- TOC entry 221 (class 1259 OID 25158)
-- Name: RolePermissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RolePermissions" (
    "RoleId" integer NOT NULL,
    "PermissionId" integer NOT NULL
);


ALTER TABLE public."RolePermissions" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25126)
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
-- TOC entry 216 (class 1259 OID 25125)
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
-- TOC entry 3694 (class 0 OID 0)
-- Dependencies: 216
-- Name: Roles_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Roles_Id_seq" OWNED BY public."Roles"."Id";


--
-- TOC entry 239 (class 1259 OID 25282)
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
-- TOC entry 238 (class 1259 OID 25281)
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
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 238
-- Name: Tabs_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tabs_Id_seq" OWNED BY public."Tabs"."Id";


--
-- TOC entry 218 (class 1259 OID 25134)
-- Name: UserRoles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserRoles" (
    "UserId" integer NOT NULL,
    "RoleId" integer NOT NULL
);


ALTER TABLE public."UserRoles" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 25089)
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    "Id" integer NOT NULL,
    "Name" text NOT NULL,
    "Created" timestamp without time zone NOT NULL
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 25088)
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
-- TOC entry 3696 (class 0 OID 0)
-- Dependencies: 210
-- Name: Users_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_Id_seq" OWNED BY public."Users"."Id";


--
-- TOC entry 225 (class 1259 OID 25183)
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
-- TOC entry 224 (class 1259 OID 25182)
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
-- TOC entry 3697 (class 0 OID 0)
-- Dependencies: 224
-- Name: Variables_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Variables_Id_seq" OWNED BY public."Variables"."Id";


--
-- TOC entry 3335 (class 2604 OID 25271)
-- Name: Classes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classes" ALTER COLUMN "Id" SET DEFAULT nextval('public."Classes_Id_seq"'::regclass);


--
-- TOC entry 3351 (class 2604 OID 25542)
-- Name: CompletedFields Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedFields" ALTER COLUMN "Id" SET DEFAULT nextval('public."CompletedFields_Id_seq"'::regclass);


--
-- TOC entry 3350 (class 2604 OID 25530)
-- Name: CompletedForms Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedForms" ALTER COLUMN "Id" SET DEFAULT nextval('public."CompletedForms_Id_seq"'::regclass);


--
-- TOC entry 3329 (class 2604 OID 25177)
-- Name: Configurations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Configurations" ALTER COLUMN "Id" SET DEFAULT nextval('public."Configurations_Id_seq"'::regclass);


--
-- TOC entry 3325 (class 2604 OID 25101)
-- Name: CredentialTypes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CredentialTypes" ALTER COLUMN "Id" SET DEFAULT nextval('public."CredentialTypes_Id_seq"'::regclass);


--
-- TOC entry 3326 (class 2604 OID 25110)
-- Name: Credentials Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credentials" ALTER COLUMN "Id" SET DEFAULT nextval('public."Credentials_Id_seq"'::regclass);


--
-- TOC entry 3334 (class 2604 OID 25257)
-- Name: DataSources Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataSources" ALTER COLUMN "Id" SET DEFAULT nextval('public."DataSources_Id_seq"'::regclass);


--
-- TOC entry 3339 (class 2604 OID 25322)
-- Name: DataTypeParameterOptions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameterOptions" ALTER COLUMN "Id" SET DEFAULT nextval('public."DataTypeParameterOptions_Id_seq"'::regclass);


--
-- TOC entry 3338 (class 2604 OID 25308)
-- Name: DataTypeParameters Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameters" ALTER COLUMN "Id" SET DEFAULT nextval('public."DataTypeParameters_Id_seq"'::regclass);


--
-- TOC entry 3337 (class 2604 OID 25299)
-- Name: DataTypes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypes" ALTER COLUMN "Id" SET DEFAULT nextval('public."DataTypes_Id_seq"'::regclass);


--
-- TOC entry 3331 (class 2604 OID 25207)
-- Name: Dictionaries Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dictionaries" ALTER COLUMN "Id" SET DEFAULT nextval('public."Dictionaries_Id_seq"'::regclass);


--
-- TOC entry 3333 (class 2604 OID 25233)
-- Name: Endpoints Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Endpoints" ALTER COLUMN "Id" SET DEFAULT nextval('public."Endpoints_Id_seq"'::regclass);


--
-- TOC entry 3349 (class 2604 OID 25513)
-- Name: FieldOptions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldOptions" ALTER COLUMN "Id" SET DEFAULT nextval('public."FieldOptions_Id_seq"'::regclass);


--
-- TOC entry 3347 (class 2604 OID 25480)
-- Name: FieldTypes Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldTypes" ALTER COLUMN "Id" SET DEFAULT nextval('public."FieldTypes_Id_seq"'::regclass);


--
-- TOC entry 3348 (class 2604 OID 25489)
-- Name: Fields Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields" ALTER COLUMN "Id" SET DEFAULT nextval('public."Fields_Id_seq"'::regclass);


--
-- TOC entry 3352 (class 2604 OID 25561)
-- Name: Files Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Files" ALTER COLUMN "Id" SET DEFAULT nextval('public."Files_Id_seq"'::regclass);


--
-- TOC entry 3346 (class 2604 OID 25461)
-- Name: Forms Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forms" ALTER COLUMN "Id" SET DEFAULT nextval('public."Forms_Id_seq"'::regclass);


--
-- TOC entry 3332 (class 2604 OID 25214)
-- Name: Localizations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Localizations" ALTER COLUMN "Id" SET DEFAULT nextval('public."Localizations_Id_seq"'::regclass);


--
-- TOC entry 3340 (class 2604 OID 25336)
-- Name: Members Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members" ALTER COLUMN "Id" SET DEFAULT nextval('public."Members_Id_seq"'::regclass);


--
-- TOC entry 3345 (class 2604 OID 25437)
-- Name: MenuItems Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems" ALTER COLUMN "Id" SET DEFAULT nextval('public."MenuItems_Id_seq"'::regclass);


--
-- TOC entry 3344 (class 2604 OID 25423)
-- Name: Menus Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menus" ALTER COLUMN "Id" SET DEFAULT nextval('public."Menus_Id_seq"'::regclass);


--
-- TOC entry 3341 (class 2604 OID 25365)
-- Name: Objects Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Objects" ALTER COLUMN "Id" SET DEFAULT nextval('public."Objects_Id_seq"'::regclass);


--
-- TOC entry 3328 (class 2604 OID 25153)
-- Name: Permissions Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Permissions" ALTER COLUMN "Id" SET DEFAULT nextval('public."Permissions_Id_seq"'::regclass);


--
-- TOC entry 3342 (class 2604 OID 25377)
-- Name: Properties Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties" ALTER COLUMN "Id" SET DEFAULT nextval('public."Properties_Id_seq"'::regclass);


--
-- TOC entry 3343 (class 2604 OID 25401)
-- Name: Relations Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations" ALTER COLUMN "Id" SET DEFAULT nextval('public."Relations_Id_seq"'::regclass);


--
-- TOC entry 3327 (class 2604 OID 25129)
-- Name: Roles Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles" ALTER COLUMN "Id" SET DEFAULT nextval('public."Roles_Id_seq"'::regclass);


--
-- TOC entry 3336 (class 2604 OID 25285)
-- Name: Tabs Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tabs" ALTER COLUMN "Id" SET DEFAULT nextval('public."Tabs_Id_seq"'::regclass);


--
-- TOC entry 3324 (class 2604 OID 25092)
-- Name: Users Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN "Id" SET DEFAULT nextval('public."Users_Id_seq"'::regclass);


--
-- TOC entry 3330 (class 2604 OID 25186)
-- Name: Variables Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Variables" ALTER COLUMN "Id" SET DEFAULT nextval('public."Variables_Id_seq"'::regclass);


--
-- TOC entry 3629 (class 0 OID 25268)
-- Dependencies: 237
-- Data for Name: Classes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (1, NULL, 'Page', 'Page', 'Pages', true);
INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (2, 1, 'RegularPage', 'Regular Page', 'Regular Pages', false);
INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (3, NULL, 'Tag', 'Tag', 'Tags', false);
INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (4, NULL, 'Comment', 'Comment', 'Comments', false);
INSERT INTO public."Classes" ("Id", "ClassId", "Code", "Name", "PluralizedName", "IsAbstract") VALUES (5, 1, 'PostPage', 'Post Page', 'Post Pages', false);


--
-- TOC entry 3661 (class 0 OID 25539)
-- Dependencies: 269
-- Data for Name: CompletedFields; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3659 (class 0 OID 25527)
-- Dependencies: 267
-- Data for Name: CompletedForms; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3615 (class 0 OID 25174)
-- Dependencies: 223
-- Data for Name: Configurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Configurations" ("Id", "Code", "Name") VALUES (1, 'Email', 'Email');
INSERT INTO public."Configurations" ("Id", "Code", "Name") VALUES (2, 'Globalization', 'Globalization');


--
-- TOC entry 3605 (class 0 OID 25098)
-- Dependencies: 213
-- Data for Name: CredentialTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."CredentialTypes" ("Id", "Code", "Name", "Position") VALUES (1, 'Email', 'Email', 1);


--
-- TOC entry 3607 (class 0 OID 25107)
-- Dependencies: 215
-- Data for Name: Credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Credentials" ("Id", "UserId", "CredentialTypeId", "Identifier", "Secret", "Extra") VALUES (1, 1, 1, 'admin@platformus.net', '8lE3xN2Ijiv/Y/aIGwaZLrbcqrt/1jDmzPTdudKbVD0=', '0O/ZGwhScZRGbsmiUEckOg==');


--
-- TOC entry 3618 (class 0 OID 25196)
-- Dependencies: 226
-- Data for Name: Cultures; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Cultures" ("Id", "Name", "IsNeutral", "IsFrontendDefault", "IsBackendDefault") VALUES ('__', 'Neutral', true, false, false);
INSERT INTO public."Cultures" ("Id", "Name", "IsNeutral", "IsFrontendDefault", "IsBackendDefault") VALUES ('en', 'English', false, true, true);
INSERT INTO public."Cultures" ("Id", "Name", "IsNeutral", "IsFrontendDefault", "IsBackendDefault") VALUES ('ru', 'Русский', false, false, false);
INSERT INTO public."Cultures" ("Id", "Name", "IsNeutral", "IsFrontendDefault", "IsBackendDefault") VALUES ('uk', 'Українська', false, false, false);


--
-- TOC entry 3627 (class 0 OID 25254)
-- Dependencies: 235
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
-- TOC entry 3637 (class 0 OID 25319)
-- Dependencies: 245
-- Data for Name: DataTypeParameterOptions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3635 (class 0 OID 25305)
-- Dependencies: 243
-- Data for Name: DataTypeParameters; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (1, 1, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (2, 1, 'integerBox', 'MaxLength', 'Max length');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (3, 2, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (4, 2, 'integerBox', 'MaxLength', 'Max length');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (5, 4, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (6, 4, 'integerBox', 'MinValue', 'Min value');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (7, 4, 'integerBox', 'MaxValue', 'Max value');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (8, 5, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (9, 5, 'integerBox', 'MinValue', 'Min value');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (10, 5, 'integerBox', 'MaxValue', 'Max value');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (11, 7, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (12, 8, 'checkbox', 'IsRequired', 'Is required');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (13, 9, 'integerBox', 'Width', 'Width');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (14, 9, 'integerBox', 'Height', 'Height');
INSERT INTO public."DataTypeParameters" ("Id", "DataTypeId", "ParameterEditorCode", "Code", "Name") VALUES (15, 10, 'textBox', 'Mode', 'Mode');


--
-- TOC entry 3633 (class 0 OID 25296)
-- Dependencies: 241
-- Data for Name: DataTypes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (1, 'string', 'singleLinePlainText', 'Single line plain text', 1);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (2, 'string', 'multilinePlainText', 'Multiline plain text', 2);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (3, 'string', 'html', 'Html', 3);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (4, 'integer', 'integerNumber', 'Integer number', 4);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (5, 'decimal', 'decimalNumber', 'Decimal number', 5);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (6, 'integer', 'booleanFlag', 'Boolean flag', 6);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (7, 'datetime', 'date', 'Date', 7);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (8, 'datetime', 'dateTime', 'DateTime', 8);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (9, 'string', 'image', 'Image', 9);
INSERT INTO public."DataTypes" ("Id", "StorageDataType", "ParameterEditorCode", "Name", "Position") VALUES (10, 'string', 'sourceCode', 'Source code', 10);


--
-- TOC entry 3620 (class 0 OID 25204)
-- Dependencies: 228
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
-- TOC entry 3625 (class 0 OID 25238)
-- Dependencies: 233
-- Data for Name: EndpointPermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3624 (class 0 OID 25230)
-- Dependencies: 232
-- Data for Name: Endpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Endpoints" ("Id", "Name", "UrlTemplate", "Position", "DisallowAnonymous", "SignInUrl", "RequestProcessorCSharpClassName", "RequestProcessorParameters", "ResponseCacheCSharpClassName", "ResponseCacheParameters") VALUES (1, 'Default', '{*url}', 1000, false, NULL, 'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', 'ViewName=RegularPage', NULL, NULL);
INSERT INTO public."Endpoints" ("Id", "Name", "UrlTemplate", "Position", "DisallowAnonymous", "SignInUrl", "RequestProcessorCSharpClassName", "RequestProcessorParameters", "ResponseCacheCSharpClassName", "ResponseCacheParameters") VALUES (2, 'Blog', 'blog', 10, false, NULL, 'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', 'ViewName=BlogPage', NULL, NULL);
INSERT INTO public."Endpoints" ("Id", "Name", "UrlTemplate", "Position", "DisallowAnonymous", "SignInUrl", "RequestProcessorCSharpClassName", "RequestProcessorParameters", "ResponseCacheCSharpClassName", "ResponseCacheParameters") VALUES (3, 'Post', 'blog/{segment}', 20, false, NULL, 'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', 'ViewName=PostPage', NULL, NULL);
INSERT INTO public."Endpoints" ("Id", "Name", "UrlTemplate", "Position", "DisallowAnonymous", "SignInUrl", "RequestProcessorCSharpClassName", "RequestProcessorParameters", "ResponseCacheCSharpClassName", "ResponseCacheParameters") VALUES (4, 'Contacts', 'contacts', 30, false, NULL, 'Platformus.Website.Frontend.RequestProcessors.DefaultRequestProcessor', 'ViewName=ContactsPage', NULL, NULL);


--
-- TOC entry 3657 (class 0 OID 25510)
-- Dependencies: 265
-- Data for Name: FieldOptions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3653 (class 0 OID 25477)
-- Dependencies: 261
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
-- TOC entry 3655 (class 0 OID 25486)
-- Dependencies: 263
-- Data for Name: Fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (1, 1, 1, 'Name', 8, true, NULL, 10);
INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (2, 1, 1, 'Email', 9, true, NULL, 20);
INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (3, 1, 2, 'Message', 10, true, NULL, 30);
INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (4, 2, 1, 'Name', 13, true, NULL, 10);
INSERT INTO public."Fields" ("Id", "FormId", "FieldTypeId", "Code", "NameId", "IsRequired", "MaxLength", "Position") VALUES (5, 2, 2, 'Comment', 14, true, NULL, 20);


--
-- TOC entry 3663 (class 0 OID 25558)
-- Dependencies: 271
-- Data for Name: Files; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3651 (class 0 OID 25458)
-- Dependencies: 259
-- Data for Name: Forms; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Forms" ("Id", "Code", "NameId", "SubmitButtonTitleId", "ProduceCompletedForms", "FormHandlerCSharpClassName", "FormHandlerParameters") VALUES (1, 'Feedback', 6, 7, true, 'Platformus.Website.Frontend.FormHandlers.EmailFormHandler', 'RecipientEmails=test@test.com;RedirectUrl=/contacts');
INSERT INTO public."Forms" ("Id", "Code", "NameId", "SubmitButtonTitleId", "ProduceCompletedForms", "FormHandlerCSharpClassName", "FormHandlerParameters") VALUES (2, 'WriteComment', 11, 12, true, 'WebApplication.FormHandlers.WriteCommentFormHandler', NULL);


--
-- TOC entry 3622 (class 0 OID 25211)
-- Dependencies: 230
-- Data for Name: Localizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (1, 1, 'en', 'Main');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (2, 1, 'ru', 'Главное');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (3, 1, 'uk', 'Головне');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (4, 2, 'en', 'Home');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (5, 2, 'ru', 'Главная');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (6, 2, 'uk', 'Головна');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (7, 3, 'en', 'About me');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (8, 3, 'ru', 'Обо мне');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (9, 3, 'uk', 'Про мене');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (10, 4, 'en', 'Blog');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (11, 4, 'ru', 'Блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (12, 4, 'uk', 'Блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (13, 5, 'en', 'Contacts');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (14, 5, 'ru', 'Контакты');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (15, 5, 'uk', 'Контакти');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (16, 6, 'en', 'Feedback');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (17, 6, 'ru', 'Обратная связь');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (18, 6, 'uk', 'Зворотний зв’язок');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (19, 7, 'en', 'Submit');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (20, 7, 'ru', 'Отправить');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (21, 7, 'uk', 'Надіслати');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (22, 8, 'en', 'Your name');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (23, 8, 'ru', 'Ваше имя');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (24, 8, 'uk', 'Ваше ім’я');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (25, 9, 'en', 'Your email');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (26, 9, 'ru', 'Ваша электронная почта');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (27, 9, 'uk', 'Ваша електронна пошта');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (28, 10, 'en', 'Your message');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (29, 10, 'ru', 'Ваше сообщение');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (30, 10, 'uk', 'Ваше повідомлення');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (31, 11, 'en', 'Write comment');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (32, 11, 'ru', 'Напишите комментарий');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (33, 11, 'uk', 'Напишіть коментар');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (34, 12, 'en', 'Submit');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (35, 12, 'ru', 'Отправить');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (36, 12, 'uk', 'Надіслати');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (37, 13, 'en', 'Your name');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (38, 13, 'ru', 'Ваше имя');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (39, 13, 'uk', 'Ваше ім’я');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (40, 14, 'en', 'Your comment');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (41, 14, 'ru', 'Ваш ');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (42, 14, 'uk', 'Ваше повідомлення');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (43, 15, '__', '/');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (44, 16, 'en', '<h1>Your Personal Blog</h1><p>Hello! This is your personal blog, it is based on the <a href="https://platformus.net/" target="_blank" rel="noopener">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href="/backend">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href="http://docs.platformus.net/" target="_blank" rel="noopener">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">chat</a>.</p><p>Have a nice work!</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (45, 16, 'ru', '<h1>Ваш персональный блог</h1><p>Здравствуйте! Это ваш персональный блог, он работает на базе системы управления содержимым &laquo;<a href="https://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href="/backend">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (46, 16, 'uk', '<h1>Ваш персональний блог</h1><p>Вітаємо! Це ваш персональний блог, він працює на базі системи керування вмістом &laquo;<a href="https://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href="/backend">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (47, 17, 'en', 'Your Personal Blog');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (48, 17, 'ru', 'Ваш персональный блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (49, 17, 'uk', 'Ваш персональний блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (50, 18, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (51, 18, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (52, 18, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (53, 19, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (54, 19, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (55, 19, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (56, 20, '__', '/about-me');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (57, 21, 'en', '<h1>About Me</h1><p>Tell us about yourself in a few words. You can add photos or videos here.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (58, 21, 'ru', '<h1>Обо мне</h1><p>Расскажите о себе в нескольких словах. Вы можете добавить сюда фотографии или видео.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (59, 21, 'uk', '<h1>Про мене</h1><p>Розкажіть про себе в кількох словах. Ви можете додати сюди фотографії або відео.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (60, 22, 'en', 'About Me');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (61, 22, 'ru', 'Обо мне');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (62, 22, 'uk', 'Про мене');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (63, 23, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (64, 23, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (65, 23, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (66, 24, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (67, 24, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (68, 24, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (69, 25, '__', '/blog');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (70, 26, 'en', '<h1>Blog</h1>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (71, 26, 'ru', '<h1>Блог</h1>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (72, 26, 'uk', '<h1>Блог</h1>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (73, 27, 'en', 'Blog');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (74, 27, 'ru', 'Блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (75, 27, 'uk', 'Блог');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (76, 28, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (77, 28, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (78, 28, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (79, 29, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (80, 29, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (81, 29, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (82, 30, '__', '/contacts');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (83, 31, 'en', '<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (84, 31, 'ru', '<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (85, 31, 'uk', '<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (86, 32, 'en', 'Contacts');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (87, 32, 'ru', 'Контакты');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (88, 32, 'uk', 'Контакти');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (89, 33, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (90, 33, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (91, 33, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (92, 34, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (93, 34, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (94, 34, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (95, 35, 'en', 'Tag1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (96, 35, 'ru', 'Тэг1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (97, 35, 'uk', 'Тег1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (98, 36, 'en', 'Tag2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (99, 36, 'ru', 'Тэг2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (100, 36, 'uk', 'Тег2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (101, 37, 'en', 'Tag3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (102, 37, 'ru', 'Тэг3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (103, 37, 'uk', 'Тег3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (104, 38, 'en', 'Tag4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (105, 38, 'ru', 'Тэг4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (106, 38, 'uk', 'Тег4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (107, 39, 'en', 'Tag5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (108, 39, 'ru', 'Тэг5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (109, 39, 'uk', 'Тег5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (110, 40, '__', '/blog/post-1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (111, 41, '__', '/images/objects/10/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (112, 42, 'en', 'Post 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (113, 42, 'ru', 'Пост 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (114, 42, 'uk', 'Пост 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (115, 43, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (116, 43, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (117, 43, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (118, 44, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (119, 44, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (120, 44, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (121, 45, 'en', 'Post 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (122, 45, 'ru', 'Пост 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (123, 45, 'uk', 'Пост 1');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (124, 46, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (125, 46, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (126, 46, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (127, 47, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (128, 47, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (129, 47, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (130, 48, '__', '/blog/post-2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (131, 49, '__', '/images/objects/11/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (132, 50, 'en', 'Post 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (133, 50, 'ru', 'Пост 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (134, 50, 'uk', 'Пост 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (135, 51, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (136, 51, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (137, 51, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (138, 52, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (139, 52, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (140, 52, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (141, 53, 'en', 'Post 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (142, 53, 'ru', 'Пост 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (143, 53, 'uk', 'Пост 2');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (144, 54, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (145, 54, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (146, 54, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (147, 55, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (148, 55, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (149, 55, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (150, 56, '__', '/blog/post-3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (151, 57, '__', '/images/objects/12/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (152, 58, 'en', 'Post 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (153, 58, 'ru', 'Пост 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (154, 58, 'uk', 'Пост 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (155, 59, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (156, 59, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (157, 59, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (158, 60, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (159, 60, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (160, 60, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (161, 61, 'en', 'Post 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (162, 61, 'ru', 'Пост 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (163, 61, 'uk', 'Пост 3');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (164, 62, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (165, 62, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (166, 62, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (167, 63, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (168, 63, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (169, 63, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (170, 64, '__', '/blog/post-4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (171, 65, '__', '/images/objects/13/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (172, 66, 'en', 'Post 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (173, 66, 'ru', 'Пост 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (174, 66, 'uk', 'Пост 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (175, 67, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (176, 67, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (177, 67, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (178, 68, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (179, 68, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (180, 68, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (181, 69, 'en', 'Post 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (182, 69, 'ru', 'Пост 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (183, 69, 'uk', 'Пост 4');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (184, 70, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (185, 70, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (186, 70, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (187, 71, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (188, 71, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (189, 71, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (190, 72, '__', '/blog/post-5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (191, 73, '__', '/images/objects/14/cover.jpg');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (192, 74, 'en', 'Post 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (193, 74, 'ru', 'Пост 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (194, 74, 'uk', 'Пост 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (195, 75, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (196, 75, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (197, 75, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (198, 76, 'en', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (199, 76, 'ru', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (200, 76, 'uk', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (201, 77, 'en', 'Post 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (202, 77, 'ru', 'Пост 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (203, 77, 'uk', 'Пост 5');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (204, 78, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (205, 78, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (206, 78, 'uk', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (207, 79, 'en', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (208, 79, 'ru', '');
INSERT INTO public."Localizations" ("Id", "DictionaryId", "CultureId", "Value") VALUES (209, 79, 'uk', '');


--
-- TOC entry 3639 (class 0 OID 25333)
-- Dependencies: 247
-- Data for Name: Members; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (1, 1, NULL, 'Url', 'URL', 1, 1, false, true, 'IsRequired=true;MaxLength=128', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (2, 1, NULL, 'Content', 'Content', 100, 3, true, false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (3, 1, 1, 'Title', 'Title', 1000, 1, true, false, 'IsRequired=false;MaxLength=128', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (4, 1, 1, 'MetaDescription', 'META description', 1010, 1, true, false, 'IsRequired=false;MaxLength=512', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (5, 1, 1, 'MetaKeywords', 'META keywords', 1020, 1, true, false, 'IsRequired=false;MaxLength=256', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (6, 3, NULL, 'Text', 'Text', 10, 1, true, true, 'IsRequired=true;MaxLength=48', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (7, 4, NULL, 'Author', 'Author', 10, 1, false, true, 'IsRequired=true;MaxLength=64', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (8, 4, NULL, 'Text', 'Text', 20, 2, false, false, 'IsRequired=true', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (9, 4, NULL, 'Created', 'Created', 30, 7, false, true, 'IsRequired=true', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (10, 5, NULL, 'Name', 'Name', 10, 1, true, true, 'IsRequired=true;MaxLength=128', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (11, 5, NULL, 'Tags', 'Tags', 20, NULL, NULL, NULL, NULL, 3, false, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (12, 5, NULL, 'Cover', 'Cover', 30, 9, false, false, 'Width=1024;Height=256', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (13, 5, NULL, 'Preview', 'Preview', 40, 3, true, false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (14, 5, NULL, 'Created', 'Created', 200, 7, false, true, 'IsRequired=true', NULL, NULL, NULL, NULL);
INSERT INTO public."Members" ("Id", "ClassId", "TabId", "Code", "Name", "Position", "PropertyDataTypeId", "IsPropertyLocalizable", "IsPropertyVisibleInList", "PropertyDataTypeParameters", "RelationClassId", "IsRelationSingleParent", "MinRelatedObjectsNumber", "MaxRelatedObjectsNumber") VALUES (15, 5, NULL, 'Comments', 'Comments', 0, NULL, NULL, NULL, NULL, 4, true, NULL, NULL);


--
-- TOC entry 3649 (class 0 OID 25434)
-- Dependencies: 257
-- Data for Name: MenuItems; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."MenuItems" ("Id", "MenuId", "MenuItemId", "NameId", "Url", "Position") VALUES (1, 1, NULL, 2, '/', 10);
INSERT INTO public."MenuItems" ("Id", "MenuId", "MenuItemId", "NameId", "Url", "Position") VALUES (2, 1, NULL, 3, '/about-me', 20);
INSERT INTO public."MenuItems" ("Id", "MenuId", "MenuItemId", "NameId", "Url", "Position") VALUES (3, 1, NULL, 4, '/blog', 30);
INSERT INTO public."MenuItems" ("Id", "MenuId", "MenuItemId", "NameId", "Url", "Position") VALUES (4, 1, NULL, 5, '/contacts', 40);


--
-- TOC entry 3647 (class 0 OID 25420)
-- Dependencies: 255
-- Data for Name: Menus; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Menus" ("Id", "Code", "NameId") VALUES (1, 'Main', 1);


--
-- TOC entry 3601 (class 0 OID 25081)
-- Dependencies: 209
-- Data for Name: ModelStates; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3641 (class 0 OID 25362)
-- Dependencies: 249
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
-- TOC entry 3612 (class 0 OID 25150)
-- Dependencies: 220
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
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (9, 'ManageClasses', 'Manage classes', 900);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (10, 'ManageMenus', 'Manage menus', 1000);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (11, 'ManageForms', 'Manage forms', 1100);
INSERT INTO public."Permissions" ("Id", "Code", "Name", "Position") VALUES (12, 'ManageFileManager', 'Manage file manager', 1200);


--
-- TOC entry 3643 (class 0 OID 25374)
-- Dependencies: 251
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
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (31, 10, 14, NULL, NULL, NULL, '2022-01-22 23:07:35.05885');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (32, 10, 3, NULL, NULL, 45, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (33, 10, 4, NULL, NULL, 46, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (34, 10, 5, NULL, NULL, 47, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (35, 11, 1, NULL, NULL, 48, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (36, 11, 12, NULL, NULL, 49, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (37, 11, 10, NULL, NULL, 50, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (38, 11, 13, NULL, NULL, 51, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (39, 11, 2, NULL, NULL, 52, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (40, 11, 14, NULL, NULL, NULL, '2022-01-22 23:07:35.136988');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (41, 11, 3, NULL, NULL, 53, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (42, 11, 4, NULL, NULL, 54, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (43, 11, 5, NULL, NULL, 55, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (44, 12, 1, NULL, NULL, 56, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (45, 12, 12, NULL, NULL, 57, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (46, 12, 10, NULL, NULL, 58, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (47, 12, 13, NULL, NULL, 59, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (48, 12, 2, NULL, NULL, 60, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (49, 12, 14, NULL, NULL, NULL, '2022-01-22 23:07:35.190763');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (50, 12, 3, NULL, NULL, 61, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (51, 12, 4, NULL, NULL, 62, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (52, 12, 5, NULL, NULL, 63, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (53, 13, 1, NULL, NULL, 64, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (54, 13, 12, NULL, NULL, 65, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (55, 13, 10, NULL, NULL, 66, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (56, 13, 13, NULL, NULL, 67, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (57, 13, 2, NULL, NULL, 68, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (58, 13, 14, NULL, NULL, NULL, '2022-01-22 23:07:35.243418');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (59, 13, 3, NULL, NULL, 69, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (60, 13, 4, NULL, NULL, 70, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (61, 13, 5, NULL, NULL, 71, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (62, 14, 1, NULL, NULL, 72, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (63, 14, 12, NULL, NULL, 73, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (64, 14, 10, NULL, NULL, 74, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (65, 14, 13, NULL, NULL, 75, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (66, 14, 2, NULL, NULL, 76, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (67, 14, 14, NULL, NULL, NULL, '2022-01-22 23:07:35.299575');
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (68, 14, 3, NULL, NULL, 77, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (69, 14, 4, NULL, NULL, 78, NULL);
INSERT INTO public."Properties" ("Id", "ObjectId", "MemberId", "IntegerValue", "DecimalValue", "StringValueId", "DateTimeValue") VALUES (70, 14, 5, NULL, NULL, 79, NULL);


--
-- TOC entry 3645 (class 0 OID 25398)
-- Dependencies: 253
-- Data for Name: Relations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (1, 11, 5, 10);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (2, 11, 7, 11);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (3, 11, 7, 12);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (4, 11, 5, 12);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (5, 11, 8, 13);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (6, 11, 6, 13);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (7, 11, 9, 14);
INSERT INTO public."Relations" ("Id", "MemberId", "PrimaryId", "ForeignId") VALUES (8, 11, 7, 14);


--
-- TOC entry 3613 (class 0 OID 25158)
-- Dependencies: 221
-- Data for Name: RolePermissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (1, 1);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (2, 1);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (3, 8);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (3, 10);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (3, 11);
INSERT INTO public."RolePermissions" ("RoleId", "PermissionId") VALUES (3, 12);


--
-- TOC entry 3609 (class 0 OID 25126)
-- Dependencies: 217
-- Data for Name: Roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Roles" ("Id", "Code", "Name", "Position") VALUES (1, 'Developer', 'Developer', 100);
INSERT INTO public."Roles" ("Id", "Code", "Name", "Position") VALUES (2, 'Administrator', 'Administrator', 200);
INSERT INTO public."Roles" ("Id", "Code", "Name", "Position") VALUES (3, 'ContentManager', 'Content manager', 300);


--
-- TOC entry 3631 (class 0 OID 25282)
-- Dependencies: 239
-- Data for Name: Tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Tabs" ("Id", "ClassId", "Name", "Position") VALUES (1, 1, 'SEO', 100);


--
-- TOC entry 3610 (class 0 OID 25134)
-- Dependencies: 218
-- Data for Name: UserRoles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."UserRoles" ("UserId", "RoleId") VALUES (1, 1);
INSERT INTO public."UserRoles" ("UserId", "RoleId") VALUES (1, 2);


--
-- TOC entry 3603 (class 0 OID 25089)
-- Dependencies: 211
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Users" ("Id", "Name", "Created") VALUES (1, 'Administrator', '2017-01-01 00:00:00');


--
-- TOC entry 3617 (class 0 OID 25183)
-- Dependencies: 225
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
-- TOC entry 3698 (class 0 OID 0)
-- Dependencies: 236
-- Name: Classes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Classes_Id_seq"', 5, true);


--
-- TOC entry 3699 (class 0 OID 0)
-- Dependencies: 268
-- Name: CompletedFields_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CompletedFields_Id_seq"', 1, false);


--
-- TOC entry 3700 (class 0 OID 0)
-- Dependencies: 266
-- Name: CompletedForms_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CompletedForms_Id_seq"', 1, false);


--
-- TOC entry 3701 (class 0 OID 0)
-- Dependencies: 222
-- Name: Configurations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Configurations_Id_seq"', 3, false);


--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 212
-- Name: CredentialTypes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."CredentialTypes_Id_seq"', 2, false);


--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 214
-- Name: Credentials_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Credentials_Id_seq"', 2, false);


--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 234
-- Name: DataSources_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DataSources_Id_seq"', 7, true);


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 244
-- Name: DataTypeParameterOptions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DataTypeParameterOptions_Id_seq"', 1, false);


--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 242
-- Name: DataTypeParameters_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DataTypeParameters_Id_seq"', 16, false);


--
-- TOC entry 3707 (class 0 OID 0)
-- Dependencies: 240
-- Name: DataTypes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."DataTypes_Id_seq"', 11, false);


--
-- TOC entry 3708 (class 0 OID 0)
-- Dependencies: 227
-- Name: Dictionaries_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Dictionaries_Id_seq"', 79, true);


--
-- TOC entry 3709 (class 0 OID 0)
-- Dependencies: 231
-- Name: Endpoints_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Endpoints_Id_seq"', 4, true);


--
-- TOC entry 3710 (class 0 OID 0)
-- Dependencies: 264
-- Name: FieldOptions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FieldOptions_Id_seq"', 1, false);


--
-- TOC entry 3711 (class 0 OID 0)
-- Dependencies: 260
-- Name: FieldTypes_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FieldTypes_Id_seq"', 8, false);


--
-- TOC entry 3712 (class 0 OID 0)
-- Dependencies: 262
-- Name: Fields_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Fields_Id_seq"', 5, true);


--
-- TOC entry 3713 (class 0 OID 0)
-- Dependencies: 270
-- Name: Files_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Files_Id_seq"', 1, false);


--
-- TOC entry 3714 (class 0 OID 0)
-- Dependencies: 258
-- Name: Forms_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Forms_Id_seq"', 2, true);


--
-- TOC entry 3715 (class 0 OID 0)
-- Dependencies: 229
-- Name: Localizations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Localizations_Id_seq"', 209, true);


--
-- TOC entry 3716 (class 0 OID 0)
-- Dependencies: 246
-- Name: Members_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Members_Id_seq"', 15, true);


--
-- TOC entry 3717 (class 0 OID 0)
-- Dependencies: 256
-- Name: MenuItems_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."MenuItems_Id_seq"', 4, true);


--
-- TOC entry 3718 (class 0 OID 0)
-- Dependencies: 254
-- Name: Menus_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Menus_Id_seq"', 1, true);


--
-- TOC entry 3719 (class 0 OID 0)
-- Dependencies: 248
-- Name: Objects_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Objects_Id_seq"', 14, true);


--
-- TOC entry 3720 (class 0 OID 0)
-- Dependencies: 219
-- Name: Permissions_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Permissions_Id_seq"', 1, false);


--
-- TOC entry 3721 (class 0 OID 0)
-- Dependencies: 250
-- Name: Properties_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Properties_Id_seq"', 70, true);


--
-- TOC entry 3722 (class 0 OID 0)
-- Dependencies: 252
-- Name: Relations_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Relations_Id_seq"', 8, true);


--
-- TOC entry 3723 (class 0 OID 0)
-- Dependencies: 216
-- Name: Roles_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Roles_Id_seq"', 4, false);


--
-- TOC entry 3724 (class 0 OID 0)
-- Dependencies: 238
-- Name: Tabs_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tabs_Id_seq"', 1, true);


--
-- TOC entry 3725 (class 0 OID 0)
-- Dependencies: 210
-- Name: Users_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_Id_seq"', 2, false);


--
-- TOC entry 3726 (class 0 OID 0)
-- Dependencies: 224
-- Name: Variables_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Variables_Id_seq"', 9, false);


--
-- TOC entry 3386 (class 2606 OID 25275)
-- Name: Classes PK_Classes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "PK_Classes" PRIMARY KEY ("Id");


--
-- TOC entry 3418 (class 2606 OID 25546)
-- Name: CompletedFields PK_CompletedFields; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedFields"
    ADD CONSTRAINT "PK_CompletedFields" PRIMARY KEY ("Id");


--
-- TOC entry 3416 (class 2606 OID 25532)
-- Name: CompletedForms PK_CompletedForms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedForms"
    ADD CONSTRAINT "PK_CompletedForms" PRIMARY KEY ("Id");


--
-- TOC entry 3370 (class 2606 OID 25181)
-- Name: Configurations PK_Configurations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Configurations"
    ADD CONSTRAINT "PK_Configurations" PRIMARY KEY ("Id");


--
-- TOC entry 3358 (class 2606 OID 25105)
-- Name: CredentialTypes PK_CredentialTypes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CredentialTypes"
    ADD CONSTRAINT "PK_CredentialTypes" PRIMARY KEY ("Id");


--
-- TOC entry 3360 (class 2606 OID 25114)
-- Name: Credentials PK_Credentials; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credentials"
    ADD CONSTRAINT "PK_Credentials" PRIMARY KEY ("Id");


--
-- TOC entry 3374 (class 2606 OID 25202)
-- Name: Cultures PK_Cultures; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Cultures"
    ADD CONSTRAINT "PK_Cultures" PRIMARY KEY ("Id");


--
-- TOC entry 3384 (class 2606 OID 25261)
-- Name: DataSources PK_DataSources; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataSources"
    ADD CONSTRAINT "PK_DataSources" PRIMARY KEY ("Id");


--
-- TOC entry 3394 (class 2606 OID 25326)
-- Name: DataTypeParameterOptions PK_DataTypeParameterOptions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameterOptions"
    ADD CONSTRAINT "PK_DataTypeParameterOptions" PRIMARY KEY ("Id");


--
-- TOC entry 3392 (class 2606 OID 25312)
-- Name: DataTypeParameters PK_DataTypeParameters; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameters"
    ADD CONSTRAINT "PK_DataTypeParameters" PRIMARY KEY ("Id");


--
-- TOC entry 3390 (class 2606 OID 25303)
-- Name: DataTypes PK_DataTypes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypes"
    ADD CONSTRAINT "PK_DataTypes" PRIMARY KEY ("Id");


--
-- TOC entry 3376 (class 2606 OID 25209)
-- Name: Dictionaries PK_Dictionaries; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Dictionaries"
    ADD CONSTRAINT "PK_Dictionaries" PRIMARY KEY ("Id");


--
-- TOC entry 3382 (class 2606 OID 25242)
-- Name: EndpointPermissions PK_EndpointPermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EndpointPermissions"
    ADD CONSTRAINT "PK_EndpointPermissions" PRIMARY KEY ("EndpointId", "PermissionId");


--
-- TOC entry 3380 (class 2606 OID 25237)
-- Name: Endpoints PK_Endpoints; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Endpoints"
    ADD CONSTRAINT "PK_Endpoints" PRIMARY KEY ("Id");


--
-- TOC entry 3414 (class 2606 OID 25515)
-- Name: FieldOptions PK_FieldOptions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldOptions"
    ADD CONSTRAINT "PK_FieldOptions" PRIMARY KEY ("Id");


--
-- TOC entry 3410 (class 2606 OID 25484)
-- Name: FieldTypes PK_FieldTypes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldTypes"
    ADD CONSTRAINT "PK_FieldTypes" PRIMARY KEY ("Id");


--
-- TOC entry 3412 (class 2606 OID 25493)
-- Name: Fields PK_Fields; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields"
    ADD CONSTRAINT "PK_Fields" PRIMARY KEY ("Id");


--
-- TOC entry 3420 (class 2606 OID 25565)
-- Name: Files PK_Files; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Files"
    ADD CONSTRAINT "PK_Files" PRIMARY KEY ("Id");


--
-- TOC entry 3408 (class 2606 OID 25465)
-- Name: Forms PK_Forms; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forms"
    ADD CONSTRAINT "PK_Forms" PRIMARY KEY ("Id");


--
-- TOC entry 3378 (class 2606 OID 25218)
-- Name: Localizations PK_Localizations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Localizations"
    ADD CONSTRAINT "PK_Localizations" PRIMARY KEY ("Id");


--
-- TOC entry 3396 (class 2606 OID 25340)
-- Name: Members PK_Members; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "PK_Members" PRIMARY KEY ("Id");


--
-- TOC entry 3406 (class 2606 OID 25441)
-- Name: MenuItems PK_MenuItems; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "PK_MenuItems" PRIMARY KEY ("Id");


--
-- TOC entry 3404 (class 2606 OID 25427)
-- Name: Menus PK_Menus; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menus"
    ADD CONSTRAINT "PK_Menus" PRIMARY KEY ("Id");


--
-- TOC entry 3354 (class 2606 OID 25087)
-- Name: ModelStates PK_ModelStates; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ModelStates"
    ADD CONSTRAINT "PK_ModelStates" PRIMARY KEY ("Id");


--
-- TOC entry 3398 (class 2606 OID 25367)
-- Name: Objects PK_Objects; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "PK_Objects" PRIMARY KEY ("Id");


--
-- TOC entry 3366 (class 2606 OID 25157)
-- Name: Permissions PK_Permissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Permissions"
    ADD CONSTRAINT "PK_Permissions" PRIMARY KEY ("Id");


--
-- TOC entry 3400 (class 2606 OID 25381)
-- Name: Properties PK_Properties; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties"
    ADD CONSTRAINT "PK_Properties" PRIMARY KEY ("Id");


--
-- TOC entry 3402 (class 2606 OID 25403)
-- Name: Relations PK_Relations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations"
    ADD CONSTRAINT "PK_Relations" PRIMARY KEY ("Id");


--
-- TOC entry 3368 (class 2606 OID 25162)
-- Name: RolePermissions PK_RolePermissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RolePermissions"
    ADD CONSTRAINT "PK_RolePermissions" PRIMARY KEY ("RoleId", "PermissionId");


--
-- TOC entry 3362 (class 2606 OID 25133)
-- Name: Roles PK_Roles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "PK_Roles" PRIMARY KEY ("Id");


--
-- TOC entry 3388 (class 2606 OID 25289)
-- Name: Tabs PK_Tabs; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tabs"
    ADD CONSTRAINT "PK_Tabs" PRIMARY KEY ("Id");


--
-- TOC entry 3364 (class 2606 OID 25138)
-- Name: UserRoles PK_UserRoles; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "PK_UserRoles" PRIMARY KEY ("UserId", "RoleId");


--
-- TOC entry 3356 (class 2606 OID 25096)
-- Name: Users PK_Users; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "PK_Users" PRIMARY KEY ("Id");


--
-- TOC entry 3372 (class 2606 OID 25190)
-- Name: Variables PK_Variable; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Variables"
    ADD CONSTRAINT "PK_Variable" PRIMARY KEY ("Id");


--
-- TOC entry 3433 (class 2606 OID 25276)
-- Name: Classes FK_Classes_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Classes"
    ADD CONSTRAINT "FK_Classes_Classes" FOREIGN KEY ("ClassId") REFERENCES public."Classes"("Id") ON DELETE SET NULL;


--
-- TOC entry 3460 (class 2606 OID 25547)
-- Name: CompletedFields FK_CompletedFields_CompletedForms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedFields"
    ADD CONSTRAINT "FK_CompletedFields_CompletedForms" FOREIGN KEY ("CompletedFormId") REFERENCES public."CompletedForms"("Id") ON DELETE CASCADE;


--
-- TOC entry 3461 (class 2606 OID 25552)
-- Name: CompletedFields FK_CompletedFields_Fields; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedFields"
    ADD CONSTRAINT "FK_CompletedFields_Fields" FOREIGN KEY ("FieldId") REFERENCES public."Fields"("Id") ON DELETE CASCADE;


--
-- TOC entry 3459 (class 2606 OID 25533)
-- Name: CompletedForms FK_CompletedForms_Forms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CompletedForms"
    ADD CONSTRAINT "FK_CompletedForms_Forms" FOREIGN KEY ("FormId") REFERENCES public."Forms"("Id") ON DELETE CASCADE;


--
-- TOC entry 3422 (class 2606 OID 25120)
-- Name: Credentials FK_Credentials_CredentialTypes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credentials"
    ADD CONSTRAINT "FK_Credentials_CredentialTypes" FOREIGN KEY ("CredentialTypeId") REFERENCES public."CredentialTypes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3421 (class 2606 OID 25115)
-- Name: Credentials FK_Credentials_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Credentials"
    ADD CONSTRAINT "FK_Credentials_Users" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 3432 (class 2606 OID 25262)
-- Name: DataSources FK_DataSources_Endpoints; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataSources"
    ADD CONSTRAINT "FK_DataSources_Endpoints" FOREIGN KEY ("EndpointId") REFERENCES public."Endpoints"("Id") ON DELETE CASCADE;


--
-- TOC entry 3436 (class 2606 OID 25327)
-- Name: DataTypeParameterOptions FK_DataTypeParameterOptions_DataTypeParameters_DataTypeParamete; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameterOptions"
    ADD CONSTRAINT "FK_DataTypeParameterOptions_DataTypeParameters_DataTypeParamete" FOREIGN KEY ("DataTypeParameterId") REFERENCES public."DataTypeParameters"("Id") ON DELETE CASCADE;


--
-- TOC entry 3435 (class 2606 OID 25313)
-- Name: DataTypeParameters FK_DataTypeParameters_DataTypes_DataTypeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataTypeParameters"
    ADD CONSTRAINT "FK_DataTypeParameters_DataTypes_DataTypeId" FOREIGN KEY ("DataTypeId") REFERENCES public."DataTypes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3430 (class 2606 OID 25243)
-- Name: EndpointPermissions FK_EndpointPermissions_Roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EndpointPermissions"
    ADD CONSTRAINT "FK_EndpointPermissions_Roles" FOREIGN KEY ("EndpointId") REFERENCES public."Endpoints"("Id") ON DELETE CASCADE;


--
-- TOC entry 3458 (class 2606 OID 25521)
-- Name: FieldOptions FK_FieldOptions_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldOptions"
    ADD CONSTRAINT "FK_FieldOptions_Dictionaries" FOREIGN KEY ("ValueId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3457 (class 2606 OID 25516)
-- Name: FieldOptions FK_FieldOptions_Fields; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FieldOptions"
    ADD CONSTRAINT "FK_FieldOptions_Fields" FOREIGN KEY ("FieldId") REFERENCES public."Fields"("Id") ON DELETE CASCADE;


--
-- TOC entry 3456 (class 2606 OID 25504)
-- Name: Fields FK_Fields_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields"
    ADD CONSTRAINT "FK_Fields_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3455 (class 2606 OID 25499)
-- Name: Fields FK_Fields_FieldTypes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields"
    ADD CONSTRAINT "FK_Fields_FieldTypes" FOREIGN KEY ("FieldTypeId") REFERENCES public."FieldTypes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3454 (class 2606 OID 25494)
-- Name: Fields FK_Fields_Forms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Fields"
    ADD CONSTRAINT "FK_Fields_Forms" FOREIGN KEY ("FormId") REFERENCES public."Forms"("Id") ON DELETE CASCADE;


--
-- TOC entry 3452 (class 2606 OID 25466)
-- Name: Forms FK_Forms_Dictionaries_NameId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forms"
    ADD CONSTRAINT "FK_Forms_Dictionaries_NameId" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3453 (class 2606 OID 25471)
-- Name: Forms FK_Forms_Dictionaries_SubmitButtonTitleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Forms"
    ADD CONSTRAINT "FK_Forms_Dictionaries_SubmitButtonTitleId" FOREIGN KEY ("SubmitButtonTitleId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3429 (class 2606 OID 25224)
-- Name: Localizations FK_Localizations_Cultures; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Localizations"
    ADD CONSTRAINT "FK_Localizations_Cultures" FOREIGN KEY ("CultureId") REFERENCES public."Cultures"("Id") ON DELETE CASCADE;


--
-- TOC entry 3428 (class 2606 OID 25219)
-- Name: Localizations FK_Localizations_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Localizations"
    ADD CONSTRAINT "FK_Localizations_Dictionaries" FOREIGN KEY ("DictionaryId") REFERENCES public."Dictionaries"("Id") ON DELETE CASCADE;


--
-- TOC entry 3437 (class 2606 OID 25341)
-- Name: Members FK_Members_Classes_ClassId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "FK_Members_Classes_ClassId" FOREIGN KEY ("ClassId") REFERENCES public."Classes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3440 (class 2606 OID 25356)
-- Name: Members FK_Members_Classes_RelationClassId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "FK_Members_Classes_RelationClassId" FOREIGN KEY ("RelationClassId") REFERENCES public."Classes"("Id") ON DELETE SET NULL;


--
-- TOC entry 3439 (class 2606 OID 25351)
-- Name: Members FK_Members_DataTypes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "FK_Members_DataTypes" FOREIGN KEY ("PropertyDataTypeId") REFERENCES public."DataTypes"("Id") ON DELETE SET NULL;


--
-- TOC entry 3438 (class 2606 OID 25346)
-- Name: Members FK_Members_Tabs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Members"
    ADD CONSTRAINT "FK_Members_Tabs" FOREIGN KEY ("TabId") REFERENCES public."Tabs"("Id") ON DELETE SET NULL;


--
-- TOC entry 3451 (class 2606 OID 25452)
-- Name: MenuItems FK_MenuItems_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "FK_MenuItems_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3450 (class 2606 OID 25447)
-- Name: MenuItems FK_MenuItems_MenuItems; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "FK_MenuItems_MenuItems" FOREIGN KEY ("MenuItemId") REFERENCES public."MenuItems"("Id") ON DELETE CASCADE;


--
-- TOC entry 3449 (class 2606 OID 25442)
-- Name: MenuItems FK_MenuItems_Menus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MenuItems"
    ADD CONSTRAINT "FK_MenuItems_Menus" FOREIGN KEY ("MenuId") REFERENCES public."Menus"("Id") ON DELETE CASCADE;


--
-- TOC entry 3448 (class 2606 OID 25428)
-- Name: Menus FK_Menus_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Menus"
    ADD CONSTRAINT "FK_Menus_Dictionaries" FOREIGN KEY ("NameId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3441 (class 2606 OID 25368)
-- Name: Objects FK_Objects_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Objects"
    ADD CONSTRAINT "FK_Objects_Classes" FOREIGN KEY ("ClassId") REFERENCES public."Classes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3444 (class 2606 OID 25392)
-- Name: Properties FK_Properties_Dictionaries; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties"
    ADD CONSTRAINT "FK_Properties_Dictionaries" FOREIGN KEY ("StringValueId") REFERENCES public."Dictionaries"("Id");


--
-- TOC entry 3443 (class 2606 OID 25387)
-- Name: Properties FK_Properties_Members; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties"
    ADD CONSTRAINT "FK_Properties_Members" FOREIGN KEY ("MemberId") REFERENCES public."Members"("Id") ON DELETE CASCADE;


--
-- TOC entry 3442 (class 2606 OID 25382)
-- Name: Properties FK_Properties_Objects; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Properties"
    ADD CONSTRAINT "FK_Properties_Objects" FOREIGN KEY ("ObjectId") REFERENCES public."Objects"("Id") ON DELETE CASCADE;


--
-- TOC entry 3445 (class 2606 OID 25404)
-- Name: Relations FK_Relations_Members; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations"
    ADD CONSTRAINT "FK_Relations_Members" FOREIGN KEY ("MemberId") REFERENCES public."Members"("Id") ON DELETE CASCADE;


--
-- TOC entry 3447 (class 2606 OID 25414)
-- Name: Relations FK_Relations_Objects_ForeignId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations"
    ADD CONSTRAINT "FK_Relations_Objects_ForeignId" FOREIGN KEY ("ForeignId") REFERENCES public."Objects"("Id") ON DELETE CASCADE;


--
-- TOC entry 3446 (class 2606 OID 25409)
-- Name: Relations FK_Relations_Objects_PrimaryId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Relations"
    ADD CONSTRAINT "FK_Relations_Objects_PrimaryId" FOREIGN KEY ("PrimaryId") REFERENCES public."Objects"("Id") ON DELETE CASCADE;


--
-- TOC entry 3426 (class 2606 OID 25168)
-- Name: RolePermissions FK_RolePermissions_Permissions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RolePermissions"
    ADD CONSTRAINT "FK_RolePermissions_Permissions" FOREIGN KEY ("PermissionId") REFERENCES public."Permissions"("Id") ON DELETE CASCADE;


--
-- TOC entry 3431 (class 2606 OID 25248)
-- Name: EndpointPermissions FK_RolePermissions_Permissions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EndpointPermissions"
    ADD CONSTRAINT "FK_RolePermissions_Permissions" FOREIGN KEY ("PermissionId") REFERENCES public."Permissions"("Id") ON DELETE CASCADE;


--
-- TOC entry 3425 (class 2606 OID 25163)
-- Name: RolePermissions FK_RolePermissions_Roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RolePermissions"
    ADD CONSTRAINT "FK_RolePermissions_Roles" FOREIGN KEY ("RoleId") REFERENCES public."Roles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3434 (class 2606 OID 25290)
-- Name: Tabs FK_Tabs_Classes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tabs"
    ADD CONSTRAINT "FK_Tabs_Classes" FOREIGN KEY ("ClassId") REFERENCES public."Classes"("Id") ON DELETE CASCADE;


--
-- TOC entry 3424 (class 2606 OID 25144)
-- Name: UserRoles FK_UserRoles_Roles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Roles" FOREIGN KEY ("RoleId") REFERENCES public."Roles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3423 (class 2606 OID 25139)
-- Name: UserRoles FK_UserRoles_Users; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserRoles"
    ADD CONSTRAINT "FK_UserRoles_Users" FOREIGN KEY ("UserId") REFERENCES public."Users"("Id") ON DELETE CASCADE;


--
-- TOC entry 3427 (class 2606 OID 25191)
-- Name: Variables FK_Variables_Configurations; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Variables"
    ADD CONSTRAINT "FK_Variables_Configurations" FOREIGN KEY ("ConfigurationId") REFERENCES public."Configurations"("Id") ON DELETE CASCADE;


-- Completed on 2022-01-22 23:08:48

--
-- PostgreSQL database dump complete
--

