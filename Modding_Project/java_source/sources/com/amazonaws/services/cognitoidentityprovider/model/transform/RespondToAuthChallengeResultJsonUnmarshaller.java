package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
public class RespondToAuthChallengeResultJsonUnmarshaller implements Unmarshaller<RespondToAuthChallengeResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: b */
    public RespondToAuthChallengeResult a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        RespondToAuthChallengeResult respondToAuthChallengeResult = new RespondToAuthChallengeResult();
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        a10.c();
        while (a10.hasNext()) {
            String g10 = a10.g();
            if (g10.equals("ChallengeName")) {
                respondToAuthChallengeResult.h(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("Session")) {
                respondToAuthChallengeResult.j(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("ChallengeParameters")) {
                respondToAuthChallengeResult.i(new MapUnmarshaller(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b()).a(jsonUnmarshallerContext));
            } else if (g10.equals("AuthenticationResult")) {
                respondToAuthChallengeResult.g(AuthenticationResultTypeJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return respondToAuthChallengeResult;
    }
}
