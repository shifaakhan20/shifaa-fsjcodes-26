import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);

<>
  <meta charSet="UTF-8" />
  <title>Color Selector</title>
  {/* Big display text using h1 */}
  <h1 id="color-text">You have chosen RED color</h1>
  {/* Color selection buttons */}
  <button onclick="changeColor('RED')">Red</button>
  <button onclick="changeColor('GREEN')">Green</button>
  <button onclick="changeColor('BLUE')">Blue</button>
  <button onclick="changeColor('YELLOW')">Yellow</button>
</>
