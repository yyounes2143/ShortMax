package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RadioButton.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface RadioButtonColors {
    @Composable
    @NotNull
    State<Color> radioColor(boolean z10, boolean z11, @Nullable Composer composer, int i10);
}
