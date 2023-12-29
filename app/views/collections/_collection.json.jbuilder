

json.album do 
  json.title collection.album.title
  json.artist collection.album.artist.name
  json.image_url collection.album.image_url
  json.year collection.album.year
  json.genre collection.album.genre
end