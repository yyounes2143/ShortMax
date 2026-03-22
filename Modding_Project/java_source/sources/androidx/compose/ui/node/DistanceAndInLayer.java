package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.internal.FloatCompanionObject;
/* compiled from: HitTestResult.kt */
@Metadata
/* loaded from: classes.dex */
final class DistanceAndInLayer {
    private final long packedValue;

    private /* synthetic */ DistanceAndInLayer(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ DistanceAndInLayer m3413boximpl(long j10) {
        return new DistanceAndInLayer(j10);
    }

    /* renamed from: compareTo-S_HNhKs  reason: not valid java name */
    public static final int m3414compareToS_HNhKs(long j10, long j11) {
        boolean m3420isInLayerimpl = m3420isInLayerimpl(j10);
        if (m3420isInLayerimpl != m3420isInLayerimpl(j11)) {
            if (m3420isInLayerimpl) {
                return -1;
            }
            return 1;
        }
        return (int) Math.signum(m3418getDistanceimpl(j10) - m3418getDistanceimpl(j11));
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3416equalsimpl(long j10, Object obj) {
        if (!(obj instanceof DistanceAndInLayer) || j10 != ((DistanceAndInLayer) obj).m3422unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3417equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getDistance-impl  reason: not valid java name */
    public static final float m3418getDistanceimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3419hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* renamed from: isInLayer-impl  reason: not valid java name */
    public static final boolean m3420isInLayerimpl(long j10) {
        if (((int) (j10 & 4294967295L)) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3421toStringimpl(long j10) {
        return "DistanceAndInLayer(packedValue=" + j10 + ')';
    }

    public boolean equals(Object obj) {
        return m3416equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m3419hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m3421toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m3422unboximpl() {
        return this.packedValue;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m3415constructorimpl(long j10) {
        return j10;
    }
}
