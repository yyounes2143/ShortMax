package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolTaggingException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UserPoolTaggingExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UserPoolTaggingExceptionUnmarshaller() {
        super(UserPoolTaggingException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UserPoolTaggingException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UserPoolTaggingException userPoolTaggingException = (UserPoolTaggingException) super.a(jsonErrorResponse);
        userPoolTaggingException.h("UserPoolTaggingException");
        return userPoolTaggingException;
    }
}
