package androidx.collection;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatFloatPair.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatFloatPair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 2 PackingUtils.kt\nandroidx/collection/PackingUtilsKt\n+ 3 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n*L\n1#1,84:1\n51#1:92\n55#1:94\n22#2,3:85\n22#3:88\n22#3:89\n22#3:90\n22#3:91\n22#3:93\n*S KotlinDebug\n*F\n+ 1 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n*L\n82#1:92\n82#1:94\n47#1:85,3\n51#1:88\n55#1:89\n67#1:90\n80#1:91\n82#1:93\n*E\n"})
/* loaded from: classes.dex */
public final class FloatFloatPair {
    public final long packedValue;

    private /* synthetic */ FloatFloatPair(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ FloatFloatPair m13boximpl(long j10) {
        return new FloatFloatPair(j10);
    }

    /* renamed from: component1-impl  reason: not valid java name */
    public static final float m14component1impl(long j10) {
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    /* renamed from: component2-impl  reason: not valid java name */
    public static final float m15component2impl(long j10) {
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m17constructorimpl(long j10) {
        return j10;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m18equalsimpl(long j10, Object obj) {
        if (!(obj instanceof FloatFloatPair) || j10 != ((FloatFloatPair) obj).m24unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m19equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getFirst-impl  reason: not valid java name */
    public static final float m20getFirstimpl(long j10) {
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    /* renamed from: getSecond-impl  reason: not valid java name */
    public static final float m21getSecondimpl(long j10) {
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m22hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m23toStringimpl(long j10) {
        return '(' + Float.intBitsToFloat((int) (j10 >> 32)) + ", " + Float.intBitsToFloat((int) (j10 & 4294967295L)) + ')';
    }

    public boolean equals(Object obj) {
        return m18equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m22hashCodeimpl(this.packedValue);
    }

    @NotNull
    public String toString() {
        return m23toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m24unboximpl() {
        return this.packedValue;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m16constructorimpl(float f10, float f11) {
        return m17constructorimpl((Float.floatToRawIntBits(f11) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32));
    }
}
