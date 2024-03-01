-- CREATE TABLE
--   top_rated_films (title VARCHAR NOT NULL, release_year SMALLINT);
-- CREATE TABLE
--   most_popular_films (title VARCHAR NOT NULL, release_year SMALLINT);
-- INSERT INTO
--   top_rated_films (title, release_year)
-- VALUES
--   ('The Shawshank Redemption', 1994),
--   ('The Godfather', 1972),
--   ('The Dark Knight', 2008),
--   ('12 Angry Men', 1957);
-- INSERT INTO
--   most_popular_films (title, release_year)
-- VALUES
--   ('An American Pickle', 2020),
--   ('The Godfather', 1972),
--   ('The Dark Knight', 2008),
--   ('Greyhound', 2020);
-- SELECT
--   *
-- FROM
--   top_rated_films;
-- SELECT
--   *
-- FROM
--   most_popular_films;
-- SELECT
--   *
-- FROM
--   top_rated_films
-- UNION
-- SELECT
--   *
-- FROM
--   most_popular_films;
-- SELECT
--   *
-- FROM
--   top_rated_films
-- UNION ALL
-- SELECT
--   *
-- FROM
--   most_popular_films;
-- SELECT
--   *
-- FROM
--   most_popular_films
-- INTERSECT
-- SELECT
--   *
-- FROM
--   top_rated_films
-- ORDER BY
--   release_year DESC;
SELECT
  *
FROM
  top_rated_films
EXCEPT
SELECT
  *
FROM
  most_popular_films
ORDER BY
  title;