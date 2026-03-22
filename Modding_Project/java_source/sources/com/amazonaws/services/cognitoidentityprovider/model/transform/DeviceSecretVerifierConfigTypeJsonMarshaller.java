package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DeviceSecretVerifierConfigType;
import com.amazonaws.util.json.AwsJsonWriter;
/* loaded from: classes2.dex */
class DeviceSecretVerifierConfigTypeJsonMarshaller {

    /* renamed from: a  reason: collision with root package name */
    private static DeviceSecretVerifierConfigTypeJsonMarshaller f5885a;

    DeviceSecretVerifierConfigTypeJsonMarshaller() {
    }

    public static DeviceSecretVerifierConfigTypeJsonMarshaller a() {
        if (f5885a == null) {
            f5885a = new DeviceSecretVerifierConfigTypeJsonMarshaller();
        }
        return f5885a;
    }

    public void b(DeviceSecretVerifierConfigType deviceSecretVerifierConfigType, AwsJsonWriter awsJsonWriter) throws Exception {
        awsJsonWriter.c();
        if (deviceSecretVerifierConfigType.b() != null) {
            String b10 = deviceSecretVerifierConfigType.b();
            awsJsonWriter.f("PasswordVerifier");
            awsJsonWriter.e(b10);
        }
        if (deviceSecretVerifierConfigType.d() != null) {
            String d10 = deviceSecretVerifierConfigType.d();
            awsJsonWriter.f("Salt");
            awsJsonWriter.e(d10);
        }
        awsJsonWriter.d();
    }
}
