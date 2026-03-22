package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
public class ResendConfirmationCodeResultJsonUnmarshaller implements Unmarshaller<ResendConfirmationCodeResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: b */
    public ResendConfirmationCodeResult a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        ResendConfirmationCodeResult resendConfirmationCodeResult = new ResendConfirmationCodeResult();
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        a10.c();
        while (a10.hasNext()) {
            if (a10.g().equals("CodeDeliveryDetails")) {
                resendConfirmationCodeResult.d(CodeDeliveryDetailsTypeJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return resendConfirmationCodeResult;
    }
}
