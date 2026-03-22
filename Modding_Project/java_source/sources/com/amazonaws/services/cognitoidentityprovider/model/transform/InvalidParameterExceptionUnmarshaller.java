package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidParameterException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class InvalidParameterExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidParameterExceptionUnmarshaller() {
        super(InvalidParameterException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("InvalidParameterException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidParameterException invalidParameterException = (InvalidParameterException) super.a(jsonErrorResponse);
        invalidParameterException.h("InvalidParameterException");
        return invalidParameterException;
    }
}
