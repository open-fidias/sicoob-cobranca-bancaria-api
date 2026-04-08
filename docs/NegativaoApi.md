# NegativaoApi

All URIs are relative to *http://localhost/cobranca-bancaria/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**boletosNossoNumeroNegativacoesDelete**](NegativaoApi.md#boletosNossoNumeroNegativacoesDelete) | **DELETE** /boletos/{nossoNumero}/negativacoes | Baixar a negativação de pagadores de boletos
[**boletosNossoNumeroNegativacoesPatch**](NegativaoApi.md#boletosNossoNumeroNegativacoesPatch) | **PATCH** /boletos/{nossoNumero}/negativacoes | Cancelar o apontamento da negativação de pagadores de boletos
[**boletosNossoNumeroNegativacoesPost**](NegativaoApi.md#boletosNossoNumeroNegativacoesPost) | **POST** /boletos/{nossoNumero}/negativacoes | Negativar pagadores de boletos


<a name="boletosNossoNumeroNegativacoesDelete"></a>
# **boletosNossoNumeroNegativacoesDelete**
> boletosNossoNumeroNegativacoesDelete(nossoNumero, boleto)

Baixar a negativação de pagadores de boletos

Serviço para comandar uma baixa da negativação de pagadores de boletos informados. Será enviado um pedido de baixa para o serviço de proteção ao crédito.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.NegativaoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    NegativaoApi apiInstance = new NegativaoApi(defaultClient);
    Integer nossoNumero = 56; // Integer | Número que identifica o boleto de cobrança no Sisbr
    Negativacao boleto = new Negativacao(); // Negativacao | Informações do boleto de cobrança.
    try {
      apiInstance.boletosNossoNumeroNegativacoesDelete(nossoNumero, boleto);
    } catch (ApiException e) {
      System.err.println("Exception when calling NegativaoApi#boletosNossoNumeroNegativacoesDelete");
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
 **boleto** | [**Negativacao**](Negativacao.md)| Informações do boleto de cobrança. |

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

<a name="boletosNossoNumeroNegativacoesPatch"></a>
# **boletosNossoNumeroNegativacoesPatch**
> boletosNossoNumeroNegativacoesPatch(nossoNumero, boleto)

Cancelar o apontamento da negativação de pagadores de boletos

Serviço para cancelar o apontamento da negativação de pagadores de boletos informados. O boleto não será enviado ao serviço de proteção ao crédito.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.NegativaoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    NegativaoApi apiInstance = new NegativaoApi(defaultClient);
    Integer nossoNumero = 56; // Integer | Número que identifica o boleto de cobrança no Sisbr
    Negativacao boleto = new Negativacao(); // Negativacao | Informações do boleto.
    try {
      apiInstance.boletosNossoNumeroNegativacoesPatch(nossoNumero, boleto);
    } catch (ApiException e) {
      System.err.println("Exception when calling NegativaoApi#boletosNossoNumeroNegativacoesPatch");
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
 **boleto** | [**Negativacao**](Negativacao.md)| Informações do boleto. |

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

<a name="boletosNossoNumeroNegativacoesPost"></a>
# **boletosNossoNumeroNegativacoesPost**
> boletosNossoNumeroNegativacoesPost(nossoNumero, boletos)

Negativar pagadores de boletos

Serviço para indicar a negativação de pagadores de boletos informados. A negativação é o registro de pendências ou restrições nos órgãos de proteção ao crédito. No Sicoob, o parceiro para este serviço é o SERASA.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.NegativaoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    NegativaoApi apiInstance = new NegativaoApi(defaultClient);
    Integer nossoNumero = 56; // Integer | Número que identifica o boleto de cobrança no Sisbr
    Negativacao boletos = new Negativacao(); // Negativacao | Informações do boleto de cobrança.
    try {
      apiInstance.boletosNossoNumeroNegativacoesPost(nossoNumero, boletos);
    } catch (ApiException e) {
      System.err.println("Exception when calling NegativaoApi#boletosNossoNumeroNegativacoesPost");
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
 **boletos** | [**Negativacao**](Negativacao.md)| Informações do boleto de cobrança. |

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

