package androidx.compose.animation.core;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationSpec.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class RepeatableSpec<T> implements FiniteAnimationSpec<T> {
    @NotNull
    private final DurationBasedAnimationSpec<T> animation;
    private final long initialStartOffset;
    private final int iterations;
    @NotNull
    private final RepeatMode repeatMode;

    public /* synthetic */ RepeatableSpec(int i10, DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, durationBasedAnimationSpec, repeatMode, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof RepeatableSpec)) {
            return false;
        }
        RepeatableSpec repeatableSpec = (RepeatableSpec) obj;
        if (repeatableSpec.iterations != this.iterations || !Intrinsics.areEqual(repeatableSpec.animation, this.animation) || repeatableSpec.repeatMode != this.repeatMode || !StartOffset.m160equalsimpl0(repeatableSpec.initialStartOffset, this.initialStartOffset)) {
            return false;
        }
        return true;
    }

    @NotNull
    public final DurationBasedAnimationSpec<T> getAnimation() {
        return this.animation;
    }

    /* renamed from: getInitialStartOffset-Rmkjzm4  reason: not valid java name */
    public final long m152getInitialStartOffsetRmkjzm4() {
        return this.initialStartOffset;
    }

    public final int getIterations() {
        return this.iterations;
    }

    @NotNull
    public final RepeatMode getRepeatMode() {
        return this.repeatMode;
    }

    public int hashCode() {
        return (((((this.iterations * 31) + this.animation.hashCode()) * 31) + this.repeatMode.hashCode()) * 31) + StartOffset.m163hashCodeimpl(this.initialStartOffset);
    }

    private RepeatableSpec(int i10, DurationBasedAnimationSpec<T> durationBasedAnimationSpec, RepeatMode repeatMode, long j10) {
        this.iterations = i10;
        this.animation = durationBasedAnimationSpec;
        this.repeatMode = repeatMode;
        this.initialStartOffset = j10;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    @NotNull
    public <V extends AnimationVector> VectorizedFiniteAnimationSpec<V> vectorize(@NotNull TwoWayConverter<T, V> converter) {
        Intrinsics.checkNotNullParameter(converter, "converter");
        return new VectorizedRepeatableSpec(this.iterations, this.animation.vectorize((TwoWayConverter) converter), this.repeatMode, this.initialStartOffset, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ RepeatableSpec(int i10, DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, durationBasedAnimationSpec, (i11 & 4) != 0 ? RepeatMode.Restart : repeatMode, (i11 & 8) != 0 ? StartOffset.m158constructorimpl$default(0, 0, 2, null) : j10, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ RepeatableSpec(int i10, DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, durationBasedAnimationSpec, (i11 & 4) != 0 ? RepeatMode.Restart : repeatMode);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @c
    public /* synthetic */ RepeatableSpec(int i10, DurationBasedAnimationSpec animation, RepeatMode repeatMode) {
        this(i10, animation, repeatMode, StartOffset.m158constructorimpl$default(0, 0, 2, null), (DefaultConstructorMarker) null);
        Intrinsics.checkNotNullParameter(animation, "animation");
        Intrinsics.checkNotNullParameter(repeatMode, "repeatMode");
    }
}
