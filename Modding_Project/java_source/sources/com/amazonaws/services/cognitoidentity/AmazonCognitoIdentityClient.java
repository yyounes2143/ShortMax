package com.amazonaws.services.cognitoidentity;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.handlers.HandlerChainFactory;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.http.JsonResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.services.cognitoidentity.model.GetIdRequest;
import com.amazonaws.services.cognitoidentity.model.GetIdResult;
import com.amazonaws.services.cognitoidentity.model.transform.ConcurrentModificationExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.DeveloperUserAlreadyRegisteredExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ExternalServiceExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetCredentialsForIdentityRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetCredentialsForIdentityResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetIdRequestMarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.GetIdResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.InternalErrorExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.InvalidIdentityPoolConfigurationExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.InvalidParameterExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.LimitExceededExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.NotAuthorizedExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ResourceConflictExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.ResourceNotFoundExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentity.model.transform.TooManyRequestsExceptionUnmarshaller;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class AmazonCognitoIdentityClient extends AmazonWebServiceClient implements AmazonCognitoIdentity {

    /* renamed from: l  reason: collision with root package name */
    private AWSCredentialsProvider f5793l;

    /* renamed from: m  reason: collision with root package name */
    protected List<JsonErrorUnmarshaller> f5794m;

    public AmazonCognitoIdentityClient(AWSCredentials aWSCredentials, ClientConfiguration clientConfiguration) {
        this(new StaticCredentialsProvider(aWSCredentials), clientConfiguration);
    }

    private void K() {
        ArrayList arrayList = new ArrayList();
        this.f5794m = arrayList;
        arrayList.add(new ConcurrentModificationExceptionUnmarshaller());
        this.f5794m.add(new DeveloperUserAlreadyRegisteredExceptionUnmarshaller());
        this.f5794m.add(new ExternalServiceExceptionUnmarshaller());
        this.f5794m.add(new InternalErrorExceptionUnmarshaller());
        this.f5794m.add(new InvalidIdentityPoolConfigurationExceptionUnmarshaller());
        this.f5794m.add(new InvalidParameterExceptionUnmarshaller());
        this.f5794m.add(new LimitExceededExceptionUnmarshaller());
        this.f5794m.add(new NotAuthorizedExceptionUnmarshaller());
        this.f5794m.add(new ResourceConflictExceptionUnmarshaller());
        this.f5794m.add(new ResourceNotFoundExceptionUnmarshaller());
        this.f5794m.add(new TooManyRequestsExceptionUnmarshaller());
        this.f5794m.add(new JsonErrorUnmarshaller());
        b("cognito-identity.us-east-1.amazonaws.com");
        this.f4838i = "cognito-identity";
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.f4834e.addAll(handlerChainFactory.c("/com/amazonaws/services/cognitoidentity/request.handlers"));
        this.f4834e.addAll(handlerChainFactory.b("/com/amazonaws/services/cognitoidentity/request.handler2s"));
    }

    private <X, Y extends AmazonWebServiceRequest> Response<X> L(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, ExecutionContext executionContext) {
        request.u(this.f4830a);
        request.o(this.f4835f);
        AWSRequestMetrics a10 = executionContext.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.CredentialsRequestTime;
        a10.g(field);
        try {
            AWSCredentials credentials = this.f5793l.getCredentials();
            a10.b(field);
            AmazonWebServiceRequest r10 = request.r();
            if (r10 != null && r10.i() != null) {
                credentials = r10.i();
            }
            executionContext.f(credentials);
            return this.f4833d.d(request, httpResponseHandler, new JsonErrorResponseHandler(this.f5794m), executionContext);
        } catch (Throwable th2) {
            a10.b(AWSRequestMetrics.Field.CredentialsRequestTime);
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public GetCredentialsForIdentityResult c(GetCredentialsForIdentityRequest getCredentialsForIdentityRequest) throws AmazonServiceException, AmazonClientException {
        Response<?> response;
        ExecutionContext u10 = u(getCredentialsForIdentityRequest);
        AWSRequestMetrics a10 = u10.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
        a10.g(field);
        Request<?> request = null;
        try {
            try {
                AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
                a10.g(field2);
                try {
                    Request<GetCredentialsForIdentityRequest> a11 = new GetCredentialsForIdentityRequestMarshaller().a(getCredentialsForIdentityRequest);
                    try {
                        a11.f(a10);
                        a10.b(field2);
                        Response<?> L = L(a11, new JsonResponseHandler(new GetCredentialsForIdentityResultJsonUnmarshaller()), u10);
                        GetCredentialsForIdentityResult getCredentialsForIdentityResult = (GetCredentialsForIdentityResult) L.a();
                        a10.b(field);
                        w(a10, a11, L, true);
                        return getCredentialsForIdentityResult;
                    } catch (Throwable th2) {
                        th = th2;
                        a10.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                response = null;
                a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
                w(a10, request, response, true);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            request = getCredentialsForIdentityRequest;
            response = null;
            a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
            w(a10, request, response, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
    public GetIdResult j(GetIdRequest getIdRequest) throws AmazonServiceException, AmazonClientException {
        Response<?> response;
        ExecutionContext u10 = u(getIdRequest);
        AWSRequestMetrics a10 = u10.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
        a10.g(field);
        Request<?> request = null;
        try {
            try {
                AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
                a10.g(field2);
                try {
                    Request<GetIdRequest> a11 = new GetIdRequestMarshaller().a(getIdRequest);
                    try {
                        a11.f(a10);
                        a10.b(field2);
                        Response<?> L = L(a11, new JsonResponseHandler(new GetIdResultJsonUnmarshaller()), u10);
                        GetIdResult getIdResult = (GetIdResult) L.a();
                        a10.b(field);
                        w(a10, a11, L, true);
                        return getIdResult;
                    } catch (Throwable th2) {
                        th = th2;
                        a10.b(AWSRequestMetrics.Field.RequestMarshallTime);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                response = null;
                a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
                w(a10, request, response, true);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            request = getIdRequest;
            response = null;
            a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
            w(a10, request, response, true);
            throw th;
        }
    }

    public AmazonCognitoIdentityClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonCognitoIdentityClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(J(clientConfiguration), httpClient);
        this.f5793l = aWSCredentialsProvider;
        K();
    }

    private static ClientConfiguration J(ClientConfiguration clientConfiguration) {
        return clientConfiguration;
    }
}
