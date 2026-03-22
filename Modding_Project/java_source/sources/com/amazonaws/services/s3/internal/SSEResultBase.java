package com.amazonaws.services.s3.internal;
/* loaded from: classes2.dex */
public abstract class SSEResultBase implements ServerSideEncryptionResult {

    /* renamed from: a  reason: collision with root package name */
    private String f5945a;

    /* renamed from: b  reason: collision with root package name */
    private String f5946b;

    /* renamed from: c  reason: collision with root package name */
    private String f5947c;

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public final void e(String str) {
        this.f5945a = str;
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public final void h(String str) {
        this.f5946b = str;
    }

    @Override // com.amazonaws.services.s3.internal.ServerSideEncryptionResult
    public final void k(String str) {
        this.f5947c = str;
    }
}
