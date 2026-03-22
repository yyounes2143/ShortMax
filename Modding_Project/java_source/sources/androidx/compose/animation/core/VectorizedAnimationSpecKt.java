package androidx.compose.animation.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorizedAnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public final class VectorizedAnimationSpecKt {
    private static final int InfiniteIterations = Integer.MAX_VALUE;

    public static final /* synthetic */ Animations access$createSpringAnimations(AnimationVector animationVector, float f10, float f11) {
        return createSpringAnimations(animationVector, f10, f11);
    }

    public static final long clampPlayTime(VectorizedDurationBasedAnimationSpec<?> vectorizedDurationBasedAnimationSpec, long j10) {
        return e.p(j10 - vectorizedDurationBasedAnimationSpec.getDelayMillis(), 0L, vectorizedDurationBasedAnimationSpec.getDurationMillis());
    }

    public static final <V extends AnimationVector> Animations createSpringAnimations(V v10, float f10, float f11) {
        if (v10 != null) {
            return new Animations(v10, f10, f11) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$1
                @NotNull
                private final List<FloatSpringSpec> anims;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: Incorrect types in method signature: (TV;FF)V */
                {
                    IntRange v11 = e.v(0, v10.getSize$animation_core_release());
                    ArrayList arrayList = new ArrayList(CollectionsKt.z(v11, 10));
                    Iterator<Integer> it = v11.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new FloatSpringSpec(f10, f11, v10.get$animation_core_release(((m0) it).nextInt())));
                    }
                    this.anims = arrayList;
                }

                @Override // androidx.compose.animation.core.Animations
                @NotNull
                public FloatSpringSpec get(int i10) {
                    return this.anims.get(i10);
                }
            };
        }
        return new Animations(f10, f11) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$2
            @NotNull
            private final FloatSpringSpec anim;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.anim = new FloatSpringSpec(f10, f11, 0.0f, 4, null);
            }

            @Override // androidx.compose.animation.core.Animations
            @NotNull
            public FloatSpringSpec get(int i10) {
                return this.anim;
            }
        };
    }

    public static final <V extends AnimationVector> long getDurationMillis(@NotNull VectorizedAnimationSpec<V> vectorizedAnimationSpec, @NotNull V initialValue, @NotNull V targetValue, @NotNull V initialVelocity) {
        Intrinsics.checkNotNullParameter(vectorizedAnimationSpec, "<this>");
        Intrinsics.checkNotNullParameter(initialValue, "initialValue");
        Intrinsics.checkNotNullParameter(targetValue, "targetValue");
        Intrinsics.checkNotNullParameter(initialVelocity, "initialVelocity");
        return vectorizedAnimationSpec.getDurationNanos(initialValue, targetValue, initialVelocity) / 1000000;
    }

    @NotNull
    public static final <V extends AnimationVector> V getValueFromMillis(@NotNull VectorizedAnimationSpec<V> vectorizedAnimationSpec, long j10, @NotNull V start, @NotNull V end, @NotNull V startVelocity) {
        Intrinsics.checkNotNullParameter(vectorizedAnimationSpec, "<this>");
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        Intrinsics.checkNotNullParameter(startVelocity, "startVelocity");
        return vectorizedAnimationSpec.getValueFromNanos(j10 * 1000000, start, end, startVelocity);
    }
}
