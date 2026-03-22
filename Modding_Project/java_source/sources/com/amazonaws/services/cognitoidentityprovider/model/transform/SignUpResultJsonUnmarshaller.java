package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SignUpResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
public class SignUpResultJsonUnmarshaller implements Unmarshaller<SignUpResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: b */
    public SignUpResult a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        SignUpResult signUpResult = new SignUpResult();
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        a10.c();
        while (a10.hasNext()) {
            String g10 = a10.g();
            if (g10.equals("UserConfirmed")) {
                signUpResult.g(SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("CodeDeliveryDetails")) {
                signUpResult.f(CodeDeliveryDetailsTypeJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("UserSub")) {
                signUpResult.h(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return signUpResult;
    }
}
