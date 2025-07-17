# CCSD Directory Java

A Spring Boot web application for managing contact information within the Clark County School District (CCSD) organization.

## Features

- **Contact Management**: Create, read, update, and delete contact records
- **Secure Access**: Authentication required for administrative functions
- **Responsive Design**: Bootstrap-based UI for desktop and mobile devices
- **Database Integration**: MySQL database with Hibernate ORM
- **Comprehensive Testing**: Unit and integration tests with 100% pass rate

## Technology Stack

- **Framework**: Spring Boot 3.5.3
- **Language**: Java 24
- **Database**: MySQL (Production), H2 (Testing)
- **ORM**: Hibernate/JPA
- **Security**: Spring Security with form-based authentication
- **Template Engine**: Thymeleaf
- **Frontend**: Bootstrap, HTML5, CSS3, JavaScript
- **Testing**: JUnit 5, Mockito, MockMvc
- **Build Tool**: Maven

## Prerequisites

- Java 24 or later
- MySQL 8.0 or later
- Maven 3.6 or later

## Installation & Setup

### 1. Clone the Repository
```bash
git clone https://github.com/bryansiegel/ccsd-directory-java
cd ccsd-directory-java
```

### 2. Database Configuration
Create a MySQL database and update the configuration in `src/main/resources/env.properties`:

```properties
DB_DATABASE=your_database_name
DB_USER=your_username
DB_PASSWORD=your_password
MAIL_USERNAME=your_mail_username
MAIL_PASSWORD=your_mail_password
```

### 3. Database Schema
Import the database backup file located at `_sql/ccsd_directory_java.sql`:
```bash
# Import the database backup (replace with your database name)
mysql -u your_username -p your_database_name < _sql/ccsd_directory_java.sql
```

### 4. Build and Run
```bash
# Build the application
./mvnw clean compile

# Run tests
./mvnw test

# Start the application
./mvnw spring-boot:run
```

The application will be available at `http://localhost:8080`

## Application Structure

```
src/
├── main/
│   ├── java/com/ccsd/ccsddirectoryjava/
│   │   ├── configs/
│   │   │   └── WebSecurityConfig.java     # Security configuration
│   │   ├── controllers/
│   │   │   ├── AuthController.java        # Authentication endpoints
│   │   │   └── ContactController.java     # Contact CRUD operations
│   │   ├── models/
│   │   │   └── Contact.java               # Contact entity
│   │   ├── repositories/
│   │   │   └── ContactRepo.java           # Data access layer
│   │   └── CcsdDirectoryJavaApplication.java
│   └── resources/
│       ├── templates/                     # Thymeleaf templates
│       ├── static/                        # CSS, JS, images
│       └── application.properties         # Application config
└── test/
    ├── java/                              # Test classes
    └── resources/
        └── application-test.properties    # Test configuration
```

## API Endpoints

### Web Interface
- `GET /` - Public home page
- `GET /login` - Login page
- `GET /admin/dashboard` - Admin dashboard (requires authentication)
- `GET /admin/contacts` - Contact list (requires authentication)
- `GET /admin/contacts/create` - Create contact form (requires authentication)
- `POST /admin/contacts` - Save new contact (requires authentication)
- `GET /admin/contacts/{id}/edit` - Edit contact form (requires authentication)
- `POST /admin/contacts/{id}` - Update contact (requires authentication)
- `POST /admin/contacts/{id}/delete` - Delete contact (requires authentication)

## Authentication

The application uses Spring Security with form-based authentication.

**Default Credentials:**
- Username: `user`
- Password: `password`

*Note: These are development credentials. Update in `WebSecurityConfig.java` for production use.*

## Contact Model

```java
public class Contact {
    private Long id;                    // Auto-generated primary key
    private String name;                // Contact name (required)
    private String division;            // Division/department
    private String department;          // Specific department
    private String position;            // Job title/position
    private String phone;               // Phone number
    private String dialExtension;       // Phone extension
    private String fax;                 // Fax number
    private String locationCode;        // Location/building code
    private String address;             // Physical address
    private LocalDateTime createdAt;    // Auto-generated timestamp
}
```

## Testing

The application includes comprehensive tests:

- **Unit Tests**: Contact model validation
- **Integration Tests**: Controller endpoints with security
- **Repository Tests**: Database operations
- **Application Tests**: Context loading

### Run Tests
```bash
# Run all tests
./mvnw test

# Run specific test class
./mvnw test -Dtest=ContactControllerTest

# Run tests with coverage
./mvnw test jacoco:report
```

**Test Results**: ✅ 30 tests passing, 0 failures

## Configuration

### Application Properties
```properties
# Database
spring.datasource.url=jdbc:mysql://localhost:3306/${DB_DATABASE}
spring.datasource.username=${DB_USER}
spring.datasource.password=${DB_PASSWORD}

# JPA/Hibernate
spring.jpa.hibernate.ddl-auto=update

# Email (for notifications)
spring.mail.host=sandbox.smtp.mailtrap.io
spring.mail.port=2525
spring.mail.username=${MAIL_USERNAME}
spring.mail.password=${MAIL_PASSWORD}
```

### Security Configuration
- Admin routes (`/admin/**`) require authentication
- CSRF protection enabled for web forms
- HTTP Basic authentication available for API access
- Session-based authentication for web interface

## Development

### Adding New Features
1. Create/update model classes in `models/` package
2. Add repository interfaces in `repositories/` package
3. Implement controllers in `controllers/` package
4. Create Thymeleaf templates in `templates/` directory
5. Add corresponding tests in `test/` directory

### Database Migrations
Update the database schema manually or use Hibernate's `ddl-auto` setting:
- `create-drop`: Recreate schema on each restart (development)
- `update`: Update schema incrementally (development/staging)
- `validate`: Validate schema only (production)

## Deployment

### Production Checklist
- [ ] Update default security credentials
- [ ] Configure production database connection
- [ ] Set `spring.jpa.hibernate.ddl-auto=validate`
- [ ] Configure proper logging levels
- [ ] Set up SSL/HTTPS
- [ ] Configure email settings for notifications
- [ ] Update CORS settings if needed

### Environment Variables
Set these environment variables in production:
```bash
DB_DATABASE=production_db
DB_USER=production_user
DB_PASSWORD=secure_password
MAIL_USERNAME=smtp_user
MAIL_PASSWORD=smtp_password
```

## Troubleshooting

### Common Issues

1. **Database Connection Errors**
   - Verify MySQL is running
   - Check database credentials in `env.properties`
   - Ensure database exists

2. **Port 8080 Already in Use**
   ```bash
   # Find and kill process using port 8080
   netstat -ano | findstr :8080
   taskkill /F /PID <process_id>
   ```

3. **ID Generation Errors**
   - Run the database fix script: `ALTER TABLE contacts MODIFY COLUMN id BIGINT NOT NULL AUTO_INCREMENT;`

4. **Test Failures**
   - Ensure H2 dependency is included for tests
   - Check test database configuration in `application-test.properties`

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Write tests for your changes
4. Ensure all tests pass (`./mvnw test`)
5. Commit your changes (`git commit -am 'Add new feature'`)
6. Push to the branch (`git push origin feature/new-feature`)
7. Create a Pull Request

## License

This project is developed for Clark County School District internal use.

## Support

For questions or issues, please contact the development team or create an issue in the repository.

---

**Version**: 0.0.1-SNAPSHOT  
**Last Updated**: July 2025  
**Maintainer**: CCSD