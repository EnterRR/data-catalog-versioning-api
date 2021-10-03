# Data Catalog Versioning Service API OpenAPI Definition

The OpenAPI specification of the asset handling service API within the Data Catalog application.


## API Description

Provides API endpoints to create, delete and retrieve asset versions. The
access rights to an asset's version are the same as the right to the asset
itself.

The versions cannot be modified, only deleted.


## Working on the OpenAPI Definition

### Install

1. Install [Node JS](https://nodejs.org/).
2. Clone this repo and run `npm install` in the repo root.

### Usage

#### `npm start`
Starts the reference docs preview server.

#### `npm run build`
Bundles the definition to the dist folder.

#### `npm test`
Validates the definition.
