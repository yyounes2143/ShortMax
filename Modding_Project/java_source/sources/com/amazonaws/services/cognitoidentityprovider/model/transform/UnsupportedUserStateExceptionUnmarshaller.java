package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UnsupportedUserStateException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UnsupportedUserStateExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UnsupportedUserStateExceptionUnmarshaller() {
        super(UnsupportedUserStateException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UnsupportedUserStateException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UnsupportedUserStateException unsupportedUserStateException = (UnsupportedUserStateException) super.a(jsonErrorResponse);
        unsupportedUserStateException.h("UnsupportedUserStateException");
        return unsupportedUserStateException;
    }
}
