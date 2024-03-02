# React + Vite

# Life Insurance Dashboard

## Welcome to the Life Insurance Dashboard Project!

This React.js application provides a comprehensive dashboard designed for medical professionals, specifically doctors, to efficiently manage and monitor various aspects related to life insurance. The dashboard includes features for handling patient information, diseases, and medicines.

## Project Structure

The project is organized into several components, each serving a specific purpose:

- **DoctorDashboard**: The main entry point for the dashboard, featuring a sidebar for navigation, a search bar, and a dynamic content area displaying information based on the selected route.

- **Patients**: Displays a table of patients, including names, addresses, phone numbers, syndromes, and dates & times of interaction. Data is loaded from a JSON file.

- **Medicines**: Presents information about medicines in a table format, including details such as name, NCD code, description, ingredients, and quantity. Data is fetched from a JSON file and formatted for presentation.

- **Diseases**: Displays a table of diseases, providing information about the disease name, ICD code, and a brief description. Data is loaded from a JSON file.

- **Table**: A reusable component that renders a dynamic table based on provided data and header information. It also integrates with a modal component to display additional details upon clicking a table row.

- **Search**: A simple search bar component with icons for mail and notifications. Allows users to search for specific information within the dashboard.

- **Sidebar**: The navigation sidebar for the dashboard, featuring icons for Patients, Diseases, and Medicines. Also includes icons for Settings and Logout.

## Installation

To run the Life Insurance Dashboard locally, follow these steps:

1. Clone the repository: `git clone [repository_url]`
2. Navigate to the project directory: `cd life-insurance-dashboard`
3. Install dependencies: `npm install`
4. Start the development server: `npm start`

## Dependencies

The project relies on the following dependencies:

- **React.js**: A JavaScript library for building user interfaces.
- **React Icons**: A library providing a set of high-quality icons for use in React applications.

## Usage

Once the development server is running, access the dashboard at `http://localhost:3000`. Navigate through the sidebar icons to explore patient information, diseases, and medicines. Use the search bar to find specific details within the dashboard.

## Contributions

Contributions to the project are welcome! Feel free to open issues, submit pull requests, or provide feedback to enhance the functionality and user experience of the Life Insurance Dashboard.

Thank you for using our Life Insurance Dashboard! If you have any questions or need assistance, please contact us.


This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/README.md) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh
