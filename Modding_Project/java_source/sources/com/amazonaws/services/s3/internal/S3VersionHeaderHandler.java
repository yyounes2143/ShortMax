package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.internal.S3VersionResult;
/* loaded from: classes2.dex */
public class S3VersionHeaderHandler<T extends S3VersionResult> implements HeaderHandler<T> {
    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    /* renamed from: b */
    public void a(T t10, HttpResponse httpResponse) {
        t10.d(httpResponse.c().get("x-amz-version-id"));
    }
}
