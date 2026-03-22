package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.AliasExistsException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class AliasExistsExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public AliasExistsExceptionUnmarshaller() {
        super(AliasExistsException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("AliasExistsException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        AliasExistsException aliasExistsException = (AliasExistsException) super.a(jsonErrorResponse);
        aliasExistsException.h("AliasExistsException");
        return aliasExistsException;
    }
}
