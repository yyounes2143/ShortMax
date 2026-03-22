package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolAddOnNotEnabledException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UserPoolAddOnNotEnabledExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UserPoolAddOnNotEnabledExceptionUnmarshaller() {
        super(UserPoolAddOnNotEnabledException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UserPoolAddOnNotEnabledException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UserPoolAddOnNotEnabledException userPoolAddOnNotEnabledException = (UserPoolAddOnNotEnabledException) super.a(jsonErrorResponse);
        userPoolAddOnNotEnabledException.h("UserPoolAddOnNotEnabledException");
        return userPoolAddOnNotEnabledException;
    }
}
