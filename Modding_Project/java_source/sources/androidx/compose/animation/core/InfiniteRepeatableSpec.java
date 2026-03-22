package androidx.compose.animation.core;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationSpec.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class InfiniteRepeatableSpec<T> implements AnimationSpec<T> {
    public static final int $stable = 8;
    @NotNull
    private final DurationBasedAnimationSpec<T> animation;
    private final long initialStartOffset;
    @NotNull
    private final RepeatMode repeatMode;

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(durationBasedAnimationSpec, repeatMode, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof InfiniteRepeatableSpec)) {
            return false;
        }
        InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) obj;
        if (!Intrinsics.areEqual(infiniteRepeatableSpec.animation, this.animation) || infiniteRepeatableSpec.repeatMode != this.repeatMode || !StartOffset.m160equalsimpl0(infiniteRepeatableSpec.initialStartOffset, this.initialStartOffset)) {
            return false;
        }
        return true;
    }

    @NotNull
    public final DurationBasedAnimationSpec<T> getAnimation() {
        return this.animation;
    }

    /* renamed from: getInitialStartOffset-Rmkjzm4  reason: not valid java name */
    public final long m140getInitialStartOffsetRmkjzm4() {
        return this.initialStartOffset;
    }

    @NotNull
    public final RepeatMode getRepeatMode() {
        return this.repeatMode;
    }

    public int hashCode() {
        return (((this.animation.hashCode() * 31) + this.repeatMode.hashCode()) * 31) + StartOffset.m163hashCodeimpl(this.initialStartOffset);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    @NotNull
    public <V extends AnimationVector> VectorizedAnimationSpec<V> vectorize(@NotNull TwoWayConverter<T, V> converter) {
        Intrinsics.checkNotNullParameter(converter, "converter");
        return new VectorizedInfiniteRepeatableSpec(this.animation.vectorize((TwoWayConverter) converter), this.repeatMode, this.initialStartOffset, (DefaultConstructorMarker) null);
    }

    private InfiniteRepeatableSpec(DurationBasedAnimationSpec<T> durationBasedAnimationSpec, RepeatMode repeatMode, long j10) {
        this.animation = durationBasedAnimationSpec;
        this.repeatMode = repeatMode;
        this.initialStartOffset = j10;
    }

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(durationBasedAnimationSpec, (i10 & 2) != 0 ? RepeatMode.Restart : repeatMode, (i10 & 4) != 0 ? StartOffset.m158constructorimpl$default(0, 0, 2, null) : j10, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(durationBasedAnimationSpec, (i10 & 2) != 0 ? RepeatMode.Restart : repeatMode);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @c
    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec animation, RepeatMode repeatMode) {
        this(animation, repeatMode, StartOffset.m158constructorimpl$default(0, 0, 2, null), (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(animation, "animation");
        Intrinsics.checkNotNullParameter(repeatMode, "repeatMode");
    }
}
