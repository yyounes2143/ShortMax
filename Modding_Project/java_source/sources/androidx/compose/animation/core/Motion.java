package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.FloatCompanionObject;
/* compiled from: SpringSimulation.kt */
@Metadata
/* loaded from: classes.dex */
public final class Motion {
    private final long packedValue;

    private /* synthetic */ Motion(long j10) {
        this.packedValue = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Motion m141boximpl(long j10) {
        return new Motion(j10);
    }

    /* renamed from: copy-XB9eQnU  reason: not valid java name */
    public static final long m143copyXB9eQnU(long j10, float f10, float f11) {
        return SpringSimulationKt.Motion(f10, f11);
    }

    /* renamed from: copy-XB9eQnU$default  reason: not valid java name */
    public static /* synthetic */ long m144copyXB9eQnU$default(long j10, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = m147getValueimpl(j10);
        }
        if ((i10 & 2) != 0) {
            f11 = m148getVelocityimpl(j10);
        }
        return m143copyXB9eQnU(j10, f10, f11);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m145equalsimpl(long j10, Object obj) {
        if (!(obj instanceof Motion) || j10 != ((Motion) obj).m151unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m146equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getValue-impl  reason: not valid java name */
    public static final float m147getValueimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    /* renamed from: getVelocity-impl  reason: not valid java name */
    public static final float m148getVelocityimpl(long j10) {
        FloatCompanionObject floatCompanionObject = FloatCompanionObject.INSTANCE;
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m149hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m150toStringimpl(long j10) {
        return "Motion(packedValue=" + j10 + ')';
    }

    public boolean equals(Object obj) {
        return m145equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m149hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m150toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m151unboximpl() {
        return this.packedValue;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m142constructorimpl(long j10) {
        return j10;
    }
}
