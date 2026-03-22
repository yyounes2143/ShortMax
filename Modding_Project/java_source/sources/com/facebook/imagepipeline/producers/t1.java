package com.facebook.imagepipeline.producers;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThumbnailSizeChecker.kt */
@Metadata
/* loaded from: classes3.dex */
public final class t1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final t1 f15947a = new t1();

    private t1() {
    }

    public static final int a(int i10) {
        return (int) (i10 * 1.3333334f);
    }

    public static final boolean b(int i10, int i11, @Nullable s3.f fVar) {
        if (fVar == null) {
            if (a(i10) < 2048.0f || a(i11) < 2048) {
                return false;
            }
        } else if (a(i10) < fVar.f66291a || a(i11) < fVar.f66292b) {
            return false;
        }
        return true;
    }

    public static final boolean c(@Nullable y3.k kVar, @Nullable s3.f fVar) {
        if (kVar == null) {
            return false;
        }
        int q02 = kVar.q0();
        if (q02 != 90 && q02 != 270) {
            return b(kVar.getWidth(), kVar.getHeight(), fVar);
        }
        return b(kVar.getHeight(), kVar.getWidth(), fVar);
    }
}
