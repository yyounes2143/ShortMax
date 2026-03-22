package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PaintingStyle.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class PaintingStyle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Fill = m2066constructorimpl(0);
    private static final int Stroke = m2066constructorimpl(1);
    private final int value;

    /* compiled from: PaintingStyle.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getFill-TiuSbCo  reason: not valid java name */
        public final int m2072getFillTiuSbCo() {
            return PaintingStyle.Fill;
        }

        /* renamed from: getStroke-TiuSbCo  reason: not valid java name */
        public final int m2073getStrokeTiuSbCo() {
            return PaintingStyle.Stroke;
        }

        private Companion() {
        }
    }

    private /* synthetic */ PaintingStyle(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ PaintingStyle m2065boximpl(int i10) {
        return new PaintingStyle(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2067equalsimpl(int i10, Object obj) {
        if (!(obj instanceof PaintingStyle) || i10 != ((PaintingStyle) obj).m2071unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2068equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2069hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2070toStringimpl(int i10) {
        if (m2068equalsimpl0(i10, Fill)) {
            return "Fill";
        }
        if (m2068equalsimpl0(i10, Stroke)) {
            return "Stroke";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2067equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2069hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2070toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2071unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2066constructorimpl(int i10) {
        return i10;
    }
}
