package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidSmsRoleTrustRelationshipException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class InvalidSmsRoleTrustRelationshipExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidSmsRoleTrustRelationshipExceptionUnmarshaller() {
        super(InvalidSmsRoleTrustRelationshipException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("InvalidSmsRoleTrustRelationshipException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        InvalidSmsRoleTrustRelationshipException invalidSmsRoleTrustRelationshipException = (InvalidSmsRoleTrustRelationshipException) super.a(jsonErrorResponse);
        invalidSmsRoleTrustRelationshipException.h("InvalidSmsRoleTrustRelationshipException");
        return invalidSmsRoleTrustRelationshipException;
    }
}
