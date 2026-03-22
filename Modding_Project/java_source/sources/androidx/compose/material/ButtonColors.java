package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Button.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface ButtonColors {
    @Composable
    @NotNull
    State<Color> backgroundColor(boolean z10, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> contentColor(boolean z10, @Nullable Composer composer, int i10);
}
