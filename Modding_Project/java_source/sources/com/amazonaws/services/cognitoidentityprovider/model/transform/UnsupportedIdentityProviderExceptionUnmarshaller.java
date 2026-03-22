package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UnsupportedIdentityProviderException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UnsupportedIdentityProviderExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UnsupportedIdentityProviderExceptionUnmarshaller() {
        super(UnsupportedIdentityProviderException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UnsupportedIdentityProviderException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UnsupportedIdentityProviderException unsupportedIdentityProviderException = (UnsupportedIdentityProviderException) super.a(jsonErrorResponse);
        unsupportedIdentityProviderException.h("UnsupportedIdentityProviderException");
        return unsupportedIdentityProviderException;
    }
}
