class BalanceInquiry extends ATMMachine
{
    static double balance = 0;
    void setBalance(double b)
    {
        balace = b;
    }
    static double getBalance()
    {
        return balance;
    }
}