package com.amazonaws.services.cognitoidentity.model.transform;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.StringWriter;
import java.util.Map;
/* loaded from: classes2.dex */
public class GetCredentialsForIdentityRequestMarshaller {
    public Request<GetCredentialsForIdentityRequest> a(GetCredentialsForIdentityRequest getCredentialsForIdentityRequest) {
        if (getCredentialsForIdentityRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(getCredentialsForIdentityRequest, "AmazonCognitoIdentity");
            defaultRequest.q("X-Amz-Target", "AWSCognitoIdentityService.GetCredentialsForIdentity");
            defaultRequest.k(HttpMethodName.POST);
            defaultRequest.d(DomExceptionUtils.SEPARATOR);
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter b10 = JsonUtils.b(stringWriter);
                b10.c();
                if (getCredentialsForIdentityRequest.s() != null) {
                    String s10 = getCredentialsForIdentityRequest.s();
                    b10.f("IdentityId");
                    b10.e(s10);
                }
                if (getCredentialsForIdentityRequest.t() != null) {
                    Map<String, String> t10 = getCredentialsForIdentityRequest.t();
                    b10.f("Logins");
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
                if (getCredentialsForIdentityRequest.r() != null) {
                    String r10 = getCredentialsForIdentityRequest.r();
                    b10.f("CustomRoleArn");
                    b10.e(r10);
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
        throw new AmazonClientException("Invalid argument passed to marshall(GetCredentialsForIdentityRequest)");
    }
}
