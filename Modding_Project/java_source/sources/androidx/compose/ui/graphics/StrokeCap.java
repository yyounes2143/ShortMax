package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: StrokeCap.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class StrokeCap {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Butt = m2140constructorimpl(0);
    private static final int Round = m2140constructorimpl(1);
    private static final int Square = m2140constructorimpl(2);

    /* compiled from: StrokeCap.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getButt-KaPHkGw  reason: not valid java name */
        public final int m2146getButtKaPHkGw() {
            return StrokeCap.Butt;
        }

        /* renamed from: getRound-KaPHkGw  reason: not valid java name */
        public final int m2147getRoundKaPHkGw() {
            return StrokeCap.Round;
        }

        /* renamed from: getSquare-KaPHkGw  reason: not valid java name */
        public final int m2148getSquareKaPHkGw() {
            return StrokeCap.Square;
        }

        private Companion() {
        }
    }

    private /* synthetic */ StrokeCap(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ StrokeCap m2139boximpl(int i10) {
        return new StrokeCap(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2141equalsimpl(int i10, Object obj) {
        if (!(obj instanceof StrokeCap) || i10 != ((StrokeCap) obj).m2145unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2142equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2143hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2144toStringimpl(int i10) {
        if (m2142equalsimpl0(i10, Butt)) {
            return "Butt";
        }
        if (m2142equalsimpl0(i10, Round)) {
            return "Round";
        }
        if (m2142equalsimpl0(i10, Square)) {
            return "Square";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2141equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2143hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2144toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2145unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2140constructorimpl(int i10) {
        return i10;
    }
}
