package iq;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.k;
import yq.r;
@Metadata
/* loaded from: classes8.dex */
public final class e extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(@NotNull k algorithmParams) {
        super(algorithmParams);
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
    }

    private final float h(int i10, int i11) {
        float s10 = r.s(i10) - r.s(i11);
        float l10 = r.l(i10) - r.l(i11);
        float a10 = r.a(i10) - r.a(i11);
        return (float) Math.sqrt((s10 * s10) + (l10 * l10) + (a10 * a10));
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Float i(android.graphics.Bitmap r22, float r23) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: iq.e.i(android.graphics.Bitmap, float):java.lang.Float");
    }

    @Override // iq.a
    @Nullable
    public Boolean c(@NotNull Bitmap image) {
        Boolean bool;
        boolean z10;
        Intrinsics.checkNotNullParameter(image, "image");
        Float i10 = i(image, d().a());
        if (i10 != null) {
            if (i10.floatValue() <= d().a()) {
                z10 = true;
            } else {
                z10 = false;
            }
            bool = Boolean.valueOf(z10);
        } else {
            bool = null;
        }
        e(i10, bool);
        return bool;
    }
}
