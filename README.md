# GreenStay – Student Accommodation Finder

A comprehensive web application designed to help students find suitable accommodation and landlords to list their properties. Built as a team project using modern web technologies.

## 🛠️ Technologies Used

- **Frontend**: HTML5, CSS3, JavaScript, Bootstrap
- **Backend**: PHP
- **Database**: MySQL
- **APIs**: Google Maps API
- **Server**: Apache (XAMPP)

## 🌟 Features

### For Students
- **User Registration & Login**: Secure account creation and authentication
- **Property Search**: Browse available accommodations with detailed information
- **Advanced Filtering**: Filter properties by price, location, gender preferences, and facilities
- **Interactive Maps**: View property locations using Google Maps integration
- **Booking System**: Send accommodation requests to landlords
- **Personal Dashboard**: Manage bookings and view request status
- **Articles Section**: Access helpful articles about student accommodation

### For Landlords
- **Landlord Registration & Login**: Separate authentication system for property owners
- **Property Management**: Add, edit, and manage property listings
- **Image Upload**: Upload multiple images for each property
- **Request Management**: View and respond to student accommodation requests
- **Dashboard**: Comprehensive overview of listings and booking requests
- **Property Verification**: Admin approval system for new listings

### General Features
- **Responsive Design**: Mobile-friendly interface
- **Location Integration**: Google Maps for property locations
- **Image Gallery**: Multiple image support for property listings
- **Real-time Updates**: Dynamic content updates without page refresh
- **Secure Authentication**: Password protection and session management

## 📋 Prerequisites

- **XAMPP** (Apache + MySQL + PHP)
- **Web Browser** (Chrome, Firefox, Safari, etc.)
- **Internet Connection** (for Google Maps API)

## 🚀 Installation & Setup

### 1. Install XAMPP
Download and install XAMPP from [https://www.apachefriends.org/](https://www.apachefriends.org/)

### 2. Clone/Download Project
Place the project folder in your XAMPP htdocs directory:
```
c:\xampp\htdocs\GreenStay\
```

### 3. Start XAMPP Services
1. Open XAMPP Control Panel
2. Start **Apache** and **MySQL** services

### 4. Database Setup
1. Open phpMyAdmin: `http://localhost/phpmyadmin`
2. Create a new database named `findhostels`
3. Import the `database_setup.sql` file (included in project root)

**OR** Create tables manually using the following structure:

#### Database Tables:
- `students` - Student user accounts
- `land_loards` - Landlord user accounts  
- `advertisements` - Property listings
- `img` - Property images
- `requests` - Booking requests
- `articles` - Blog articles

### 5. Configuration
Database connection settings are in `includes/db.inc.php`:
```php
$serverName = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "findhostels";
```

## 🌐 Usage

### Access the Application
Navigate to: `http://localhost/GreenStay`

### Available Pages:
- **Home**: `index.php` - Main landing page
- **Student Registration**: `student_register.php`
- **Student Login**: `login.php`
- **Landlord Registration**: `landlord_register.php`
- **Landlord Login**: `landlord_login.php`
- **Dashboard**: `dashboard.php` - User management panel
- **Add Property**: `new.php` - Landlord property creation
- **Articles**: `articles.php` - Accommodation guides
- **Bookings**: `bookings.php` - Request management
- **Profile**: `profile.php` - User profile management

### Test Accounts (if sample data imported):
- **Student**: 
  - Username: `S001`
  - Password: `password123`
- **Landlord**: 
  - NIC: `123456789V`
  - Password: `password123`

## 📁 Project Structure

```
GreenStay/
├── css/                    # Stylesheets
│   ├── main.css
│   ├── dash.css
│   └── ...
├── images/                 # Static images
├── includes/               # PHP backend files
│   ├── db.inc.php         # Database connection
│   ├── functions.inc.php  # Core functions
│   └── ...
├── site_parts/            # Reusable components
├── cover/                 # Landing page assets
├── icons/                 # Icon files
├── *.php                  # Main application pages
├── database_setup.sql     # Database schema
└── README.md              # This file
```

## 🔧 Core Functionality

### Student Workflow:
1. Register/Login as student
2. Browse available properties
3. Filter by preferences (price, location, gender)
4. View property details and images
5. Send booking request to landlord
6. Track request status in dashboard

### Landlord Workflow:
1. Register/Login as landlord
2. Add new property listings
3. Upload property images
4. Manage existing listings
5. Review student requests
6. Approve/reject bookings

## 🛡️ Security Features

- Password encryption
- SQL injection protection
- Session management
- Input validation and sanitization
- File upload security

## 🤝 Contributing

This is a team project. For contributions:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📝 License

This project is created for educational purposes as part of a team project.

## 📞 Support

For issues or questions, please contact the development team or create an issue in the repository.

## 🎯 Future Enhancements

- Payment integration
- Advanced search filters
- Email notifications
- Mobile app version
- Review and rating system
- Chat functionality
- Virtual property tours

---

**Team Project** | **Student Accommodation Finder** | **Web Development**