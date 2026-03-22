package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UserImportInProgressException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UserImportInProgressExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UserImportInProgressExceptionUnmarshaller() {
        super(UserImportInProgressException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UserImportInProgressException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UserImportInProgressException userImportInProgressException = (UserImportInProgressException) super.a(jsonErrorResponse);
        userImportInProgressException.h("UserImportInProgressException");
        return userImportInProgressException;
    }
}
