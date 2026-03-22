package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetIdResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
public class GetIdResultJsonUnmarshaller implements Unmarshaller<GetIdResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: b */
    public GetIdResult a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        GetIdResult getIdResult = new GetIdResult();
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        a10.c();
        while (a10.hasNext()) {
            if (a10.g().equals("IdentityId")) {
                getIdResult.d(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return getIdResult;
    }
}
