# Database Setup

1. Installed `postgresql` command line package via Homebrew `brew install postgesql`
2. Started postgres & set to run automatically

```
brew services start postgresql
psql postgres
```

3. Checked installation of postgres: `psql`
4. Setup PostgreSQL database

```
CREATE DATABASE database_name
```

5. Connect database

```
\c database_name
```

6. Create a table

```
CREATE TABLE table_name(
  column_name constraints
  column name constraints
  ...
)
```

e.g.

```
CREATE TABLE bookmarks (
  id SERIAL PRIMARY KEY
  url VARCHAR (60)
)
```
