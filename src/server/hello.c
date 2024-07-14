#include <fcgiapp.h>

int main() {
  FCGX_Request request;
  
  FCGX_Init( );
  FCGX_InitRequest(&request, 0, 0);
  while (FCGX_Accept_r(&request) == 0)
  {
    FCGX_FPrintF(request.out, "Content-type: text/html\r\n\r\n <h1>Hello World!</h1>");
    FCGX_Finish_r(&request);
  }
  return 0;
}
