# PagadorApi

All URIs are relative to *https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pagadoresPut**](PagadorApi.md#pagadoresPut) | **PUT** /pagadores | Alterar informações do cadastro do pagador.


<a name="pagadoresPut"></a>
# **pagadoresPut**
> pagadoresPut(pagador)

Alterar informações do cadastro do pagador.

Serviço para alterar informações do cadastro do pagador.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.PagadorApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    PagadorApi apiInstance = new PagadorApi(defaultClient);
    Pagador pagador = new Pagador(); // Pagador | Informações do pagador.
    try {
      apiInstance.pagadoresPut(pagador);
    } catch (ApiException e) {
      System.err.println("Exception when calling PagadorApi#pagadoresPut");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pagador** | [**Pagador**](Pagador.md)| Informações do pagador. |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Solicitação recebida com sucesso. |  -  |
**400** | Possíveis erros de negócio. |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

