package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.TooManyRequestsException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class TooManyRequestsExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public TooManyRequestsExceptionUnmarshaller() {
        super(TooManyRequestsException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("TooManyRequestsException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        TooManyRequestsException tooManyRequestsException = (TooManyRequestsException) super.a(jsonErrorResponse);
        tooManyRequestsException.h("TooManyRequestsException");
        return tooManyRequestsException;
    }
}
