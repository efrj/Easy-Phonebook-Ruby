# Easy Phonebook Ruby

A simple and elegant phonebook application built with Ruby and Sinatra framework. This project demonstrates core web development concepts including CRUD operations, XML data persistence, and modern UI design.

## Features

- Create, read, update, and delete contacts
- Alphabetical organization of contacts by first letter
- No database required - contacts stored as XML files
- Modern gradient-based UI with Bootstrap 4
- Responsive design with mobile support
- AJAX-powered modal dialogs for editing contacts
- Flash messages for user feedback
- Docker support for easy deployment

## Technology Stack

- **Ruby 3.3** - Programming language
- **Sinatra** - Lightweight web framework
- **Nokogiri** - XML parsing and manipulation
- **Bootstrap 4.1.3** - UI framework with Bootswatch theme
- **jQuery 3.3.1** - DOM manipulation and AJAX
- **Font Awesome 4.7.0** - Icon library
- **Docker** - Containerization

## Project Structure

```
easy-phonebook-ruby/
├── app.rb                      # Main application file with routes
├── Gemfile                     # Ruby dependencies
├── Dockerfile                  # Docker container configuration
├── docker-compose.yml          # Docker Compose orchestration
├── seed.rb                     # Sample data generator
├── models/
│   └── contact.rb             # Contact model with XML operations
├── helpers/
│   └── contacts_helper.rb     # View helper methods
├── views/
│   ├── layout.erb             # Master layout template
│   ├── index.erb              # Homepage with alphabet grid
│   ├── list.erb               # Contact listing by letter
│   ├── new.erb                # New contact form
│   └── show.erb               # Edit contact form
├── public/
│   └── assets/
│       ├── css/               # Stylesheets
│       ├── js/                # JavaScript files
│       ├── fonts/             # Font files
│       └── font-awesome/      # Font Awesome assets
└── contacts/
    └── letters/               # XML files organized by letter
```

## Installation & Running

### Option 1: Using Docker (Recommended)

1. Make sure Docker and Docker Compose are installed on your system

2. Clone the repository:
```bash
git clone <repository-url>
cd easy-phonebook-ruby
```

3. Build and run with Docker Compose:
```bash
docker-compose up --build
```

4. Access the application at `http://localhost:4567`

5. To stop the application:
```bash
docker-compose down
```

### Option 2: Local Installation

1. Make sure Ruby 3.3+ is installed on your system

2. Clone the repository:
```bash
git clone <repository-url>
cd easy-phonebook-ruby
```

3. Install dependencies:
```bash
bundle install
```

4. Run the application:
```bash
ruby app.rb
```

5. Access the application at `http://localhost:4567`

## Usage

### Creating a Contact

1. Click on "New Contact" in the navigation bar
2. Fill in the contact details (name, email, birthdate, phone number)
3. Click "Save Contact"
4. The contact will be saved and organized alphabetically

### Viewing Contacts

1. On the homepage, click on any letter (A-Z) to view contacts
2. Alternatively, use the "Contacts" dropdown in the navigation bar
3. Click "View / Edit" to see contact details

### Editing a Contact

1. Navigate to a contact and click "View / Edit"
2. Modify the contact information in the modal dialog
3. Click "Save Changes"
4. The original contact will be updated

### Deleting a Contact

1. Navigate to a contact
2. Click "Delete"
3. Confirm the deletion
4. The contact will be permanently removed

## Data Persistence

Contacts are stored as XML files in the `contacts/letters/` directory, organized by the first letter of the contact's name. Each contact is saved in a separate XML file with the following structure:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<contact>
  <name>John Doe</name>
  <email>john@example.com</email>
  <birthdate>1990-01-15</birthdate>
  <phone_number>+1234567890</phone_number>
</contact>
```

When using Docker, contact data is persisted in a named volume (`phonebook-data`) to ensure data survives container restarts.

## Development

This project was created for educational purposes to demonstrate:

- Ruby web development with Sinatra
- XML data manipulation with Nokogiri
- RESTful routing patterns
- Server-side rendering with ERB templates
- AJAX requests for dynamic content
- CSS custom properties and modern design
- Docker containerization

## License

This project is provided as-is for educational purposes.

## Contributing

Feel free to fork this project and submit pull requests with improvements.
