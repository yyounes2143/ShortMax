package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.z;
/* compiled from: RealResponseBody.java */
/* loaded from: classes6.dex */
public final class h extends z {

    /* renamed from: a  reason: collision with root package name */
    private final String f29704a;

    /* renamed from: b  reason: collision with root package name */
    private final long f29705b;

    /* renamed from: c  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okio.e f29706c;

    public h(String str, long j10, com.mbridge.msdk.thrid.okio.e eVar) {
        this.f29704a = str;
        this.f29705b = j10;
        this.f29706c = eVar;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.z
    public long h() {
        return this.f29705b;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.z
    public com.mbridge.msdk.thrid.okio.e k() {
        return this.f29706c;
    }
}
