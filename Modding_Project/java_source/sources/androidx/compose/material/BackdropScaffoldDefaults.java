package androidx.compose.material;

import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BackdropScaffold.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class BackdropScaffoldDefaults {
    public static final int $stable = 0;
    @NotNull
    public static final BackdropScaffoldDefaults INSTANCE = new BackdropScaffoldDefaults();
    private static final float PeekHeight = Dp.m4049constructorimpl(56);
    private static final float HeaderHeight = Dp.m4049constructorimpl(48);
    private static final float FrontLayerElevation = Dp.m4049constructorimpl(1);

    private BackdropScaffoldDefaults() {
    }

    /* renamed from: getFrontLayerElevation-D9Ej5fM  reason: not valid java name */
    public final float m916getFrontLayerElevationD9Ej5fM() {
        return FrontLayerElevation;
    }

    @Composable
    public final long getFrontLayerScrimColor(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(1806270648);
        long m1841copywmQWz5c$default = Color.m1841copywmQWz5c$default(MaterialTheme.INSTANCE.getColors(composer, 6).m1007getSurface0d7_KjU(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null);
        composer.endReplaceableGroup();
        return m1841copywmQWz5c$default;
    }

    @Composable
    @NotNull
    public final Shape getFrontLayerShape(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(1580588700);
        float f10 = 16;
        CornerBasedShape copy$default = CornerBasedShape.copy$default(MaterialTheme.INSTANCE.getShapes(composer, 6).getLarge(), CornerSizeKt.m689CornerSize0680j_4(Dp.m4049constructorimpl(f10)), CornerSizeKt.m689CornerSize0680j_4(Dp.m4049constructorimpl(f10)), null, null, 12, null);
        composer.endReplaceableGroup();
        return copy$default;
    }

    /* renamed from: getHeaderHeight-D9Ej5fM  reason: not valid java name */
    public final float m917getHeaderHeightD9Ej5fM() {
        return HeaderHeight;
    }

    /* renamed from: getPeekHeight-D9Ej5fM  reason: not valid java name */
    public final float m918getPeekHeightD9Ej5fM() {
        return PeekHeight;
    }
}
