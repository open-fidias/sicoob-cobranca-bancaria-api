# WebhookApi

All URIs are relative to *https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhooksGet**](WebhookApi.md#webhooksGet) | **GET** /webhooks | Consultar os webhooks cadastrados.
[**webhooksIdWebhookDelete**](WebhookApi.md#webhooksIdWebhookDelete) | **DELETE** /webhooks/{idWebhook} | Excluir um webhook.
[**webhooksIdWebhookPatch**](WebhookApi.md#webhooksIdWebhookPatch) | **PATCH** /webhooks/{idWebhook} | Atualizar um webhook cadastrado.
[**webhooksIdWebhookReativarPatch**](WebhookApi.md#webhooksIdWebhookReativarPatch) | **PATCH** /webhooks/{idWebhook}/reativar | Reativar um webhook inativo.
[**webhooksIdWebhookSolicitacoesGet**](WebhookApi.md#webhooksIdWebhookSolicitacoesGet) | **GET** /webhooks/{idWebhook}/solicitacoes | Consultar solicitações de um webhook.
[**webhooksPost**](WebhookApi.md#webhooksPost) | **POST** /webhooks | Cadastrar um webhook para receber notificações de acordo com o tipo de movimento.


<a name="webhooksGet"></a>
# **webhooksGet**
> InlineResponse2008 webhooksGet(idWebhook, codigoTipoMovimento)

Consultar os webhooks cadastrados.

Serviço para consultar os detalhes dos webhooks cadastrados.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.WebhookApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    WebhookApi apiInstance = new WebhookApi(defaultClient);
    Long idWebhook = 56L; // Long | Identificador único do webhook.
    Integer codigoTipoMovimento = 56; // Integer | Código do tipo de movimento do webhook.   7 - Pagamento (Baixa operacional) 
    try {
      InlineResponse2008 result = apiInstance.webhooksGet(idWebhook, codigoTipoMovimento);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhookApi#webhooksGet");
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
 **idWebhook** | **Long**| Identificador único do webhook. | [optional]
 **codigoTipoMovimento** | **Integer**| Código do tipo de movimento do webhook.   7 - Pagamento (Baixa operacional)  | [optional]

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Consulta realizada com sucesso. |  -  |
**204** | A consulta foi realizada com sucesso e não retornou registros. |  -  |
**400** | Erro de negócio |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

<a name="webhooksIdWebhookDelete"></a>
# **webhooksIdWebhookDelete**
> webhooksIdWebhookDelete(idWebhook)

Excluir um webhook.

Serviço responsável por remover permanentemente um webhook registrado, encerrando o envio de notificações para a URL vinculada.\&quot; 

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.WebhookApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    WebhookApi apiInstance = new WebhookApi(defaultClient);
    Long idWebhook = 56L; // Long | Identificador único do webhook.
    try {
      apiInstance.webhooksIdWebhookDelete(idWebhook);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhookApi#webhooksIdWebhookDelete");
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
 **idWebhook** | **Long**| Identificador único do webhook. |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Webhook excluído com sucesso. |  -  |
**400** | Erro de negócio |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

<a name="webhooksIdWebhookPatch"></a>
# **webhooksIdWebhookPatch**
> webhooksIdWebhookPatch(idWebhook, webhook)

Atualizar um webhook cadastrado.

Serviço de atualização de webhook. Ao modificar a URL, a situação do webhook será automaticamente alterada para &#39;1 - Aguardando validação&#39; e permanecerá assim até que a nova URL seja validada com sucesso. 

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.WebhookApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    WebhookApi apiInstance = new WebhookApi(defaultClient);
    Long idWebhook = 56L; // Long | Identificador único do webhook.
    WebhookAlteracao webhook = new WebhookAlteracao(); // WebhookAlteracao | Informações do webhook para atualização.
    try {
      apiInstance.webhooksIdWebhookPatch(idWebhook, webhook);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhookApi#webhooksIdWebhookPatch");
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
 **idWebhook** | **Long**| Identificador único do webhook. |
 **webhook** | [**WebhookAlteracao**](WebhookAlteracao.md)| Informações do webhook para atualização. |

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
**204** | Webhook atualizado com sucesso. |  -  |
**400** | Erro de negócio |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

<a name="webhooksIdWebhookReativarPatch"></a>
# **webhooksIdWebhookReativarPatch**
> webhooksIdWebhookReativarPatch(idWebhook)

Reativar um webhook inativo.

Serviço de reativação de webhook desativado, restabelecendo o recebimento de notificações. A situação do webhook será atualizada para &#39;1 - Aguardando validação&#39; e permanecerá assim até que a URL seja validada com sucesso. 

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.WebhookApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    WebhookApi apiInstance = new WebhookApi(defaultClient);
    Long idWebhook = 56L; // Long | Identificador único do webhook.
    try {
      apiInstance.webhooksIdWebhookReativarPatch(idWebhook);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhookApi#webhooksIdWebhookReativarPatch");
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
 **idWebhook** | **Long**| Identificador único do webhook. |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Webhook reativado com sucesso. |  -  |
**400** | Erro de negócio |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

<a name="webhooksIdWebhookSolicitacoesGet"></a>
# **webhooksIdWebhookSolicitacoesGet**
> InlineResponse2009 webhooksIdWebhookSolicitacoesGet(idWebhook, dataSolicitacao, pagina, codigoSolicitacaoSituacao, codigoBarras, nossoNumero)

Consultar solicitações de um webhook.

Consulta as solicitações de notificação para um webhook com base na data de solicitação informada.  Retorna o histórico das tentativas de notificação, incluindo o status e a resposta da requisição. 

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.WebhookApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    WebhookApi apiInstance = new WebhookApi(defaultClient);
    Long idWebhook = 56L; // Long | Identificador único do webhook.
    LocalDate dataSolicitacao = new LocalDate(); // LocalDate | Data da solicitação. Formato: yyyy-MM-dd
    Integer pagina = 56; // Integer | Número da página a ser consultada.
    Integer codigoSolicitacaoSituacao = 56; // Integer | Código da situação da solicitação do webhook.   - 2 - Aguardando envio   - 3 - Enviado com sucesso   - 6 - Erro no envio 
    String codigoBarras = "codigoBarras_example"; // String | Código de barras do boleto presente na notificação webhook
    Long nossoNumero = 56L; // Long | Nosso número do boleto presente na notificação webhook
    try {
      InlineResponse2009 result = apiInstance.webhooksIdWebhookSolicitacoesGet(idWebhook, dataSolicitacao, pagina, codigoSolicitacaoSituacao, codigoBarras, nossoNumero);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhookApi#webhooksIdWebhookSolicitacoesGet");
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
 **idWebhook** | **Long**| Identificador único do webhook. |
 **dataSolicitacao** | **LocalDate**| Data da solicitação. Formato: yyyy-MM-dd |
 **pagina** | **Integer**| Número da página a ser consultada. | [optional]
 **codigoSolicitacaoSituacao** | **Integer**| Código da situação da solicitação do webhook.   - 2 - Aguardando envio   - 3 - Enviado com sucesso   - 6 - Erro no envio  | [optional]
 **codigoBarras** | **String**| Código de barras do boleto presente na notificação webhook | [optional]
 **nossoNumero** | **Long**| Nosso número do boleto presente na notificação webhook | [optional]

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Consulta realizada com sucesso. |  -  |
**400** | Erro de negócio |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

<a name="webhooksPost"></a>
# **webhooksPost**
> InlineResponse201 webhooksPost(webhook)

Cadastrar um webhook para receber notificações de acordo com o tipo de movimento.

Este serviço permite cadastrar uma URL que será notificada sempre que ocorrer um evento associado a um tipo de movimento. O webhook pode ser configurado para o período de movimentação atual (D0). 

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.WebhookApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://sandbox.sicoob.com.br/sicoob/sandbox/cobranca-bancaria/v3");

    WebhookApi apiInstance = new WebhookApi(defaultClient);
    WebhookCadastro webhook = new WebhookCadastro(); // WebhookCadastro | Informações do webhook para o cadastro.
    try {
      InlineResponse201 result = apiInstance.webhooksPost(webhook);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling WebhookApi#webhooksPost");
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
 **webhook** | [**WebhookCadastro**](WebhookCadastro.md)| Informações do webhook para o cadastro. |

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Webhook cadastrado com sucesso. |  -  |
**400** | Erro de negócio |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

