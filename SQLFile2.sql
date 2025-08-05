
CREATE TABLE year_tbl (
    id INT NOT NULL,
    year INT NOT NULL,
    npv INT NOT NULL,
    PRIMARY KEY (id, year)
);

CREATE TABLE queries_tbl (
    id INT NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY (id, year)
);

INSERT INTO year_tbl VALUES 
(1, 2018, 100),
(7, 2019, 0),
(13, 2015, 150),
(2, 2013, 60);

INSERT INTO queries_tbl VALUES 
(1, 2018),
(13, 2015),
(7, 2019),
(2, 2013);

SELECT * FROM year_tbl;
SELECT * FROM queries_tbl;

SELECT 
    Q.id, 
    Q.year,
    ISNULL(Y.npv, 0) AS npv
FROM queries_tbl AS Q
LEFT JOIN year_tbl AS Y
    ON Q.id = Y.id AND Q.year = Y.year;
