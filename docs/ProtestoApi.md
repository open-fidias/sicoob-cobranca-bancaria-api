# ProtestoApi

All URIs are relative to *https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**boletosNossoNumeroProtestosDelete**](ProtestoApi.md#boletosNossoNumeroProtestosDelete) | **DELETE** /boletos/{nossoNumero}/protestos | Desistir do protesto de boletos
[**boletosNossoNumeroProtestosPatch**](ProtestoApi.md#boletosNossoNumeroProtestosPatch) | **PATCH** /boletos/{nossoNumero}/protestos | Cancelar o apontamento de protesto de boletos
[**boletosNossoNumeroProtestosPost**](ProtestoApi.md#boletosNossoNumeroProtestosPost) | **POST** /boletos/{nossoNumero}/protestos | Protestar boletos


<a name="boletosNossoNumeroProtestosDelete"></a>
# **boletosNossoNumeroProtestosDelete**
> boletosNossoNumeroProtestosDelete(nossoNumero, boleto)

Desistir do protesto de boletos

Este serviço realiza o pedido de desistência do protesto de boletos informados. O pedido de desistência não garante que o protesto será retirado. Deve-se aguardar o retorno do cartório. O pedido de desistência pode ser realizado a qualquer momento, desde que haja um apontamento prévio.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.ProtestoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    ProtestoApi apiInstance = new ProtestoApi(defaultClient);
    Integer nossoNumero = 56; // Integer | Número que identifica o boleto de cobrança no Sisbr
    Protesto boleto = new Protesto(); // Protesto | Informações do boleto de cobrança.
    try {
      apiInstance.boletosNossoNumeroProtestosDelete(nossoNumero, boleto);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProtestoApi#boletosNossoNumeroProtestosDelete");
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
 **nossoNumero** | **Integer**| Número que identifica o boleto de cobrança no Sisbr |
 **boleto** | [**Protesto**](Protesto.md)| Informações do boleto de cobrança. |

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

<a name="boletosNossoNumeroProtestosPatch"></a>
# **boletosNossoNumeroProtestosPatch**
> boletosNossoNumeroProtestosPatch(nossoNumero, boleto)

Cancelar o apontamento de protesto de boletos

Este serviço realiza a indicação de cancelamento de protesto de boletos informados. Os boletos em atraso e não pagos podem ser indicados a protesto. Caso seja realizado no mesmo dia, pode-se cancelar o apontamento a protesto.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.ProtestoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    ProtestoApi apiInstance = new ProtestoApi(defaultClient);
    Integer nossoNumero = 56; // Integer | Número que identifica o boleto de cobrança no Sisbr
    Protesto boleto = new Protesto(); // Protesto | Informações do boleto bancário.
    try {
      apiInstance.boletosNossoNumeroProtestosPatch(nossoNumero, boleto);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProtestoApi#boletosNossoNumeroProtestosPatch");
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
 **nossoNumero** | **Integer**| Número que identifica o boleto de cobrança no Sisbr |
 **boleto** | [**Protesto**](Protesto.md)| Informações do boleto bancário. |

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

<a name="boletosNossoNumeroProtestosPost"></a>
# **boletosNossoNumeroProtestosPost**
> boletosNossoNumeroProtestosPost(nossoNumero, boletos)

Protestar boletos

Este serviço registra a indicação a protesto de boletos informados. Os boletos vencidos e não pagos podem ser protestados e registrados em cartório.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.ProtestoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    ProtestoApi apiInstance = new ProtestoApi(defaultClient);
    Integer nossoNumero = 56; // Integer | Número que identifica o boleto de cobrança no Sisbr
    Protesto boletos = new Protesto(); // Protesto | Informações do boleto bancário.
    try {
      apiInstance.boletosNossoNumeroProtestosPost(nossoNumero, boletos);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProtestoApi#boletosNossoNumeroProtestosPost");
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
 **nossoNumero** | **Integer**| Número que identifica o boleto de cobrança no Sisbr |
 **boletos** | [**Protesto**](Protesto.md)| Informações do boleto bancário. |

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

