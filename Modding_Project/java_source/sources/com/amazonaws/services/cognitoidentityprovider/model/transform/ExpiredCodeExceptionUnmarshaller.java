package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.ExpiredCodeException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class ExpiredCodeExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ExpiredCodeExceptionUnmarshaller() {
        super(ExpiredCodeException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("ExpiredCodeException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        ExpiredCodeException expiredCodeException = (ExpiredCodeException) super.a(jsonErrorResponse);
        expiredCodeException.h("ExpiredCodeException");
        return expiredCodeException;
    }
}
