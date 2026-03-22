package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PathFillType.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class PathFillType {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int NonZero = m2079constructorimpl(0);
    private static final int EvenOdd = m2079constructorimpl(1);

    /* compiled from: PathFillType.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getEvenOdd-Rg-k1Os  reason: not valid java name */
        public final int m2085getEvenOddRgk1Os() {
            return PathFillType.EvenOdd;
        }

        /* renamed from: getNonZero-Rg-k1Os  reason: not valid java name */
        public final int m2086getNonZeroRgk1Os() {
            return PathFillType.NonZero;
        }

        private Companion() {
        }
    }

    private /* synthetic */ PathFillType(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PathFillType m2078boximpl(int i10) {
        return new PathFillType(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2080equalsimpl(int i10, Object obj) {
        if (!(obj instanceof PathFillType) || i10 != ((PathFillType) obj).m2084unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2081equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2082hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2083toStringimpl(int i10) {
        if (m2081equalsimpl0(i10, NonZero)) {
            return "NonZero";
        }
        if (m2081equalsimpl0(i10, EvenOdd)) {
            return "EvenOdd";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2080equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2082hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2083toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2084unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2079constructorimpl(int i10) {
        return i10;
    }
}
