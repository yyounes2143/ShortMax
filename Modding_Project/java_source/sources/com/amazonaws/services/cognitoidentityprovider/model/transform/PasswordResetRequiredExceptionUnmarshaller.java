package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.PasswordResetRequiredException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class PasswordResetRequiredExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public PasswordResetRequiredExceptionUnmarshaller() {
        super(PasswordResetRequiredException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("PasswordResetRequiredException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        PasswordResetRequiredException passwordResetRequiredException = (PasswordResetRequiredException) super.a(jsonErrorResponse);
        passwordResetRequiredException.h("PasswordResetRequiredException");
        return passwordResetRequiredException;
    }
}
