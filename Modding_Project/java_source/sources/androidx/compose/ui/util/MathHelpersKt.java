package androidx.compose.ui.util;

import bt.a;
import kotlin.Metadata;
/* compiled from: MathHelpers.kt */
@Metadata
/* loaded from: classes.dex */
public final class MathHelpersKt {
    public static final float lerp(float f10, float f11, float f12) {
        return ((1 - f12) * f10) + (f12 * f11);
    }

    public static final int lerp(int i10, int i11, float f10) {
        return i10 + a.b((i11 - i10) * f10);
    }

    public static final long lerp(long j10, long j11, float f10) {
        return j10 + a.d((j11 - j10) * f10);
    }
}
