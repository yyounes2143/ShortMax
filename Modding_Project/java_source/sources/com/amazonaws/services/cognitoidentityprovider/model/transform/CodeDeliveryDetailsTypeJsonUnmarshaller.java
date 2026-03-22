package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CodeDeliveryDetailsType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
class CodeDeliveryDetailsTypeJsonUnmarshaller implements Unmarshaller<CodeDeliveryDetailsType, JsonUnmarshallerContext> {

    /* renamed from: a  reason: collision with root package name */
    private static CodeDeliveryDetailsTypeJsonUnmarshaller f5884a;

    CodeDeliveryDetailsTypeJsonUnmarshaller() {
    }

    public static CodeDeliveryDetailsTypeJsonUnmarshaller b() {
        if (f5884a == null) {
            f5884a = new CodeDeliveryDetailsTypeJsonUnmarshaller();
        }
        return f5884a;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: c */
    public CodeDeliveryDetailsType a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        if (!a10.e()) {
            a10.f();
            return null;
        }
        CodeDeliveryDetailsType codeDeliveryDetailsType = new CodeDeliveryDetailsType();
        a10.c();
        while (a10.hasNext()) {
            String g10 = a10.g();
            if (g10.equals("Destination")) {
                codeDeliveryDetailsType.h(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("DeliveryMedium")) {
                codeDeliveryDetailsType.g(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("AttributeName")) {
                codeDeliveryDetailsType.f(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return codeDeliveryDetailsType;
    }
}
