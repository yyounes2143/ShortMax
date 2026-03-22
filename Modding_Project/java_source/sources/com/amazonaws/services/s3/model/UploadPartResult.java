package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.SSEResultBase;
/* loaded from: classes2.dex */
public class UploadPartResult extends SSEResultBase implements S3RequesterChargedResult {

    /* renamed from: d  reason: collision with root package name */
    private int f6207d;

    /* renamed from: e  reason: collision with root package name */
    private String f6208e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6209f;

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void b(boolean z10) {
        this.f6209f = z10;
    }

    public String f() {
        return this.f6208e;
    }

    public void g(String str) {
        this.f6208e = str;
    }

    public void n(int i10) {
        this.f6207d = i10;
    }
}
