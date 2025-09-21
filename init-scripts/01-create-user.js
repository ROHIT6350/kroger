db = db.getSiblingDB('myapp');
db.createUser({
  user: "appuser",
  pwd: "apppass",
  roles: [{ role: "readWrite", db: "myapp" }]
});
