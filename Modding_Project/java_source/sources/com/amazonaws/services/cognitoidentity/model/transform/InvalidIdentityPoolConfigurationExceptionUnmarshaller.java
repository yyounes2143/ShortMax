package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentity.model.InvalidIdentityPoolConfigurationException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class InvalidIdentityPoolConfigurationExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidIdentityPoolConfigurationExceptionUnmarshaller() {
        super(InvalidIdentityPoolConfigurationException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("InvalidIdentityPoolConfigurationException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidIdentityPoolConfigurationException invalidIdentityPoolConfigurationException = (InvalidIdentityPoolConfigurationException) super.a(jsonErrorResponse);
        invalidIdentityPoolConfigurationException.h("InvalidIdentityPoolConfigurationException");
        return invalidIdentityPoolConfigurationException;
    }
}
