package androidx.core.animation;

import android.animation.Animator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Animator.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n*L\n1#1,123:1\n*E\n"})
/* loaded from: classes.dex */
public final class AnimatorKt$addListener$listener$1 implements Animator.AnimatorListener {
    final /* synthetic */ Function1<Animator, Unit> $onCancel;
    final /* synthetic */ Function1<Animator, Unit> $onEnd;
    final /* synthetic */ Function1<Animator, Unit> $onRepeat;
    final /* synthetic */ Function1<Animator, Unit> $onStart;

    /* JADX WARN: Multi-variable type inference failed */
    public AnimatorKt$addListener$listener$1(Function1<? super Animator, Unit> function1, Function1<? super Animator, Unit> function12, Function1<? super Animator, Unit> function13, Function1<? super Animator, Unit> function14) {
        this.$onRepeat = function1;
        this.$onEnd = function12;
        this.$onCancel = function13;
        this.$onStart = function14;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(@NotNull Animator animator) {
        this.$onCancel.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(@NotNull Animator animator) {
        this.$onEnd.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(@NotNull Animator animator) {
        this.$onRepeat.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(@NotNull Animator animator) {
        this.$onStart.invoke(animator);
    }
}
