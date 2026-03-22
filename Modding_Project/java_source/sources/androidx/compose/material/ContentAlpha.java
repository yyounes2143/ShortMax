package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContentAlpha.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ContentAlpha {
    public static final int $stable = 0;
    @NotNull
    public static final ContentAlpha INSTANCE = new ContentAlpha();

    private ContentAlpha() {
    }

    @Composable
    private final float contentAlpha(float f10, float f11, Composer composer, int i10) {
        composer.startReplaceableGroup(-1528360391);
        long m1852unboximpl = ((Color) composer.consume(ContentColorKt.getLocalContentColor())).m1852unboximpl();
        if (!MaterialTheme.INSTANCE.getColors(composer, 6).isLight() ? ColorKt.m1895luminance8_81llA(m1852unboximpl) >= 0.5d : ColorKt.m1895luminance8_81llA(m1852unboximpl) <= 0.5d) {
            f10 = f11;
        }
        composer.endReplaceableGroup();
        return f10;
    }

    @Composable
    public final float getDisabled(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(621183615);
        float contentAlpha = contentAlpha(0.38f, 0.38f, composer, ((i10 << 6) & 896) | 54);
        composer.endReplaceableGroup();
        return contentAlpha;
    }

    @Composable
    public final float getHigh(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(629162431);
        float contentAlpha = contentAlpha(1.0f, 0.87f, composer, ((i10 << 6) & 896) | 54);
        composer.endReplaceableGroup();
        return contentAlpha;
    }

    @Composable
    public final float getMedium(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(1999054879);
        float contentAlpha = contentAlpha(0.74f, 0.6f, composer, ((i10 << 6) & 896) | 54);
        composer.endReplaceableGroup();
        return contentAlpha;
    }
}
