package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StaticLayoutFactory.kt */
@Metadata
/* loaded from: classes.dex */
public final class StaticLayoutFactory {
    @NotNull
    public static final StaticLayoutFactory INSTANCE = new StaticLayoutFactory();
    @NotNull
    private static final StaticLayoutFactoryImpl delegate = new StaticLayoutFactory23();

    private StaticLayoutFactory() {
    }

    public static /* synthetic */ StaticLayout create$default(StaticLayoutFactory staticLayoutFactory, CharSequence charSequence, int i10, int i11, TextPaint textPaint, int i12, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i13, TextUtils.TruncateAt truncateAt, int i14, float f10, float f11, int i15, boolean z10, boolean z11, int i16, int i17, int[] iArr, int[] iArr2, int i18, Object obj) {
        int i19;
        int i20;
        TextDirectionHeuristic textDirectionHeuristic2;
        Layout.Alignment alignment2;
        int i21;
        TextUtils.TruncateAt truncateAt2;
        int i22;
        float f12;
        float f13;
        int i23;
        boolean z12;
        boolean z13;
        int i24;
        int i25;
        int[] iArr3;
        int[] iArr4;
        if ((i18 & 2) != 0) {
            i19 = 0;
        } else {
            i19 = i10;
        }
        if ((i18 & 4) != 0) {
            i20 = charSequence.length();
        } else {
            i20 = i11;
        }
        if ((i18 & 32) != 0) {
            textDirectionHeuristic2 = LayoutCompat.INSTANCE.getDEFAULT_TEXT_DIRECTION_HEURISTIC$ui_text_release();
        } else {
            textDirectionHeuristic2 = textDirectionHeuristic;
        }
        if ((i18 & 64) != 0) {
            alignment2 = LayoutCompat.INSTANCE.getDEFAULT_LAYOUT_ALIGNMENT$ui_text_release();
        } else {
            alignment2 = alignment;
        }
        if ((i18 & 128) != 0) {
            i21 = Integer.MAX_VALUE;
        } else {
            i21 = i13;
        }
        if ((i18 & 256) != 0) {
            truncateAt2 = null;
        } else {
            truncateAt2 = truncateAt;
        }
        if ((i18 & 512) != 0) {
            i22 = i12;
        } else {
            i22 = i14;
        }
        if ((i18 & 1024) != 0) {
            f12 = 1.0f;
        } else {
            f12 = f10;
        }
        if ((i18 & 2048) != 0) {
            f13 = 0.0f;
        } else {
            f13 = f11;
        }
        if ((i18 & 4096) != 0) {
            i23 = 0;
        } else {
            i23 = i15;
        }
        if ((i18 & 8192) != 0) {
            z12 = false;
        } else {
            z12 = z10;
        }
        if ((i18 & 16384) != 0) {
            z13 = true;
        } else {
            z13 = z11;
        }
        if ((32768 & i18) != 0) {
            i24 = 0;
        } else {
            i24 = i16;
        }
        if ((65536 & i18) != 0) {
            i25 = 0;
        } else {
            i25 = i17;
        }
        if ((131072 & i18) != 0) {
            iArr3 = null;
        } else {
            iArr3 = iArr;
        }
        if ((i18 & 262144) != 0) {
            iArr4 = null;
        } else {
            iArr4 = iArr2;
        }
        return staticLayoutFactory.create(charSequence, i19, i20, textPaint, i12, textDirectionHeuristic2, alignment2, i21, truncateAt2, i22, f12, f13, i23, z12, z13, i24, i25, iArr3, iArr4);
    }

    @NotNull
    public final StaticLayout create(@NotNull CharSequence text, int i10, int i11, @NotNull TextPaint paint, int i12, @NotNull TextDirectionHeuristic textDir, @NotNull Layout.Alignment alignment, @IntRange(from = 0) int i13, @Nullable TextUtils.TruncateAt truncateAt, @IntRange(from = 0) int i14, @FloatRange(from = 0.0d) float f10, float f11, int i15, boolean z10, boolean z11, int i16, int i17, @Nullable int[] iArr, @Nullable int[] iArr2) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(textDir, "textDir");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        return delegate.create(new StaticLayoutParams(text, i10, i11, paint, i12, textDir, alignment, i13, truncateAt, i14, f10, f11, i15, z10, z11, i16, i17, iArr, iArr2));
    }
}
