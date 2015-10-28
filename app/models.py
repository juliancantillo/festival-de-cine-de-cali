from google.appengine.ext import ndb


class Theater(ndb.Model):
  name = ndb.StringProperty()
  address = ndb.StringProperty()
  latLn = ndb.GeoPtProperty()

class Movie(ndb.Model):
  title = ndb.StringProperty()
  year = ndb.IntegerProperty()
  runtime = ndb.IntegerProperty()
  genres = ndb.StringProperty(repeated=True)
  countries = ndb.StringProperty(repeated=True)
  category = ndb.StringProperty()
  poster = ndb.BlobProperty()
  comment = ndb.TextProperty()
  teather = ndb.KeyProperty(kind=Theater)