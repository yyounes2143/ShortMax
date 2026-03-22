package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
/* loaded from: classes2.dex */
public class GetCredentialsForIdentityResultJsonUnmarshaller implements Unmarshaller<GetCredentialsForIdentityResult, JsonUnmarshallerContext> {
    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: b */
    public GetCredentialsForIdentityResult a(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        GetCredentialsForIdentityResult getCredentialsForIdentityResult = new GetCredentialsForIdentityResult();
        AwsJsonReader a10 = jsonUnmarshallerContext.a();
        a10.c();
        while (a10.hasNext()) {
            String g10 = a10.g();
            if (g10.equals("IdentityId")) {
                getCredentialsForIdentityResult.f(SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else if (g10.equals("Credentials")) {
                getCredentialsForIdentityResult.e(CredentialsJsonUnmarshaller.b().a(jsonUnmarshallerContext));
            } else {
                a10.f();
            }
        }
        a10.d();
        return getCredentialsForIdentityResult;
    }
}
