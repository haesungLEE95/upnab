CREATE TABLE upnab_member
(
    member_num         INT             NOT NULL, 
    member_id          VARCHAR2(20)    NULL, 
    member_password    VARCHAR2(20)    NULL, 
    member_name        VARCHAR2(20)    NULL, 
    member_email       VARCHAR2(20)    NULL, 
    member_tel         INT             NULL, 
    member_inout       INT             NULL
);
create sequence upnab_member increment by 1 start with 1;

CREATE TABLE upnab_Board
(
    member_id        VARCHAR2(20)    NOT NULL, 
    board_num        INT             NULL, 
    board_date       DATE            NULL, 
    board_content    VARCHAR2(100)        NULL, 
    board_hit        INT             NULL, 
    board_pickcnt    INT             NULL, 
    board_share      INT             NULL, 
    board_type       INT             NULL
);
select * from UPNAB_BOARD;
create sequence upnab_Board increment by 1 start with 1;

CREATE TABLE upnab_category
(
    category_id      INT             NOT NULL, 
    category_name    VARCHAR2(20)    NULL
);
CREATE TABLE upnab_category_rel
(
    category_id    INT    NOT NULL, 
    board_num      INT    NOT NULL
);
CREATE TABLE upnab_reply
(
    board_num        INT              NOT NULL, 
    member_id        VARCHAR2(20)     NULL, 
    reply_content    VARCHAR2(100)    NULL, 
    reply_date       DATE             NULL
);
CREATE TABLE upnab_pick
(
    board_num    INT             NOT NULL, 
    member_id    VARCHAR2(20)    NULL
);
CREATE TABLE upnab_support
(
    member_id          VARCHAR2(20)     NOT NULL, 
    support_title      VARCHAR2(100)    NULL, 
    support_content    VARCHAR2(100)    NULL, 
    support_date       DATE             NULL
);
CREATE TABLE upnab_manager
(
    manager_num         INT              NOT NULL, 
    manager_id          VARCHAR2(100)    NULL, 
    manager_password    VARCHAR2(100)    NULL
);
select * from upnab_member;