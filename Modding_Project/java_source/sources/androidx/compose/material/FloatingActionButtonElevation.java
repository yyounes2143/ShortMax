package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FloatingActionButton.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface FloatingActionButtonElevation {
    @Composable
    @NotNull
    State<Dp> elevation(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);
}
