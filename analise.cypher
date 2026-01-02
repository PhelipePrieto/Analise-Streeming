MERGE(u:User {name: 'Phelipe'});
MERGE(u:User {name: 'Cristian'});
MERGE(u:User {name: 'Guilherme'});
MERGE(u:User {name: 'Bruna'});
MERGE(u:User {name: 'Ana Luiza'});
MERGE(u:User {name: 'Arthur'});
MERGE(u:User {name: 'Rodrigo'});
MERGE(u:User {name: 'Nelson'});
MERGE(u:User {name: 'Maria José'});
MERGE(u:User {name: 'Roberto'});

MERGE(f:Film {title: 'Titanic'});
MERGE(f:Film {title: 'Inception'});
MERGE(f:Film {title: 'Oppenheimer'});
MERGE(f:Film {title: 'Green Book'});
MERGE(f:Film {title: 'A Baleia'});
MERGE(f:Film {title: 'À Espera de um Milagre'});
MERGE(f:Film {title: 'Parasita'});
MERGE(f:Film {title: 'Clube da Luta'});
MERGE(f:Film {title: 'Ponte para Terabítia'});
MERGE(f:Film {title: 'Interestelar'});

MERGE(s:Serie {title: 'Uma Mente Excepcional'});
MERGE(s:Serie {title: 'O Rastreador'});
MERGE(s:Serie {title: 'Supernatural'});
MERGE(s:Serie {title: 'O Poder e a Lei'});
MERGE(s:Serie {title: 'Reacher'});
MERGE(s:Serie {title: 'Dois Homens e Meio'});
MERGE(s:Serie {title: 'Todo Mundo Odeia o Chris'});
MERGE(s:Serie {title: 'Game of Thrones'});
MERGE(s:Serie {title: 'A Casa do Dragão'});
MERGE(s:Serie {title: 'The Boys'});

MERGE(s:Serie {title: 'Top Gun'});
MERGE(g:Gender {name: 'Ficção Cientifica'});
MERGE(g:Gender {name: 'Ficção Policial'});
MERGE(g:Gender {name: 'Ação'});
MERGE(g:Gender {name: 'Romance'});
MERGE(g:Gender {name: 'Aventura'});
MERGE(g:Gender {name: 'Suspense'});
MERGE(g:Gender {name: 'Comédia'});
MERGE(g:Gender {name: 'Drama'});
MERGE(g:Gender {name: 'Melodrama'});
MERGE(g:Gender {name: 'Fantasia'});
MERGE(g:Gender {name: 'Crime'});
MERGE(g:Gender {name: 'Thriller'});
MERGE(g:Gender {name: 'Infantil'});

MERGE(a:Actor {name: 'Leonardo DiCaprio'});
MERGE(a:Actor {name: 'Cillian Murphy'});
MERGE(a:Actor {name: 'Kate Winslet'});
MERGE(a:Actor {name: 'Viggo Mortensen'});
MERGE(a:Actor {name: 'Mahershala Ali'});
MERGE(a:Actor {name: 'Brendan Fraser'});
MERGE(a:Actor {name: 'Tom Hanks'});
MERGE(a:Actor {name: 'Cho Yeo-jeong'});
MERGE(a:Actor {name: 'Brad Pitt'});
MERGE(a:Actor {name: 'Josh Hutcherson'});
MERGE(a:Actor {name: 'Matthew McConaughey'});
MERGE(a:Actor {name: 'Tom Cruise'});
MERGE(a:Actor {name: 'Kaitlin Olson'});
MERGE(a:Actor {name: 'Justin Hartley'});
MERGE(a:Actor {name: 'Jensen Ackles'});
MERGE(a:Actor {name: 'Manuel Garcia-Rulfo'});
MERGE(a:Actor {name: 'Alan Ritchson'});
MERGE(a:Actor {name: 'Charlie Sheen'});
MERGE(a:Actor {name: 'Tyler James Williams'});
MERGE(a:Actor {name: 'Pedro Pascal'});
MERGE(a:Actor {name: 'Milly Alcock'});

MERGE(d:Director {name: 'Drew Goddard'}); 
MERGE(d:Director {name: 'Ken Olin'});
MERGE(d:Director {name: 'Eric Kripke'});
MERGE(d:Director {name: 'Brad Furman'});
MERGE(d:Director {name: 'Christopher McQuarrie'});
MERGE(d:Director {name: 'Chuck Lorre'});
MERGE(d:Director {name: 'Ali LeRoi'});
MERGE(d:Director {name: 'David Benioff'});
MERGE(d:Director {name: 'Miguel Sapochnik'});
MERGE(d:Director {name: 'Eric Kripke'}); 
MERGE(d:Director {name: 'Christopher Nolan'});
MERGE(d:Director {name: 'James Cameron'});
MERGE(d:Director {name: 'Peter Farrelly'});
MERGE(d:Director {name: 'Frank Darabont'});
MERGE(d:Director {name: 'Bong Joon-ho'});
MERGE(d:Director {name: 'David Fincher'});
MERGE(d:Director {name: 'Gábor Csupó'});
MERGE(d:Director {name: 'Tony Scott'});

MATCH(u {name: 'Phelipe'})
MATCH(f {title: 'Inception'})
MERGE(u)-[:WATCHED {rating: 10}]->(f);

MATCH(u {name: 'Phelipe'})
MATCH(f {title: 'Interestelar'})
MERGE(u)-[:WATCHED {rating: 10}]->(f);

MATCH(u {name: 'Phelipe'})
MATCH(s {title: 'O Rastreador'})
MERGE(u)-[:WATCHED {rating: 10}]->(s);

MATCH(u {name: 'Phelipe'})
MATCH(s {title: 'The Boys'}
MERGE(u)-[:WATCHED {rating: 10}]->(s);

MATCH(a {name: 'Jensen Ackles'})
MATCH(s {title: 'The Boys'})
MERGE(a)-[:ACTED_IN ]->(s);

MATCH(a {name: 'Jensen Ackles'})
MATCH(s {title: 'Supernatural'})
MERGE(a)-[:ACTED_IN ]->(s);

MATCH(s {title: 'The Boys'})
MATCH(d {name: 'Eric Kripke'})
MERGE(s)-[:DIRECTED ]->(d);

MATCH(s {title: 'Supernatural'})
MATCH(d {name: 'Eric Kripke'})
MERGE(s)-[:DIRECTED ]->(d);

MATCH(f {title: 'Inception'})
MATCH(d {name: 'Christopher Nolan'})
MERGE(f)-[:DIRECTED ]->(d);

MATCH(f {title: 'Interestelar'})
MATCH(d {name: 'Christopher Nolan'})
MERGE(f)-[:DIRECTED ]->(d);


MATCH(f {title: 'Oppenheimer'})
MATCH(d {name: 'Christopher Nolan'})
MERGE(f)-[:DIRECTED ]->(d);


MATCH(f {title: 'Oppenheimer'})
MATCH(g {name: 'Suspense'})
MERGE(f)-[:IN_GENERE ]->(g);

MATCH(f {title: 'Inception'})
MATCH(g {name: 'Ficção científica'})
MERGE(f)-[:IN_GENERE ]->(g);

MATCH(f {title: 'Inception'})
MATCH(g {name: 'Ação'})
MERGE(f)-[:IN_GENERE ]->(g);













