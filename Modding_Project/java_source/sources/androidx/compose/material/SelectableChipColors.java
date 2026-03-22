package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Chip.kt */
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public interface SelectableChipColors {
    @Composable
    @NotNull
    State<Color> backgroundColor(boolean z10, boolean z11, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> contentColor(boolean z10, boolean z11, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> leadingIconColor(boolean z10, boolean z11, @Nullable Composer composer, int i10);
}
