INSERT INTO
    "user" (
        "lastname",
        "firstname",
        "email",
        "phone",
        "housenumber",
        "street",
        "postcode",
        "city",
        "lon",
        "lat",
        "password",
        "active",
        "role"
    )
VALUES
    (
        'Gambis',
        'Morgane',
        'aboumorgane@live.fr',
        '00 00 00 00 00',
        8,
        'rue du grand moulin',
        '17230',
        'Andilly',
        '-1.027211',
        '46.253164',
        'oracle17230.',
        true,
        'admin'
    ),
    (
        'Bietrix',
        'Noelle',
        'bietrixnoelle@gmail.com',
        '00 00 00 00 00',
        21,
        'rue pierre de Coubertin',
        '17440',
        'Aytré',
        '-1.107033',
        '46.138389',
        'oracle17230.',
        true,
        'user'
    );

INSERT INTO
    "presta" ("name", "price", "color")
VALUES
    ('presta1', 20, '#4DB1C1'),
    ('presta2', 40, '#4D80C1'),
    ('presta3', 80, '#C1644D'),
    ('presta4', 160, '#C14D83');

INSERT INTO
    "event" (
        "start_time",
        "end_time",
        "paid",
        "user_id",
        "presta_id"
    )
VALUES
    (1636443900000, 1636445700000, true, 1, 1),
    (1636707600000, 1636710300000, false, 1, 1),
    (1637315100000, 1637317800000, false, 2, 2);

INSERT INTO
    "report" (
        "title",
        "content",
        "finished",
        "type",
        "event_id"
    )
VALUES
    (
        'Titre report1',
        'Lorem ipsum dolor sit amet,
consectetur adipiscing elit.Donec fermentum viverra magna consequat placerat.Etiam sit amet risus a odio dictum sodales sit amet et magna.Donec non tellus eget nibh finibus iaculis.Ut facilisis ornare diam,
et porttitor nibh tincidunt volutpat.Nunc faucibus nulla ut est dignissim elementum.Mauris ultrices blandit odio,
ac mollis nunc egestas nec.Duis non libero vestibulum,
pulvinar risus in,
rutrum odio.Donec eget tortor lectus.Duis ac consectetur quam,
ut ullamcorper augue.Nulla facilisi.In et luctus felis,
sed sodales ante.Sed a aliquam turpis,
non congue est.Ut sed erat luctus ex fermentum pretium.Sed nec pharetra felis.Mauris leo velit,
luctus a sagittis eu,
convallis vitae sapien.Aenean et lectus mi.Vestibulum dolor lorem,
aliquet non sodales et,
porttitor a sem.Pellentesque semper eget turpis in blandit.Nulla sed commodo felis.Vestibulum rutrum metus id facilisis ornare.Integer a tellus id augue auctor rutrum.Sed eu libero vitae risus commodo congue.Mauris auctor dolor nec auctor feugiat.Fusce dignissim,
ligula eu facilisis varius,
nibh augue placerat lectus,
sed tincidunt ex lorem in leo.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Ut dapibus,
erat at pellentesque consectetur,
urna massa posuere elit,
sit amet bibendum leo elit nec erat.Nunc vitae lectus ante.Duis in velit tincidunt tortor fermentum feugiat venenatis non nunc.In vel nibh non enim porta viverra sed tincidunt nisi.Integer at lacinia erat.Vivamus tristique lectus est,
non aliquet est vestibulum dapibus.Donec ac lectus risus.Integer vel risus quis purus elementum dictum.Aenean nec tincidunt erat.Vivamus varius nec augue ac ullamcorper.Aliquam eu auctor nunc,
quis feugiat turpis.Donec hendrerit volutpat porttitor.Integer eu gravida augue,
at dapibus massa.Quisque molestie eleifend tempor.Donec finibus purus ante,
vel venenatis erat pharetra sagittis.Aenean mollis placerat ante,
sit amet mattis magna malesuada vitae.Duis semper ligula vehicula,
scelerisque neque et,
lobortis erat.Sed porttitor enim ac enim cursus volutpat.Phasellus iaculis tincidunt nibh,
non viverra odio eleifend vel.Nunc faucibus vestibulum dapibus.In hac habitasse platea dictumst.Curabitur consequat leo ac ligula fermentum,
a laoreet turpis consequat.Praesent porttitor neque turpis,
id feugiat libero ullamcorper eu.Sed tellus ipsum,
semper a elit vel,
ultrices bibendum tortor.Curabitur tincidunt ante ac massa scelerisque volutpat.Pellentesque metus nibh,
eleifend sit amet enim quis,
congue accumsan ex.',
        true,
        'user',
        1
    ),
    (
        'Titre report2',
        'Lorem ipsum dolor sit amet,
consectetur adipiscing elit.Donec fermentum viverra magna consequat placerat.Etiam sit amet risus a odio dictum sodales sit amet et magna.Donec non tellus eget nibh finibus iaculis.Ut facilisis ornare diam,
et porttitor nibh tincidunt volutpat.Nunc faucibus nulla ut est dignissim elementum.Mauris ultrices blandit odio,
ac mollis nunc egestas nec.Duis non libero vestibulum,
pulvinar risus in,
rutrum odio.Donec eget tortor lectus.Duis ac consectetur quam,
ut ullamcorper augue.Nulla facilisi.In et luctus felis,
sed sodales ante.Sed a aliquam turpis,
non congue est.Ut sed erat luctus ex fermentum pretium.Sed nec pharetra felis.Mauris leo velit,
luctus a sagittis eu,
convallis vitae sapien.Aenean et lectus mi.Vestibulum dolor lorem,
aliquet non sodales et,
porttitor a sem.Pellentesque semper eget turpis in blandit.Nulla sed commodo felis.Vestibulum rutrum metus id facilisis ornare.Integer a tellus id augue auctor rutrum.Sed eu libero vitae risus commodo congue.Mauris auctor dolor nec auctor feugiat.Fusce dignissim,
ligula eu facilisis varius,
nibh augue placerat lectus,
sed tincidunt ex lorem in leo.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Ut dapibus,
erat at pellentesque consectetur,
urna massa posuere elit,
sit amet bibendum leo elit nec erat.Nunc vitae lectus ante.Duis in velit tincidunt tortor fermentum feugiat venenatis non nunc.In vel nibh non enim porta viverra sed tincidunt nisi.Integer at lacinia erat.Vivamus tristique lectus est,
non aliquet est vestibulum dapibus.Donec ac lectus risus.Integer vel risus quis purus elementum dictum.Aenean nec tincidunt erat.Vivamus varius nec augue ac ullamcorper.Aliquam eu auctor nunc,
quis feugiat turpis.Donec hendrerit volutpat porttitor.Integer eu gravida augue,
at dapibus massa.Quisque molestie eleifend tempor.Donec finibus purus ante,
vel venenatis erat pharetra sagittis.Aenean mollis placerat ante,
sit amet mattis magna malesuada vitae.Duis semper ligula vehicula,
scelerisque neque et,
lobortis erat.Sed porttitor enim ac enim cursus volutpat.Phasellus iaculis tincidunt nibh,
non viverra odio eleifend vel.Nunc faucibus vestibulum dapibus.In hac habitasse platea dictumst.Curabitur consequat leo ac ligula fermentum,
a laoreet turpis consequat.Praesent porttitor neque turpis,
id feugiat libero ullamcorper eu.Sed tellus ipsum,
semper a elit vel,
ultrices bibendum tortor.Curabitur tincidunt ante ac massa scelerisque volutpat.Pellentesque metus nibh,
eleifend sit amet enim quis,
congue accumsan ex.',
        false,
        'admin',
        2
    ),
    (
        'Titre report3',
        'Lorem ipsum dolor sit amet,
consectetur adipiscing elit.Donec fermentum viverra magna consequat placerat.Etiam sit amet risus a odio dictum sodales sit amet et magna.Donec non tellus eget nibh finibus iaculis.Ut facilisis ornare diam,
et porttitor nibh tincidunt volutpat.Nunc faucibus nulla ut est dignissim elementum.Mauris ultrices blandit odio,
ac mollis nunc egestas nec.Duis non libero vestibulum,
pulvinar risus in,
rutrum odio.Donec eget tortor lectus.Duis ac consectetur quam,
ut ullamcorper augue.Nulla facilisi.In et luctus felis,
sed sodales ante.Sed a aliquam turpis,
non congue est.Ut sed erat luctus ex fermentum pretium.Sed nec pharetra felis.Mauris leo velit,
luctus a sagittis eu,
convallis vitae sapien.Aenean et lectus mi.Vestibulum dolor lorem,
aliquet non sodales et,
porttitor a sem.Pellentesque semper eget turpis in blandit.Nulla sed commodo felis.Vestibulum rutrum metus id facilisis ornare.Integer a tellus id augue auctor rutrum.Sed eu libero vitae risus commodo congue.Mauris auctor dolor nec auctor feugiat.Fusce dignissim,
ligula eu facilisis varius,
nibh augue placerat lectus,
sed tincidunt ex lorem in leo.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Ut dapibus,
erat at pellentesque consectetur,
urna massa posuere elit,
sit amet bibendum leo elit nec erat.Nunc vitae lectus ante.Duis in velit tincidunt tortor fermentum feugiat venenatis non nunc.In vel nibh non enim porta viverra sed tincidunt nisi.Integer at lacinia erat.Vivamus tristique lectus est,
non aliquet est vestibulum dapibus.Donec ac lectus risus.Integer vel risus quis purus elementum dictum.Aenean nec tincidunt erat.Vivamus varius nec augue ac ullamcorper.Aliquam eu auctor nunc,
quis feugiat turpis.Donec hendrerit volutpat porttitor.Integer eu gravida augue,
at dapibus massa.Quisque molestie eleifend tempor.Donec finibus purus ante,
vel venenatis erat pharetra sagittis.Aenean mollis placerat ante,
sit amet mattis magna malesuada vitae.Duis semper ligula vehicula,
scelerisque neque et,
lobortis erat.Sed porttitor enim ac enim cursus volutpat.Phasellus iaculis tincidunt nibh,
non viverra odio eleifend vel.Nunc faucibus vestibulum dapibus.In hac habitasse platea dictumst.Curabitur consequat leo ac ligula fermentum,
a laoreet turpis consequat.Praesent porttitor neque turpis,
id feugiat libero ullamcorper eu.Sed tellus ipsum,
semper a elit vel,
ultrices bibendum tortor.Curabitur tincidunt ante ac massa scelerisque volutpat.Pellentesque metus nibh,
eleifend sit amet enim quis,
congue accumsan ex.',
        true,
        'admin',
        3
    );

INSERT INTO
    "animal" (
        "name",
        "birth",
        "photo",
        "cat_id",
        "dog_id",
        "user_id"
    )
VALUES
    (
        'Rex',
        1604300000000,
        'https://images.unsplash.com/photo-1561037404-61cd46aa615b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEzNzYzNn0?utmsource=dictionnaire&utm_medium=referral',
        null,
        5,
        1
    ),
    (
        'Minou',
        1603800000000,
        'https://img.lemde.fr/2019/05/17/0/0/3553/2542/664/0/75/0/74a2a9f_91ae3c37d18b44d4ae49147a7b9a2126-91ae3c37d18b44d4ae49147a7b9a2126-0.jpg',
        20,
        null,
        2
    ),
    (
        'Jocker',
        1602480000000,
        'https://www.connexionfrance.com/var/connexion/storage/images/_aliases/social_network_image/media/images/australian-sheepdog-lpeg/970983-1-eng-GB/australian-sheepdog-lpeg.jpg',
        20,
        null,
        2
    );

INSERT INTO
    "conversation" ("id")
VALUES
(default),
(default),
(default);

INSERT INTO
    "message" ("text", "conversation_id", "user_id")
VALUES
    ('Coucou', 1, 1),
    ('Est-il possible de prendre rendez-vous ?', 1, 1),
    (
        'Je souhaiterais des renseignements sur vos prix',
        2,
        2
    ),
    (
        'Vous souhaitez avoir les prix sur quelle prestation ?',
        2,
        2
    );

INSERT INTO
    "conversation_has_user" ("conversation_id", "user_id")
VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 2);
