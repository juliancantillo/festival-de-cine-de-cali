import React from 'react';
import { Link }  from 'react-router';
import request from 'superagent';
import packageJSON from '../../package.json';
import MoviesList from './MoviesList';

export default React.createClass({
  
  loadMovies: function () {
    request
    .get('/api/movies')
    .type('json')
    .end((err, res) =>
      this.setState({data: res.body.data }));
  },

  getInitialState: function() {
    return {data: []};
  },

  componentDidMount: function() {
    this.loadMovies();
  },

  render() {
    return (
      <div>
        <header>
          <h1>Festival Internacional de Cine Cali</h1>
          <Link to="/about">About</Link>
        </header>
        <section>
          <h1>Movies</h1>
          <MoviesList data={this.state.data}></MoviesList>
        </section>
      </div>
    )
  }
});
