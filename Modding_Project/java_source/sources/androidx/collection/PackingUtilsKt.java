package androidx.collection;

import kotlin.Metadata;
/* compiled from: PackingUtils.kt */
@Metadata
/* loaded from: classes.dex */
public final class PackingUtilsKt {
    public static final long packFloats(float f10, float f11) {
        return (Float.floatToRawIntBits(f11) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32);
    }

    public static final long packInts(int i10, int i11) {
        return (i11 & 4294967295L) | (i10 << 32);
    }
}
