package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: LazyItemScope.kt */
@LazyScopeMarker
@Stable
@Metadata
/* loaded from: classes.dex */
public interface LazyItemScope {

    /* compiled from: LazyItemScope.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Modifier animateItemPlacement$default(LazyItemScope lazyItemScope, Modifier modifier, FiniteAnimationSpec finiteAnimationSpec, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4158boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.Companion)), 1, null);
            }
            return lazyItemScope.animateItemPlacement(modifier, finiteAnimationSpec);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: animateItemPlacement");
    }

    static /* synthetic */ Modifier fillParentMaxHeight$default(LazyItemScope lazyItemScope, Modifier modifier, float f10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                f10 = 1.0f;
            }
            return lazyItemScope.fillParentMaxHeight(modifier, f10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillParentMaxHeight");
    }

    static /* synthetic */ Modifier fillParentMaxSize$default(LazyItemScope lazyItemScope, Modifier modifier, float f10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                f10 = 1.0f;
            }
            return lazyItemScope.fillParentMaxSize(modifier, f10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillParentMaxSize");
    }

    static /* synthetic */ Modifier fillParentMaxWidth$default(LazyItemScope lazyItemScope, Modifier modifier, float f10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                f10 = 1.0f;
            }
            return lazyItemScope.fillParentMaxWidth(modifier, f10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fillParentMaxWidth");
    }

    @ExperimentalFoundationApi
    @NotNull
    Modifier animateItemPlacement(@NotNull Modifier modifier, @NotNull FiniteAnimationSpec<IntOffset> finiteAnimationSpec);

    @NotNull
    Modifier fillParentMaxHeight(@NotNull Modifier modifier, float f10);

    @NotNull
    Modifier fillParentMaxSize(@NotNull Modifier modifier, float f10);

    @NotNull
    Modifier fillParentMaxWidth(@NotNull Modifier modifier, float f10);
}
