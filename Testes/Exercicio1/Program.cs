using System;

namespace Exercicio1
{
    class Program
    {
        /*Crie uma classe que contenha uma função que recebe 
         *  como parâmetro uma data (date time) e
            retorne o 5o dia útil do mês em questão.*/
        static void Main(string[] args)
        {
            Console.WriteLine($"O Dia { RetornarQuintoDiaUtilDoMes(DateTime.Now)} é o Quinto dia útil da Data Informada ");
            Console.ReadLine();
        }

        static int RetornarQuintoDiaUtilDoMes(DateTime data)
        {
            var QuantidadeDiasUteis = 0;
            for (int i = 1; i < 10; i++)
            {
                data = new DateTime(data.Year, data.Month, i);
                var diaDaSemana = (int)data.DayOfWeek;

                if (diaDaSemana > 0 & diaDaSemana < 6)
                {
                    QuantidadeDiasUteis++;
                    if (QuantidadeDiasUteis == 5)
                    {
                        return i;
                    }
                }
            }
            return 0;
        }

    }
}
