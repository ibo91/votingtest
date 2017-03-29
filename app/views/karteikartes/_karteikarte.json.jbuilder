json.extract! karteikarte, :id, :titel, :vorderseite, :rueckseite, :durchschnittsbewertung, :created_at, :updated_at
json.url karteikarte_url(karteikarte, format: :json)
