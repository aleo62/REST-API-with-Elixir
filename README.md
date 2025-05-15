# Forum API

A REST API built with Elixir and Phoenix Framework.

## Prerequisites

- Elixir 1.14 or later
- Erlang/OTP 25 or later
- PostgreSQL 12 or later
- Node.js (for assets)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/aleo62/REST-API-with-Elixir
cd forum
```

2. Install dependencies:
```bash
mix deps.get
```

3. Create and setup the database:
```bash
mix ecto.create
mix ecto.migrate
```

## Database Configuration

1. Create a PostgreSQL user:
```sql
CREATE USER forum_user WITH PASSWORD 'you_super_secret_password';
```

2. Create the database:
```sql
CREATE DATABASE forum_dev;
```

3. Grant privileges to the user:
```sql
GRANT ALL PRIVILEGES ON DATABASE forum_dev TO forum_user;
```

4. The database configuration is already set in `config/dev.exs`:
```elixir
config :forum, Forum.Repo,
  username: "forum_user",
  password: "you_super_secret_password",
  hostname: "localhost",
  database: "forum_dev"
```

## Running the Application

1. Start the Phoenix server:
```bash
mix phx.server
```

2. The API will be available at `http://localhost:4000`

## API Endpoints

- `GET /api/users` - List all users
- `POST /api/users` - Create a new user
- `GET /api/users/:id` - Get a specific user
- `PUT /api/users/:id` - Update a user
- `DELETE /api/users/:id` - Delete a user

- `GET /api/posts` - List all posts
- `POST /api/posts` - Create a new post
- `GET /api/posts/:id` - Get a specific post
- `PUT /api/posts/:id` - Update a post
- `DELETE /api/posts/:id` - Delete a post

## Development

To start your Phoenix server:

```bash
mix phx.server
```

Or inside IEx:

```bash
iex -S mix phx.server
```

## Testing

```bash
mix test
```
