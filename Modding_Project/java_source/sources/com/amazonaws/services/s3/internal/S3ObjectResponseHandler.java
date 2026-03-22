package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
/* loaded from: classes2.dex */
public class S3ObjectResponseHandler extends AbstractS3ResponseHandler<S3Object> {
    @Override // com.amazonaws.services.s3.internal.AbstractS3ResponseHandler, com.amazonaws.http.HttpResponseHandler
    public boolean a() {
        return true;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* renamed from: e */
    public AmazonWebServiceResponse<S3Object> b(HttpResponse httpResponse) throws Exception {
        S3Object s3Object = new S3Object();
        AmazonWebServiceResponse<S3Object> c10 = c(httpResponse);
        if (httpResponse.c().get("x-amz-website-redirect-location") != null) {
            s3Object.u(httpResponse.c().get("x-amz-website-redirect-location"));
        }
        if (httpResponse.c().get("x-amz-request-charged") != null) {
            s3Object.b(true);
        }
        if (httpResponse.c().get("x-amz-tagging-count") != null) {
            s3Object.v(Integer.valueOf(Integer.parseInt(httpResponse.c().get("x-amz-tagging-count"))));
        }
        d(httpResponse, s3Object.q());
        s3Object.t(new S3ObjectInputStream(httpResponse.b()));
        c10.d(s3Object);
        return c10;
    }
}
