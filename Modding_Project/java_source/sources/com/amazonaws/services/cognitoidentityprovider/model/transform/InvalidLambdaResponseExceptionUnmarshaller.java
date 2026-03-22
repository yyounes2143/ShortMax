package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidLambdaResponseException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class InvalidLambdaResponseExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidLambdaResponseExceptionUnmarshaller() {
        super(InvalidLambdaResponseException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("InvalidLambdaResponseException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidLambdaResponseException invalidLambdaResponseException = (InvalidLambdaResponseException) super.a(jsonErrorResponse);
        invalidLambdaResponseException.h("InvalidLambdaResponseException");
        return invalidLambdaResponseException;
    }
}
