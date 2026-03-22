package com.amazonaws.services.cognitoidentityprovider.model.transform;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.StringWriter;
import java.util.Map;
/* loaded from: classes2.dex */
public class RespondToAuthChallengeRequestMarshaller {
    public Request<RespondToAuthChallengeRequest> a(RespondToAuthChallengeRequest respondToAuthChallengeRequest) {
        if (respondToAuthChallengeRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(respondToAuthChallengeRequest, "AmazonCognitoIdentityProvider");
            defaultRequest.q("X-Amz-Target", "AWSCognitoIdentityProviderService.RespondToAuthChallenge");
            defaultRequest.k(HttpMethodName.POST);
            defaultRequest.d(DomExceptionUtils.SEPARATOR);
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter b10 = JsonUtils.b(stringWriter);
                b10.c();
                if (respondToAuthChallengeRequest.v() != null) {
                    String v10 = respondToAuthChallengeRequest.v();
                    b10.f("ClientId");
                    b10.e(v10);
                }
                if (respondToAuthChallengeRequest.t() != null) {
                    String t10 = respondToAuthChallengeRequest.t();
                    b10.f("ChallengeName");
                    b10.e(t10);
                }
                if (respondToAuthChallengeRequest.z() != null) {
                    String z10 = respondToAuthChallengeRequest.z();
                    b10.f("Session");
                    b10.e(z10);
                }
                if (respondToAuthChallengeRequest.u() != null) {
                    Map<String, String> u10 = respondToAuthChallengeRequest.u();
                    b10.f("ChallengeResponses");
                    b10.c();
                    for (Map.Entry<String, String> entry : u10.entrySet()) {
                        String value = entry.getValue();
                        if (value != null) {
                            b10.f(entry.getKey());
                            b10.e(value);
                        }
                    }
                    b10.d();
                }
                if (respondToAuthChallengeRequest.s() != null) {
                    AnalyticsMetadataType s10 = respondToAuthChallengeRequest.s();
                    b10.f("AnalyticsMetadata");
                    AnalyticsMetadataTypeJsonMarshaller.a().b(s10, b10);
                }
                if (respondToAuthChallengeRequest.A() != null) {
                    UserContextDataType A = respondToAuthChallengeRequest.A();
                    b10.f("UserContextData");
                    UserContextDataTypeJsonMarshaller.a().b(A, b10);
                }
                if (respondToAuthChallengeRequest.y() != null) {
                    Map<String, String> y10 = respondToAuthChallengeRequest.y();
                    b10.f("ClientMetadata");
                    b10.c();
                    for (Map.Entry<String, String> entry2 : y10.entrySet()) {
                        String value2 = entry2.getValue();
                        if (value2 != null) {
                            b10.f(entry2.getKey());
                            b10.e(value2);
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
        throw new AmazonClientException("Invalid argument passed to marshall(RespondToAuthChallengeRequest)");
    }
}
