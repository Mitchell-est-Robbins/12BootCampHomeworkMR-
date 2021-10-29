USE merc_db;

-- add action man

INSERT INTO department (dept)
VALUES  ("Command" ),
        ("Frontline" ),
        ("Logistics");

INSERT INTO roles (title, salary, dept_id)
VALUES  
        ("Strategios", 500000, 1),
        ("BattleGroup TL", 250000, 1),
        ("Mech Warrior", 125000, 2),
        ("Infantry TL", 50000, 2),
        ("Armory Majus", 60000, 2),
        ("Drone Controller", 75000, 2),
        ("Drone Loader", 25000, 3),
        ("Mech Tech", 45000, 3),
        ("Conscript Porter", 100, 3);

-- https://thestoryshack.com/tools/human-name-generator/
-- manager_id = employee actual id not role -------------thanks Ethan
INSERT INTO employee (first_name, last_name, roles_id, manager_id ) 
VALUES  ("Kell", "Anders", 1, 1),
        ("Therron", "Lankrit", 2, 1),
        ("Marcelo", "Cindervale", 3, 2),
        ("Hollis", "MINI CHUNGUS", 3, 2),
        ("Jean-Claude", "BIG IRON", 3, 2),
        ("Saul", "FLAT WORM", 3, 2),
        ("Farant", "Khaster", 4, 1),
        ("Siward", "Gluv", 4, 1),
        ("Bret", "Yam", 4, 1),
        ("Deverick", "Lie", 4, 1),
        ("Berthold", "Aim", 4, 1 ),
        ("Garrick", "Trinath", 4, 1),
        ("Cain", "Pisquri", 5, 1),
        ("Holge", "Stedz", 5, 1),
        ("Cheval", "Tein", 5, 1),
        ("Sigmund", "Clearfall", 5, 2),
        ("Enrico", "Richcrag", 6, 2 ),
        ("Fidelius", "Sehasos", 6, 2 ),
        ("Jesekiel", "Riprihr", 6, 2 ),
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
        ("Arvi", "Chai", 9, 13 ),
        ("Stanwyck", "Marlo", 9, 13 ),
        ("Cheyne", "Suam", 9, 13 ),
        ("Winslow", "Vryalmivya", 9, 13 ),
        ("Sascha", "Glaz", 9, 13 ),
        ("Ricky", "Cskpike2", 9, 13 ),
        ("Pruitt", "Cskpike1", 9, 13 ),
        ("Axel", "Ung", 9, 13 ),
        ("Kipp", "Tobunolda", 9, 13 );
