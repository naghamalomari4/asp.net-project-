# Grand Hotel Amman — Hotel Management System

Database Programming Project (2025-2026)  
**Stack:** SQL Server + ASP.NET Core MVC + HTML/JavaScript

## Project location

`C:\Users\soola\Documents\HotelManagementProject`

## Setup

### 1. Database (SQL Server)

Run in SQL Server Management Studio (order matters):

1. `Database\01_CreateSchema.sql`
2. `Database\02_SeedData.sql` (optional — app also seeds on first run)

### 2. Web application (Visual Studio 2022)

1. Open `HotelManagement\HotelManagement.csproj`
2. Edit `appsettings.json` — set your SQL Server connection string
3. Press **F5** to run
4. Login (created on first run):
   - **Admin:** `admin@grandhotel.com` / `Admin123!`
   - **Receptionist:** `reception@grandhotel.com` / `Admin123!`

### 3. Documentation (Part A — due 25/4/2026)

See `Documentation\PROJECT_DOCUMENTATION.md` — copy into your course template.

## Folder structure

```
HotelManagementProject/
├── Database/           SQL scripts + stored procedure
├── Documentation/      Full project report (Arabic/English)
├── HotelManagement/    ASP.NET Core MVC app
└── README.md
```

## GitHub (group requirement)

Each member commits from their own GitHub account. Suggested branches: `feature/rooms`, `feature/reservations`, `docs/part-a`.

## Features implemented

- Login (Admin / Receptionist)
- Room types and rooms CRUD
- Guest management
- Reservations with availability check
- Check-in / Check-out with invoice
- Payments
- Occupancy & revenue report (stored procedure)
