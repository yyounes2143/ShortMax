package androidx.compose.material;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Swipeable.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SwipeableDefaults {
    public static final int $stable = 0;
    public static final float StandardResistanceFactor = 10.0f;
    public static final float StiffResistanceFactor = 20.0f;
    @NotNull
    public static final SwipeableDefaults INSTANCE = new SwipeableDefaults();
    @NotNull
    private static final SpringSpec<Float> AnimationSpec = new SpringSpec<>(0.0f, 0.0f, null, 7, null);
    private static final float VelocityThreshold = Dp.m4049constructorimpl(125);

    private SwipeableDefaults() {
    }

    public static /* synthetic */ ResistanceConfig resistanceConfig$default(SwipeableDefaults swipeableDefaults, Set set, float f10, float f11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f10 = 10.0f;
        }
        if ((i10 & 4) != 0) {
            f11 = 10.0f;
        }
        return swipeableDefaults.resistanceConfig(set, f10, f11);
    }

    @NotNull
    public final SpringSpec<Float> getAnimationSpec() {
        return AnimationSpec;
    }

    /* renamed from: getVelocityThreshold-D9Ej5fM */
    public final float m1208getVelocityThresholdD9Ej5fM() {
        return VelocityThreshold;
    }

    @Nullable
    public final ResistanceConfig resistanceConfig(@NotNull Set<Float> anchors, float f10, float f11) {
        Intrinsics.checkNotNullParameter(anchors, "anchors");
        if (anchors.size() <= 1) {
            return null;
        }
        Set<Float> set = anchors;
        Float F0 = CollectionsKt.F0(set);
        Intrinsics.checkNotNull(F0);
        float floatValue = F0.floatValue();
        Float H0 = CollectionsKt.H0(set);
        Intrinsics.checkNotNull(H0);
        return new ResistanceConfig(floatValue - H0.floatValue(), f10, f11);
    }
}
