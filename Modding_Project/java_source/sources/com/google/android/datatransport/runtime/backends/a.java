package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendResponse;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_BackendResponse.java */
/* loaded from: classes4.dex */
public final class a extends BackendResponse {

    /* renamed from: a  reason: collision with root package name */
    private final BackendResponse.Status f17155a;

    /* renamed from: b  reason: collision with root package name */
    private final long f17156b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(BackendResponse.Status status, long j10) {
        if (status != null) {
            this.f17155a = status;
            this.f17156b = j10;
            return;
        }
        throw new NullPointerException("Null status");
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public long b() {
        return this.f17156b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public BackendResponse.Status c() {
        return this.f17155a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendResponse)) {
            return false;
        }
        BackendResponse backendResponse = (BackendResponse) obj;
        if (this.f17155a.equals(backendResponse.c()) && this.f17156b == backendResponse.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f17156b;
        return ((this.f17155a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f17155a + ", nextRequestWaitMillis=" + this.f17156b + "}";
    }
}
