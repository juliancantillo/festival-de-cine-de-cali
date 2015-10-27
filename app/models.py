from google.appengine.ext import ndb


class Movie(ndb.Model):
  title = ndb.StringProperty()
  year = ndb.IntegerProperty()
  runtime = ndb.IntegerProperty()
  genres = ndb.StringProperty(repeated=True)
  counties = ndb.StringProperty(repeated=True)
  category = ndb.StringProperty()