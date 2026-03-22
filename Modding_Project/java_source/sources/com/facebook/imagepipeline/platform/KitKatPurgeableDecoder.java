package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.memory.c;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import k2.d;
import k2.h;
import o2.a;
@d
@TargetApi(19)
/* loaded from: classes3.dex */
public class KitKatPurgeableDecoder extends DalvikPurgeableDecoder {

    /* renamed from: c  reason: collision with root package name */
    private final c f15701c;

    @d
    public KitKatPurgeableDecoder(c cVar) {
        this.f15701c = cVar;
    }

    private static void h(byte[] bArr, int i10) {
        bArr[i10] = -1;
        bArr[i10 + 1] = -39;
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap c(a<PooledByteBuffer> aVar, BitmapFactory.Options options) {
        PooledByteBuffer s10 = aVar.s();
        int size = s10.size();
        a<byte[]> a10 = this.f15701c.a(size);
        try {
            byte[] s11 = a10.s();
            s10.B(0, s11, 0, size);
            return (Bitmap) h.h(BitmapFactory.decodeByteArray(s11, 0, size, options), "BitmapFactory returned null");
        } finally {
            a.r(a10);
        }
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap d(a<PooledByteBuffer> aVar, int i10, BitmapFactory.Options options) {
        byte[] bArr;
        boolean z10;
        if (DalvikPurgeableDecoder.e(aVar, i10)) {
            bArr = null;
        } else {
            bArr = DalvikPurgeableDecoder.f15688b;
        }
        PooledByteBuffer s10 = aVar.s();
        if (i10 <= s10.size()) {
            z10 = true;
        } else {
            z10 = false;
        }
        h.b(Boolean.valueOf(z10));
        int i11 = i10 + 2;
        a<byte[]> a10 = this.f15701c.a(i11);
        try {
            byte[] s11 = a10.s();
            s10.B(0, s11, 0, i10);
            if (bArr != null) {
                h(s11, i10);
                i10 = i11;
            }
            Bitmap bitmap = (Bitmap) h.h(BitmapFactory.decodeByteArray(s11, 0, i10, options), "BitmapFactory returned null");
            a.r(a10);
            return bitmap;
        } catch (Throwable th2) {
            a.r(a10);
            throw th2;
        }
    }
}
