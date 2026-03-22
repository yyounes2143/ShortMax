package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AuthenticationResultType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
class AuthenticationResultTypeJsonUnmarshaller implements Unmarshaller<AuthenticationResultType, JsonUnmarshallerContext> {

    /* renamed from: a  reason: collision with root package name */
    private static AuthenticationResultTypeJsonUnmarshaller f5883a;

    AuthenticationResultTypeJsonUnmarshaller() {
    }

    public static AuthenticationResultTypeJsonUnmarshaller b() {
        if (f5883a == null) {
            f5883a = new AuthenticationResultTypeJsonUnmarshaller();
        }
        return f5883a;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: c */
    public AuthenticationResultType a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        if (!a10.e()) {
            a10.f();
            return null;
        }
        AuthenticationResultType authenticationResultType = new AuthenticationResultType();
        a10.c();
        while (a10.hasNext()) {
            String g10 = a10.g();
            if (g10.equals("AccessToken")) {
                authenticationResultType.i(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("ExpiresIn")) {
                authenticationResultType.j(SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("TokenType")) {
                authenticationResultType.r(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("RefreshToken")) {
                authenticationResultType.q(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("IdToken")) {
                authenticationResultType.k(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("NewDeviceMetadata")) {
                authenticationResultType.n(NewDeviceMetadataTypeJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return authenticationResultType;
    }
}
