ALTER TABLE transfers DROP CONSTRAINT transfers_amount_fkey;
ALTER TABLE entries DROP CONSTRAINT entries_account_id_fkey;
ALTER TABLE transfers DROP CONSTRAINT transfers_from_account_fkey;
ALTER TABLE transfers DROP CONSTRAINT transfers_to_account_fkey;

DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS entries;
DROP TABLE IF EXISTS transfers;