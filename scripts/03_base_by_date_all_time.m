// Google Trends - Time Series (All Time)
let
    BaseUrl = "https://serpapi.com/search",
    QueryParams = [
        engine = "google_trends",
        q = "Power BI,The Developer,Jobs,India,Data Analyst",
        data_type = "TIMESERIES",
        date = "all",
        tz = "-330",
        api_key = "PASTE_YOUR_SERPAPI_KEY_HERE"
    ],
    UrlWithParams =
        BaseUrl & "?" &
        Text.Combine(
            List.Transform(
                Record.FieldNames(QueryParams),
                each _ & "=" & Uri.EscapeDataString(Text.From(Record.Field(QueryParams, _)))
            ),
            "&"
        ),
    JsonResponse = Json.Document(Web.Contents(UrlWithParams)),
    InterestOverTime = JsonResponse[interest_over_time]
in
    InterestOverTime