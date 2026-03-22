package iq;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.k;
@Metadata
/* loaded from: classes8.dex */
public final class c extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull k algorithmParams) {
        super(algorithmParams);
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
    }

    private final float h(Bitmap bitmap) {
        float f10;
        float f11;
        IntRange v10 = kotlin.ranges.e.v(0, bitmap.getWidth());
        IntRange v11 = kotlin.ranges.e.v(0, bitmap.getHeight());
        int h02 = CollectionsKt.h0(v10) * CollectionsKt.h0(v11);
        int[] iArr = new int[bitmap.getWidth()];
        int c10 = v11.c();
        int d10 = v11.d();
        if (c10 <= d10) {
            int i10 = c10;
            f10 = 0.0f;
            f11 = 0.0f;
            while (true) {
                bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, i10, bitmap.getWidth(), 1);
                int c11 = v10.c();
                int d11 = v10.d();
                if (c11 <= d11) {
                    while (true) {
                        float a10 = a(iArr[c11]);
                        f10 += a10;
                        f11 += a10 * a10;
                        if (c11 == d11) {
                            break;
                        }
                        c11++;
                    }
                }
                if (i10 == d10) {
                    break;
                }
                i10++;
            }
        } else {
            f10 = 0.0f;
            f11 = 0.0f;
        }
        float f12 = h02;
        float f13 = f10 / f12;
        float f14 = (f11 / f12) - (f13 * f13);
        if (f14 < 0.0f) {
            return 0.0f;
        }
        return (float) Math.sqrt(f14);
    }

    @Override // iq.a
    @Nullable
    public Boolean c(@NotNull Bitmap image) {
        boolean z10;
        Intrinsics.checkNotNullParameter(image, "image");
        float h10 = h(image);
        if (h10 <= d().a()) {
            z10 = true;
        } else {
            z10 = false;
        }
        e(Float.valueOf(h10), Boolean.valueOf(z10));
        return Boolean.valueOf(z10);
    }
}
