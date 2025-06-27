-- Step 1: Create Indexes on Commonly Queried Columns
-- Improves performance for frequent SELECT operations

CREATE INDEX idx_books_author 
    ON BOOKS(author);

CREATE INDEX idx_books_title 
    ON BOOKS(title);

CREATE INDEX idx_transactions_member 
    ON TRANSACTIONS(member_id);

CREATE INDEX idx_transactions_book 
    ON TRANSACTIONS(book_id);


-- Step 2: View Execution Plan for a Query Searching by Author
-- Helps in analyzing how the database engine executes the query

EXPLAIN 
SELECT * 
FROM BOOKS 
WHERE author = 'John Smith';
