package androidx.compose.ui.layout;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Measured.kt */
@Metadata
/* loaded from: classes.dex */
public interface Measured {
    int get(@NotNull AlignmentLine alignmentLine);

    int getMeasuredHeight();

    int getMeasuredWidth();

    @Nullable
    default Object getParentData() {
        return null;
    }
}
