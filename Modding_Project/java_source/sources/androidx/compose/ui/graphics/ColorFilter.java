package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ColorFilter.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ColorFilter {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final android.graphics.ColorFilter nativeColorFilter;

    /* compiled from: ColorFilter.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: tint-xETnrds$default  reason: not valid java name */
        public static /* synthetic */ ColorFilter m1883tintxETnrds$default(Companion companion, long j10, int i10, int i11, Object obj) {
            if ((i11 & 2) != 0) {
                i10 = BlendMode.Companion.m1784getSrcIn0nO6VwU();
            }
            return companion.m1886tintxETnrds(j10, i10);
        }

        @Stable
        @NotNull
        /* renamed from: colorMatrix-jHG-Opc  reason: not valid java name */
        public final ColorFilter m1884colorMatrixjHGOpc(@NotNull float[] colorMatrix) {
            Intrinsics.checkNotNullParameter(colorMatrix, "colorMatrix");
            return AndroidColorFilter_androidKt.m1711actualColorMatrixColorFilterjHGOpc(colorMatrix);
        }

        @Stable
        @NotNull
        /* renamed from: lighting--OWjLjI  reason: not valid java name */
        public final ColorFilter m1885lightingOWjLjI(long j10, long j11) {
            return AndroidColorFilter_androidKt.m1712actualLightingColorFilterOWjLjI(j10, j11);
        }

        @Stable
        @NotNull
        /* renamed from: tint-xETnrds  reason: not valid java name */
        public final ColorFilter m1886tintxETnrds(long j10, int i10) {
            return AndroidColorFilter_androidKt.m1713actualTintColorFilterxETnrds(j10, i10);
        }

        private Companion() {
        }
    }

    public ColorFilter(@NotNull android.graphics.ColorFilter nativeColorFilter) {
        Intrinsics.checkNotNullParameter(nativeColorFilter, "nativeColorFilter");
        this.nativeColorFilter = nativeColorFilter;
    }

    @NotNull
    public final android.graphics.ColorFilter getNativeColorFilter$ui_graphics_release() {
        return this.nativeColorFilter;
    }
}
