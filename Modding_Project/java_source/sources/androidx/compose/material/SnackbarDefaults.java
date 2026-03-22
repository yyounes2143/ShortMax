package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Snackbar.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SnackbarDefaults {
    public static final int $stable = 0;
    @NotNull
    public static final SnackbarDefaults INSTANCE = new SnackbarDefaults();
    private static final float SnackbarOverlayAlpha = 0.8f;

    private SnackbarDefaults() {
    }

    @Composable
    public final long getBackgroundColor(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(1630911716);
        MaterialTheme materialTheme = MaterialTheme.INSTANCE;
        long m1888compositeOverOWjLjI = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(materialTheme.getColors(composer, 6).m1002getOnSurface0d7_KjU(), SnackbarOverlayAlpha, 0.0f, 0.0f, 0.0f, 14, null), materialTheme.getColors(composer, 6).m1007getSurface0d7_KjU());
        composer.endReplaceableGroup();
        return m1888compositeOverOWjLjI;
    }

    @Composable
    public final long getPrimaryActionColor(@Nullable Composer composer, int i10) {
        long m1004getPrimaryVariant0d7_KjU;
        composer.startReplaceableGroup(-810329402);
        Colors colors = MaterialTheme.INSTANCE.getColors(composer, 6);
        if (colors.isLight()) {
            m1004getPrimaryVariant0d7_KjU = ColorKt.m1888compositeOverOWjLjI(Color.m1841copywmQWz5c$default(colors.m1007getSurface0d7_KjU(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null), colors.m1003getPrimary0d7_KjU());
        } else {
            m1004getPrimaryVariant0d7_KjU = colors.m1004getPrimaryVariant0d7_KjU();
        }
        composer.endReplaceableGroup();
        return m1004getPrimaryVariant0d7_KjU;
    }
}
