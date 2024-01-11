defmodule ClickSend do

  def get(url, body \\ nil, headers \\ []) do
    url = process_url(url)
    headers = process_request_headers(headers)

    Req.get(url, body: body, headers: headers)
  end

  def post(url, body \\ nil, headers \\ []) do
    url = process_url(url)
    headers = process_request_headers(headers)

    Req.post(url, body: body, headers: headers)
  end

  def put(url, body \\ nil, headers \\ []) do
    url = process_url(url)
    headers = process_request_headers(headers)

    Req.put(url, body: body, headers: headers)
  end

  def process_url(url), do: "https://rest.clicksend.com/v3" <> url

  def process_request_headers(headers) do
    [
      {"Accepts",       "application/json"},
      {"Content-type",  "application/json"},
    ] ++ headers
  end

  def process_response_body(body), do: Poison.decode!(body)

  def build_authorization(%{api_key: api_key,
                            username: username})
  do
    auth         = "#{username}:#{api_key}"
    encoded_auth = Base.encode64(auth)

    "Basic " <> encoded_auth
  end

  def build_authorization(_) do
    api_key =
      Application.get_env(:click_send, :api_key)
      |> process_config(:api_key)

    username =
      Application.get_env(:click_send, :username)
      |> process_config(:username)

    build_authorization(%{api_key: api_key, username: username})
  end

  defp process_config(nil, key),  do: raise("Configuration for :click_send, #{inspect(key)} is not set")
  defp process_config(val, _key), do: val

end
