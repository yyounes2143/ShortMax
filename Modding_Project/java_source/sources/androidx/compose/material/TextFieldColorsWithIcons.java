package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldDefaults.kt */
@Metadata
@ExperimentalMaterialApi
/* loaded from: classes.dex */
public interface TextFieldColorsWithIcons extends TextFieldColors {

    /* compiled from: TextFieldDefaults.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Composable
        @NotNull
        public static State<Color> leadingIconColor(@NotNull TextFieldColorsWithIcons textFieldColorsWithIcons, boolean z10, boolean z11, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
            composer.startReplaceableGroup(1279189910);
            State<Color> leadingIconColor = textFieldColorsWithIcons.leadingIconColor(z10, z11, composer, (i10 & 126) | ((i10 >> 3) & 896));
            composer.endReplaceableGroup();
            return leadingIconColor;
        }

        @Composable
        @NotNull
        public static State<Color> trailingIconColor(@NotNull TextFieldColorsWithIcons textFieldColorsWithIcons, boolean z10, boolean z11, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
            Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
            composer.startReplaceableGroup(-712140408);
            State<Color> trailingIconColor = textFieldColorsWithIcons.trailingIconColor(z10, z11, composer, (i10 & 126) | ((i10 >> 3) & 896));
            composer.endReplaceableGroup();
            return trailingIconColor;
        }
    }

    @Composable
    @NotNull
    State<Color> leadingIconColor(boolean z10, boolean z11, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);

    @Composable
    @NotNull
    State<Color> trailingIconColor(boolean z10, boolean z11, @NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10);
}
