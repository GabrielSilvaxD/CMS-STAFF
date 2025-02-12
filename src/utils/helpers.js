import { style as _style, ui } from '../config/theme.json';

const formatCurrency = (amount) => {
    return new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD'
    }).format(amount);
};

const formatDate = (date) => {
    if (!Array.isArray(date)) return date;

    return date.map(row => {
        const formattedRow = {};
        Object.entries(row).forEach(([key, value]) => {
            if (typeof value === 'number' && key.toLowerCase().includes('salary')) {
                formattedRow[key] = _style.value(formatCurrency(value));
            } else if (key.toLowerCase().includes('name')) {
                formattedRow[key] = _style.label(value);
            } else {
                formattedRow[key] = value;
            }
        });
        return formattedRow;
    });
};

// CREATE BOX CONTENT
const createBox = (content, title = ' ') => {
    const boxContent = title ? `<h4>${title}</h4>${content}` : content;
    return `<div class="box">${boxContent}</div>`;
};


const formatPercentage = (value) => {
    return `${(value * 100).toFixed(1)}%`;
};   

// CREATE LOADING MESSAGE
const createLoadingMessage = () => {
    return `${ui.arrow} ${action}...`;
};

export default {
    formatCurrency,
    formatDate,
    createBox,
    formatPercentage,
    createLoadingMessage,
};






