package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClipOp.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ClipOp {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Difference = m1824constructorimpl(0);
    private static final int Intersect = m1824constructorimpl(1);
    private final int value;

    /* compiled from: ClipOp.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDifference-rtfAjoo  reason: not valid java name */
        public final int m1830getDifferencertfAjoo() {
            return ClipOp.Difference;
        }

        /* renamed from: getIntersect-rtfAjoo  reason: not valid java name */
        public final int m1831getIntersectrtfAjoo() {
            return ClipOp.Intersect;
        }

        private Companion() {
        }
    }

    private /* synthetic */ ClipOp(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ClipOp m1823boximpl(int i10) {
        return new ClipOp(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1825equalsimpl(int i10, Object obj) {
        if (!(obj instanceof ClipOp) || i10 != ((ClipOp) obj).m1829unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1826equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1827hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1828toStringimpl(int i10) {
        if (m1826equalsimpl0(i10, Difference)) {
            return "Difference";
        }
        if (m1826equalsimpl0(i10, Intersect)) {
            return "Intersect";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m1825equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1827hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m1828toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1829unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1824constructorimpl(int i10) {
        return i10;
    }
}
