package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
public class ConfirmDeviceResultJsonUnmarshaller implements Unmarshaller<ConfirmDeviceResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: b */
    public ConfirmDeviceResult a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        ConfirmDeviceResult confirmDeviceResult = new ConfirmDeviceResult();
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        a10.c();
        while (a10.hasNext()) {
            if (a10.g().equals("UserConfirmationNecessary")) {
                confirmDeviceResult.e(SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return confirmDeviceResult;
    }
}
