package androidx.compose.material;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProgressIndicator.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class ProgressIndicatorDefaults {
    public static final int $stable = 0;
    public static final float IndicatorBackgroundOpacity = 0.24f;
    @NotNull
    public static final ProgressIndicatorDefaults INSTANCE = new ProgressIndicatorDefaults();
    private static final float StrokeWidth = Dp.m4049constructorimpl(4);
    @NotNull
    private static final SpringSpec<Float> ProgressAnimationSpec = new SpringSpec<>(1.0f, 50.0f, Float.valueOf(0.001f));

    private ProgressIndicatorDefaults() {
    }

    @NotNull
    public final SpringSpec<Float> getProgressAnimationSpec() {
        return ProgressAnimationSpec;
    }

    /* renamed from: getStrokeWidth-D9Ej5fM  reason: not valid java name */
    public final float m1139getStrokeWidthD9Ej5fM() {
        return StrokeWidth;
    }
}
