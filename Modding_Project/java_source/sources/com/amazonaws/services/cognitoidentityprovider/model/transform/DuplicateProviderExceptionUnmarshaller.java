package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.DuplicateProviderException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class DuplicateProviderExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public DuplicateProviderExceptionUnmarshaller() {
        super(DuplicateProviderException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("DuplicateProviderException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        DuplicateProviderException duplicateProviderException = (DuplicateProviderException) super.a(jsonErrorResponse);
        duplicateProviderException.h("DuplicateProviderException");
        return duplicateProviderException;
    }
}
