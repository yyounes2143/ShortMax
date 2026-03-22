package com.amazonaws.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
/* loaded from: classes2.dex */
public class JsonErrorUnmarshaller extends AbstractErrorUnmarshaller<JsonErrorResponseHandler.JsonErrorResponse> {
    public JsonErrorUnmarshaller() {
    }

    public boolean c(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        return true;
    }

    @Override // com.amazonaws.transform.Unmarshaller
    /* renamed from: d */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) throws Exception {
        String d10 = jsonErrorResponse.d();
        String c10 = jsonErrorResponse.c();
        if ((d10 != null && !d10.isEmpty()) || (c10 != null && !c10.isEmpty())) {
            AmazonServiceException b10 = b(d10);
            b10.h(c10);
            return b10;
        }
        throw new AmazonClientException("Neither error message nor error code is found in the error response payload.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonErrorUnmarshaller(Class<? extends AmazonServiceException> cls) {
        super(cls);
    }
}
