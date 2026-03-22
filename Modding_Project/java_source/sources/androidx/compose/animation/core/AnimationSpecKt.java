package androidx.compose.animation.core;

import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimationSpec.kt */
@Metadata
/* loaded from: classes.dex */
public final class AnimationSpecKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T, V extends AnimationVector> V convert(TwoWayConverter<T, V> twoWayConverter, T t10) {
        if (t10 == null) {
            return null;
        }
        return twoWayConverter.getConvertToVector().invoke(t10);
    }

    @Stable
    @c
    public static final /* synthetic */ InfiniteRepeatableSpec infiniteRepeatable(DurationBasedAnimationSpec animation, RepeatMode repeatMode) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Intrinsics.checkNotNullParameter(repeatMode, "repeatMode");
        return new InfiniteRepeatableSpec(animation, repeatMode, StartOffset.m158constructorimpl$default(0, 0, 2, null), (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ InfiniteRepeatableSpec infiniteRepeatable$default(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            repeatMode = RepeatMode.Restart;
        }
        return infiniteRepeatable(durationBasedAnimationSpec, repeatMode);
    }

    @Stable
    @NotNull
    /* renamed from: infiniteRepeatable-9IiC70o  reason: not valid java name */
    public static final <T> InfiniteRepeatableSpec<T> m136infiniteRepeatable9IiC70o(@NotNull DurationBasedAnimationSpec<T> animation, @NotNull RepeatMode repeatMode, long j10) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Intrinsics.checkNotNullParameter(repeatMode, "repeatMode");
        return new InfiniteRepeatableSpec<>(animation, repeatMode, j10, (DefaultConstructorMarker) null);
    }

    /* renamed from: infiniteRepeatable-9IiC70o$default  reason: not valid java name */
    public static /* synthetic */ InfiniteRepeatableSpec m137infiniteRepeatable9IiC70o$default(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            repeatMode = RepeatMode.Restart;
        }
        if ((i10 & 4) != 0) {
            j10 = StartOffset.m158constructorimpl$default(0, 0, 2, null);
        }
        return m136infiniteRepeatable9IiC70o(durationBasedAnimationSpec, repeatMode, j10);
    }

    @Stable
    @NotNull
    public static final <T> KeyframesSpec<T> keyframes(@NotNull Function1<? super KeyframesSpec.KeyframesSpecConfig<T>, Unit> init) {
        Intrinsics.checkNotNullParameter(init, "init");
        KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig = new KeyframesSpec.KeyframesSpecConfig();
        init.invoke(keyframesSpecConfig);
        return new KeyframesSpec<>(keyframesSpecConfig);
    }

    @Stable
    @c
    public static final /* synthetic */ RepeatableSpec repeatable(int i10, DurationBasedAnimationSpec animation, RepeatMode repeatMode) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Intrinsics.checkNotNullParameter(repeatMode, "repeatMode");
        return new RepeatableSpec(i10, animation, repeatMode, StartOffset.m158constructorimpl$default(0, 0, 2, null), (DefaultConstructorMarker) null);
    }

    public static /* synthetic */ RepeatableSpec repeatable$default(int i10, DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            repeatMode = RepeatMode.Restart;
        }
        return repeatable(i10, durationBasedAnimationSpec, repeatMode);
    }

    @Stable
    @NotNull
    /* renamed from: repeatable-91I0pcU  reason: not valid java name */
    public static final <T> RepeatableSpec<T> m138repeatable91I0pcU(int i10, @NotNull DurationBasedAnimationSpec<T> animation, @NotNull RepeatMode repeatMode, long j10) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        Intrinsics.checkNotNullParameter(repeatMode, "repeatMode");
        return new RepeatableSpec<>(i10, animation, repeatMode, j10, (DefaultConstructorMarker) null);
    }

    /* renamed from: repeatable-91I0pcU$default  reason: not valid java name */
    public static /* synthetic */ RepeatableSpec m139repeatable91I0pcU$default(int i10, DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            repeatMode = RepeatMode.Restart;
        }
        if ((i11 & 8) != 0) {
            j10 = StartOffset.m158constructorimpl$default(0, 0, 2, null);
        }
        return m138repeatable91I0pcU(i10, durationBasedAnimationSpec, repeatMode, j10);
    }

    @Stable
    @NotNull
    public static final <T> SnapSpec<T> snap(int i10) {
        return new SnapSpec<>(i10);
    }

    public static /* synthetic */ SnapSpec snap$default(int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return snap(i10);
    }

    @Stable
    @NotNull
    public static final <T> SpringSpec<T> spring(float f10, float f11, @Nullable T t10) {
        return new SpringSpec<>(f10, f11, t10);
    }

    public static /* synthetic */ SpringSpec spring$default(float f10, float f11, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 1500.0f;
        }
        if ((i10 & 4) != 0) {
            obj = null;
        }
        return spring(f10, f11, obj);
    }

    @Stable
    @NotNull
    public static final <T> TweenSpec<T> tween(int i10, int i11, @NotNull Easing easing) {
        Intrinsics.checkNotNullParameter(easing, "easing");
        return new TweenSpec<>(i10, i11, easing);
    }

    public static /* synthetic */ TweenSpec tween$default(int i10, int i11, Easing easing, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 300;
        }
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        if ((i12 & 4) != 0) {
            easing = EasingKt.getFastOutSlowInEasing();
        }
        return tween(i10, i11, easing);
    }
}
