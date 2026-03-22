package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageBitmap.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ImageBitmapConfig {
    private final int value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Argb8888 = m2021constructorimpl(0);
    private static final int Alpha8 = m2021constructorimpl(1);
    private static final int Rgb565 = m2021constructorimpl(2);
    private static final int F16 = m2021constructorimpl(3);
    private static final int Gpu = m2021constructorimpl(4);

    /* compiled from: ImageBitmap.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getAlpha8-_sVssgQ  reason: not valid java name */
        public final int m2027getAlpha8_sVssgQ() {
            return ImageBitmapConfig.Alpha8;
        }

        /* renamed from: getArgb8888-_sVssgQ  reason: not valid java name */
        public final int m2028getArgb8888_sVssgQ() {
            return ImageBitmapConfig.Argb8888;
        }

        /* renamed from: getF16-_sVssgQ  reason: not valid java name */
        public final int m2029getF16_sVssgQ() {
            return ImageBitmapConfig.F16;
        }

        /* renamed from: getGpu-_sVssgQ  reason: not valid java name */
        public final int m2030getGpu_sVssgQ() {
            return ImageBitmapConfig.Gpu;
        }

        /* renamed from: getRgb565-_sVssgQ  reason: not valid java name */
        public final int m2031getRgb565_sVssgQ() {
            return ImageBitmapConfig.Rgb565;
        }

        private Companion() {
        }
    }

    private /* synthetic */ ImageBitmapConfig(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ImageBitmapConfig m2020boximpl(int i10) {
        return new ImageBitmapConfig(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2022equalsimpl(int i10, Object obj) {
        if (!(obj instanceof ImageBitmapConfig) || i10 != ((ImageBitmapConfig) obj).m2026unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2023equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2024hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2025toStringimpl(int i10) {
        if (m2023equalsimpl0(i10, Argb8888)) {
            return "Argb8888";
        }
        if (m2023equalsimpl0(i10, Alpha8)) {
            return "Alpha8";
        }
        if (m2023equalsimpl0(i10, Rgb565)) {
            return "Rgb565";
        }
        if (m2023equalsimpl0(i10, F16)) {
            return "F16";
        }
        if (m2023equalsimpl0(i10, Gpu)) {
            return "Gpu";
        }
        return "Unknown";
    }

    public boolean equals(Object obj) {
        return m2022equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m2024hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m2025toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2026unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2021constructorimpl(int i10) {
        return i10;
    }
}
