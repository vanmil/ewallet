defmodule EWallet.TransactionRequestPolicy do
  @moduledoc """
  The authorization policy for accounts.
  """
  @behaviour Bodyguard.Policy
  alias EWallet.WalletPolicy
  alias EWalletDB.Wallet

  def authorize(:all, _admin_user_or_key, nil), do: true

  def authorize(:get, _params, _request) do
    true
  end

  # Check with the passed attributes if the current accessor can
  # create a request for the account
  def authorize(:create, params, %Wallet{} = wallet) do
    WalletPolicy.authorize(:admin, params, wallet)
  end

  def authorize(_, _, _), do: false
end
