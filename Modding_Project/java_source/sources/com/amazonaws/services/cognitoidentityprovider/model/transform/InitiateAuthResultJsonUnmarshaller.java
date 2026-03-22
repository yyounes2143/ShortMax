package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
public class InitiateAuthResultJsonUnmarshaller implements Unmarshaller<InitiateAuthResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: b */
    public InitiateAuthResult a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        InitiateAuthResult initiateAuthResult = new InitiateAuthResult();
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        a10.c();
        while (a10.hasNext()) {
            String g10 = a10.g();
            if (g10.equals("ChallengeName")) {
                initiateAuthResult.h(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("Session")) {
                initiateAuthResult.j(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("ChallengeParameters")) {
                initiateAuthResult.i(new MapUnmarshaller(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b()).a(jsonUnmarshallerContext));
            } else if (g10.equals("AuthenticationResult")) {
                initiateAuthResult.g(AuthenticationResultTypeJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return initiateAuthResult;
    }
}
