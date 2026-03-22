package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
public class ForgotPasswordResultJsonUnmarshaller implements Unmarshaller<ForgotPasswordResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: b */
    public ForgotPasswordResult a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        ForgotPasswordResult forgotPasswordResult = new ForgotPasswordResult();
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        a10.c();
        while (a10.hasNext()) {
            if (a10.g().equals("CodeDeliveryDetails")) {
                forgotPasswordResult.d(CodeDeliveryDetailsTypeJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return forgotPasswordResult;
    }
}
