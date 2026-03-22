package com.facebook.imagepipeline.memory;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import b4.e0;
import b4.f0;
import b4.i;
import k2.h;
/* compiled from: BucketsBitmapPool.java */
@TargetApi(21)
/* loaded from: classes3.dex */
public class b extends BasePool<Bitmap> implements i {
    public b(n2.c cVar, e0 e0Var, f0 f0Var, boolean z10) {
        super(cVar, e0Var, f0Var, z10);
        r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: A */
    public void j(Bitmap bitmap) {
        h.g(bitmap);
        bitmap.recycle();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: B */
    public int n(Bitmap bitmap) {
        h.g(bitmap);
        return bitmap.getAllocationByteCount();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: C */
    public Bitmap p(a<Bitmap> aVar) {
        Bitmap bitmap = (Bitmap) super.p(aVar);
        if (bitmap != null) {
            bitmap.eraseColor(0);
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: D */
    public boolean t(Bitmap bitmap) {
        h.g(bitmap);
        if (!bitmap.isRecycled() && bitmap.isMutable()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: z */
    public Bitmap f(int i10) {
        return Bitmap.createBitmap(1, (int) Math.ceil(i10 / 2.0d), Bitmap.Config.RGB_565);
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int m(int i10) {
        return i10;
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int o(int i10) {
        return i10;
    }
}
