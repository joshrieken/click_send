# ClickSend

API Facade for ClickSend REST v3.

## Examples

### Account

#### Show

```elixir
ClickSend.Account.show()
```

### Account Recharge

#### List Packages

```elixir
ClickSend.AccountRecharge.list_packages("USA")
```

#### Purchase a Package

```elixir
ClickSend.AccountRecharge.purchase_package(1)
```

### Email

#### Send

```elixir
ClickSend.EmailMessage.new(
  "test1@test.com",
  "John Doe",
  1111,
  "My App Registrations",
  "Your account needs verification",
  "Please go to https://cool-app.com/account/4b787ca2-15cc-11e9-9330-c48e8ff5e241/verify to verify your account"
)
|> ClickSend.Email.send()
```

### SMS

#### Send

```elixir
ClickSend.SmsMessage.new("+14055555555", "Hello world!")
|> ClickSend.Sms.send()
```

## Installation

1. Add `click_send` to your list of dependencies in `mix.exs`

```elixir
def deps do
  [
    {:click_send, "~> 0.5.0"}
  ]
end
```

1. Setup your configuration

```elixir
config :click_send,
  api_key: "F0E14CF8-1691-11E9-9019-C48E8FF5E241",
  username: "my_username",
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/click_send](https://hexdocs.pm/click_send).
