# Bookmark Manager

The project is to build a web app that stores web bookmarks in a database.

A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

The website will have the following specification:

- [x] Show a list of bookmarks
- [ ] Add new bookmarks
- [ ] Delete bookmarks
- [ ] Update bookmarks
- [ ] Comment on bookmarks
- [ ] Tag bookmarks into categories
- [ ] Filter bookmarks by tag
- [ ] Users are restricted to manage only their own bookmarks

```text
As an user
to be able to see bookmarks
I can see a list of bookmarks that I and other users have added

As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

## How to run

1. Run `bundle`
2. In your terminal, run command `rackup`
3. Test page: visit URL `http://localhost:9292/`
4. Bookmarks page: visit URL `http://localhost:9292/bookmark`

## Run tests

- In your terminal window, type command `rspec`

## Modelling

![Domain Model Diagram](https://lucid.app/publicSegments/view/4166db72-d53d-4956-97a6-c0d0527ec625/image.png)

## Database setup

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
