%% -*- mode: erlang -*-
-module(swagger_invoice_templates_api).

%% generated methods

-export([create_invoice_template/2]).
-export([create_invoice_template/3]).

-export([create_invoice_with_template/2]).
-export([create_invoice_with_template/3]).

-export([delete_invoice_template/2]).
-export([delete_invoice_template/3]).

-export([get_invoice_payment_methods_by_template_id/2]).
-export([get_invoice_payment_methods_by_template_id/3]).

-export([get_invoice_template_by_id/2]).
-export([get_invoice_template_by_id/3]).

-export([update_invoice_template/2]).
-export([update_invoice_template/3]).


-spec create_invoice_template(Endpoint :: swagger:endpoint(), Params :: map()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
create_invoice_template(Endpoint, Params) ->
    create_invoice_template(Endpoint, Params, []).

-spec create_invoice_template(Endpoint :: swagger:endpoint(), Params :: map(), Opts :: swagger:transport_opts()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
create_invoice_template(Endpoint, Params, Opts) ->
    process_response(swagger_procession:process_request(
        post,
        swagger_utils:get_url(Endpoint, "/v2/processing/invoice-templates"),
        Params,
        get_request_spec(create_invoice_template),
        Opts
    ), create_invoice_template).

-spec create_invoice_with_template(Endpoint :: swagger:endpoint(), Params :: map()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
create_invoice_with_template(Endpoint, Params) ->
    create_invoice_with_template(Endpoint, Params, []).

-spec create_invoice_with_template(Endpoint :: swagger:endpoint(), Params :: map(), Opts :: swagger:transport_opts()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
create_invoice_with_template(Endpoint, Params, Opts) ->
    process_response(swagger_procession:process_request(
        post,
        swagger_utils:get_url(Endpoint, "/v2/processing/invoice-templates/:invoiceTemplateID/invoices"),
        Params,
        get_request_spec(create_invoice_with_template),
        Opts
    ), create_invoice_with_template).

-spec delete_invoice_template(Endpoint :: swagger:endpoint(), Params :: map()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
delete_invoice_template(Endpoint, Params) ->
    delete_invoice_template(Endpoint, Params, []).

-spec delete_invoice_template(Endpoint :: swagger:endpoint(), Params :: map(), Opts :: swagger:transport_opts()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
delete_invoice_template(Endpoint, Params, Opts) ->
    process_response(swagger_procession:process_request(
        delete,
        swagger_utils:get_url(Endpoint, "/v2/processing/invoice-templates/:invoiceTemplateID"),
        Params,
        get_request_spec(delete_invoice_template),
        Opts
    ), delete_invoice_template).

-spec get_invoice_payment_methods_by_template_id(Endpoint :: swagger:endpoint(), Params :: map()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
get_invoice_payment_methods_by_template_id(Endpoint, Params) ->
    get_invoice_payment_methods_by_template_id(Endpoint, Params, []).

-spec get_invoice_payment_methods_by_template_id(Endpoint :: swagger:endpoint(), Params :: map(), Opts :: swagger:transport_opts()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
get_invoice_payment_methods_by_template_id(Endpoint, Params, Opts) ->
    process_response(swagger_procession:process_request(
        get,
        swagger_utils:get_url(Endpoint, "/v2/processing/invoice-templates/:invoiceTemplateID/payment-methods"),
        Params,
        get_request_spec(get_invoice_payment_methods_by_template_id),
        Opts
    ), get_invoice_payment_methods_by_template_id).

-spec get_invoice_template_by_id(Endpoint :: swagger:endpoint(), Params :: map()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
get_invoice_template_by_id(Endpoint, Params) ->
    get_invoice_template_by_id(Endpoint, Params, []).

-spec get_invoice_template_by_id(Endpoint :: swagger:endpoint(), Params :: map(), Opts :: swagger:transport_opts()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
get_invoice_template_by_id(Endpoint, Params, Opts) ->
    process_response(swagger_procession:process_request(
        get,
        swagger_utils:get_url(Endpoint, "/v2/processing/invoice-templates/:invoiceTemplateID"),
        Params,
        get_request_spec(get_invoice_template_by_id),
        Opts
    ), get_invoice_template_by_id).

-spec update_invoice_template(Endpoint :: swagger:endpoint(), Params :: map()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
update_invoice_template(Endpoint, Params) ->
    update_invoice_template(Endpoint, Params, []).

-spec update_invoice_template(Endpoint :: swagger:endpoint(), Params :: map(), Opts :: swagger:transport_opts()) ->
    {ok, Code :: integer(), RespHeaders :: list(), Response :: map()} |
    {error, _Reason}.
update_invoice_template(Endpoint, Params, Opts) ->
    process_response(swagger_procession:process_request(
        put,
        swagger_utils:get_url(Endpoint, "/v2/processing/invoice-templates/:invoiceTemplateID"),
        Params,
        get_request_spec(update_invoice_template),
        Opts
    ), update_invoice_template).

process_response({ok, Code, Headers, RespBody}, OperationID) ->
    try swagger_procession:process_response(
        get_response_spec(OperationID, Code),
        RespBody
    ) of
        {ok, Resp} ->
            {ok, Code, Headers, Resp};
        Error ->
            Error
    catch
        error:invalid_response_code ->
            {error, {invalid_response_code, Code}}
    end;
process_response(Error, _) ->
    Error.


-spec get_request_spec(OperationID :: swagger:operation_id()) ->
    Spec :: swagger_procession:request_spec() | no_return().


get_request_spec('create_invoice_template') ->
    [
        {'X-Request-ID', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 32}, {min_length, 1}, true
, {required, true}]
        }},
        {'InvoiceTemplateCreateParams', #{
            source => body,
            rules  => [schema, {required, true}]
        }},
        {'X-Request-Deadline', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, false}]
        }}
    ];
get_request_spec('create_invoice_with_template') ->
    [
        {'X-Request-ID', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 32}, {min_length, 1}, true
, {required, true}]
        }},
        {'invoiceTemplateID', #{
            source => binding,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, true}]
        }},
        {'InvoiceParamsWithTemplate', #{
            source => body,
            rules  => [schema, {required, true}]
        }},
        {'X-Request-Deadline', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, false}]
        }}
    ];
get_request_spec('delete_invoice_template') ->
    [
        {'X-Request-ID', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 32}, {min_length, 1}, true
, {required, true}]
        }},
        {'invoiceTemplateID', #{
            source => binding,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, true}]
        }},
        {'X-Request-Deadline', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, false}]
        }}
    ];
get_request_spec('get_invoice_payment_methods_by_template_id') ->
    [
        {'X-Request-ID', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 32}, {min_length, 1}, true
, {required, true}]
        }},
        {'invoiceTemplateID', #{
            source => binding,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, true}]
        }},
        {'X-Request-Deadline', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, false}]
        }}
    ];
get_request_spec('get_invoice_template_by_id') ->
    [
        {'X-Request-ID', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 32}, {min_length, 1}, true
, {required, true}]
        }},
        {'invoiceTemplateID', #{
            source => binding,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, true}]
        }},
        {'X-Request-Deadline', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, false}]
        }}
    ];
get_request_spec('update_invoice_template') ->
    [
        {'X-Request-ID', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 32}, {min_length, 1}, true
, {required, true}]
        }},
        {'invoiceTemplateID', #{
            source => binding,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, true}]
        }},
        {'InvoiceTemplateUpdateParams', #{
            source => body,
            rules  => [schema, {required, true}]
        }},
        {'X-Request-Deadline', #{
            source => header,
            rules  => [{type, 'binary'}, {max_length, 40}, {min_length, 1}, true
, {required, false}]
        }}
    ].

-spec get_response_spec(OperationID :: swagger:operation_id(), Code :: swagger_procession:code()) ->
    Spec :: swagger_procession:response_spec() | no_return().


get_response_spec('create_invoice_template', 201) ->
    {'InvoiceTemplateAndToken', 'InvoiceTemplateAndToken'};

get_response_spec('create_invoice_template', 400) ->
    {'inline_response_400_7', 'inline_response_400_7'};

get_response_spec('create_invoice_template', 401) ->
    undefined;

get_response_spec('create_invoice_template', 409) ->
    {'ExternalIDConflictError', 'ExternalIDConflictError'};

get_response_spec('create_invoice_with_template', 201) ->
    {'InvoiceAndToken', 'InvoiceAndToken'};

get_response_spec('create_invoice_with_template', 400) ->
    {'inline_response_400_9', 'inline_response_400_9'};

get_response_spec('create_invoice_with_template', 401) ->
    undefined;

get_response_spec('create_invoice_with_template', 404) ->
    {'GeneralError', 'GeneralError'};

get_response_spec('create_invoice_with_template', 409) ->
    {'ExternalIDConflictError', 'ExternalIDConflictError'};

get_response_spec('delete_invoice_template', 204) ->
    undefined;

get_response_spec('delete_invoice_template', 400) ->
    {'inline_response_400_5', 'inline_response_400_5'};

get_response_spec('delete_invoice_template', 401) ->
    undefined;

get_response_spec('delete_invoice_template', 404) ->
    {'GeneralError', 'GeneralError'};

get_response_spec('get_invoice_payment_methods_by_template_id', 200) ->
    {'list', 'PaymentMethod'};

get_response_spec('get_invoice_payment_methods_by_template_id', 400) ->
    {'DefaultLogicError', 'DefaultLogicError'};

get_response_spec('get_invoice_payment_methods_by_template_id', 401) ->
    undefined;

get_response_spec('get_invoice_payment_methods_by_template_id', 404) ->
    {'GeneralError', 'GeneralError'};

get_response_spec('get_invoice_template_by_id', 200) ->
    {'InvoiceTemplate', 'InvoiceTemplate'};

get_response_spec('get_invoice_template_by_id', 400) ->
    {'DefaultLogicError', 'DefaultLogicError'};

get_response_spec('get_invoice_template_by_id', 401) ->
    undefined;

get_response_spec('get_invoice_template_by_id', 404) ->
    {'GeneralError', 'GeneralError'};

get_response_spec('update_invoice_template', 200) ->
    {'InvoiceTemplate', 'InvoiceTemplate'};

get_response_spec('update_invoice_template', 400) ->
    {'inline_response_400_8', 'inline_response_400_8'};

get_response_spec('update_invoice_template', 401) ->
    undefined;

get_response_spec('update_invoice_template', 404) ->
    {'GeneralError', 'GeneralError'};

get_response_spec(_, _) ->
    error(invalid_response_code).
