ExUnit.start

Mix.Task.run "ecto.create", ~w(-r IndonesiaProvinces.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r IndonesiaProvinces.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(IndonesiaProvinces.Repo)
