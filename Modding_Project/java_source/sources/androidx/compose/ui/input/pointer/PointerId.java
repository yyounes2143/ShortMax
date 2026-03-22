package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
/* compiled from: PointerEvent.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerId {
    private final long value;

    private /* synthetic */ PointerId(long j10) {
        this.value = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PointerId m3192boximpl(long j10) {
        return new PointerId(j10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3194equalsimpl(long j10, Object obj) {
        if (!(obj instanceof PointerId) || j10 != ((PointerId) obj).m3198unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3195equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3196hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3197toStringimpl(long j10) {
        return "PointerId(value=" + j10 + ')';
    }

    public boolean equals(Object obj) {
        return m3194equalsimpl(this.value, obj);
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return m3196hashCodeimpl(this.value);
    }

    public String toString() {
        return m3197toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m3198unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m3193constructorimpl(long j10) {
        return j10;
    }
}
