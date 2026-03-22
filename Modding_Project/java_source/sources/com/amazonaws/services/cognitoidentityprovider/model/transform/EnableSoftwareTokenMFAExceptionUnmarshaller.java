package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.EnableSoftwareTokenMFAException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class EnableSoftwareTokenMFAExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public EnableSoftwareTokenMFAExceptionUnmarshaller() {
        super(EnableSoftwareTokenMFAException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("EnableSoftwareTokenMFAException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        EnableSoftwareTokenMFAException enableSoftwareTokenMFAException = (EnableSoftwareTokenMFAException) super.a(jsonErrorResponse);
        enableSoftwareTokenMFAException.h("EnableSoftwareTokenMFAException");
        return enableSoftwareTokenMFAException;
    }
}
