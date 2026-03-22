package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldDefaults.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface TextFieldColors {
    @Composable
    @NotNull
    State<Color> backgroundColor(boolean z10, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> cursorColor(boolean z10, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> indicatorColor(boolean z10, boolean z11, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> labelColor(boolean z10, boolean z11, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> leadingIconColor(boolean z10, boolean z11, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> placeholderColor(boolean z10, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> textColor(boolean z10, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> trailingIconColor(boolean z10, boolean z11, @Nullable Composer composer, int i10);
}
