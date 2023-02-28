create table answer_entity
(
    id         int8 not null,
    variant_id int8,
    primary key (id)
);
create table form_entity
(
    id          int8 not null,
    form_type   varchar(255),
    views_count int4 not null,
    user_id     int8 not null,
    primary key (id)
);
create table form_entity_form_group_entities
(
    form_entity_id         int8 not null,
    form_group_entities_id int8 not null
);
create table form_entity_form_user_entities
(
    form_entity_id        int8 not null,
    form_user_entities_id int8 not null
);
create table group_entity
(
    id        int8 not null,
    name      varchar(255),
    author_id int8,
    primary key (id)
);
create table group_entity_form_entity_list
(
    group_entity_id     int8 not null,
    form_entity_list_id int8 not null
);
create table group_entity_user_entity_list
(
    group_entity_id     int8 not null,
    user_entity_list_id int8 not null
);
create table notification
(
    id      int8 not null,
    text    varchar(255),
    user_id int8 not null,
    primary key (id)
);
create table question_entity
(
    id            int8 not null,
    description   varchar(255),
    name          varchar(255),
    question_type varchar(255),
    primary key (id)
);
create table role_entity
(
    id   int8 not null,
    name varchar(255),
    primary key (id)
);
create table user_entity
(
    id       int8 not null,
    email    varchar(255),
    name     varchar(255),
    password varchar(255),
    surname  varchar(255),
    user_id  int8 not null,
    primary key (id)
);
create table user_entity_assigned_form_entities
(
    user_entity_id            int8 not null,
    assigned_form_entities_id int8 not null
);
create table user_entity_created_group_entities
(
    user_entity_id            int8 not null,
    created_group_entities_id int8 not null
);
create table variant_entity
(
    id            int8 not null,
    click_numbers int4 not null,
    name          varchar(255),
    question_id   int8 not null,
    primary key (id)
);
alter table if exists answer_entity add constraint FK6gp06liikjpxx4uh7l0o6sxy7 foreign key (variant_id) references variant_entity;
alter table if exists form_entity add constraint FKnsapl1sv9y5h9pbquha8nfk68 foreign key (user_id) references user_entity;
alter table if exists form_entity_form_group_entities add constraint FK7bpj8o16ol7x0u7x7tlawlkgd foreign key (form_group_entities_id) references group_entity;
alter table if exists form_entity_form_group_entities add constraint FKi22ufv3eb1drm8rfpw317e0dp foreign key (form_entity_id) references form_entity;
alter table if exists form_entity_form_user_entities add constraint FKjx6grlpwr8e226gh3dfqn1syp foreign key (form_user_entities_id) references user_entity;
alter table if exists form_entity_form_user_entities add constraint FKav86i88wg0f3uonnwg2l0ant4 foreign key (form_entity_id) references form_entity;
alter table if exists group_entity add constraint FKm21743qssf91ply57p86q6ftf foreign key (author_id) references user_entity;
alter table if exists group_entity_form_entity_list add constraint FK8g1kue16beru9u4xtm7q3bfux foreign key (form_entity_list_id) references form_entity;
alter table if exists group_entity_form_entity_list add constraint FKltim62x1uuwanxbjmrecvy747 foreign key (group_entity_id) references group_entity;
alter table if exists group_entity_user_entity_list add constraint FKc67oqkco7m2no1ryogydsh2e4 foreign key (user_entity_list_id) references user_entity;
alter table if exists group_entity_user_entity_list add constraint FKgp43fa2y30616h6wud5p2njhm foreign key (group_entity_id) references group_entity;
alter table if exists notification add constraint FK68jwxarc9dmvebcxrkugb5b5b foreign key (user_id) references user_entity;
alter table if exists user_entity add constraint FK9oahf6x876rqwi5ncely8xip6 foreign key (user_id) references role_entity;
alter table if exists user_entity_assigned_form_entities add constraint FK4snfe90meppewrbw16q4v99mu foreign key (assigned_form_entities_id) references form_entity;
alter table if exists user_entity_assigned_form_entities add constraint FKbea8diwgmikiwuylr5ravex4t foreign key (user_entity_id) references user_entity;
alter table if exists user_entity_created_group_entities add constraint FK4qt47cvne7nu4s8lw1ytidnlr foreign key (created_group_entities_id) references group_entity;
alter table if exists user_entity_created_group_entities add constraint FKck11h1e19apgojdnbtcm3u38s foreign key (user_entity_id) references user_entity;
alter table if exists variant_entity add constraint FKmhutu4adk0viaqv2t44wre6ub foreign key (question_id) references question_entity;