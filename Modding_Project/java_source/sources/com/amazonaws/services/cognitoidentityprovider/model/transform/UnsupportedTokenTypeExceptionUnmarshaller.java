package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UnsupportedTokenTypeException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UnsupportedTokenTypeExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UnsupportedTokenTypeExceptionUnmarshaller() {
        super(UnsupportedTokenTypeException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UnsupportedTokenTypeException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UnsupportedTokenTypeException unsupportedTokenTypeException = (UnsupportedTokenTypeException) super.a(jsonErrorResponse);
        unsupportedTokenTypeException.h("UnsupportedTokenTypeException");
        return unsupportedTokenTypeException;
    }
}
