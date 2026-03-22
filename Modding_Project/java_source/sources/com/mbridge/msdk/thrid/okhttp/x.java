package com.mbridge.msdk.thrid.okhttp;

import java.io.IOException;
/* compiled from: RequestBody.java */
/* loaded from: classes6.dex */
public abstract class x {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequestBody.java */
    /* loaded from: classes6.dex */
    public static class a extends x {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f30088a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ byte[] f30089b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f30090c;

        a(s sVar, int i10, byte[] bArr, int i11) {
            this.f30088a = i10;
            this.f30089b = bArr;
            this.f30090c = i11;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.x
        public long a() {
            return this.f30088a;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.x
        public s b() {
            return null;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.x
        public void a(com.mbridge.msdk.thrid.okio.d dVar) throws IOException {
            dVar.write(this.f30089b, this.f30090c, this.f30088a);
        }
    }

    public static x a(s sVar, byte[] bArr) {
        return a(sVar, bArr, 0, bArr.length);
    }

    public abstract long a() throws IOException;

    public abstract void a(com.mbridge.msdk.thrid.okio.d dVar) throws IOException;

    public abstract s b();

    public static x a(s sVar, byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            com.mbridge.msdk.thrid.okhttp.internal.c.a(bArr.length, i10, i11);
            return new a(sVar, i11, bArr, i10);
        }
        throw new NullPointerException("content == null");
    }
}
