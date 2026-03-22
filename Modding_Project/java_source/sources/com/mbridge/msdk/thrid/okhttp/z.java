package com.mbridge.msdk.thrid.okhttp;

import java.io.Closeable;
import java.io.InputStream;
/* compiled from: ResponseBody.java */
/* loaded from: classes6.dex */
public abstract class z implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResponseBody.java */
    /* loaded from: classes6.dex */
    public static class a extends z {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f30116a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.thrid.okio.e f30117b;

        a(s sVar, long j10, com.mbridge.msdk.thrid.okio.e eVar) {
            this.f30116a = j10;
            this.f30117b = eVar;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.z
        public long h() {
            return this.f30116a;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.z
        public com.mbridge.msdk.thrid.okio.e k() {
            return this.f30117b;
        }
    }

    public static z a(s sVar, byte[] bArr) {
        return a(sVar, bArr.length, new com.mbridge.msdk.thrid.okio.c().write(bArr));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.mbridge.msdk.thrid.okhttp.internal.c.a(k());
    }

    public final InputStream d() {
        return k().j();
    }

    public abstract long h();

    public abstract com.mbridge.msdk.thrid.okio.e k();

    public static z a(s sVar, long j10, com.mbridge.msdk.thrid.okio.e eVar) {
        if (eVar != null) {
            return new a(sVar, j10, eVar);
        }
        throw new NullPointerException("source == null");
    }
}
