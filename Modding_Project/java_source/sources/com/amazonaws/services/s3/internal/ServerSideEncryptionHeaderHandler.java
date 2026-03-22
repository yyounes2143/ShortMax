package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;
/* loaded from: classes2.dex */
public class ServerSideEncryptionHeaderHandler<T extends ServerSideEncryptionResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* renamed from: b */
    public void a(T t10, HttpResponse httpResponse) {
        t10.e(httpResponse.c().get("x-amz-server-side-encryption"));
        t10.h(httpResponse.c().get("x-amz-server-side-encryption-customer-algorithm"));
        t10.k(httpResponse.c().get("x-amz-server-side-encryption-customer-key-MD5"));
    }
}
