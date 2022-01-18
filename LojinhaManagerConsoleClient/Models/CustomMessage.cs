using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LojinhaManagerConsoleClient
{
    public class CustomMessage
    {
        public string Message { get; private set; }

        public CustomMessage(string Message)
        {
            this.Message = Message;
        }
    }
}
