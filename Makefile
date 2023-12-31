postgres:
		docker run --name postgres -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres

createdb:
		docker exec -it postgres createdb --username=root --owner=root gobank

dropdb:
		docker exec -it postgres dropdb gobank

migrateup:
		migrate -path db/migration -database "postgresql://root:secret@localhost:5432/gobank?sslmode=disable" -verbose up

migratedown:
		migrate -path db/migration -database "postgresql://root:secret@localhost:5432/gobank?sslmode=disable" -verbose down

sqlc:
		sqlc generate

.PHONY: postgres createdb dropdb migrateup migratedown sqlc
