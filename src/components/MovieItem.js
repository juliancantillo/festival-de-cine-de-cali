import React from 'react';

export default React.createClass({
  
  render: function() {
    return (
      <div className="movie">
        <h2 className="movie_director">
          {this.props.author}
        </h2>
      </div>
    );
  }

});