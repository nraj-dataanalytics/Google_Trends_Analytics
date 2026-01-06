// Google Trends - By Country (GEO_MAP)
let
    apiUrl = "https://serpapi.com/search.json",
    keywords = "Power BI,The Developer,Jobs,India,Data Analyst",
    queryParams = [
        engine = "google_trends",
        q = keywords,
        data_type = "GEO_MAP",
        date = "today 5-y",
        tz = "-330",
        api_key = "PASTE_YOUR_SERPAPI_KEY_HERE"
    ],
    fullUrl = apiUrl & "?" & Uri.BuildQueryString(queryParams),
    response = Web.Contents(fullUrl),
    jsonResponse = Json.Document(response),
    dataTable = Table.FromRecords({jsonResponse}),
    comparedBreakdownByRegion = dataTable{0}[compared_breakdown_by_region]
in
    comparedBreakdownByRegion