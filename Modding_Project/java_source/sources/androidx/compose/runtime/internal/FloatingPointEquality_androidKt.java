package androidx.compose.runtime.internal;

import kotlin.Metadata;
/* compiled from: FloatingPointEquality.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class FloatingPointEquality_androidKt {
    public static final boolean equalsWithNanFix(double d10, double d11) {
        return d10 == d11;
    }

    public static final boolean isNan(float f10) {
        return (Float.floatToRawIntBits(f10) & Integer.MAX_VALUE) > 2139095040;
    }

    public static final boolean equalsWithNanFix(float f10, float f11) {
        return f10 == f11;
    }

    public static final boolean isNan(double d10) {
        return (Double.doubleToRawLongBits(d10) & Long.MAX_VALUE) > 9218868437227405312L;
    }
}
