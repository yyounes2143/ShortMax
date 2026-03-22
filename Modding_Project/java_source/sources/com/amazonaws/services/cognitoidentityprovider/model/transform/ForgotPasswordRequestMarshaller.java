package com.amazonaws.services.cognitoidentityprovider.model.transform;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.StringWriter;
import java.util.Map;
/* loaded from: classes2.dex */
public class ForgotPasswordRequestMarshaller {
    public Request<ForgotPasswordRequest> a(ForgotPasswordRequest forgotPasswordRequest) {
        if (forgotPasswordRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(forgotPasswordRequest, "AmazonCognitoIdentityProvider");
            defaultRequest.q("X-Amz-Target", "AWSCognitoIdentityProviderService.ForgotPassword");
            defaultRequest.k(HttpMethodName.POST);
            defaultRequest.d(DomExceptionUtils.SEPARATOR);
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter b10 = JsonUtils.b(stringWriter);
                b10.c();
                if (forgotPasswordRequest.s() != null) {
                    String s10 = forgotPasswordRequest.s();
                    b10.f("ClientId");
                    b10.e(s10);
                }
                if (forgotPasswordRequest.u() != null) {
                    String u10 = forgotPasswordRequest.u();
                    b10.f("SecretHash");
                    b10.e(u10);
                }
                if (forgotPasswordRequest.v() != null) {
                    UserContextDataType v10 = forgotPasswordRequest.v();
                    b10.f("UserContextData");
                    UserContextDataTypeJsonMarshaller.a().b(v10, b10);
                }
                if (forgotPasswordRequest.y() != null) {
                    String y10 = forgotPasswordRequest.y();
                    b10.f("Username");
                    b10.e(y10);
                }
                if (forgotPasswordRequest.r() != null) {
                    AnalyticsMetadataType r10 = forgotPasswordRequest.r();
                    b10.f("AnalyticsMetadata");
                    AnalyticsMetadataTypeJsonMarshaller.a().b(r10, b10);
                }
                if (forgotPasswordRequest.t() != null) {
                    Map<String, String> t10 = forgotPasswordRequest.t();
                    b10.f("ClientMetadata");
                    b10.c();
                    for (Map.Entry<String, String> entry : t10.entrySet()) {
                        String value = entry.getValue();
                        if (value != null) {
                            b10.f(entry.getKey());
                            b10.e(value);
                        }
                    }
                    b10.d();
                }
                b10.d();
                b10.close();
                String stringWriter2 = stringWriter.toString();
                byte[] bytes = stringWriter2.getBytes(StringUtils.f6417a);
                defaultRequest.b(new StringInputStream(stringWriter2));
                defaultRequest.q("Content-Length", Integer.toString(bytes.length));
                if (!defaultRequest.a().containsKey(CommonGatewayClient.HEADER_CONTENT_TYPE)) {
                    defaultRequest.q(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/x-amz-json-1.1");
                }
                return defaultRequest;
            } catch (Throwable th2) {
                throw new AmazonClientException("Unable to marshall request to JSON: " + th2.getMessage(), th2);
            }
        }
        throw new AmazonClientException("Invalid argument passed to marshall(ForgotPasswordRequest)");
    }
}
