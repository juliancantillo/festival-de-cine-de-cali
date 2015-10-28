import react from 'react';
import ReactDOM from 'react-dom';
import { Router, Route } from 'react-router';
import App from './components/App';
import About from './components/About';

window.React = react;

ReactDOM.render(
  <Router>
    <Route path="/" component={App}>
      <Route path="/about" component={About}/>
    </Route>
  </Router>
  , document.getElementById('content')
);
