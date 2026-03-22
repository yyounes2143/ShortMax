package androidx.compose.ui.text.android;

import android.text.Layout;
import androidx.annotation.IntRange;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LayoutCompat.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutCompatKt {
    @InternalPlatformTextApi
    public static final int getLineForOffset(@NotNull Layout layout, @IntRange(from = 0) int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(layout, "<this>");
        if (i10 <= 0) {
            return 0;
        }
        if (i10 >= layout.getText().length()) {
            return layout.getLineCount() - 1;
        }
        int lineForOffset = layout.getLineForOffset(i10);
        int lineStart = layout.getLineStart(lineForOffset);
        int lineEnd = layout.getLineEnd(lineForOffset);
        if (lineStart != i10 && lineEnd != i10) {
            return lineForOffset;
        }
        if (lineStart == i10) {
            if (z10) {
                return lineForOffset - 1;
            }
            return lineForOffset;
        } else if (!z10) {
            return lineForOffset + 1;
        } else {
            return lineForOffset;
        }
    }
}
