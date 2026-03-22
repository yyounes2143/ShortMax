package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.util.json.AwsJsonWriter;
/* loaded from: classes2.dex */
class UserContextDataTypeJsonMarshaller {

    /* renamed from: a  reason: collision with root package name */
    private static UserContextDataTypeJsonMarshaller f5887a;

    UserContextDataTypeJsonMarshaller() {
    }

    public static UserContextDataTypeJsonMarshaller a() {
        if (f5887a == null) {
            f5887a = new UserContextDataTypeJsonMarshaller();
        }
        return f5887a;
    }

    public void b(UserContextDataType userContextDataType, AwsJsonWriter awsJsonWriter) throws Exception {
        awsJsonWriter.c();
        if (userContextDataType.d() != null) {
            String d10 = userContextDataType.d();
            awsJsonWriter.f("IpAddress");
            awsJsonWriter.e(d10);
        }
        if (userContextDataType.b() != null) {
            String b10 = userContextDataType.b();
            awsJsonWriter.f("EncodedData");
            awsJsonWriter.e(b10);
        }
        awsJsonWriter.d();
    }
}
