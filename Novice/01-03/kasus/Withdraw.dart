class Withdraw extend ATMMachine
{
    static double withdraw = 0;
    void setWithdraw(double w)
    {
        withdraw = w;
    }
    static double getWithdraw()
    {
        return withdraw;
    }
}