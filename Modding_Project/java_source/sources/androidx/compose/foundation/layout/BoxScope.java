package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Box.kt */
@LayoutScopeMarker
@Immutable
@Metadata
/* loaded from: classes.dex */
public interface BoxScope {
    @Stable
    @NotNull
    Modifier align(@NotNull Modifier modifier, @NotNull Alignment alignment);

    @Stable
    @NotNull
    Modifier matchParentSize(@NotNull Modifier modifier);
}
