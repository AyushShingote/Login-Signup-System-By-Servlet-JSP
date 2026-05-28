<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
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
    width: 370px;
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
    background-color: #f0fdf4;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto 1rem;
  }

  .icon-wrapper svg {
    width: 26px;
    height: 26px;
    stroke: #22c55e;
    fill: none;
    stroke-width: 1.8;
    stroke-linecap: round;
    stroke-linejoin: round;
  }

  .card-header h2 {
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
    border-color: #22c55e;
    box-shadow: 0 0 0 3px rgba(34, 197, 94, 0.1);
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
    transition: stroke 0.2s;
  }

  .input-wrapper:focus-within svg {
    stroke: #22c55e;
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
    background-color: #22c55e;
    color: #ffffff;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    font-family: inherit;
    letter-spacing: 0.01em;
    transition: background-color 0.2s, transform 0.1s;
  }

  input[type="submit"]:hover {
    background-color: #16a34a;
  }

  input[type="submit"]:active {
    transform: scale(0.98);
  }

  .login-link {
    text-align: center;
    margin-top: 1.1rem;
    font-size: 0.85rem;
    color: #6b7280;
  }

  .login-link a {
    color: #22c55e;
    font-weight: 500;
    text-decoration: none;
  }

  .login-link a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>

<div class="card">
  <div class="card-header">
    <div class="icon-wrapper">
      <svg viewBox="0 0 24 24">
        <path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/>
        <circle cx="9" cy="7" r="4"/>
        <line x1="19" y1="8" x2="19" y2="14"/>
        <line x1="22" y1="11" x2="16" y2="11"/>
      </svg>
    </div>
    <h2>Create Account</h2>
    <p>Sign up to get started today</p>
  </div>

  <form action="pattern2" method="post">

    <div class="form-group">
      <label for="username">Username</label>
      <div class="input-wrapper">
        <svg viewBox="0 0 24 24">
          <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
          <circle cx="12" cy="7" r="4"/>
        </svg>
        <input type="text" id="username" name="username"
               placeholder="Choose a username" required>
      </div>
    </div>

    <div class="form-group">
      <label for="email">Email</label>
      <div class="input-wrapper">
        <svg viewBox="0 0 24 24">
          <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/>
          <polyline points="22,6 12,13 2,6"/>
        </svg>
        <input type="email" id="email" name="email"
               placeholder="Enter your email" required>
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
               placeholder="Create a password" required>
      </div>
    </div>

    <input type="submit" name="signup" value="Sign Up">

  </form>

  <div class="login-link">
    Already have an account? <a href="login.jsp">Login</a>
  </div>
</div>

</body>
</html>