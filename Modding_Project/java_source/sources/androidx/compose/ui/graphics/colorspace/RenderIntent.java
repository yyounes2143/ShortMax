package androidx.compose.ui.graphics.colorspace;

import androidx.compose.runtime.Immutable;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: RenderIntent.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class RenderIntent {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Perceptual = m2217constructorimpl(0);
    private static final int Relative = m2217constructorimpl(1);
    private static final int Saturation = m2217constructorimpl(2);
    private static final int Absolute = m2217constructorimpl(3);

    /* compiled from: RenderIntent.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getAbsolute-uksYyKA  reason: not valid java name */
        public final int m2223getAbsoluteuksYyKA() {
            return RenderIntent.Absolute;
        }

        /* renamed from: getPerceptual-uksYyKA  reason: not valid java name */
        public final int m2224getPerceptualuksYyKA() {
            return RenderIntent.Perceptual;
        }

        /* renamed from: getRelative-uksYyKA  reason: not valid java name */
        public final int m2225getRelativeuksYyKA() {
            return RenderIntent.Relative;
        }

        /* renamed from: getSaturation-uksYyKA  reason: not valid java name */
        public final int m2226getSaturationuksYyKA() {
            return RenderIntent.Saturation;
        }

        private Companion() {
        }
    }

    private /* synthetic */ RenderIntent(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ RenderIntent m2216boximpl(int i10) {
        return new RenderIntent(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2218equalsimpl(int i10, Object obj) {
        if (!(obj instanceof RenderIntent) || i10 != ((RenderIntent) obj).m2222unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2219equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2220hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2221toStringimpl(int i10) {
        if (m2219equalsimpl0(i10, Perceptual)) {
            return "Perceptual";
        }
        if (m2219equalsimpl0(i10, Relative)) {
            return "Relative";
        }
        if (m2219equalsimpl0(i10, Saturation)) {
            return ExifInterface.TAG_SATURATION;
        }
        if (m2219equalsimpl0(i10, Absolute)) {
            return "Absolute";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2218equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2220hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2221toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2222unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2217constructorimpl(int i10) {
        return i10;
    }
}
