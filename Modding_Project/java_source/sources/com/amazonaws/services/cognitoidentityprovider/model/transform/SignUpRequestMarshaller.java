package com.amazonaws.services.cognitoidentityprovider.model.transform;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class SignUpRequestMarshaller {
    public Request<SignUpRequest> a(SignUpRequest signUpRequest) {
        if (signUpRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(signUpRequest, "AmazonCognitoIdentityProvider");
            defaultRequest.q("X-Amz-Target", "AWSCognitoIdentityProviderService.SignUp");
            defaultRequest.k(HttpMethodName.POST);
            defaultRequest.d(DomExceptionUtils.SEPARATOR);
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter b10 = JsonUtils.b(stringWriter);
                b10.c();
                if (signUpRequest.s() != null) {
                    String s10 = signUpRequest.s();
                    b10.f("ClientId");
                    b10.e(s10);
                }
                if (signUpRequest.v() != null) {
                    String v10 = signUpRequest.v();
                    b10.f("SecretHash");
                    b10.e(v10);
                }
                if (signUpRequest.A() != null) {
                    String A = signUpRequest.A();
                    b10.f("Username");
                    b10.e(A);
                }
                if (signUpRequest.u() != null) {
                    String u10 = signUpRequest.u();
                    b10.f("Password");
                    b10.e(u10);
                }
                if (signUpRequest.y() != null) {
                    List<AttributeType> y10 = signUpRequest.y();
                    b10.f("UserAttributes");
                    b10.b();
                    for (AttributeType attributeType : y10) {
                        if (attributeType != null) {
                            AttributeTypeJsonMarshaller.a().b(attributeType, b10);
                        }
                    }
                    b10.a();
                }
                if (signUpRequest.B() != null) {
                    List<AttributeType> B = signUpRequest.B();
                    b10.f("ValidationData");
                    b10.b();
                    for (AttributeType attributeType2 : B) {
                        if (attributeType2 != null) {
                            AttributeTypeJsonMarshaller.a().b(attributeType2, b10);
                        }
                    }
                    b10.a();
                }
                if (signUpRequest.r() != null) {
                    AnalyticsMetadataType r10 = signUpRequest.r();
                    b10.f("AnalyticsMetadata");
                    AnalyticsMetadataTypeJsonMarshaller.a().b(r10, b10);
                }
                if (signUpRequest.z() != null) {
                    UserContextDataType z10 = signUpRequest.z();
                    b10.f("UserContextData");
                    UserContextDataTypeJsonMarshaller.a().b(z10, b10);
                }
                if (signUpRequest.t() != null) {
                    Map<String, String> t10 = signUpRequest.t();
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
        throw new AmazonClientException("Invalid argument passed to marshall(SignUpRequest)");
    }
}
