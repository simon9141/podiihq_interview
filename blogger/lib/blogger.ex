defmodule Blogger do
  use HTTPoison.Base

  #function to change String input to upper case
  def to_upper_case(strings) do
    Enum.map(strings, &String.upcase/1)
  end

  #function to fetch blog from a given url using HTTPoison
  def fetch_blog(url) do
    response = get(url)

    case response do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts("Successfully fetched blog post!")
        {:ok, body}
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Unexpected response code: #{404}")
        {:error, "Blog not found"}

      {:error, reason} ->
        IO.puts("Failed to fetch blog post: #{"Connection unsuccessful"}")
    
    end
  end



end
