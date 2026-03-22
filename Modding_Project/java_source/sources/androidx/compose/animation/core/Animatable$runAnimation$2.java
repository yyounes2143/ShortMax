package androidx.compose.animation.core;

import com.ss.ttm.player.MediaPlayer;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T, V] */
/* compiled from: Animatable.kt */
@Metadata
@d(c = "androidx.compose.animation.core.Animatable$runAnimation$2", f = "Animatable.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPEN_TIMEOUT}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class Animatable$runAnimation$2<T, V> extends SuspendLambda implements Function1<c<? super AnimationResult<T, V>>, Object> {
    final /* synthetic */ Animation<T, V> $animation;
    final /* synthetic */ Function1<Animatable<T, V>, Unit> $block;
    final /* synthetic */ T $initialVelocity;
    final /* synthetic */ long $startTime;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ Animatable<T, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Animatable$runAnimation$2(Animatable<T, V> animatable, T t10, Animation<T, V> animation, long j10, Function1<? super Animatable<T, V>, Unit> function1, c<? super Animatable$runAnimation$2> cVar) {
        super(1, cVar);
        this.this$0 = animatable;
        this.$initialVelocity = t10;
        this.$animation = animation;
        this.$startTime = j10;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@NotNull c<?> cVar) {
        return new Animatable$runAnimation$2(this.this$0, this.$initialVelocity, this.$animation, this.$startTime, this.$block, cVar);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke((c) ((c) obj));
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        AnimationState animationState;
        Ref.BooleanRef booleanRef;
        AnimationEndReason animationEndReason;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    booleanRef = (Ref.BooleanRef) this.L$1;
                    animationState = (AnimationState) this.L$0;
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                this.this$0.getInternalState$animation_core_release().setVelocityVector$animation_core_release((V) ((AnimationVector) this.this$0.getTypeConverter().getConvertToVector().invoke(this.$initialVelocity)));
                this.this$0.setTargetValue(this.$animation.getTargetValue());
                this.this$0.setRunning(true);
                final AnimationState copy$default = AnimationStateKt.copy$default((AnimationState) this.this$0.getInternalState$animation_core_release(), (Object) null, (AnimationVector) null, 0L, Long.MIN_VALUE, false, 23, (Object) null);
                final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
                Animation<T, V> animation = this.$animation;
                long j10 = this.$startTime;
                final Animatable<T, V> animatable = this.this$0;
                final Function1<Animatable<T, V>, Unit> function1 = this.$block;
                Function1<AnimationScope<T, V>, Unit> function12 = new Function1<AnimationScope<T, V>, Unit>() { // from class: androidx.compose.animation.core.Animatable$runAnimation$2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Object obj2) {
                        invoke((AnimationScope) ((AnimationScope) obj2));
                        return Unit.f60915a;
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    public final void invoke(@NotNull AnimationScope<T, V> animate) {
                        Object clampToBounds;
                        Intrinsics.checkNotNullParameter(animate, "$this$animate");
                        SuspendAnimationKt.updateState(animate, animatable.getInternalState$animation_core_release());
                        clampToBounds = animatable.clampToBounds(animate.getValue());
                        if (!Intrinsics.areEqual(clampToBounds, animate.getValue())) {
                            animatable.getInternalState$animation_core_release().setValue$animation_core_release(clampToBounds);
                            copy$default.setValue$animation_core_release(clampToBounds);
                            Function1<Animatable<T, V>, Unit> function13 = function1;
                            if (function13 != null) {
                                function13.invoke(animatable);
                            }
                            animate.cancelAnimation();
                            booleanRef2.element = true;
                            return;
                        }
                        Function1<Animatable<T, V>, Unit> function14 = function1;
                        if (function14 != null) {
                            function14.invoke(animatable);
                        }
                    }
                };
                this.L$0 = copy$default;
                this.L$1 = booleanRef2;
                this.label = 1;
                if (SuspendAnimationKt.animate(copy$default, animation, j10, function12, this) == f10) {
                    return f10;
                }
                animationState = copy$default;
                booleanRef = booleanRef2;
            }
            if (booleanRef.element) {
                animationEndReason = AnimationEndReason.BoundReached;
            } else {
                animationEndReason = AnimationEndReason.Finished;
            }
            this.this$0.endAnimation();
            return new AnimationResult(animationState, animationEndReason);
        } catch (CancellationException e10) {
            this.this$0.endAnimation();
            throw e10;
        }
    }

    @Nullable
    public final Object invoke(@Nullable c<? super AnimationResult<T, V>> cVar) {
        return ((Animatable$runAnimation$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
