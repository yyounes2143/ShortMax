package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: TileMode.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TileMode {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Clamp = m2160constructorimpl(0);
    private static final int Repeated = m2160constructorimpl(1);
    private static final int Mirror = m2160constructorimpl(2);
    private static final int Decal = m2160constructorimpl(3);

    /* compiled from: TileMode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getClamp-3opZhB0  reason: not valid java name */
        public final int m2166getClamp3opZhB0() {
            return TileMode.Clamp;
        }

        /* renamed from: getDecal-3opZhB0  reason: not valid java name */
        public final int m2167getDecal3opZhB0() {
            return TileMode.Decal;
        }

        /* renamed from: getMirror-3opZhB0  reason: not valid java name */
        public final int m2168getMirror3opZhB0() {
            return TileMode.Mirror;
        }

        /* renamed from: getRepeated-3opZhB0  reason: not valid java name */
        public final int m2169getRepeated3opZhB0() {
            return TileMode.Repeated;
        }

        private Companion() {
        }
    }

    private /* synthetic */ TileMode(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ TileMode m2159boximpl(int i10) {
        return new TileMode(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2161equalsimpl(int i10, Object obj) {
        if (!(obj instanceof TileMode) || i10 != ((TileMode) obj).m2165unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2162equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2163hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2164toStringimpl(int i10) {
        if (m2162equalsimpl0(i10, Clamp)) {
            return "Clamp";
        }
        if (m2162equalsimpl0(i10, Repeated)) {
            return "Repeated";
        }
        if (m2162equalsimpl0(i10, Mirror)) {
            return "Mirror";
        }
        if (m2162equalsimpl0(i10, Decal)) {
            return "Decal";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2161equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2163hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2164toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2165unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2160constructorimpl(int i10) {
        return i10;
    }
}
