USE merc_db

-- mech pilot, tech, combat coordinator, freakbeast handler, action man

-- department
-- roles
-- employees

INSERT INTO department (dept)
VALUES  ("Frontline"),
        ("Command" ),
        ("Logistics")

INSERT INTO roles (title, salary, dept_id)
VALUES  ("1Mech Warrior", 125000, 1),
        ("2Infantry TL", 50000, 1),
        ("3Strategios", 250000, 2),
        ("4BattleGroup TL" 500000, 2),
        ("5Drone Controller", 75000, 2),
        ("6Mech Tech" 45000, 3),
        ("7Drone Loader", 25000, 3),
        ("8Conscript Porter", 100, 3),
        ("9Armory Majus", 60000, 2),

-- https://thestoryshack.com/tools/human-name-generator/
-- manager_id = employee actual id not role -------------thanks Ethan
INSERT INTO employee (first_name, last_name, roles_id, manager_id, ) 
VALUES  ("Kell", "Anders", 3, NULL),
        ("Therron", "Lankrit", 4, 1),
        ("Marcelo", "Cindervale", 1, 2),
        ("Hollis", "MINI CHUNGUS", 1, 2),
        ("Jean-Claude", "BIG IRON", 1, 2),
        ("Saul", "FLAT WORM", 1, 2),
        ("Farant", "Khaster", 2, 1),
        ("Siward", "Gluv", 2, 1),
        ("Bret", "Yam", 2, 1),
        ("Deverick", "Lie", 2, 1),
        ("Berthold", "Aim", 5, 7 ),
        ("Garrick", "Trinath", 5, 8),
        ("Cain", "Pisquri", 9, 4),
        ("Holge", "Stedz", 9, 4),
        ("Cheval", "Tein", 9, 4),
        ("Sigmund", "Clearfall", 5, 13),
        ("Enrico", "Richcrag", 6, 13 ),
        ("Fidelius", "Sehasos", 6, 13 ),
        ("Jesekiel", "Riprihr", 6, 13 ),
        ("Cheyne", "Suam", 6, 13 ),
        ("Winslow", "Vryalmivya", 6, 13 ),
        ("Sascha", "Glaz", 6, 13 ),
        ("Ricky", "Cskpike", 6, 13 ),
        ("Pruitt", "Cskpike", 6, 13 ),
        ("Axel", "Ung", 6, 13 ),
        ("Kipp", "Tobunolda", 6, 13 ),
        ("Redwald", "Rutsk", 7, 14 ),
        ("Kade", "Rhokom", 7, 14 ),
        ("Gary", "Chonzotva", 7, 14),
        ("Farley", "Greatpike", 7, 14 ),
        ("Rushkin", "Jossan",7, 14 ),
        ("Dillon", "Summerblugg", 7, 14 ),
        ("Saz", "Snowden", 8, 15 ),
        ("Derrall", "Shao", 8, 15 ),
        ("Jascha", "Hissa", 8, 15 ),
        ("Linus", "Stockman", 8, 15 ),
        ("Bede", "Runan", 8, 15 ),
        ("Arnold", "Conor", 8, 15 ),
        ("Georgio", "Cuey", 8, 15 ),
        ("George", "Ripri", 8, 15 ),
        ("Arvi", "Chai", 8, 15 ),
        ("Stanwyck", "Marlo", 8, 15 ),
