/*****************************************
* Create Schedule_DB database
*****************************************/

Drop DATABASE IF EXISTS Schedule_DB;
CREATE DATABASE Schedule_DB;
USE Schedule_DB;

CREATE TABLE semesters(

	termID		INT(5)			NOT NULL,
	term		VARCHAR(10)		NOT NULL,
	termYR		INT(4)			NOT NULL,
	PRIMARY KEY (termID)
);

CREATE TABLE instructors(

	instrID			INT(10)		NOT NULL,
	firstName		VARCHAR(15)	NOT NULL,
	lastName		VARCHAR(15)	NOT NULL,
	PRIMARY KEY(instrID)
);

CREATE TABLE subjects(

	subjID		INT(4)		NOT NULL,
	subjType	VARCHAR(5),
	subjName	VARCHAR(50)	NOT NULL,
	PRIMARY KEY (subjID)
);

CREATE TABLE courses(

	crn				INT(5)		NOT NULL,
	crsSection		INT(3)		NOT NULL,
	termID			INT(5)		NOT NULL,
	instrID			INT(10)		NOT NULL,
	subjID			INT(4)		NOT NULL,
	subjType		VARCHAR(6)	NOT NULL,
	weekDay			VARCHAR(10)	NOT NULL,
	beginTime		INT(4)		NOT NULL,
	endTime			INT(4)		NOT NULL,
	timeOfDay		VARCHAR(2)	NOT NULL, 
	building		VARCHAR(20)	NOT NULL,
	roomNum			INT(4)		NOT NULL,
	beginDate		DATE		NOT NULL,
	endDate			DATE		NOT NULL,
	description     TEXT        NOT NULL,
	
	PRIMARY KEY (crn, crsSection)
	/*FOREIGN KEY (termID) REFERENCES semesters(termID) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY (instrID) REFERENCES instructors(instrID) ON DELETE NO ACTION ON UPDATE CASCADE,
	FOREIGN KEY (subjID) REFERENCES subjects(subjID) ON DELETE NO ACTION ON UPDATE CASCADE*/
	
);


INSERT INTO semesters VALUES
(1, 'Spring', 2016),
(2, 'Summer', 2016),
(3, 'Fall', 2016);

INSERT INTO instructors VALUES
(1,'John', 'Smith'),
(2,'Jane', 'Brown'),
(3,'Mark', 'Adams'),
(4,'Freddy', 'Mars');

INSERT INTO courses VALUES
(12345, 01, 3, 2, 2108, 'CPSC', 'TR', 430, 545, 'PM', 'CCT', 408, '2016-08-15', '2016-12-05',
	'This course extends the concepts of primitive data types by teaching the student a set of 
	data structures that pervades both the theoretical and practical domains of computer science.'),
	
(12346, 01, 3, 2, 1301, 'CPSC', 'MW', 430, 545, 'PM', 'CCT', 407, '2016-08-15', '2016-12-05',
	'This course includes an overview of computers and programming; problem solving and algorithm development; 
	simple data types; arithmetic and logic operators; selection structures; repetition structures; text files;
	arrays (one-and-two-dimensional); procedural abstraction and software design; modular programming (including sub-programs or the equivalent).'),
	
(12347, 02, 3, 3, 3125, 'CPSC', 'TR', 230, 345, 'PM', 'CCT', 405, '2016-08-15', '2016-12-05',
	'An introduction to basic operating system level software concepts. Course topics include processes, 
	threads, symmetric multi-processing, thread synchronization and memory management techniques.'),
	
(12348, 01, 3, 4, 1111, 'MATH', 'MWF', 230, 345, 'PM', 'UNIV', 108, '2016-08-15', '2016-12-05',
	'Study of functions, and their graphs, inequalities, and linear, quadratic, piece-wise defined, rational, 
	polynomial, exponential, and logarithmic functions. Appropriate applications will be included. Course is designed 
	to develop algebraic concepts to a level sufficient for the study of calculus. (Course fee required.)'),
	
(12349, 02, 3, 4, 2135, 'MATH', 'TR', 730, 845, 'PM', 'UNIV', 212, '2016-08-15', '2016-12-05',
	'Topics include parametric equations and polar coordinates, vectors, dot and cross products, 
	vector functions of one real variable, real valued functions of several variables, differential 
	calculus of functions of several variables, and multiple integrals.'),
	
(12350, 01, 3, 1, 5125, 'MATH', 'TBA', 830, 945, 'AM', 'UNIV', 204, '2016-08-15', '2016-12-05',
	'Topics include enumeration, relations, graphs, trees, and modeling computation.'),

(12351, 01, 1, 4, 2108, 'CPSC', 'TR', 1030, 1145, 'AM', 'CCT', 409, '2016-01-11', '2016-05-02',
	'This course extends the concepts of primitive data types by teaching the student a set of 
	data structures that pervades both the theoretical and practical domains of computer science.'),
	
(12352, 01, 1, 3, 1301, 'CPSC', 'MW', 1230, 145, 'PM', 'CCT', 406, '2016-01-11', '2016-05-02',
	'This course includes an overview of computers and programming; problem solving and algorithm development; 
	simple data types; arithmetic and logic operators; selection structures; repetition structures; text files;
	arrays (one-and-two-dimensional); procedural abstraction and software design; modular programming (including sub-programs or the equivalent).'),
	
(12353, 02, 1, 2, 3125, 'CPSC', 'TR', 1130, 1245, 'PM', 'CCT', 410, '2016-01-11', '2016-05-02',
	'An introduction to basic operating system level software concepts. Course topics include processes, 
	threads, symmetric multi-processing, thread synchronization and memory management techniques.'),
	
(12354, 01, 1, 1, 1111, 'MATH', 'MWF', 930, 1045, 'AM', 'UNIV', 109, '2016-01-11', '2016-05-02',
	'Study of functions, and their graphs, inequalities, and linear, quadratic, piece-wise defined, rational, 
	polynomial, exponential, and logarithmic functions. Appropriate applications will be included. Course is designed 
	to develop algebraic concepts to a level sufficient for the study of calculus. (Course fee required.)'),
	
(12355, 02, 1, 4, 2135, 'MATH', 'TBA', 730, 845, 'PM', 'UNIV', 215, '2016-01-11', '2016-05-02',
	'Topics include parametric equations and polar coordinates, vectors, dot and cross products, 
	vector functions of one real variable, real valued functions of several variables, differential 
	calculus of functions of several variables, and multiple integrals.'),
	
(12356, 01, 1, 1, 5125, 'MATH', 'TR', 830, 945, 'AM', 'UNIV', 204, '2016-01-11', '2016-05-02',
	'Topics include enumeration, relations, graphs, trees, and modeling computation.'),

(12357, 01, 2, 4, 2108, 'CPSC', 'TR', 300, 350, 'PM', 'CCT', 415, '2016-05-15', '2016-07-29',
	'This course extends the concepts of primitive data types by teaching the student a set of 
	data structures that pervades both the theoretical and practical domains of computer science.'),
	
(12358, 01, 2, 3, 1301, 'CPSC', 'MW', 430, 545, 'PM', 'CCT', 404, '2016-05-15', '2016-07-29',
	'This course includes an overview of computers and programming; problem solving and algorithm development; 
	simple data types; arithmetic and logic operators; selection structures; repetition structures; text files;
	arrays (one-and-two-dimensional); procedural abstraction and software design; modular programming (including sub-programs or the equivalent).'),
	
(12359, 02, 2, 2, 3125, 'CPSC', 'TR', 230, 345, 'PM', 'CCT', 411, '2016-05-15', '2016-07-29',
	'An introduction to basic operating system level software concepts. Course topics include processes,
	threads, symmetric multi-processing, thread synchronization and memory management techniques.'),
	
(12360, 01, 2, 3, 1111, 'MATH', 'MWF', 600, 650, 'PM', 'UNIV', 108, '2016-05-15', '2016-07-29',
	'Study of functions, and their graphs, inequalities, and linear, quadratic, piece-wise defined, rational, 
	polynomial, exponential, and logarithmic functions. Appropriate applications will be included. Course is designed 
	to develop algebraic concepts to a level sufficient for the study of calculus. (Course fee required.)'),
	
(12361, 02, 2, 4, 2135, 'MATH', 'TR', 600, 845, 'PM', 'UNIV', 212, '2016-05-15', '2016-07-29',
	'Topics include parametric equations and polar coordinates, vectors, dot and cross products, 
	vector functions of one real variable, real valued functions of several variables, differential 
	calculus of functions of several variables, and multiple integrals.'),
	
(12362, 01, 2, 1, 5125, 'MATH', 'TBA', 300, 350, 'PM', 'UNIV', 204, '2016-05-15', '2016-07-29',
	'Topics include enumeration, relations, graphs, trees, and modeling computation.');

INSERT INTO subjects VALUES
(2108, 'CPSC', 'Data Structures'),
(1301, 'CPSC', 'Computer Science I'),
(3125, 'CPSC', 'Operating Systems'),
(1111, 'MATH', 'College Algebra'),
(2135, 'MATH', 'Calculus w/Analytical Geo 3'),
(5125, 'MATH', 'Discrete Mathematics');

GRANT SELECT, INSERT, DELETE, UPDATE
ON Schedule_DB.*
TO cpsc90_user@localhost
IDENTIFIED BY 'pa55word';

GRANT SELECT
ON courses
TO cpsc90_tester@localhost
IDENTIFIED BY 'pa55word';