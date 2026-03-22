package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.util.json.AwsJsonWriter;
/* loaded from: classes2.dex */
class AttributeTypeJsonMarshaller {

    /* renamed from: a  reason: collision with root package name */
    private static AttributeTypeJsonMarshaller f5882a;

    AttributeTypeJsonMarshaller() {
    }

    public static AttributeTypeJsonMarshaller a() {
        if (f5882a == null) {
            f5882a = new AttributeTypeJsonMarshaller();
        }
        return f5882a;
    }

    public void b(AttributeType attributeType, AwsJsonWriter awsJsonWriter) throws Exception {
        awsJsonWriter.c();
        if (attributeType.b() != null) {
            String b10 = attributeType.b();
            awsJsonWriter.f("Name");
            awsJsonWriter.e(b10);
        }
        if (attributeType.d() != null) {
            String d10 = attributeType.d();
            awsJsonWriter.f("Value");
            awsJsonWriter.e(d10);
        }
        awsJsonWriter.d();
    }
}
