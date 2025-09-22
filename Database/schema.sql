-- db/schema.sql
-- Schema for VulnLab (safe, no secrets)

CREATE DATABASE IF NOT EXISTS vulnlab CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE vulnlab;

-- Users table (simple intentionally insecure schema for demo)
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Comments table (stored XSS demo target)
CREATE TABLE IF NOT EXISTS comments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Ping/logs table (optional: store ping attempts / outputs)
CREATE TABLE IF NOT EXISTS ping_logs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  ip_input VARCHAR(255),
  output TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Optional admin table for flag/demo (non-sensitive)
CREATE TABLE IF NOT EXISTS admin (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  note TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

