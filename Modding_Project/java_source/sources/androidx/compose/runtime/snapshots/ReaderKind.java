package androidx.compose.runtime.snapshots;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: StateObjectImpl.kt */
@Metadata
/* loaded from: classes.dex */
public final class ReaderKind {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int mask;

    /* compiled from: StateObjectImpl.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getComposition-6f8NoZ8  reason: not valid java name */
        public final int m1509getComposition6f8NoZ8() {
            return ReaderKind.m1500constructorimpl(1);
        }

        /* renamed from: getSnapshotFlow-6f8NoZ8  reason: not valid java name */
        public final int m1510getSnapshotFlow6f8NoZ8() {
            return ReaderKind.m1500constructorimpl(4);
        }

        /* renamed from: getSnapshotStateObserver-6f8NoZ8  reason: not valid java name */
        public final int m1511getSnapshotStateObserver6f8NoZ8() {
            return ReaderKind.m1500constructorimpl(2);
        }

        private Companion() {
        }
    }

    private /* synthetic */ ReaderKind(int i10) {
        this.mask = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ReaderKind m1499boximpl(int i10) {
        return new ReaderKind(i10);
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ int m1501constructorimpl$default(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return m1500constructorimpl(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1502equalsimpl(int i10, Object obj) {
        if (!(obj instanceof ReaderKind) || i10 != ((ReaderKind) obj).m1508unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1503equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1504hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: isReadIn-h_f27i8  reason: not valid java name */
    public static final boolean m1505isReadInh_f27i8(int i10, int i11) {
        if ((i10 & i11) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1506toStringimpl(int i10) {
        return "ReaderKind(mask=" + i10 + ')';
    }

    /* renamed from: withReadIn-3QSx2Dw  reason: not valid java name */
    public static final int m1507withReadIn3QSx2Dw(int i10, int i11) {
        return m1500constructorimpl(i10 | i11);
    }

    public boolean equals(Object obj) {
        return m1502equalsimpl(this.mask, obj);
    }

    public final int getMask() {
        return this.mask;
    }

    public int hashCode() {
        return m1504hashCodeimpl(this.mask);
    }

    public String toString() {
        return m1506toStringimpl(this.mask);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1508unboximpl() {
        return this.mask;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1500constructorimpl(int i10) {
        return i10;
    }
}
