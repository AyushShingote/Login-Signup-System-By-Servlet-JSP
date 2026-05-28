<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #f0f2f5;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  }

  .card {
    background: #ffffff;
    border-radius: 16px;
    padding: 2.5rem 2rem;
    width: 360px;
    border: 1px solid #e5e7eb;
  }

  .card-header {
    text-align: center;
    margin-bottom: 1.75rem;
  }

  .icon-wrapper {
    width: 52px;
    height: 52px;
    border-radius: 50%;
    background-color: #eff6ff;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto 1rem;
  }

  .icon-wrapper svg {
    width: 26px;
    height: 26px;
    stroke: #3b82f6;
    fill: none;
    stroke-width: 1.8;
    stroke-linecap: round;
    stroke-linejoin: round;
  }

  .card-header h1 {
    font-size: 1.35rem;
    font-weight: 600;
    color: #111827;
    margin-bottom: 0.3rem;
  }

  .card-header p {
    font-size: 0.85rem;
    color: #6b7280;
  }

  .form-group {
    margin-bottom: 1rem;
  }

  .form-group label {
    display: block;
    font-size: 0.85rem;
    font-weight: 500;
    color: #374151;
    margin-bottom: 6px;
  }

  .input-wrapper {
    display: flex;
    align-items: center;
    gap: 10px;
    border: 1px solid #d1d5db;
    border-radius: 10px;
    padding: 0 12px;
    background: #ffffff;
    transition: border-color 0.2s, box-shadow 0.2s;
  }

  .input-wrapper:focus-within {
    border-color: #3b82f6;
    box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
  }

  .input-wrapper svg {
    width: 18px;
    height: 18px;
    stroke: #9ca3af;
    fill: none;
    stroke-width: 1.8;
    stroke-linecap: round;
    stroke-linejoin: round;
    flex-shrink: 0;
  }

  .input-wrapper input {
    flex: 1;
    border: none;
    outline: none;
    padding: 11px 0;
    font-size: 0.9rem;
    color: #111827;
    background: transparent;
    font-family: inherit;
  }

  .input-wrapper input::placeholder {
    color: #9ca3af;
  }

  input[type="submit"] {
    width: 100%;
    margin-top: 1.25rem;
    padding: 11px;
    font-size: 0.95rem;
    font-weight: 600;
    background-color: #3b82f6;
    color: #ffffff;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    font-family: inherit;
    letter-spacing: 0.01em;
    transition: background-color 0.2s, transform 0.1s;
  }

  input[type="submit"]:hover {
    background-color: #2563eb;
  }

  input[type="submit"]:active {
    transform: scale(0.98);
  }
</style>
</head>
<body>

<div class="card">
  <div class="card-header">
    <div class="icon-wrapper">
      <svg viewBox="0 0 24 24">
        <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
        <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
      </svg>
    </div>
    <h1>Login</h1>
    <p>Enter your credentials to continue</p>
  </div>

  <form action="pattern1" method="post">

    <div class="form-group">
      <label for="username">Username</label>
      <div class="input-wrapper">
        <svg viewBox="0 0 24 24">
          <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
          <circle cx="12" cy="7" r="4"/>
        </svg>
        <input type="text" id="username" name="username"
               placeholder="Enter your username" required>
      </div>
    </div>

    <div class="form-group">
      <label for="password">Password</label>
      <div class="input-wrapper">
        <svg viewBox="0 0 24 24">
          <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
          <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
        </svg>
        <input type="password" id="password" name="password"
               placeholder="Enter your password" required>
      </div>
    </div>

    <input type="submit" name="login" value="Login">

  </form>
</div>

</body>
</html>