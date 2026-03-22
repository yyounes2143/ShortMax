package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
/* loaded from: classes2.dex */
public class S3RequesterChargedHeaderHandler<T extends S3RequesterChargedResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* renamed from: b */
    public void a(T t10, HttpResponse httpResponse) {
        boolean z10;
        if (httpResponse.c().get("x-amz-request-charged") != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        t10.b(z10);
    }
}
