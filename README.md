# Codaisseurify
> Individual assignment for week #2 of Codaisseur Academy

## About
In this assignment, you will create a new Rails app called Codaisseurify. This application will be in charge of managing a collection of songs and their associated artists.

## Basic Requirements

Generate the App

- Create a new Rails application called "Codaisseurify".
  1. Make sure that the app uses PostgreSQL for the database.
  2. Make sure that no test framework is installed by default when creating the app.

Models
- Create two models: Song and Artist.
- Define the relationship between them:
  1. A song can only be linked to one artist.
  2. An artist can have many songs.

Seeds
- Create some initial data adding some seeds to the database with some songs and artists.
- The seeds should reflect the association between every song and its artist.
- Use the Rails console to check that the database contains the data after seeding. Make the following checks:
  1. Get the artist of the first song. Which command did you use?
  2. Get all the songs for the first artist. Which command did you use?
