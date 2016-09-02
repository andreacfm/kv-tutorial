defmodule KV.Bucket do

  @doc """
  Start a new bucket
  """
  def start_link do
    Agent.start_link(fn -> %{} end)
  end

  def put(bucket, key, val) do
    Agent.update(bucket, fn map -> Map.put(map, key, val) end)
  end

  def get(bucket, key) do
    Agent.get(bucket, fn map -> Map.get(map, key) end)
  end

end
