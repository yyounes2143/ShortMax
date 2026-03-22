package androidx.compose.foundation.layout;

import android.view.WindowInsetsAnimationController;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WindowInsetsConnection.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3", f = "WindowInsetsConnection.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class WindowInsetsNestedScrollConnection$fling$3 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ WindowInsetsAnimationController $animationController;
    final /* synthetic */ int $current;
    final /* synthetic */ float $flingAmount;
    final /* synthetic */ int $target;
    final /* synthetic */ boolean $targetShown;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ WindowInsetsNestedScrollConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WindowInsetsConnection.android.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3$1", f = "WindowInsetsConnection.android.kt", l = {358}, m = "invokeSuspend")
    /* renamed from: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
        final /* synthetic */ WindowInsetsAnimationController $animationController;
        final /* synthetic */ int $current;
        final /* synthetic */ float $flingAmount;
        final /* synthetic */ int $target;
        final /* synthetic */ boolean $targetShown;
        int label;
        final /* synthetic */ WindowInsetsNestedScrollConnection this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10, int i11, float f10, WindowInsetsAnimationController windowInsetsAnimationController, boolean z10, WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, rs.c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$current = i10;
            this.$target = i11;
            this.$flingAmount = f10;
            this.$animationController = windowInsetsAnimationController;
            this.$targetShown = z10;
            this.this$0 = windowInsetsNestedScrollConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new AnonymousClass1(this.$current, this.$target, this.$flingAmount, this.$animationController, this.$targetShown, this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                Animatable Animatable$default = AnimatableKt.Animatable$default(this.$current, 0.0f, 2, null);
                Float c10 = kotlin.coroutines.jvm.internal.a.c(this.$target);
                Float c11 = kotlin.coroutines.jvm.internal.a.c(this.$flingAmount);
                final WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = this.this$0;
                Function1<Animatable<Float, AnimationVector1D>, Unit> function1 = new Function1<Animatable<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection.fling.3.1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Animatable<Float, AnimationVector1D> animatable) {
                        invoke2(animatable);
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Animatable<Float, AnimationVector1D> animateTo) {
                        Intrinsics.checkNotNullParameter(animateTo, "$this$animateTo");
                        WindowInsetsNestedScrollConnection.this.adjustInsets(animateTo.getValue().floatValue());
                    }
                };
                this.label = 1;
                if (Animatable.animateTo$default(Animatable$default, c10, null, c11, function1, this, 2, null) == f10) {
                    return f10;
                }
            }
            this.$animationController.finish(this.$targetShown);
            this.this$0.animationController = null;
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowInsetsNestedScrollConnection$fling$3(WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, int i10, int i11, float f10, WindowInsetsAnimationController windowInsetsAnimationController, boolean z10, rs.c<? super WindowInsetsNestedScrollConnection$fling$3> cVar) {
        super(2, cVar);
        this.this$0 = windowInsetsNestedScrollConnection;
        this.$current = i10;
        this.$target = i11;
        this.$flingAmount = f10;
        this.$animationController = windowInsetsAnimationController;
        this.$targetShown = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        WindowInsetsNestedScrollConnection$fling$3 windowInsetsNestedScrollConnection$fling$3 = new WindowInsetsNestedScrollConnection$fling$3(this.this$0, this.$current, this.$target, this.$flingAmount, this.$animationController, this.$targetShown, cVar);
        windowInsetsNestedScrollConnection$fling$3.L$0 = obj;
        return windowInsetsNestedScrollConnection$fling$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
        return ((WindowInsetsNestedScrollConnection$fling$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        r d10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            g0 g0Var = (g0) this.L$0;
            WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = this.this$0;
            d10 = gt.g.d(g0Var, null, null, new AnonymousClass1(this.$current, this.$target, this.$flingAmount, this.$animationController, this.$targetShown, windowInsetsNestedScrollConnection, null), 3, null);
            windowInsetsNestedScrollConnection.animationJob = d10;
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
