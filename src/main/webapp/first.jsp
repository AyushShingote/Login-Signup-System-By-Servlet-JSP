<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First Page</title>
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
    width: 340px;
    text-align: center;
    border: 1px solid #e5e7eb;
  }

  .icon-wrapper {
    width: 52px;
    height: 52px;
    border-radius: 50%;
    background-color: #eff6ff;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto 1.25rem;
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

  h1 {
    font-size: 1.35rem;
    font-weight: 600;
    color: #111827;
    margin-bottom: 0.4rem;
  }

  p {
    font-size: 0.9rem;
    color: #6b7280;
    margin-bottom: 2rem;
  }

  .btn-group {
    display: flex;
    flex-direction: column;
    gap: 12px;
  }

  input[type="submit"] {
    width: 100%;
    padding: 11px;
    font-size: 0.95rem;
    font-weight: 500;
    border-radius: 10px;
    cursor: pointer;
    border: none;
    transition: opacity 0.2s, transform 0.1s;
  }

  input[type="submit"]:active {
    transform: scale(0.98);
  }

  input[type="submit"][name="login"] {
    background-color: #3b82f6;
    color: #ffffff;
  }

  input[type="submit"][name="login"]:hover {
    background-color: #2563eb;
  }

  input[type="submit"][name="signup"] {
    background-color: #ffffff;
    color: #374151;
    border: 1px solid #d1d5db;
  }

  input[type="submit"][name="signup"]:hover {
    background-color: #f9fafb;
    border-color: #9ca3af;
  }
</style>
</head>
<body>

<div class="card">
  <div class="icon-wrapper">
    <svg viewBox="0 0 24 24">
      <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
      <circle cx="12" cy="7" r="4"/>
    </svg>
  </div>

  <h1>Welcome</h1>
  <p>Choose an option to continue</p>

  <form action="pattern" method="post" class="btn-group">
    <input type="submit" name="login" value="Login">
    <input type="submit" name="signup" value="Signup">
  </form>
</div>

</body>
</html>