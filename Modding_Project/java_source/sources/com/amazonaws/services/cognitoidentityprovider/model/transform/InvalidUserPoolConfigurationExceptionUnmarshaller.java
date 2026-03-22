package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidUserPoolConfigurationException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class InvalidUserPoolConfigurationExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidUserPoolConfigurationExceptionUnmarshaller() {
        super(InvalidUserPoolConfigurationException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("InvalidUserPoolConfigurationException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidUserPoolConfigurationException invalidUserPoolConfigurationException = (InvalidUserPoolConfigurationException) super.a(jsonErrorResponse);
        invalidUserPoolConfigurationException.h("InvalidUserPoolConfigurationException");
        return invalidUserPoolConfigurationException;
    }
}
