package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: VertexMode.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class VertexMode {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Triangles = m2186constructorimpl(0);
    private static final int TriangleStrip = m2186constructorimpl(1);
    private static final int TriangleFan = m2186constructorimpl(2);

    /* compiled from: VertexMode.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getTriangleFan-c2xauaI  reason: not valid java name */
        public final int m2192getTriangleFanc2xauaI() {
            return VertexMode.TriangleFan;
        }

        /* renamed from: getTriangleStrip-c2xauaI  reason: not valid java name */
        public final int m2193getTriangleStripc2xauaI() {
            return VertexMode.TriangleStrip;
        }

        /* renamed from: getTriangles-c2xauaI  reason: not valid java name */
        public final int m2194getTrianglesc2xauaI() {
            return VertexMode.Triangles;
        }

        private Companion() {
        }
    }

    private /* synthetic */ VertexMode(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ VertexMode m2185boximpl(int i10) {
        return new VertexMode(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2187equalsimpl(int i10, Object obj) {
        if (!(obj instanceof VertexMode) || i10 != ((VertexMode) obj).m2191unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2188equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2189hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2190toStringimpl(int i10) {
        if (m2188equalsimpl0(i10, Triangles)) {
            return "Triangles";
        }
        if (m2188equalsimpl0(i10, TriangleStrip)) {
            return "TriangleStrip";
        }
        if (m2188equalsimpl0(i10, TriangleFan)) {
            return "TriangleFan";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2187equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2189hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2190toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2191unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2186constructorimpl(int i10) {
        return i10;
    }
}
