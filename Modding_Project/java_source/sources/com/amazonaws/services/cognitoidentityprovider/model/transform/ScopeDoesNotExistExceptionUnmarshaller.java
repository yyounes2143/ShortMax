package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.ScopeDoesNotExistException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class ScopeDoesNotExistExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ScopeDoesNotExistExceptionUnmarshaller() {
        super(ScopeDoesNotExistException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("ScopeDoesNotExistException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        ScopeDoesNotExistException scopeDoesNotExistException = (ScopeDoesNotExistException) super.a(jsonErrorResponse);
        scopeDoesNotExistException.h("ScopeDoesNotExistException");
        return scopeDoesNotExistException;
    }
}
