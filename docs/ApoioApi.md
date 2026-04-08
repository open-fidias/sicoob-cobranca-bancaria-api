# ApoioApi

All URIs are relative to *http://localhost/cobranca-bancaria/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](ApoioApi.md#healthGet) | **GET** /health | Verifica a disponibilidade da API


<a name="healthGet"></a>
# **healthGet**
> InlineResponse20010 healthGet()

Verifica a disponibilidade da API

Serviço para verificar a disponibilidade da API.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.ApoioApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    ApoioApi apiInstance = new ApoioApi(defaultClient);
    try {
      InlineResponse20010 result = apiInstance.healthGet();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ApoioApi#healthGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Consulta realizada com sucesso |  -  |

