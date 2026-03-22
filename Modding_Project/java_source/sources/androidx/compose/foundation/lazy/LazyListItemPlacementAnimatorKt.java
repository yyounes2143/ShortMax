package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyListItemPlacementAnimator.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListItemPlacementAnimatorKt {
    @NotNull
    private static final SpringSpec<IntOffset> InterruptionSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
}
