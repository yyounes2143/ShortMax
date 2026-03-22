package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimatedContent.kt */
@StabilityInferred(parameters = 0)
@Metadata
@ExperimentalAnimationApi
/* loaded from: classes.dex */
public final class ContentTransform {
    public static final int $stable = 8;
    @NotNull
    private final ExitTransition initialContentExit;
    @Nullable
    private SizeTransform sizeTransform;
    @NotNull
    private final EnterTransition targetContentEnter;
    @NotNull
    private final MutableState targetContentZIndex$delegate;

    public ContentTransform(@NotNull EnterTransition targetContentEnter, @NotNull ExitTransition initialContentExit, float f10, @Nullable SizeTransform sizeTransform) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(targetContentEnter, "targetContentEnter");
        Intrinsics.checkNotNullParameter(initialContentExit, "initialContentExit");
        this.targetContentEnter = targetContentEnter;
        this.initialContentExit = initialContentExit;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Float.valueOf(f10), null, 2, null);
        this.targetContentZIndex$delegate = mutableStateOf$default;
        this.sizeTransform = sizeTransform;
    }

    @NotNull
    public final ExitTransition getInitialContentExit() {
        return this.initialContentExit;
    }

    @Nullable
    public final SizeTransform getSizeTransform() {
        return this.sizeTransform;
    }

    @NotNull
    public final EnterTransition getTargetContentEnter() {
        return this.targetContentEnter;
    }

    public final float getTargetContentZIndex() {
        return ((Number) this.targetContentZIndex$delegate.getValue()).floatValue();
    }

    public final void setSizeTransform$animation_release(@Nullable SizeTransform sizeTransform) {
        this.sizeTransform = sizeTransform;
    }

    public final void setTargetContentZIndex(float f10) {
        this.targetContentZIndex$delegate.setValue(Float.valueOf(f10));
    }

    public /* synthetic */ ContentTransform(EnterTransition enterTransition, ExitTransition exitTransition, float f10, SizeTransform sizeTransform, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(enterTransition, exitTransition, (i10 & 4) != 0 ? 0.0f : f10, (i10 & 8) != 0 ? AnimatedContentKt.SizeTransform$default(false, null, 3, null) : sizeTransform);
    }
}
