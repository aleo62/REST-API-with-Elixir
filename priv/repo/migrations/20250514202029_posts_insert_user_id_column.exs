defmodule Forum.Repo.Migrations.PostsInsertUserIdColumn do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :user_id, references(:users, on_delete: :delete_all)
    end
  end
end
