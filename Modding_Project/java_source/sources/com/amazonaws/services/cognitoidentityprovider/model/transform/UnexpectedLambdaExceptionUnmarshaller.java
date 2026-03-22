package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UnexpectedLambdaException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UnexpectedLambdaExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UnexpectedLambdaExceptionUnmarshaller() {
        super(UnexpectedLambdaException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UnexpectedLambdaException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UnexpectedLambdaException unexpectedLambdaException = (UnexpectedLambdaException) super.a(jsonErrorResponse);
        unexpectedLambdaException.h("UnexpectedLambdaException");
        return unexpectedLambdaException;
    }
}
