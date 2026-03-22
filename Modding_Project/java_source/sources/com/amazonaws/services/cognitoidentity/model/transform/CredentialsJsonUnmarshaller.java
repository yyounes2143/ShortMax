package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.Credentials;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes2.dex */
class CredentialsJsonUnmarshaller implements Unmarshaller<Credentials, JsonUnmarshallerContext> {

    /* renamed from: a  reason: collision with root package name */
    private static CredentialsJsonUnmarshaller f5808a;

    CredentialsJsonUnmarshaller() {
    }

    public static CredentialsJsonUnmarshaller b() {
        if (f5808a == null) {
            f5808a = new CredentialsJsonUnmarshaller();
        }
        return f5808a;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: c */
    public Credentials a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        if (!a10.e()) {
            a10.f();
            return null;
        }
        Credentials credentials = new Credentials();
        a10.c();
        while (a10.hasNext()) {
            String g10 = a10.g();
            if (g10.equals(TTVideoEngineInterface.AUTH_AK)) {
                credentials.g(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("SecretKey")) {
                credentials.i(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals(TTVideoEngineInterface.AUTH_SESSIONTOKEN)) {
                credentials.j(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("Expiration")) {
                credentials.h(SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return credentials;
    }
}
