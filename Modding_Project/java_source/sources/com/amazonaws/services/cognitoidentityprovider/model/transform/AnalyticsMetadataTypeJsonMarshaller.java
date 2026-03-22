package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.util.json.AwsJsonWriter;
/* loaded from: classes2.dex */
class AnalyticsMetadataTypeJsonMarshaller {

    /* renamed from: a  reason: collision with root package name */
    private static AnalyticsMetadataTypeJsonMarshaller f5881a;

    AnalyticsMetadataTypeJsonMarshaller() {
    }

    public static AnalyticsMetadataTypeJsonMarshaller a() {
        if (f5881a == null) {
            f5881a = new AnalyticsMetadataTypeJsonMarshaller();
        }
        return f5881a;
    }

    public void b(AnalyticsMetadataType analyticsMetadataType, AwsJsonWriter awsJsonWriter) throws Exception {
        awsJsonWriter.c();
        if (analyticsMetadataType.b() != null) {
            String b10 = analyticsMetadataType.b();
            awsJsonWriter.f("AnalyticsEndpointId");
            awsJsonWriter.e(b10);
        }
        awsJsonWriter.d();
    }
}
