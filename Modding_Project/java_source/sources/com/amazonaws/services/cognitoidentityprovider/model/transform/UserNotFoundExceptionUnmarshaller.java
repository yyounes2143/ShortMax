package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UserNotFoundException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class UserNotFoundExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UserNotFoundExceptionUnmarshaller() {
        super(UserNotFoundException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("UserNotFoundException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        UserNotFoundException userNotFoundException = (UserNotFoundException) super.a(jsonErrorResponse);
        userNotFoundException.h("UserNotFoundException");
        return userNotFoundException;
    }
}
