package androidx.compose.ui.text.android;

import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BoringLayoutFactory.kt */
@Metadata
/* loaded from: classes.dex */
public final class BoringLayoutFactory {
    @NotNull
    public static final BoringLayoutFactory INSTANCE = new BoringLayoutFactory();

    private BoringLayoutFactory() {
    }

    public static /* synthetic */ BoringLayout create$default(BoringLayoutFactory boringLayoutFactory, CharSequence charSequence, TextPaint textPaint, int i10, BoringLayout.Metrics metrics, Layout.Alignment alignment, boolean z10, TextUtils.TruncateAt truncateAt, int i11, int i12, Object obj) {
        Layout.Alignment alignment2;
        boolean z11;
        TextUtils.TruncateAt truncateAt2;
        int i13;
        if ((i12 & 16) != 0) {
            alignment2 = Layout.Alignment.ALIGN_NORMAL;
        } else {
            alignment2 = alignment;
        }
        if ((i12 & 32) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i12 & 64) != 0) {
            truncateAt2 = null;
        } else {
            truncateAt2 = truncateAt;
        }
        if ((i12 & 128) != 0) {
            i13 = i10;
        } else {
            i13 = i11;
        }
        return boringLayoutFactory.create(charSequence, textPaint, i10, metrics, alignment2, z11, truncateAt2, i13);
    }

    @NotNull
    public final BoringLayout create(@NotNull CharSequence text, @NotNull TextPaint paint, int i10, @NotNull BoringLayout.Metrics metrics, @NotNull Layout.Alignment alignment, boolean z10, @Nullable TextUtils.TruncateAt truncateAt, int i11) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        if (i10 >= 0) {
            if (i11 >= 0) {
                if (truncateAt == null) {
                    return new BoringLayout(text, paint, i10, alignment, 1.0f, 0.0f, metrics, z10);
                }
                return new BoringLayout(text, paint, i10, alignment, 1.0f, 0.0f, metrics, z10, truncateAt, i11);
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Nullable
    public final BoringLayout.Metrics measure(@NotNull CharSequence text, @Nullable TextPaint textPaint, @NotNull TextDirectionHeuristic textDir) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(textDir, "textDir");
        if (textDir.isRtl(text, 0, text.length())) {
            return null;
        }
        return BoringLayout.isBoring(text, textPaint, null);
    }
}
