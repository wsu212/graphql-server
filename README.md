## Overview

This is a GraphQL server built using [Vapor](https://vapor.codes), a Swift framework for server-side development. The server allows you to manage a list of friends, providing functionality to retrieve, create, update, and delete friend data through GraphQL queries and mutations.

## Features

- **GraphQL API** for managing friends
  - Retrieve a list of friends
  - Create a new friend
  - Update an existing friend's details
  - Delete a friend

## Requirements

- Swift 5.6+
- Vapor 4.x

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/wsu212/graphql-server
    cd graphql-server
    ```

2. Install dependencies:
    ```bash
    swift package update
    ```

3. Run the application:
    ```bash
    swift run
    ```

4. The server will start at `http://localhost:8080`.

## API Endpoints

### GraphQL Endpoint

- **URL**: `http://localhost:8080/graphql`
  
This is the main GraphQL endpoint where you can execute queries and mutations.

### Example Queries & Mutations

#### 1. Retrieve Friends

```graphql
query {
  friends {
    id
    name
  }
}
```

#### 2. Retrieve Friend by id

```graphql
query {
  friend(id: id) {
    id
    name
  }
}
```

#### 3. Create Friend by id and name

```graphql
 mutation {
  addFriend(id: id, name: "name") {
    id
    name
  }
}
```

#### 4. Delete Friend by id

```graphql
 mutation {
  deleteFriend(id: id) {
    id
    name
  }
}
```
