using System;

namespace drem1
{
    class Program

    {

       
            static void exp(double x1, double x2)
            {

                double fx1 = 0, fx2 = 0, x, res1, res2, res, df = 0;
                int i = 0;
                do
                {
                    fx1 = 6 * x1 - x2 - 4;
                    fx2 = 2 * x2 - x1;
                    string sx1 = "", sx2 = "";
                    sx1 = fx1.ToString();
                    sx2 = fx2.ToString();
                    if (sx1.Length > 5 && sx1[1] == '.')
                    {
                        fx1 = double.Parse(sx1.Substring(0, 5));
                    }
                    if (sx2.Length > 5 && sx2[1] == '.')
                    {
                        fx2 = double.Parse(sx2.Substring(0, 5));
                    }

                    Console.WriteLine(fx1 + "  " + fx2);
                    res1 = ((6 * fx1) * x1) + ((2 * fx2) * x2) + (73 + (4 * 19));
                    res2 = (((6 * fx1) * fx1) + ((2 * fx2) * fx2) + 304);
                    Console.WriteLine(res1 + "  " + res2);
                    res = (res1 / res2);
                    Console.WriteLine(res);
                    string num = (res + 0.001).ToString();
                    res = double.Parse(num.Substring(0, 5));
                    Console.WriteLine((res));
                    x1 = x1 - (res * fx1);
                    x2 = x2 - (res * fx2);
                    df = Math.Sqrt((Math.Pow(fx1, 2) + Math.Pow(fx2, 2)));
                    Console.WriteLine("res:" + x1 + "  " + x2 + "  " + df);
                    i++;
                } while (i < 4);

            }

             
                static void Main(string[] args)
                {
                     exp(-2, 3);

                    //print();
                }



                static void print()
                {

                    Console.WriteLine("Hello World!");

                }
            }

        }
    
