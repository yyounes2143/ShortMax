package androidx.compose.ui.text.android;

import android.text.Layout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextLayout.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextAlignmentAdapter {
    @NotNull
    private static final Layout.Alignment ALIGN_LEFT_FRAMEWORK;
    @NotNull
    private static final Layout.Alignment ALIGN_RIGHT_FRAMEWORK;
    @NotNull
    public static final TextAlignmentAdapter INSTANCE = new TextAlignmentAdapter();

    static {
        Layout.Alignment[] values = Layout.Alignment.values();
        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
        Layout.Alignment alignment2 = alignment;
        for (Layout.Alignment alignment3 : values) {
            if (Intrinsics.areEqual(alignment3.name(), "ALIGN_LEFT")) {
                alignment = alignment3;
            } else if (Intrinsics.areEqual(alignment3.name(), "ALIGN_RIGHT")) {
                alignment2 = alignment3;
            }
        }
        ALIGN_LEFT_FRAMEWORK = alignment;
        ALIGN_RIGHT_FRAMEWORK = alignment2;
    }

    private TextAlignmentAdapter() {
    }

    @NotNull
    public final Layout.Alignment get(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            return Layout.Alignment.ALIGN_NORMAL;
                        }
                        return ALIGN_RIGHT_FRAMEWORK;
                    }
                    return ALIGN_LEFT_FRAMEWORK;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_NORMAL;
    }
}
