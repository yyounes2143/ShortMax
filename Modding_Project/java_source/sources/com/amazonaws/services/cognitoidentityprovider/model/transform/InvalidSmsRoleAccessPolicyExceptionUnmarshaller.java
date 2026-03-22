package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidSmsRoleAccessPolicyException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class InvalidSmsRoleAccessPolicyExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidSmsRoleAccessPolicyExceptionUnmarshaller() {
        super(InvalidSmsRoleAccessPolicyException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("InvalidSmsRoleAccessPolicyException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidSmsRoleAccessPolicyException invalidSmsRoleAccessPolicyException = (InvalidSmsRoleAccessPolicyException) super.a(jsonErrorResponse);
        invalidSmsRoleAccessPolicyException.h("InvalidSmsRoleAccessPolicyException");
        return invalidSmsRoleAccessPolicyException;
    }
}
