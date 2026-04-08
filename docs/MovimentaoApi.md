# MovimentaoApi

All URIs are relative to *https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**boletosMovimentacoesDownloadGet**](MovimentaoApi.md#boletosMovimentacoesDownloadGet) | **GET** /boletos/movimentacoes/download | Download do(s) arquivo(s) de movimentação.
[**boletosMovimentacoesGet**](MovimentaoApi.md#boletosMovimentacoesGet) | **GET** /boletos/movimentacoes | Consultar a situação da solicitação da movimentação
[**boletosMovimentacoesPost**](MovimentaoApi.md#boletosMovimentacoesPost) | **POST** /boletos/movimentacoes | Solicitar a movimentação da carteira de cobrança registrada para beneficiário informado


<a name="boletosMovimentacoesDownloadGet"></a>
# **boletosMovimentacoesDownloadGet**
> InlineResponse2007 boletosMovimentacoesDownloadGet(numeroCliente, codigoSolicitacao, idArquivo)

Download do(s) arquivo(s) de movimentação.

Serviço para obter um arquivo de movimentação.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.MovimentaoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    MovimentaoApi apiInstance = new MovimentaoApi(defaultClient);
    Integer numeroCliente = 56; // Integer | Número que identifica o contrato do beneficiário no Sisbr.
    Integer codigoSolicitacao = 56; // Integer | Código da solicitação que deseja consultar a quantidade de arquivos que serão gerados
    Integer idArquivo = 56; // Integer | ID do arquivo para download
    try {
      InlineResponse2007 result = apiInstance.boletosMovimentacoesDownloadGet(numeroCliente, codigoSolicitacao, idArquivo);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MovimentaoApi#boletosMovimentacoesDownloadGet");
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
 **numeroCliente** | **Integer**| Número que identifica o contrato do beneficiário no Sisbr. |
 **codigoSolicitacao** | **Integer**| Código da solicitação que deseja consultar a quantidade de arquivos que serão gerados |
 **idArquivo** | **Integer**| ID do arquivo para download |

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |
**400** | Erro de negócio |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

<a name="boletosMovimentacoesGet"></a>
# **boletosMovimentacoesGet**
> InlineResponse2005 boletosMovimentacoesGet(numeroCliente, codigoSolicitacao)

Consultar a situação da solicitação da movimentação

Serviço para consultar a situação da solicitação da movimentação.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.MovimentaoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    MovimentaoApi apiInstance = new MovimentaoApi(defaultClient);
    Integer numeroCliente = 56; // Integer | Número que identifica o contrato do beneficiário no Sisbr.
    Integer codigoSolicitacao = 56; // Integer | Código da solicitação que deseja consultar a quantidade de arquivos que serão gerados
    try {
      InlineResponse2005 result = apiInstance.boletosMovimentacoesGet(numeroCliente, codigoSolicitacao);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MovimentaoApi#boletosMovimentacoesGet");
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
 **numeroCliente** | **Integer**| Número que identifica o contrato do beneficiário no Sisbr. |
 **codigoSolicitacao** | **Integer**| Código da solicitação que deseja consultar a quantidade de arquivos que serão gerados |

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |
**204** | A requisição foi processada com êxito e não está retornando conteúdo. |  -  |
**400** | Possíveis erros de negócio. |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

<a name="boletosMovimentacoesPost"></a>
# **boletosMovimentacoesPost**
> InlineResponse2006 boletosMovimentacoesPost(solicitacao)

Solicitar a movimentação da carteira de cobrança registrada para beneficiário informado

Serviço para solicitar a movimentação da carteira de cobrança registrada para beneficiário informado. Os movimentos disponíveis para solicitaçao são 1. Entrada 2. Prorrogação 3. A Vencer 4. Vencido 5. Liquidação 6. Baixa 7. Vinculado Operações Crédito * As consultas estão limitadas em um período máximo de 2 dias.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.MovimentaoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    MovimentaoApi apiInstance = new MovimentaoApi(defaultClient);
    InlineObject solicitacao = new InlineObject(); // InlineObject | 
    try {
      InlineResponse2006 result = apiInstance.boletosMovimentacoesPost(solicitacao);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling MovimentaoApi#boletosMovimentacoesPost");
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
 **solicitacao** | [**InlineObject**](InlineObject.md)|  |

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** |  |  -  |
**400** | Possíveis erros de negócio. |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

