# BoletoApi

All URIs are relative to *http://localhost/cobranca-bancaria/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**boletosFaixasNossoNumeroGet**](BoletoApi.md#boletosFaixasNossoNumeroGet) | **GET** /boletos/faixas-nosso-numero | Consulta de dados de faixas de nosso número disponíveis.
[**boletosGet**](BoletoApi.md#boletosGet) | **GET** /boletos | Consultar boleto
[**boletosNossoNumeroBaixarPost**](BoletoApi.md#boletosNossoNumeroBaixarPost) | **POST** /boletos/{nossoNumero}/baixar | Comandar a baixa de boletos
[**boletosNossoNumeroPatch**](BoletoApi.md#boletosNossoNumeroPatch) | **PATCH** /boletos/{nossoNumero} | Alterar dados de um boleto
[**boletosPost**](BoletoApi.md#boletosPost) | **POST** /boletos | Incluir boletos
[**boletosSegundaViaGet**](BoletoApi.md#boletosSegundaViaGet) | **GET** /boletos/segunda-via | Emitir segunda via de um boleto
[**pagadoresNumeroCpfCnpjBoletosGet**](BoletoApi.md#pagadoresNumeroCpfCnpjBoletosGet) | **GET** /pagadores/{numeroCpfCnpj}/boletos | Listar Boletos por Pagador


<a name="boletosFaixasNossoNumeroGet"></a>
# **boletosFaixasNossoNumeroGet**
> InlineResponse2004 boletosFaixasNossoNumeroGet(numeroCliente, codigoModalidade, quantidade, numeroContratoCobranca)

Consulta de dados de faixas de nosso número disponíveis.

Serviço para consulta de dados de faixas de nosso número disponíveis.  Quando o campo validaDigitoVerificadorNossoNumero retornar o valor \&quot;0\&quot; a faixa \&quot;numeroInicial\&quot; e \&quot;numeroFinal\&quot; refere-se a numeração final (exemplo: 10 e 15 - utilização: 1-0 1-1 1-2 1-3 1-4 1-5). Mas se o campo validaDigitoVerificadorNossoNumero retornar o valor \&quot;1\&quot; a faixa \&quot;numeroInicial\&quot; e \&quot;numeroFinal\&quot; deverá ser calculado o DV (exemplo: 10 e 15 - utilização: 10-4 11-8 12-0 13-1 14-7 15-9).

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.BoletoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    BoletoApi apiInstance = new BoletoApi(defaultClient);
    Integer numeroCliente = 56; // Integer | Número que identifica o contrato do beneficiário no Sisbr.
    Integer codigoModalidade = 56; // Integer | Identifica a modalidade do boleto. - 1 - SIMPLES COM REGISTRO - 3 - CAUCIONADA - 4 - VINCULADA - 8 - COBRANÇA CONTA CAPITAL
    Integer quantidade = 56; // Integer | Quantidade mínima de nosso números que devem estar disponíveis na faixa a ser pesquisada.
    Long numeroContratoCobranca = 56L; // Long | Indicar o id do contatro de cobrança
    try {
      InlineResponse2004 result = apiInstance.boletosFaixasNossoNumeroGet(numeroCliente, codigoModalidade, quantidade, numeroContratoCobranca);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BoletoApi#boletosFaixasNossoNumeroGet");
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
 **codigoModalidade** | **Integer**| Identifica a modalidade do boleto. - 1 - SIMPLES COM REGISTRO - 3 - CAUCIONADA - 4 - VINCULADA - 8 - COBRANÇA CONTA CAPITAL |
 **quantidade** | **Integer**| Quantidade mínima de nosso números que devem estar disponíveis na faixa a ser pesquisada. |
 **numeroContratoCobranca** | **Long**| Indicar o id do contatro de cobrança | [optional]

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

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
**500** | Erro interno. |  -  |

<a name="boletosGet"></a>
# **boletosGet**
> InlineResponse200 boletosGet(numeroCliente, codigoModalidade, nossoNumero, linhaDigitavel, codigoBarras, numeroContratoCobranca)

Consultar boleto

Serviço para consulta de um boleto bancário. Utiliza as informações do beneficiário logado (número da cooperativa, número identificador do beneficiário e conta corrente), juntamente com a informação do identificador do boleto (nosso número), ou da linha digitável ou do código de barras.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.BoletoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    BoletoApi apiInstance = new BoletoApi(defaultClient);
    Integer numeroCliente = 56; // Integer | Número que identifica o contrato do beneficiário no Sisbr.
    Integer codigoModalidade = 56; // Integer | Identifica a modalidade do boleto. - 1 - SIMPLES COM REGISTRO - 3 - CAUCIONADA - 4 - VINCULADA - 5 - CARNÊ DE PAGAMENTOS  - 8 - COBRANÇA CONTA CAPITAL
    Integer nossoNumero = 56; // Integer | Número identificador do boleto no Sisbr. Caso seja infomado, não é necessário infomar a linha digitável ou código de barras.
    String linhaDigitavel = "linhaDigitavel_example"; // String | Número da linha digitável do boleto com 47 posições. Caso seja informado, não é necessário informar o nosso número ou código de barras.
    String codigoBarras = "codigoBarras_example"; // String | Número de código de barras do boleto com 44 posições.Caso seja informado, não é necessário informar o nosso número ou linha digitável.
    Integer numeroContratoCobranca = 56; // Integer | Indicar o id do contatro de cobrança
    try {
      InlineResponse200 result = apiInstance.boletosGet(numeroCliente, codigoModalidade, nossoNumero, linhaDigitavel, codigoBarras, numeroContratoCobranca);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BoletoApi#boletosGet");
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
 **codigoModalidade** | **Integer**| Identifica a modalidade do boleto. - 1 - SIMPLES COM REGISTRO - 3 - CAUCIONADA - 4 - VINCULADA - 5 - CARNÊ DE PAGAMENTOS  - 8 - COBRANÇA CONTA CAPITAL |
 **nossoNumero** | **Integer**| Número identificador do boleto no Sisbr. Caso seja infomado, não é necessário infomar a linha digitável ou código de barras. | [optional]
 **linhaDigitavel** | **String**| Número da linha digitável do boleto com 47 posições. Caso seja informado, não é necessário informar o nosso número ou código de barras. | [optional]
 **codigoBarras** | **String**| Número de código de barras do boleto com 44 posições.Caso seja informado, não é necessário informar o nosso número ou linha digitável. | [optional]
 **numeroContratoCobranca** | **Integer**| Indicar o id do contatro de cobrança | [optional]

### Return type

[**InlineResponse200**](InlineResponse200.md)

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
**500** | Erro interno. |  -  |

<a name="boletosNossoNumeroBaixarPost"></a>
# **boletosNossoNumeroBaixarPost**
> boletosNossoNumeroBaixarPost(nossoNumero, boleto)

Comandar a baixa de boletos

Serviço para comandar a baixa de boletos informados.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.BoletoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    BoletoApi apiInstance = new BoletoApi(defaultClient);
    Integer nossoNumero = 56; // Integer | Número que identifica o boleto de cobrança no Sisbr
    BoletoBaixa boleto = new BoletoBaixa(); // BoletoBaixa | Informações do boleto de cobrança
    try {
      apiInstance.boletosNossoNumeroBaixarPost(nossoNumero, boleto);
    } catch (ApiException e) {
      System.err.println("Exception when calling BoletoApi#boletosNossoNumeroBaixarPost");
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
 **boleto** | [**BoletoBaixa**](BoletoBaixa.md)| Informações do boleto de cobrança |

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

<a name="boletosNossoNumeroPatch"></a>
# **boletosNossoNumeroPatch**
> boletosNossoNumeroPatch(nossoNumero, boleto)

Alterar dados de um boleto

Serviço para alteração de dados de boleto já registrado.  Deve ser feita a alteração de somente um objeto do boleto por requisição. **Objetos de alteração do boleto:** - seuNumero - desconto - abatimento - multa - jurosMora - rateioCredito - pix - prorrogacaoVencimento - prorrogacaoLimitePagamento

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.BoletoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    BoletoApi apiInstance = new BoletoApi(defaultClient);
    Integer nossoNumero = 56; // Integer | Número que identifica o boleto de cobrança no Sisbr
    BoletoAlteracao boleto = new BoletoAlteracao(); // BoletoAlteracao | Informações do boleto de cobrança
    try {
      apiInstance.boletosNossoNumeroPatch(nossoNumero, boleto);
    } catch (ApiException e) {
      System.err.println("Exception when calling BoletoApi#boletosNossoNumeroPatch");
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
 **boleto** | [**BoletoAlteracao**](BoletoAlteracao.md)| Informações do boleto de cobrança |

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
**204** | Alteração realizada com sucesso. |  -  |
**400** | Possíveis erros de negócio. |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno |  -  |

<a name="boletosPost"></a>
# **boletosPost**
> InlineResponse2001 boletosPost(boleto)

Incluir boletos

Serviço para a inclusão de boletos. É possível a inclusão de 1 boleto por requisição.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.BoletoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    BoletoApi apiInstance = new BoletoApi(defaultClient);
    Boleto boleto = new Boleto(); // Boleto | Inclusão das informações detalhadas do boleto de cobrança.
    try {
      InlineResponse2001 result = apiInstance.boletosPost(boleto);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BoletoApi#boletosPost");
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
 **boleto** | [**Boleto**](Boleto.md)| Inclusão das informações detalhadas do boleto de cobrança. |

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Solicitação recebida com sucesso. |  -  |
**400** | Possíveis erros de negócio. |  -  |
**406** | Possíveis erros de inconsistência nos dados passados. |  -  |
**500** | Erro interno. |  -  |

<a name="boletosSegundaViaGet"></a>
# **boletosSegundaViaGet**
> InlineResponse2003 boletosSegundaViaGet(numeroCliente, codigoModalidade, nossoNumero, linhaDigitavel, codigoBarras, gerarPdf, numeroContratoCobranca)

Emitir segunda via de um boleto

Serviço para emissão da segunda via de boleto já registrado. Utiliza as informações do beneficiário logado (número da cooperativa, número identificador do beneficiário e conta corrente), juntamente com a informação do identificador do boleto (nosso número), ou da linha digitável ou do código de barras. Quando informados código de barras ou linha digitável, a pesquisa é realiazada prioritariamente por estes parâmetros.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.BoletoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    BoletoApi apiInstance = new BoletoApi(defaultClient);
    Integer numeroCliente = 56; // Integer | Número que identifica o contrato do beneficiário no Sisbr.
    Integer codigoModalidade = 56; // Integer | Identifica a modalidade do boleto. - 1 - SIMPLES COM REGISTRO - 3 - CAUCIONADA - 4 - VINCULADA - 5 - CARNÊ DE PAGAMENTOS  - 8 - COBRANÇA CONTA CAPITAL
    Integer nossoNumero = 56; // Integer | Número identificador do boleto no Sisbr.Caso seja informado, não é necessário informar a linha digitável ou código de barras.
    String linhaDigitavel = "linhaDigitavel_example"; // String | Número da linha digitável do boleto com 47 posições.Caso seja informado, não é necessário informar o nosso número ou código de barras.
    String codigoBarras = "codigoBarras_example"; // String | Número de código de barras do boleto com 44 posições.Caso seja informado, não é necessário informar o nosso número ou a linha digitável.
    Boolean gerarPdf = true; // Boolean | Identificador para o sistema devolver ou não o PDF do Boleto. O PDF será retornado na Base64.
    Long numeroContratoCobranca = 56L; // Long | Indicar o id do contatro de cobrança
    try {
      InlineResponse2003 result = apiInstance.boletosSegundaViaGet(numeroCliente, codigoModalidade, nossoNumero, linhaDigitavel, codigoBarras, gerarPdf, numeroContratoCobranca);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BoletoApi#boletosSegundaViaGet");
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
 **codigoModalidade** | **Integer**| Identifica a modalidade do boleto. - 1 - SIMPLES COM REGISTRO - 3 - CAUCIONADA - 4 - VINCULADA - 5 - CARNÊ DE PAGAMENTOS  - 8 - COBRANÇA CONTA CAPITAL |
 **nossoNumero** | **Integer**| Número identificador do boleto no Sisbr.Caso seja informado, não é necessário informar a linha digitável ou código de barras. | [optional]
 **linhaDigitavel** | **String**| Número da linha digitável do boleto com 47 posições.Caso seja informado, não é necessário informar o nosso número ou código de barras. | [optional]
 **codigoBarras** | **String**| Número de código de barras do boleto com 44 posições.Caso seja informado, não é necessário informar o nosso número ou a linha digitável. | [optional]
 **gerarPdf** | **Boolean**| Identificador para o sistema devolver ou não o PDF do Boleto. O PDF será retornado na Base64. | [optional]
 **numeroContratoCobranca** | **Long**| Indicar o id do contatro de cobrança | [optional]

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

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
**500** | Erro interno. |  -  |

<a name="pagadoresNumeroCpfCnpjBoletosGet"></a>
# **pagadoresNumeroCpfCnpjBoletosGet**
> InlineResponse2002 pagadoresNumeroCpfCnpjBoletosGet(numeroCpfCnpj, numeroCliente, codigoSituacao, dataInicio, dataFim)

Listar Boletos por Pagador

Serviço para listagem de boletos por Pagador.

### Example
```java
// Import classes:
import br.com.fidias.sicoob_cobranca.ApiClient;
import br.com.fidias.sicoob_cobranca.ApiException;
import br.com.fidias.sicoob_cobranca.Configuration;
import br.com.fidias.sicoob_cobranca.models.*;
import br.com.fidias.sicoob_cobranca.api.BoletoApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost/cobranca-bancaria/v3");

    BoletoApi apiInstance = new BoletoApi(defaultClient);
    String numeroCpfCnpj = "numeroCpfCnpj_example"; // String | CPF ou CNPJ do pagador. `Tamanho máximo 14`
    Integer numeroCliente = 56; // Integer | Número que identifica o contrato do beneficiário no Sisbr.
    Integer codigoSituacao = 56; // Integer | Código da Situação do Boleto.   - 1 Entrada Normal   - 2 Baixado   - 3 Liquidado
    LocalDate dataInicio = new LocalDate(); // LocalDate | Data de Vencimento Inicial. Formato: yyyy-MM-dd 
    LocalDate dataFim = new LocalDate(); // LocalDate | Data de Vencimento Final. Formato: yyyy-MM-dd 
    try {
      InlineResponse2002 result = apiInstance.pagadoresNumeroCpfCnpjBoletosGet(numeroCpfCnpj, numeroCliente, codigoSituacao, dataInicio, dataFim);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BoletoApi#pagadoresNumeroCpfCnpjBoletosGet");
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
 **numeroCpfCnpj** | **String**| CPF ou CNPJ do pagador. &#x60;Tamanho máximo 14&#x60; |
 **numeroCliente** | **Integer**| Número que identifica o contrato do beneficiário no Sisbr. |
 **codigoSituacao** | **Integer**| Código da Situação do Boleto.   - 1 Entrada Normal   - 2 Baixado   - 3 Liquidado | [optional]
 **dataInicio** | **LocalDate**| Data de Vencimento Inicial. Formato: yyyy-MM-dd  | [optional]
 **dataFim** | **LocalDate**| Data de Vencimento Final. Formato: yyyy-MM-dd  | [optional]

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

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
**500** | Erro interno. |  -  |

