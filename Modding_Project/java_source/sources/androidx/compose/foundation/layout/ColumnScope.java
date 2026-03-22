package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.layout.VerticalAlignmentLine;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: Column.kt */
@LayoutScopeMarker
@Immutable
@Metadata
/* loaded from: classes.dex */
public interface ColumnScope {

    /* compiled from: Column.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ Modifier weight$default(ColumnScope columnScope, Modifier modifier, float f10, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            return columnScope.weight(modifier, f10, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: weight");
    }

    @Stable
    @NotNull
    Modifier align(@NotNull Modifier modifier, @NotNull Alignment.Horizontal horizontal);

    @Stable
    @NotNull
    Modifier alignBy(@NotNull Modifier modifier, @NotNull VerticalAlignmentLine verticalAlignmentLine);

    @Stable
    @NotNull
    Modifier alignBy(@NotNull Modifier modifier, @NotNull Function1<? super Measured, Integer> function1);

    @Stable
    @NotNull
    Modifier weight(@NotNull Modifier modifier, float f10, boolean z10);
}
