-- +goose Up
-- +goose StatementBegin
ALTER TABLE backups ADD COLUMN exclude_tables TEXT NOT NULL DEFAULT '';
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE backups DROP COLUMN exclude_tables;
-- +goose StatementEnd
