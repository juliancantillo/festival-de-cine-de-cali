import React from 'react';
import MovieItem from './MovieItem';

export default React.createClass({
  render: function() {
    var movieItems = this.props.data.map(function (movieItem) {
      return (
        <MovieItem author={movieItem.author}>
          {movieItem.title}
        </MovieItem>
      );
    });
    return (
      <div className="moviesList">
        {movieItems}
      </div>
    );
  }
});