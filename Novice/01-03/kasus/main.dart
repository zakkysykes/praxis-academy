import 'dart:io';
import 'Balance.dart';
import 'Withdraw.dart';
import 'Deposit.dart';

class ATMMAchine
{
  static void checkBalance()
    {
      print("\tYour current balance is" +BalanceInquiry.getBalance());
    }

  static void withdrawMoney()
    {
      if(BalanceInquiry.balance ==0)
        {
          print("\tYour current balance is zero");
          print("\tYou cannot withdraw !");
          print("\tYou need to deposit money first");
        }
        else if(BalanceInquiry.balance<=500)
          {
                print("\tYou do not have sufficient money to withdraw");
                print("\tChecked your balance to see your monye in the bank");
          }
        else if(Withdraw.withdraw > BalanceInquiry.balance)
          {
            print("\tThe amount you withdraw is greater than to your balance");
            print("\tPlease check the amount you entered");
          }
          else
          {
            BalanceInquiry.balance - Withdraw.withdraw;
            print("\n\tYou withdraw the amount of Php" +Withdraw.withdraw);
          }
    }

    static void depositMoney()
    {
      print("\tYou deposited the amount of" +Deposit.getDeposit());
    }  
    static void main(List<String> args)
    {
      StdoutException("Why");
      int select = 0;
      int choice = 0;

      print("===============================");
      print("\tSelamat Datang Di ATM APA");
      print("===============================");
      print();
    
    do
      {try
      {
        do{

          stdout.writeln("\tS---SELAMAT DATANG DI ATM MAMAPAPA");
          stdout.writeln("\tpress [1] Deposit");
          stdout.writeln("\tpress [2] Withdraw");
          stdout.writeln("\tpress [3] Balance Inquiry");
          stdout.writeln("\tpress [4] Exit");

          stdout.write("\n\tWhat would like to do?");
          int select = int.parse(stdin.readLineSync());

            if(select>4)
                        {
            print("\n\tPlease select correct transaction.");
                        }
            else
                        {
            switch (select)
                        {
                            case 1:
                                stdout.writeln("\n\tEnter the amount of money to deposit: ");
                                Deposit.deposit = stdin.nextDouble();
                                BalanceInquiry.balance = Deposit.deposit + BalanceInquiry.balance;
                                depositMoney();
                                break;
                               
                            case 2:
                               
                                stdout.writeln("\n\tTo withdraw, make sure that you have sufficient balance in your account.");
                                stdout.writeln();
                                print("\tEnter amount of money to withdraw: ");
                                Withdraw.withdraw = stdin.nextDouble();
                                withdrawMoney();
                                break;
                               
                            case 3:
                                checkBalance();
                                break;
                           
                            default:
                                stdout.writeln("\n\tTransaction exited.");
                                break;
                               
                        }
                    }               
                          
            }while(select>4);
           
            do {
                try
                {
                    stdout.writeln("\n\tWould you like to try another transaction?");
                    stdout.writeln("\n\tPress [1] Yes \n\tPress [2] No");
                    stdout.writeln("\tEnter choice: ");
                    choice = read.nextInt();
               
                        if(choice>2)
                        {
                            print("\n\tPlease select correct choice.");
                        }
                    }
                   
                    catch(Exception e)
                    {
                        stdout.writeln("\tError Input! Please enter a number only.");
                        stdin.
                        print("\tEnter yout choice:");
                        choice = stdin.nextInt();
                    }
            } while(choice>2);
        }
        catch(Exception e)
                {
                    print("\tError Input! Please enter a number only.");
                    read = new Scanner(System.in);
                    print("\tEnter yout choice:");
                    select = stdin.nextInt();
                }
               
        }while(choice<=1);
       
        print("\n\tThank you for using this simple ATM Machine.");
    }
}