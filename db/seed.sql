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
VALUES  ("Mech Warrior", 125000, 1),
        ("Infantry TL", 50000, 1),
        ("Strategios", 250000, 2),
        ("BattleGroup TL" 500000, 2),
        ("Drone Controller", 75000, 2),
        ("Mech Tech" 45000, 3),
        ("Drone Loader", 25000, 3),
        ("Conscript Porter", 100, 3),
        ("Armory Majus", 60000, 2),

-- https://thestoryshack.com/tools/human-name-generator/
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES  ("Kell", "Anders", 3, 4),
        ("Therron", "Lankrit", 4, NULL),
        ("Marcelo", "Cindervale", 1, 3),
        ("Hollis", "MINI CHUNGUS", 1, 3),
        ("Jean-Claude", "BIG IRON", 1, 3),
        ("Saul", "FLAT WORM", 1, 3),
        ("Berthold", "Aim", 5, 2 ),
        ("Garrick", "Trinath", 5, 2),
        ("Sigmund", "Clearfall", 5, 2),
        ("Farant", "Khaster", 2, 4),
        ("Siward", "Gluv", 2, 4),
        ("Bret", "Yam", 2, 4),
        ("Deverick", "Lie", 2, 4),
        ("Enrico", "Richcrag", 6, 9 ),
        ("Fidelius", "Sehasos", 6, 9 ),
        ("Jesekiel", "Riprihr", 6, 9 ),
        ("Cheyne", "Suam", 6, 9 ),
        ("Winslow", "Vryalmivya", 6, 9 ),
        ("Sascha", "Glaz", 6, 9 ),
        ("Ricky", "Cskpike", 6, 9 ),
        ("Pruitt", "Cskpike", 6, 9 ),
        ("Axel", "Ung", 6, 9 ),
        ("Kipp", "Tobunolda", 6, 9 ),
        ("Redwald", "Rutsk", 7, 9 ),
        ("Kade", "Rhokom", 8, 9 ),
        ("Gary", "Chonzotva", 8, 9 ),
        ("Farley", "Greatpike", 7, 9 ),
        ("Rushkin", "Jossan", 7, 9 ),
        ("Dillon", "Summerblugg", 7, 9 ),
        ("Saz", "Snowden", 7, 9 ),
        ("Derrall", "Shao", 8, 9 ),
        ("Jascha", "Hissa", 8, 9 ),
        ("Linus", "Stockman", 8, 9 ),
        ("Bede", "Runan", 8, 9 ),
        ("Arnold", "Conor", 8, 9 ),
        ("Georgio", "Cuey", 8, 9 ),
        ("George", "Ripri", 8, 9 ),
        ("Arvi", "Chai", 8, 9 ),
        ("Stanwyck", "Marlo", 8, 9 ),
        ("Cain", "Pisquri", 9, 4),
        ("Holge", "Stedz", 9, 4),
        ("Cheval", "Tein", 9, 4),
