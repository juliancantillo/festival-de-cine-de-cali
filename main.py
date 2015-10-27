import json
from bottle import Bottle, template, request
from bottle import static_file

from google.appengine.ext import ndb
from app.models import Movie

app = Bottle()

# Note: We don't need to call run() since our application is embedded within
# the App Engine WSGI application server.


@app.route('/')
def home():
    """Return the app index."""
    return template('index')

@app.route('/api/movies', method='GET')
def get_movies_list():
    movies = Movie.query()

    data = []

    for movie in movies:
        item = movie.to_dict()
        item['id'] = movie.key.id()

        data.append(item)

    return { 
        'error': False,
        'data': data
    }

@app.route('/api/movies/:id', method='GET')
def get_movie_item(id):
    movie = Movie.get_by_id(int(id))
    data = movie.to_dict()
    data['id'] = movie.key.id()

    return { 
        'error': False,
        'data': data
    }


@app.route('/api/movies', method='POST')
def post_movie():
    data = request.body.readline()  

    # if not data:
    #     abort(400, 'No data received')

    entity = json.loads(data)

    # if not entity.has_key('title'):
    #     abort(400, 'No title specified')

    try:
        movie = Movie()
        movie.title = entity['title']
        movie.year = entity['year']
        movie.runtime = entity['runtime']
        movie.category = entity['category']

        movie_key = movie.put()

        return { 
            'error': False,
            'data': movie.to_dict(),
        }        

    except Exception, e:
        return { 'error': True, 'message': e}



# Define an handler for 404 errors.
@app.error(404)
def error_404(error):
    """Return a custom 404 error."""
    return 'Sorry, nothing at this URL.'

@app.route('/dist/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='./dist/')