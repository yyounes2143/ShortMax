package com.amazonaws.services.cognitoidentityprovider.model.transform;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.StringWriter;
import java.util.Map;
/* loaded from: classes2.dex */
public class ResendConfirmationCodeRequestMarshaller {
    public Request<ResendConfirmationCodeRequest> a(ResendConfirmationCodeRequest resendConfirmationCodeRequest) {
        if (resendConfirmationCodeRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(resendConfirmationCodeRequest, "AmazonCognitoIdentityProvider");
            defaultRequest.q("X-Amz-Target", "AWSCognitoIdentityProviderService.ResendConfirmationCode");
            defaultRequest.k(HttpMethodName.POST);
            defaultRequest.d(DomExceptionUtils.SEPARATOR);
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter b10 = JsonUtils.b(stringWriter);
                b10.c();
                if (resendConfirmationCodeRequest.s() != null) {
                    String s10 = resendConfirmationCodeRequest.s();
                    b10.f("ClientId");
                    b10.e(s10);
                }
                if (resendConfirmationCodeRequest.u() != null) {
                    String u10 = resendConfirmationCodeRequest.u();
                    b10.f("SecretHash");
                    b10.e(u10);
                }
                if (resendConfirmationCodeRequest.v() != null) {
                    UserContextDataType v10 = resendConfirmationCodeRequest.v();
                    b10.f("UserContextData");
                    UserContextDataTypeJsonMarshaller.a().b(v10, b10);
                }
                if (resendConfirmationCodeRequest.y() != null) {
                    String y10 = resendConfirmationCodeRequest.y();
                    b10.f("Username");
                    b10.e(y10);
                }
                if (resendConfirmationCodeRequest.r() != null) {
                    AnalyticsMetadataType r10 = resendConfirmationCodeRequest.r();
                    b10.f("AnalyticsMetadata");
                    AnalyticsMetadataTypeJsonMarshaller.a().b(r10, b10);
                }
                if (resendConfirmationCodeRequest.t() != null) {
                    Map<String, String> t10 = resendConfirmationCodeRequest.t();
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
        throw new AmazonClientException("Invalid argument passed to marshall(ResendConfirmationCodeRequest)");
    }
}
