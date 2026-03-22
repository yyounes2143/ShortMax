package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: FilterQuality.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class FilterQuality {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int None = m1921constructorimpl(0);
    private static final int Low = m1921constructorimpl(1);
    private static final int Medium = m1921constructorimpl(2);
    private static final int High = m1921constructorimpl(3);

    /* compiled from: FilterQuality.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getHigh-f-v9h1I  reason: not valid java name */
        public final int m1927getHighfv9h1I() {
            return FilterQuality.High;
        }

        /* renamed from: getLow-f-v9h1I  reason: not valid java name */
        public final int m1928getLowfv9h1I() {
            return FilterQuality.Low;
        }

        /* renamed from: getMedium-f-v9h1I  reason: not valid java name */
        public final int m1929getMediumfv9h1I() {
            return FilterQuality.Medium;
        }

        /* renamed from: getNone-f-v9h1I  reason: not valid java name */
        public final int m1930getNonefv9h1I() {
            return FilterQuality.None;
        }

        private Companion() {
        }
    }

    private /* synthetic */ FilterQuality(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ FilterQuality m1920boximpl(int i10) {
        return new FilterQuality(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1922equalsimpl(int i10, Object obj) {
        if (!(obj instanceof FilterQuality) || i10 != ((FilterQuality) obj).m1926unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1923equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1924hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1925toStringimpl(int i10) {
        if (m1923equalsimpl0(i10, None)) {
            return "None";
        }
        if (m1923equalsimpl0(i10, Low)) {
            return "Low";
        }
        if (m1923equalsimpl0(i10, Medium)) {
            return "Medium";
        }
        if (m1923equalsimpl0(i10, High)) {
            return "High";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m1922equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m1924hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m1925toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1926unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m1921constructorimpl(int i10) {
        return i10;
    }
}
