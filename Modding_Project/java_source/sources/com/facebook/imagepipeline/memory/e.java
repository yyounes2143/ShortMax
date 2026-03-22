package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import b4.e0;
import b4.f0;
import b4.v;
import com.facebook.imagepipeline.memory.BasePool;
import k2.h;
/* compiled from: MemoryChunkPool.java */
/* loaded from: classes3.dex */
public abstract class e extends BasePool<v> {

    /* renamed from: k  reason: collision with root package name */
    private final int[] f15685k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(n2.c cVar, e0 e0Var, f0 f0Var) {
        super(cVar, e0Var, f0Var);
        SparseIntArray sparseIntArray = (SparseIntArray) h.g(e0Var.f2213c);
        this.f15685k = new int[sparseIntArray.size()];
        int i10 = 0;
        while (true) {
            int[] iArr = this.f15685k;
            if (i10 < iArr.length) {
                iArr[i10] = sparseIntArray.keyAt(i10);
                i10++;
            } else {
                r();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: A */
    public void j(v vVar) {
        h.g(vVar);
        vVar.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: B */
    public int n(v vVar) {
        h.g(vVar);
        return vVar.getSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int C() {
        return this.f15685k[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: D */
    public boolean t(v vVar) {
        h.g(vVar);
        return !vVar.isClosed();
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int m(int i10) {
        int[] iArr;
        if (i10 > 0) {
            for (int i11 : this.f15685k) {
                if (i11 >= i10) {
                    return i11;
                }
            }
            return i10;
        }
        throw new BasePool.InvalidSizeException(Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: z */
    public abstract v f(int i10);

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int o(int i10) {
        return i10;
    }
}
