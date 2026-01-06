// Google Trends - Related Topics
let
    apiUrl = "https://serpapi.com/search.json",
    queryParams = [
        engine = "google_trends",
        q = "Data Analyst Jobs",
        data_type = "RELATED_TOPICS",
        api_key = "PASTE_YOUR_SERPAPI_KEY_HERE"
    ],
    fullUrl = apiUrl & "?" & Uri.BuildQueryString(queryParams),
    response = Web.Contents(fullUrl),
    jsonResponse = Json.Document(response)
in
    jsonResponse