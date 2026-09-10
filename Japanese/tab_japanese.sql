CREATE TABLE japanese_learning_documents (
  id VARCHAR(64) PRIMARY KEY,
  category VARCHAR(64) NOT NULL,
  title VARCHAR(128) NOT NULL,
  doc JSONB NOT NULL,
  created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);


-- GINインデックスを作成してJSON内部の検索を高速化
CREATE INDEX idx_learning_docs_gin ON japanese_learning_documents USING GIN (doc);