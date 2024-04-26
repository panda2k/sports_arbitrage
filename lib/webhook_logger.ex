defmodule WebhookLogger do 
  def send_message(message) do 
      System.get_env("WEBHOOK_URL") |> 
        Req.post(json: %{
          content: message
        })
  end
end
