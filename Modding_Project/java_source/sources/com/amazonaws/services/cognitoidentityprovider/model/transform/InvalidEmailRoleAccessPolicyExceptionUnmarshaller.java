package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidEmailRoleAccessPolicyException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class InvalidEmailRoleAccessPolicyExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidEmailRoleAccessPolicyExceptionUnmarshaller() {
        super(InvalidEmailRoleAccessPolicyException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("InvalidEmailRoleAccessPolicyException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidEmailRoleAccessPolicyException invalidEmailRoleAccessPolicyException = (InvalidEmailRoleAccessPolicyException) super.a(jsonErrorResponse);
        invalidEmailRoleAccessPolicyException.h("InvalidEmailRoleAccessPolicyException");
        return invalidEmailRoleAccessPolicyException;
    }
}
