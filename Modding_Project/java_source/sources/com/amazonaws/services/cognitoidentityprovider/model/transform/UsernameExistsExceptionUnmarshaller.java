package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UsernameExistsException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UsernameExistsExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UsernameExistsExceptionUnmarshaller() {
        super(UsernameExistsException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UsernameExistsException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UsernameExistsException usernameExistsException = (UsernameExistsException) super.a(jsonErrorResponse);
        usernameExistsException.h("UsernameExistsException");
        return usernameExistsException;
    }
}
