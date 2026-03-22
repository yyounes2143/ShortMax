package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import b4.e0;
import b4.f0;
import com.facebook.imagepipeline.memory.BasePool;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GenericByteArrayPool.kt */
@Metadata
/* loaded from: classes3.dex */
public class d extends BasePool<byte[]> implements n2.a {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final int[] f15684k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@NotNull n2.c memoryTrimmableRegistry, @NotNull e0 poolParams, @NotNull f0 poolStatsTracker) {
        super(memoryTrimmableRegistry, poolParams, poolStatsTracker);
        Intrinsics.checkNotNullParameter(memoryTrimmableRegistry, "memoryTrimmableRegistry");
        Intrinsics.checkNotNullParameter(poolParams, "poolParams");
        Intrinsics.checkNotNullParameter(poolStatsTracker, "poolStatsTracker");
        SparseIntArray sparseIntArray = poolParams.f2213c;
        if (sparseIntArray != null) {
            this.f15684k = new int[sparseIntArray.size()];
            int size = sparseIntArray.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f15684k[i10] = sparseIntArray.keyAt(i10);
            }
        } else {
            this.f15684k = new int[0];
        }
        r();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: A */
    public void j(@NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    /* renamed from: B */
    public int n(@NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return value.length;
    }

    @Override // com.facebook.imagepipeline.memory.BasePool
    protected int m(int i10) {
        int[] iArr;
        if (i10 > 0) {
            for (int i11 : this.f15684k) {
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
    @NotNull
    /* renamed from: z */
    public byte[] f(int i10) {
        return new byte[i10];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.memory.BasePool
    public int o(int i10) {
        return i10;
    }
}
