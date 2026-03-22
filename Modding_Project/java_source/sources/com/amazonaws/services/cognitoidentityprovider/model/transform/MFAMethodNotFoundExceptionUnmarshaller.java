package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.MFAMethodNotFoundException;
import com.amazonaws.transform.JsonErrorUnmarshaller;
/* loaded from: classes2.dex */
public class MFAMethodNotFoundExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public MFAMethodNotFoundExceptionUnmarshaller() {
        super(MFAMethodNotFoundException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return jsonErrorResponse.c().equals("MFAMethodNotFoundException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        MFAMethodNotFoundException mFAMethodNotFoundException = (MFAMethodNotFoundException) super.a(jsonErrorResponse);
        mFAMethodNotFoundException.h("MFAMethodNotFoundException");
        return mFAMethodNotFoundException;
    }
}
