package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import b4.e0;
import b4.f0;
import b4.z;
import o2.h;
/* compiled from: FlexByteArrayPool.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final h<byte[]> f15681a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final b f15682b;

    /* compiled from: FlexByteArrayPool.java */
    /* loaded from: classes3.dex */
    class a implements h<byte[]> {
        a() {
        }

        @Override // o2.h
        /* renamed from: a */
        public void release(byte[] bArr) {
            c.this.b(bArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlexByteArrayPool.java */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class b extends d {
        public b(n2.c cVar, e0 e0Var, f0 f0Var) {
            super(cVar, e0Var, f0Var);
        }

        @Override // com.facebook.imagepipeline.memory.BasePool
        com.facebook.imagepipeline.memory.a<byte[]> w(int i10) {
            return new f(o(i10), this.f15660c.f2217g, 0);
        }
    }

    public c(n2.c cVar, e0 e0Var) {
        boolean z10;
        if (e0Var.f2217g > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k2.h.b(Boolean.valueOf(z10));
        this.f15682b = new b(cVar, e0Var, z.h());
        this.f15681a = new a();
    }

    public o2.a<byte[]> a(int i10) {
        return o2.a.F(this.f15682b.get(i10), this.f15681a);
    }

    public void b(byte[] bArr) {
        this.f15682b.release(bArr);
    }
}
