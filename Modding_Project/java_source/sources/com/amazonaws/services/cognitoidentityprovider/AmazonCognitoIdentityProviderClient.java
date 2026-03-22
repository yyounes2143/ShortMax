package com.amazonaws.services.cognitoidentityprovider;

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
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceResult;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordResult;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthRequest;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthResult;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeResult;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpResult;
import com.amazonaws.services.cognitoidentityprovider.model.transform.AliasExistsExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.CodeDeliveryFailureExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.CodeMismatchExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ConcurrentModificationExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ConfirmDeviceRequestMarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ConfirmDeviceResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.DuplicateProviderExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.EnableSoftwareTokenMFAExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ExpiredCodeExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ForbiddenExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ForgotPasswordRequestMarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ForgotPasswordResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.GroupExistsExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InitiateAuthRequestMarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InitiateAuthResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InternalErrorExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidEmailRoleAccessPolicyExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidLambdaResponseExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidOAuthFlowExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidParameterExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidPasswordExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidSmsRoleAccessPolicyExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidSmsRoleTrustRelationshipExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.InvalidUserPoolConfigurationExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.LimitExceededExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.MFAMethodNotFoundExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.NotAuthorizedExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.PasswordResetRequiredExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.PreconditionNotMetExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ResendConfirmationCodeRequestMarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ResendConfirmationCodeResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ResourceNotFoundExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.RespondToAuthChallengeRequestMarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.RespondToAuthChallengeResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.ScopeDoesNotExistExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.SignUpRequestMarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.SignUpResultJsonUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.SoftwareTokenMFANotFoundExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.TooManyFailedAttemptsExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.TooManyRequestsExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UnauthorizedExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UnexpectedLambdaExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UnsupportedIdentityProviderExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UnsupportedOperationExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UnsupportedTokenTypeExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UnsupportedUserStateExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UserImportInProgressExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UserLambdaValidationExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UserNotConfirmedExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UserNotFoundExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UserPoolAddOnNotEnabledExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UserPoolTaggingExceptionUnmarshaller;
import com.amazonaws.services.cognitoidentityprovider.model.transform.UsernameExistsExceptionUnmarshaller;
import com.amazonaws.transform.JsonErrorUnmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class AmazonCognitoIdentityProviderClient extends AmazonWebServiceClient implements AmazonCognitoIdentityProvider {

    /* renamed from: l  reason: collision with root package name */
    private AWSCredentialsProvider f5809l;

    /* renamed from: m  reason: collision with root package name */
    protected List<JsonErrorUnmarshaller> f5810m;

    public AmazonCognitoIdentityProviderClient(AWSCredentials aWSCredentials, ClientConfiguration clientConfiguration) {
        this(new StaticCredentialsProvider(aWSCredentials), clientConfiguration);
    }

    private void K() {
        ArrayList arrayList = new ArrayList();
        this.f5810m = arrayList;
        arrayList.add(new AliasExistsExceptionUnmarshaller());
        this.f5810m.add(new CodeDeliveryFailureExceptionUnmarshaller());
        this.f5810m.add(new CodeMismatchExceptionUnmarshaller());
        this.f5810m.add(new ConcurrentModificationExceptionUnmarshaller());
        this.f5810m.add(new DuplicateProviderExceptionUnmarshaller());
        this.f5810m.add(new EnableSoftwareTokenMFAExceptionUnmarshaller());
        this.f5810m.add(new ExpiredCodeExceptionUnmarshaller());
        this.f5810m.add(new ForbiddenExceptionUnmarshaller());
        this.f5810m.add(new GroupExistsExceptionUnmarshaller());
        this.f5810m.add(new InternalErrorExceptionUnmarshaller());
        this.f5810m.add(new InvalidEmailRoleAccessPolicyExceptionUnmarshaller());
        this.f5810m.add(new InvalidLambdaResponseExceptionUnmarshaller());
        this.f5810m.add(new InvalidOAuthFlowExceptionUnmarshaller());
        this.f5810m.add(new InvalidParameterExceptionUnmarshaller());
        this.f5810m.add(new InvalidPasswordExceptionUnmarshaller());
        this.f5810m.add(new InvalidSmsRoleAccessPolicyExceptionUnmarshaller());
        this.f5810m.add(new InvalidSmsRoleTrustRelationshipExceptionUnmarshaller());
        this.f5810m.add(new InvalidUserPoolConfigurationExceptionUnmarshaller());
        this.f5810m.add(new LimitExceededExceptionUnmarshaller());
        this.f5810m.add(new MFAMethodNotFoundExceptionUnmarshaller());
        this.f5810m.add(new NotAuthorizedExceptionUnmarshaller());
        this.f5810m.add(new PasswordResetRequiredExceptionUnmarshaller());
        this.f5810m.add(new PreconditionNotMetExceptionUnmarshaller());
        this.f5810m.add(new ResourceNotFoundExceptionUnmarshaller());
        this.f5810m.add(new ScopeDoesNotExistExceptionUnmarshaller());
        this.f5810m.add(new SoftwareTokenMFANotFoundExceptionUnmarshaller());
        this.f5810m.add(new TooManyFailedAttemptsExceptionUnmarshaller());
        this.f5810m.add(new TooManyRequestsExceptionUnmarshaller());
        this.f5810m.add(new UnauthorizedExceptionUnmarshaller());
        this.f5810m.add(new UnexpectedLambdaExceptionUnmarshaller());
        this.f5810m.add(new UnsupportedIdentityProviderExceptionUnmarshaller());
        this.f5810m.add(new UnsupportedOperationExceptionUnmarshaller());
        this.f5810m.add(new UnsupportedTokenTypeExceptionUnmarshaller());
        this.f5810m.add(new UnsupportedUserStateExceptionUnmarshaller());
        this.f5810m.add(new UserImportInProgressExceptionUnmarshaller());
        this.f5810m.add(new UserLambdaValidationExceptionUnmarshaller());
        this.f5810m.add(new UserNotConfirmedExceptionUnmarshaller());
        this.f5810m.add(new UserNotFoundExceptionUnmarshaller());
        this.f5810m.add(new UserPoolAddOnNotEnabledExceptionUnmarshaller());
        this.f5810m.add(new UserPoolTaggingExceptionUnmarshaller());
        this.f5810m.add(new UsernameExistsExceptionUnmarshaller());
        this.f5810m.add(new JsonErrorUnmarshaller());
        b("cognito-idp.us-east-1.amazonaws.com");
        this.f4838i = "cognito-idp";
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.f4834e.addAll(handlerChainFactory.c("/com/amazonaws/services/cognitoidentityprovider/request.handlers"));
        this.f4834e.addAll(handlerChainFactory.b("/com/amazonaws/services/cognitoidentityprovider/request.handler2s"));
    }

    private <X, Y extends AmazonWebServiceRequest> Response<X> L(Request<Y> request, HttpResponseHandler<AmazonWebServiceResponse<X>> httpResponseHandler, ExecutionContext executionContext) {
        request.u(this.f4830a);
        request.o(this.f4835f);
        AWSRequestMetrics a10 = executionContext.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.CredentialsRequestTime;
        a10.g(field);
        try {
            AWSCredentials credentials = this.f5809l.getCredentials();
            a10.b(field);
            AmazonWebServiceRequest r10 = request.r();
            if (r10 != null && r10.i() != null) {
                credentials = r10.i();
            }
            executionContext.f(credentials);
            return this.f4833d.d(request, httpResponseHandler, new JsonErrorResponseHandler(this.f5810m), executionContext);
        } catch (Throwable th2) {
            a10.b(AWSRequestMetrics.Field.CredentialsRequestTime);
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider
    public ResendConfirmationCodeResult d(ResendConfirmationCodeRequest resendConfirmationCodeRequest) throws AmazonServiceException, AmazonClientException {
        Response<?> response;
        ExecutionContext u10 = u(resendConfirmationCodeRequest);
        AWSRequestMetrics a10 = u10.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
        a10.g(field);
        Request<?> request = null;
        try {
            try {
                AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
                a10.g(field2);
                try {
                    Request<ResendConfirmationCodeRequest> a11 = new ResendConfirmationCodeRequestMarshaller().a(resendConfirmationCodeRequest);
                    try {
                        a11.f(a10);
                        a10.b(field2);
                        Response<?> L = L(a11, new JsonResponseHandler(new ResendConfirmationCodeResultJsonUnmarshaller()), u10);
                        ResendConfirmationCodeResult resendConfirmationCodeResult = (ResendConfirmationCodeResult) L.a();
                        a10.b(field);
                        w(a10, a11, L, true);
                        return resendConfirmationCodeResult;
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
            request = resendConfirmationCodeRequest;
            response = null;
            a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
            w(a10, request, response, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider
    public ConfirmDeviceResult e(ConfirmDeviceRequest confirmDeviceRequest) throws AmazonServiceException, AmazonClientException {
        Response<?> response;
        ExecutionContext u10 = u(confirmDeviceRequest);
        AWSRequestMetrics a10 = u10.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
        a10.g(field);
        Request<?> request = null;
        try {
            try {
                AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
                a10.g(field2);
                try {
                    Request<ConfirmDeviceRequest> a11 = new ConfirmDeviceRequestMarshaller().a(confirmDeviceRequest);
                    try {
                        a11.f(a10);
                        a10.b(field2);
                        Response<?> L = L(a11, new JsonResponseHandler(new ConfirmDeviceResultJsonUnmarshaller()), u10);
                        ConfirmDeviceResult confirmDeviceResult = (ConfirmDeviceResult) L.a();
                        a10.b(field);
                        w(a10, a11, L, true);
                        return confirmDeviceResult;
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
            request = confirmDeviceRequest;
            response = null;
            a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
            w(a10, request, response, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider
    public SignUpResult f(SignUpRequest signUpRequest) throws AmazonServiceException, AmazonClientException {
        Response<?> response;
        ExecutionContext u10 = u(signUpRequest);
        AWSRequestMetrics a10 = u10.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
        a10.g(field);
        Request<?> request = null;
        try {
            try {
                AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
                a10.g(field2);
                try {
                    Request<SignUpRequest> a11 = new SignUpRequestMarshaller().a(signUpRequest);
                    try {
                        a11.f(a10);
                        a10.b(field2);
                        Response<?> L = L(a11, new JsonResponseHandler(new SignUpResultJsonUnmarshaller()), u10);
                        SignUpResult signUpResult = (SignUpResult) L.a();
                        a10.b(field);
                        w(a10, a11, L, true);
                        return signUpResult;
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
            request = signUpRequest;
            response = null;
            a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
            w(a10, request, response, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider
    public InitiateAuthResult m(InitiateAuthRequest initiateAuthRequest) throws AmazonServiceException, AmazonClientException {
        Response<?> response;
        ExecutionContext u10 = u(initiateAuthRequest);
        AWSRequestMetrics a10 = u10.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
        a10.g(field);
        Request<?> request = null;
        try {
            try {
                AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
                a10.g(field2);
                try {
                    Request<InitiateAuthRequest> a11 = new InitiateAuthRequestMarshaller().a(initiateAuthRequest);
                    try {
                        a11.f(a10);
                        a10.b(field2);
                        Response<?> L = L(a11, new JsonResponseHandler(new InitiateAuthResultJsonUnmarshaller()), u10);
                        InitiateAuthResult initiateAuthResult = (InitiateAuthResult) L.a();
                        a10.b(field);
                        w(a10, a11, L, true);
                        return initiateAuthResult;
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
            request = initiateAuthRequest;
            response = null;
            a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
            w(a10, request, response, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider
    public ForgotPasswordResult n(ForgotPasswordRequest forgotPasswordRequest) throws AmazonServiceException, AmazonClientException {
        Response<?> response;
        ExecutionContext u10 = u(forgotPasswordRequest);
        AWSRequestMetrics a10 = u10.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
        a10.g(field);
        Request<?> request = null;
        try {
            try {
                AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
                a10.g(field2);
                try {
                    Request<ForgotPasswordRequest> a11 = new ForgotPasswordRequestMarshaller().a(forgotPasswordRequest);
                    try {
                        a11.f(a10);
                        a10.b(field2);
                        Response<?> L = L(a11, new JsonResponseHandler(new ForgotPasswordResultJsonUnmarshaller()), u10);
                        ForgotPasswordResult forgotPasswordResult = (ForgotPasswordResult) L.a();
                        a10.b(field);
                        w(a10, a11, L, true);
                        return forgotPasswordResult;
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
            request = forgotPasswordRequest;
            response = null;
            a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
            w(a10, request, response, true);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider
    public RespondToAuthChallengeResult q(RespondToAuthChallengeRequest respondToAuthChallengeRequest) throws AmazonServiceException, AmazonClientException {
        Response<?> response;
        ExecutionContext u10 = u(respondToAuthChallengeRequest);
        AWSRequestMetrics a10 = u10.a();
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ClientExecuteTime;
        a10.g(field);
        Request<?> request = null;
        try {
            try {
                AWSRequestMetrics.Field field2 = AWSRequestMetrics.Field.RequestMarshallTime;
                a10.g(field2);
                try {
                    Request<RespondToAuthChallengeRequest> a11 = new RespondToAuthChallengeRequestMarshaller().a(respondToAuthChallengeRequest);
                    try {
                        a11.f(a10);
                        a10.b(field2);
                        Response<?> L = L(a11, new JsonResponseHandler(new RespondToAuthChallengeResultJsonUnmarshaller()), u10);
                        RespondToAuthChallengeResult respondToAuthChallengeResult = (RespondToAuthChallengeResult) L.a();
                        a10.b(field);
                        w(a10, a11, L, true);
                        return respondToAuthChallengeResult;
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
            request = respondToAuthChallengeRequest;
            response = null;
            a10.b(AWSRequestMetrics.Field.ClientExecuteTime);
            w(a10, request, response, true);
            throw th;
        }
    }

    public AmazonCognitoIdentityProviderClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonCognitoIdentityProviderClient(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(J(clientConfiguration), httpClient);
        this.f5809l = aWSCredentialsProvider;
        K();
    }

    private static ClientConfiguration J(ClientConfiguration clientConfiguration) {
        return clientConfiguration;
    }
}
