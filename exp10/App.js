import {useState} from 'react';
import './App.css';

function App() {
  const [count, setCount] = useState('--');

  function handleClick(color) {
    setCount(color);
    document.querySelector("body").style.backgroundColor = color;
  }

  return (
    <>
      <h1 className="message">You have clicked {count} Color</h1>
    
      <div className="button-container">
        <button className="btn btn-red" onClick={() => { handleClick('Red') }}>Red</button>
        <button className="btn btn-green" onClick={() => { handleClick('Green') }}>Green</button>
        <button className="btn btn-blue" onClick={() => { handleClick('Blue') }}>Blue</button>
        <button className="btn btn-yellow" onClick={() => { handleClick('Yellow') }}>Yellow</button>
      </div>

    </>
  );
}

export default App;
