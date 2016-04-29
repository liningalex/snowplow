-- AUTO-GENERATED BY schema-ddl DO NOT EDIT
-- Generator: schema-ddl 0.3.0
-- Generated: 2016-05-02 00:22

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_clearbit_person_1 (
    "schema_vendor"        VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_name"          VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_format"        VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_version"       VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "root_id"              CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"          TIMESTAMP        ENCODE LZO       NOT NULL,
    "ref_root"             VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "ref_tree"             VARCHAR(1500)    ENCODE RUNLENGTH NOT NULL,
    "ref_parent"           VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "aboutme.avatar"       VARCHAR(4096)    ENCODE LZO,
    "aboutme.bio"          VARCHAR(4096)    ENCODE LZO,
    "aboutme.handle"       VARCHAR(4096)    ENCODE LZO,
    "angellist.avatar"     VARCHAR(4096)    ENCODE LZO,
    "angellist.bio"        VARCHAR(4096)    ENCODE LZO,
    "angellist.blog"       VARCHAR(4096)    ENCODE LZO,
    "angellist.followers"  VARCHAR(4096)    ENCODE LZO,
    "angellist.handle"     VARCHAR(4096)    ENCODE LZO,
    "angellist.site"       VARCHAR(4096)    ENCODE LZO,
    "avatar"               VARCHAR(4096)    ENCODE LZO,
    "bio"                  VARCHAR(4096)    ENCODE LZO,
    "email"                VARCHAR(4096)    ENCODE LZO,
    "employment.domain"    VARCHAR(4096)    ENCODE LZO,
    "employment.name"      VARCHAR(4096)    ENCODE LZO,
    "employment.role"      VARCHAR(4096)    ENCODE LZO,
    "employment.seniority" VARCHAR(4096)    ENCODE LZO,
    "employment.title"     VARCHAR(4096)    ENCODE LZO,
    "facebook.handle"      VARCHAR(4096)    ENCODE LZO,
    "fuzzy"                BOOLEAN          ENCODE RAW,
    "gender"               VARCHAR(4096)    ENCODE LZO,
    "geo.city"             VARCHAR(4096)    ENCODE LZO,
    "geo.country"          VARCHAR(4096)    ENCODE LZO,
    "geo.country_code"     VARCHAR(4096)    ENCODE LZO,
    "geo.lat"              DOUBLE PRECISION ENCODE RAW,
    "geo.lng"              DOUBLE PRECISION ENCODE RAW,
    "geo.state"            VARCHAR(4096)    ENCODE LZO,
    "geo.state_code"       VARCHAR(4096)    ENCODE LZO,
    "github.avatar"        VARCHAR(4096)    ENCODE LZO,
    "github.blog"          VARCHAR(4096)    ENCODE LZO,
    "github.company"       VARCHAR(4096)    ENCODE LZO,
    "github.followers"     VARCHAR(4096)    ENCODE LZO,
    "github.following"     VARCHAR(4096)    ENCODE LZO,
    "github.handle"        VARCHAR(4096)    ENCODE LZO,
    "googleplus.handle"    VARCHAR(4096)    ENCODE LZO,
    "gravatar.avatar"      VARCHAR(4096)    ENCODE LZO,
    "gravatar.avatars"     VARCHAR(5000)    ENCODE LZO,
    "gravatar.handle"      VARCHAR(4096)    ENCODE LZO,
    "gravatar.urls"        VARCHAR(5000)    ENCODE LZO,
    "id"                   CHAR(36)         ENCODE LZO,
    "linkedin.handle"      VARCHAR(4096)    ENCODE LZO,
    "location"             VARCHAR(4096)    ENCODE LZO,
    "name.family_name"     VARCHAR(4096)    ENCODE LZO,
    "name.full_name"       VARCHAR(4096)    ENCODE LZO,
    "name.given_name"      VARCHAR(4096)    ENCODE LZO,
    "site"                 VARCHAR(4096)    ENCODE LZO,
    "time_zone"            VARCHAR(4096)    ENCODE LZO,
    "twitter.avatar"       VARCHAR(4096)    ENCODE LZO,
    "twitter.bio"          VARCHAR(4096)    ENCODE LZO,
    "twitter.followers"    VARCHAR(4096)    ENCODE LZO,
    "twitter.following"    VARCHAR(4096)    ENCODE LZO,
    "twitter.handle"       VARCHAR(4096)    ENCODE LZO,
    "twitter.id"           VARCHAR(4096)    ENCODE LZO,
    "twitter.location"     VARCHAR(4096)    ENCODE LZO,
    "twitter.site"         VARCHAR(4096)    ENCODE LZO,
    "utc_offset"           VARCHAR(4096)    ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE com_clearbit_person_1 IS 'iglu:com.clearbit/person/jsonschema/1-0-0';
