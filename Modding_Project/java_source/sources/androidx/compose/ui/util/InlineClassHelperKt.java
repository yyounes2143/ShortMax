package androidx.compose.ui.util;

import kotlin.Metadata;
import kotlin.jvm.internal.FloatCompanionObject;
/* compiled from: InlineClassHelper.kt */
@Metadata
/* loaded from: classes.dex */
public final class InlineClassHelperKt {
    public static final long packFloats(float f10, float f11) {
        return (Float.floatToIntBits(f11) & 4294967295L) | (Float.floatToIntBits(f10) << 32);
    }

    public static final long packInts(int i10, int i11) {
        return (i11 & 4294967295L) | (i10 << 32);
    }

    public static final float unpackFloat1(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    public static final float unpackFloat2(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    public static final int unpackInt1(long j10) {
        return (int) (j10 >> 32);
    }

    public static final int unpackInt2(long j10) {
        return (int) (j10 & 4294967295L);
    }
}
