package com.amazonaws.services.cognitoidentityprovider.model.transform;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceSecretVerifierConfigType;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.StringWriter;
/* loaded from: classes2.dex */
public class ConfirmDeviceRequestMarshaller {
    public Request<ConfirmDeviceRequest> a(ConfirmDeviceRequest confirmDeviceRequest) {
        if (confirmDeviceRequest != null) {
            DefaultRequest defaultRequest = new DefaultRequest(confirmDeviceRequest, "AmazonCognitoIdentityProvider");
            defaultRequest.q("X-Amz-Target", "AWSCognitoIdentityProviderService.ConfirmDevice");
            defaultRequest.k(HttpMethodName.POST);
            defaultRequest.d(DomExceptionUtils.SEPARATOR);
            try {
                StringWriter stringWriter = new StringWriter();
                AwsJsonWriter b10 = JsonUtils.b(stringWriter);
                b10.c();
                if (confirmDeviceRequest.r() != null) {
                    String r10 = confirmDeviceRequest.r();
                    b10.f("AccessToken");
                    b10.e(r10);
                }
                if (confirmDeviceRequest.s() != null) {
                    String s10 = confirmDeviceRequest.s();
                    b10.f("DeviceKey");
                    b10.e(s10);
                }
                if (confirmDeviceRequest.u() != null) {
                    DeviceSecretVerifierConfigType u10 = confirmDeviceRequest.u();
                    b10.f("DeviceSecretVerifierConfig");
                    DeviceSecretVerifierConfigTypeJsonMarshaller.a().b(u10, b10);
                }
                if (confirmDeviceRequest.t() != null) {
                    String t10 = confirmDeviceRequest.t();
                    b10.f("DeviceName");
                    b10.e(t10);
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
        throw new AmazonClientException("Invalid argument passed to marshall(ConfirmDeviceRequest)");
    }
}
