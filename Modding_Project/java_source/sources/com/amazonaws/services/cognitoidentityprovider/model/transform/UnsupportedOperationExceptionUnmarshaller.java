package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UnsupportedOperationException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UnsupportedOperationExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UnsupportedOperationExceptionUnmarshaller() {
        super(UnsupportedOperationException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UnsupportedOperationException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UnsupportedOperationException unsupportedOperationException = (UnsupportedOperationException) super.a(jsonErrorResponse);
        unsupportedOperationException.h("UnsupportedOperationException");
        return unsupportedOperationException;
    }
}
