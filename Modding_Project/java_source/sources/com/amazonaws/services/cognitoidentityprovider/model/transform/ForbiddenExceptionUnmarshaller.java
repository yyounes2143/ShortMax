package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.ForbiddenException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class ForbiddenExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ForbiddenExceptionUnmarshaller() {
        super(ForbiddenException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("ForbiddenException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        ForbiddenException forbiddenException = (ForbiddenException) super.a(jsonErrorResponse);
        forbiddenException.h("ForbiddenException");
        return forbiddenException;
    }
}
