// Theme Configuration
const theme = {
    // Brand Colors
    primary: '#007bff',
    secondary: '#6c757d',
    accent: '#6f42c1',
    success: '#28a745',
    danger: '#dc3545',
    warning: '#ffc107',
    info: '#17a2b8',
    light: '#f8f9fa',
    dark: '#343a40',

    // STYLE FUNCTIONS
    styles: {
        heading: (text) => `\n\n${text.toUpperCase()}\n${config.menuStyles.separator}\n`,
        subheading: (text) => `\n${text.toUpperCase()}\n${config.menuStyles.separator}\n`,
        error: (text) => `\n\n${text}\nPlease try again.\n`,
        success: (text) => `\n\n${text}\nSuccess!\n`,
        warning: (text) => `\n\n${text}\nWarning!\n`,
        info: (text) => `\n\n${text}\nInfo!\n`,
        label: (text) => `\n${text.toUpperCase()}`,
        value: (text) => `\n${text}`
    },

    logos: {
        main: 'CMS-STAFF',
        sub: 'Employee Management System'
    }
};

module.exports = theme;
