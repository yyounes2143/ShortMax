package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Drawer.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class DrawerDefaults {
    public static final int $stable = 0;
    public static final float ScrimOpacity = 0.32f;
    @NotNull
    public static final DrawerDefaults INSTANCE = new DrawerDefaults();
    private static final float Elevation = Dp.m4049constructorimpl(16);

    private DrawerDefaults() {
    }

    /* renamed from: getElevation-D9Ej5fM  reason: not valid java name */
    public final float m1048getElevationD9Ej5fM() {
        return Elevation;
    }

    @Composable
    public final long getScrimColor(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(617225966);
        long m1841copywmQWz5c$default = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1002getOnSurface0d7_KjU(), 0.32f, 0.0f, 0.0f, 0.0f, 14, null);
        composer.endReplaceableGroup();
        return m1841copywmQWz5c$default;
    }
}
